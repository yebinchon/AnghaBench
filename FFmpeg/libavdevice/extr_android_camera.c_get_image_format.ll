; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_get_image_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_android_camera.c_get_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Pixel strides of U and V plane should have been the same.\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_PIX_FMT_NV12 = common dso_local global i32 0, align 4
@AV_PIX_FMT_NV21 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Unknown pixel stride %d of U and V plane, cannot determine camera image format.\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @get_image_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_image_format(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32*], align 16
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %35, %2
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %22
  %24 = call i32 @AImage_getPlanePixelStride(i32* %18, i32 %20, i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %29
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %32
  %34 = call i32 @AImage_getPlaneData(i32* %25, i32 %27, i32** %30, i32* %33)
  br label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %14

38:                                               ; preds = %14
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %45, i32 %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %48, i32* %3, align 4
  br label %80

49:                                               ; preds = %38
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %71 [
    i32 1, label %52
    i32 2, label %56
  ]

52:                                               ; preds = %49
  %53 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %79

56:                                               ; preds = %49
  %57 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %58 = load i32*, i32** %57, align 16
  %59 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ult i32* %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @AV_PIX_FMT_NV12, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @AV_PIX_FMT_NV21, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %79

71:                                               ; preds = %49
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %72, i32 %73, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ENOSYS, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %70, %52
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %71, %44
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @AImage_getPlanePixelStride(i32*, i32, i32*) #1

declare dso_local i32 @AImage_getPlaneData(i32*, i32, i32**, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
