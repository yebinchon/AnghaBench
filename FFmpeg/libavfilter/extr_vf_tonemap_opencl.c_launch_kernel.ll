; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap_opencl.c_launch_kernel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap_opencl.c_launch_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { float, i32 }
%struct.TYPE_10__ = type { float* }

@ENOSYS = common dso_local global i32 0, align 4
@cl_mem = common dso_local global i32 0, align 4
@cl_float = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to enqueue kernel: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, float)* @launch_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @launch_kernel(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x i64], align 16
  %15 = alloca [2 x i64], align 16
  %16 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store float %4, float* %11, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %12, align 8
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @cl_mem, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load float*, float** %25, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = call i32 @CL_SET_KERNEL_ARG(i32 %22, i32 0, i32 %23, float* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @cl_mem, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load float*, float** %32, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = call i32 @CL_SET_KERNEL_ARG(i32 %29, i32 1, i32 %30, float* %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @cl_mem, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load float*, float** %39, align 8
  %41 = getelementptr inbounds float, float* %40, i64 1
  %42 = call i32 @CL_SET_KERNEL_ARG(i32 %36, i32 2, i32 %37, float* %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @cl_mem, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load float*, float** %46, align 8
  %48 = getelementptr inbounds float, float* %47, i64 1
  %49 = call i32 @CL_SET_KERNEL_ARG(i32 %43, i32 3, i32 %44, float* %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @cl_mem, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = call i32 @CL_SET_KERNEL_ARG(i32 %50, i32 4, i32 %51, float* %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @cl_float, align 4
  %57 = call i32 @CL_SET_KERNEL_ARG(i32 %55, i32 5, i32 %56, float* %11)
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  store i64 16, i64* %58, align 16
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 1
  store i64 16, i64* %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = call i32 @ff_opencl_filter_work_size_from_image(%struct.TYPE_11__* %60, i64* %61, %struct.TYPE_10__* %62, i32 1, i32 16)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %5
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %6, align 4
  br label %82

68:                                               ; preds = %5
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %75 = call i32 @clEnqueueNDRangeKernel(i32 %71, i32 %72, i32 2, i32* null, i64* %73, i64* %74, i32 0, i32* null, i32* null)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* @EIO, align 4
  %77 = call i32 @AVERROR(i32 %76)
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @CL_FAIL_ON_ERROR(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 0, i32* %6, align 4
  br label %82

80:                                               ; No predecessors!
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %68, %66
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @CL_SET_KERNEL_ARG(i32, i32, i32, float*) #1

declare dso_local i32 @ff_opencl_filter_work_size_from_image(%struct.TYPE_11__*, i64*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @clEnqueueNDRangeKernel(i32, i32, i32, i32*, i64*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @CL_FAIL_ON_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
