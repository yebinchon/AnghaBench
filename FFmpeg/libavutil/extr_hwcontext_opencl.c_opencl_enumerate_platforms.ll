; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_enumerate_platforms.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_enumerate_platforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CL_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to get number of OpenCL platforms: %d.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%u OpenCL platforms found.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to get list of OpenCL platforms: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32**, i8*)* @opencl_enumerate_platforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opencl_enumerate_platforms(i32* %0, i64* %1, i32** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = call i64 @clGetPlatformIDs(i64 0, i32* null, i64* %11)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @CL_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @AV_LOG_ERROR, align 4
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @av_log(i32* %17, i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @AV_LOG_DEBUG, align 4
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @av_log(i32* %24, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = call i32* @av_malloc_array(i64 %30, i32 4)
  %32 = load i32**, i32*** %8, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %58

39:                                               ; preds = %23
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32**, i32*** %8, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @clGetPlatformIDs(i64 %41, i32* %43, i64* null)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @CL_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @av_log(i32* %49, i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = load i32**, i32*** %8, align 8
  %54 = call i32 @av_freep(i32** %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %48, %36, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @clGetPlatformIDs(i64, i32*, i64*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_malloc_array(i64, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
