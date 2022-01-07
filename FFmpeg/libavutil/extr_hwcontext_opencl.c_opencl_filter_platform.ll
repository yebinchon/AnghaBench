; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_filter_platform.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_filter_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@opencl_platform_params = common dso_local global %struct.TYPE_6__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to query %s of platform \22%s\22.\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s does not match (\22%s\22).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8*)* @opencl_filter_platform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opencl_filter_platform(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %75, %4
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @opencl_platform_params, align 8
  %20 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_6__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %17
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @opencl_platform_params, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_5__* @av_dict_get(i32* %23, i32 %29, i32* null, i32 0)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %11, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %75

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @opencl_platform_params, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @opencl_get_platform_string(i32 %35, i32 %41)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %34
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @opencl_platform_params, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @av_log(i32* %46, i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53, i8* %54)
  %56 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %56, i32* %5, align 4
  br label %80

57:                                               ; preds = %34
  %58 = load i8*, i8** %12, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @av_stristr(i8* %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @AV_LOG_DEBUG, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @av_log(i32* %65, i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %69, i8* %70)
  store i32 1, i32* %14, align 4
  br label %72

72:                                               ; preds = %64, %57
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @av_free(i8* %73)
  br label %75

75:                                               ; preds = %72, %33
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %17

78:                                               ; preds = %17
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %45
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @av_dict_get(i32*, i32, i32*, i32) #1

declare dso_local i8* @opencl_get_platform_string(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @av_stristr(i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
