; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_device_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_opencl.c_opencl_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32*, i32*, i32* }

@opencl_filter_device = common dso_local global i32 0, align 4
@opencl_enumerate_devices = common dso_local global i32 0, align 4
@opencl_filter_platform = common dso_local global i32 0, align 4
@opencl_enumerate_platforms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Invalid OpenCL platform/device index specification \22%s\22.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32)* @opencl_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opencl_device_create(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i32* @opencl_filter_device, i32** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i32* @opencl_enumerate_devices, i32** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  store i32* @opencl_filter_platform, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  store i32* @opencl_enumerate_platforms, i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 6
  %21 = load i32*, i32** %8, align 8
  store i32* %21, i32** %20, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %4
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %24
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %38, i32* %13, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %12, i32* %11)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @av_log(i32* %46, i32 %47, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %63

52:                                               ; preds = %42
  %53 = load i32, i32* %12, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  br label %60

57:                                               ; preds = %24, %4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @opencl_device_create_internal(i32* %61, %struct.TYPE_3__* %10, i32* null)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %45
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @opencl_device_create_internal(i32*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
