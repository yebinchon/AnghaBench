; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_opencl.c_ff_opencl_filter_work_size_from_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_opencl.c_ff_opencl_filter_work_size_from_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64* }

@AV_PIX_FMT_OPENCL = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Invalid frame format %s, opencl required.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Plane %d required but not set.\0A\00", align 1
@CL_MEM_TYPE = common dso_local global i32 0, align 4
@CL_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed to query object type of plane %d: %d.\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@CL_MEM_OBJECT_IMAGE2D = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Plane %d is not a 2D image.\0A\00", align 1
@CL_IMAGE_WIDTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to query plane %d width: %d.\0A\00", align 1
@CL_IMAGE_HEIGHT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to query plane %d height: %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_opencl_filter_work_size_from_image(i32* %0, i64* %1, %struct.TYPE_3__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AV_PIX_FMT_OPENCL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %5
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @av_get_pix_fmt_name(i64 %27)
  %29 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %23, i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %6, align 4
  br label %119

32:                                               ; preds = %5
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %32
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %43, i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %6, align 4
  br label %119

49:                                               ; preds = %32
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* @CL_MEM_TYPE, align 4
  %52 = call i64 @clGetMemObjectInfo(i64 %50, i32 %51, i32 8, i64* %13, i32* null)
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* @CL_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* %16, align 8
  %61 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %57, i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %59, i64 %60)
  %62 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %62, i32* %6, align 4
  br label %119

63:                                               ; preds = %49
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @CL_MEM_OBJECT_IMAGE2D, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %68, i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %6, align 4
  br label %119

74:                                               ; preds = %63
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* @CL_IMAGE_WIDTH, align 4
  %77 = call i64 @clGetImageInfo(i64 %75, i32 %76, i32 8, i64* %14, i32* null)
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* @CL_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i64, i64* %16, align 8
  %86 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %82, i32 %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %84, i64 %85)
  %87 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %87, i32* %6, align 4
  br label %119

88:                                               ; preds = %74
  %89 = load i64, i64* %12, align 8
  %90 = load i32, i32* @CL_IMAGE_HEIGHT, align 4
  %91 = call i64 @clGetImageInfo(i64 %89, i32 %90, i32 8, i64* %15, i32* null)
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* @CL_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i64, i64* %16, align 8
  %100 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %96, i32 %97, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %98, i64 %99)
  %101 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %101, i32* %6, align 4
  br label %119

102:                                              ; preds = %88
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i64, i64* %14, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i64 @FFALIGN(i64 %106, i32 %107)
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @FFALIGN(i64 %109, i32 %110)
  store i64 %111, i64* %15, align 8
  br label %112

112:                                              ; preds = %105, %102
  %113 = load i64, i64* %14, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 1
  store i64 %116, i64* %118, align 8
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %112, %95, %81, %67, %56, %42, %22
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @clGetMemObjectInfo(i64, i32, i32, i64*, i32*) #1

declare dso_local i64 @clGetImageInfo(i64, i32, i32, i64*, i32*) #1

declare dso_local i64 @FFALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
