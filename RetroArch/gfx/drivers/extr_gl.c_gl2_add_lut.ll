; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_add_lut.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_add_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i32*, i64, i64, i32 }

@TEXTURE_FILTER_LINEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"[GL]: Failed to load texture image from: \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"[GL]: Loaded texture image from: \22%s\22 ...\0A\00", align 1
@RARCH_FILTER_NEAREST = common dso_local global i32 0, align 4
@TEXTURE_FILTER_NEAREST = common dso_local global i32 0, align 4
@TEXTURE_FILTER_MIPMAP_NEAREST = common dso_local global i32 0, align 4
@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, i32*)* @gl2_add_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl2_add_lut(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.texture_image, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* @TEXTURE_FILTER_LINEAR, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %14, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %14, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %14, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = call i32 (...) @video_driver_supports_rgba()
  %21 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %14, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @image_texture_load(%struct.texture_image* %14, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 0, i32* %7, align 4
  br label %64

28:                                               ; preds = %6
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @RARCH_FILTER_NEAREST, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @TEXTURE_FILTER_NEAREST, align 4
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @TEXTURE_FILTER_NEAREST, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @TEXTURE_FILTER_MIPMAP_NEAREST, align 4
  store i32 %44, i32* %15, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %36
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %15, align 4
  %56 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %14, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %14, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %14, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @gl_load_texture_data(i32 %53, i32 %54, i32 %55, i32 4, i64 %57, i64 %59, i32* %61, i32 4)
  %63 = call i32 @image_texture_free(%struct.texture_image* %14)
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %48, %25
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @video_driver_supports_rgba(...) #1

declare dso_local i32 @image_texture_load(%struct.texture_image*, i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @gl_load_texture_data(i32, i32, i32, i32, i64, i64, i32*, i32) #1

declare dso_local i32 @image_texture_free(%struct.texture_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
