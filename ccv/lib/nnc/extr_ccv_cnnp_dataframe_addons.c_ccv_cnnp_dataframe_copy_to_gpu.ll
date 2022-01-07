; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c_ccv_cnnp_dataframe_copy_to_gpu.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c_ccv_cnnp_dataframe_copy_to_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CCV_STREAM_CONTEXT_GPU = common dso_local global i32 0, align 4
@_ccv_cnnp_copy_to_gpu = common dso_local global i32 0, align 4
@_ccv_cnnp_tensor_list_deinit = common dso_local global i32 0, align 4
@ccfree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_cnnp_dataframe_copy_to_gpu(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @CCV_STREAM_CONTEXT_GPU, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @CCV_STREAM_SET_DEVICE_ID(i32 %18, i32 %19)
  %21 = call i64 @ccmalloc(i32 12)
  %22 = inttoptr i64 %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @_ccv_cnnp_copy_to_gpu, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @_ccv_cnnp_tensor_list_deinit, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @COLUMN_ID_LIST(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %40 = load i64, i64* @ccfree, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @ccv_cnnp_dataframe_map(i32* %33, i32 %34, i32 %35, i32 %36, i32 %38, %struct.TYPE_5__* %39, i32 %41)
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_STREAM_SET_DEVICE_ID(i32, i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @ccv_cnnp_dataframe_map(i32*, i32, i32, i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @COLUMN_ID_LIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
