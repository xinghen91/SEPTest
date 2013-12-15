<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE html>
<html lang="en">
<s:include value="header.jsp"></s:include>
<body>
	<!-- Start: MAIN CONTENT -->
	<div class="content">
		<!-- Start: slider -->

		<div class="slider">
			<div class="container-fluid">
				<div id="heroSlider" class="carousel slide">
					<div class="carousel-inner">

						<div class="active item">
							<div class="hero-unit">
								<div class="row-fluid">
									<div class="span7 marketting-info">
										<h1>
											<s:property value="#sliderList[0].name" />
										</h1>
										<h5>
											<s:property value="#sliderList[0].description" />

										</h5>
										<h3>
											<a href="product.html" class="btn">Learn more</a>
										</h3>
									</div>
									<div class="span5" style = "height : 400px">
										<img
											src="<s:url value="/images/%{#sliderList[0].imageName}"/>"
											 />
									</div>
								</div>
							</div>
						</div>
						

						<s:iterator value="#sliderList" id="sliderIterm">
							<div class="item">
								<div class="hero-unit">
									<div class="row-fluid">
										<div class="span7 marketting-info">

											<h1>
											<s:property value="#sliderIterm.name" />
											</h1>
											<h5>
												<s:property value="#sliderIterm.description" />
											</h5>
											<h3>
												<a href="product.html" class="btn">Learn more</a>
											</h3>
										</div>
										<div class="span5" style = "height : 400px">
											<img src="<s:url value="/images/%{#sliderIterm.imageName}"/>" />
										</div>
									</div>
								</div>
							</div>

						</s:iterator>

					</div>
					<a class="left carousel-control" href="#heroSlider"
						data-slide="prev">‹</a> <a class="right carousel-control"
						href="#heroSlider" data-slide="next">›</a>
				</div>
			</div>
		</div>
		<!-- End: slider -->


		<!-- Start: PRODUCT LIST -->
		<div class="container">

			<!-- second_good_list start -->
			<div class="page-header">
				<h2>二手物品</h2>
			</div>
			<div class="row-fluid">
				<ul class="thumbnails">
					<s:iterator value="usedGoodList" id="usedGood">
						<li class="span4" id="${usedGood.id}">
							<div class="thumbnail">
								<s:property value="usedGood.name" />
								<img src="<s:url value="/images/%{#usedGood.imageName}"/>"
									width=700px />
								<div class="caption">
									<h3>
										<s:property value="#usedGood.name" />
									</h3>
									<s:property value="#usedGood.description" />
								</div>
								<div class="widget-footer">
									<p>
										<a href="#" class="btn btn-primary">Buy now</a>&nbsp; <a
											href="product.html" class="btn">Read more</a>
									</p>
								</div>
							</div></li>
					</s:iterator>
				</ul>
			</div>


			<!-- second_good_list end -->


			<!-- second_book_list start -->
			<div class="page-header">

				<h2>二手书籍</h2>
			</div>
			<div class="row-fluid">
				<ul class="thumbnails">
					<s:iterator value="usedBookList" id="usedBook">
						<li class="span4" id="${usedBook.id}">
							<div class="thumbnail">
								<s:property value="usedBook.name" />
								<img src="<s:url value="/images/%{#usedBook.imageName}"/>"
									width=700px />
								<div class="caption">
									<h3>
										<s:property value="#usedBook.name" />
									</h3>
									<s:property value="#usedGood.description" />
								</div>
								<div class="widget-footer">
									<p>
										<a href="#" class="btn btn-primary">Buy now</a>&nbsp; <a
											href="product.html" class="btn">Read more</a>
									</p>
								</div>
							</div></li>
					</s:iterator>
				</ul>
			</div>
		</div>
		<!-- second_book_list end -->
		<!-- End: PRODUCT LIST -->
	</div>
	<!-- End: MAIN CONTENT -->

	<s:include value="footer.jsp"></s:include>
</body>
</html>
