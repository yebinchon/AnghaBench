; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_enumerate_devices.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_enumerate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CL_DEVICE_TYPE_ALL = common dso_local global i32 0, align 4
@CL_DEVICE_NOT_FOUND = common dso_local global i8* null, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No devices found on platform \22%s\22.\0A\00", align 1
@CL_SUCCESS = common dso_local global i8* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to get number of devices on platform \22%s\22: %d.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"%u OpenCL devices found on platform \22%s\22.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Failed to get list of devices on platform \22%s\22: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8**, i32**, i8*)* @opencl_enumerate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opencl_enumerate_devices(i32* %0, i32 %1, i8* %2, i8** %3, i32** %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @CL_DEVICE_TYPE_ALL, align 4
  %17 = load i8**, i8*** %11, align 8
  %18 = call i8* @clGetDeviceIDs(i32 %15, i32 %16, i8* null, i32* null, i8** %17)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = load i8*, i8** @CL_DEVICE_NOT_FOUND, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %6
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @AV_LOG_DEBUG, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %23, i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i8**, i8*** %11, align 8
  store i8* null, i8** %27, align 8
  store i32 0, i32* %7, align 4
  br label %80

28:                                               ; preds = %6
  %29 = load i8*, i8** %14, align 8
  %30 = load i8*, i8** @CL_SUCCESS, align 8
  %31 = icmp ne i8* %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %33, i32 %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %80

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @AV_LOG_DEBUG, align 4
  %44 = load i8**, i8*** %11, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %42, i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %46)
  %48 = load i8**, i8*** %11, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32* @av_malloc_array(i8* %49, i32 4)
  %51 = load i32**, i32*** %12, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32**, i32*** %12, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %80

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @CL_DEVICE_TYPE_ALL, align 4
  %61 = load i8**, i8*** %11, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i32**, i32*** %12, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i8* @clGetDeviceIDs(i32 %59, i32 %60, i8* %62, i32* %64, i8** null)
  store i8* %65, i8** %14, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** @CL_SUCCESS, align 8
  %68 = icmp ne i8* %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %58
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 (i32*, i32, i8*, i8*, ...) @av_log(i32* %70, i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %72, i8* %73)
  %75 = load i32**, i32*** %12, align 8
  %76 = call i32 @av_freep(i32** %75)
  %77 = load i32, i32* @ENODEV, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %7, align 4
  br label %80

79:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %69, %55, %32, %22
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i8* @clGetDeviceIDs(i32, i32, i8*, i32*, i8**) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_malloc_array(i8*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
