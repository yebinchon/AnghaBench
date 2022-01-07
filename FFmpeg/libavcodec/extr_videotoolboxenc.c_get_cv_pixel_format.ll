; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_pixel_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVCOL_RANGE_MPEG = common dso_local global i32 0, align 4
@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@AV_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr8BiPlanarFullRange = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr8PlanarFullRange = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr8Planar = common dso_local global i32 0, align 4
@AV_PIX_FMT_P010LE = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr10BiPlanarFullRange = common dso_local global i32 0, align 4
@kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*)* @get_cv_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cv_pixel_format(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @AVCOL_RANGE_MPEG, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %21 = icmp ne i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** %11, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %5
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @AV_PIX_FMT_NV12, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @kCVPixelFormatType_420YpCbCr8BiPlanarFullRange, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  br label %78

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @kCVPixelFormatType_420YpCbCr8PlanarFullRange, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @kCVPixelFormatType_420YpCbCr8Planar, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  br label %77

56:                                               ; preds = %41
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @AV_PIX_FMT_P010LE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @kCVPixelFormatType_420YpCbCr10BiPlanarFullRange, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange, align 4
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  br label %76

73:                                               ; preds = %56
  %74 = load i32, i32* @EINVAL, align 4
  %75 = call i32 @AVERROR(i32 %74)
  store i32 %75, i32* %6, align 4
  br label %79

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77, %38
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
