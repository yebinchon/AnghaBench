; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c_ccv_cnnp_dataframe_batching_new.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c_ccv_cnnp_dataframe_batching_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CCV_TENSOR_FORMAT_NCHW = common dso_local global i32 0, align 4
@CCV_TENSOR_FORMAT_NHWC = common dso_local global i32 0, align 4
@_ccv_cnnp_batching_new = common dso_local global i32 0, align 4
@_ccv_cnnp_batching_deinit = common dso_local global i32 0, align 4
@ccfree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ccv_cnnp_dataframe_batching_new(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @CCV_TENSOR_FORMAT_NCHW, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @CCV_TENSOR_FORMAT_NHWC, align 4
  %21 = icmp eq i32 %19, %20
  br label %22

22:                                               ; preds = %18, %6
  %23 = phi i1 [ true, %6 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ccv_cnnp_dataframe_make_tuple(i32* %38, i32* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = call i64 @ccmalloc(i32 16)
  %43 = inttoptr i64 %42 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %14, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @_ccv_cnnp_batching_new, align 4
  %61 = load i32, i32* @_ccv_cnnp_batching_deinit, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %67 = load i64, i64* @ccfree, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32* @ccv_cnnp_dataframe_reduce_new(i32* %59, i32 %60, i32 %61, i32 %62, i32 %65, %struct.TYPE_5__* %66, i32 %68)
  ret i32* %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_cnnp_dataframe_make_tuple(i32*, i32*, i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32* @ccv_cnnp_dataframe_reduce_new(i32*, i32, i32, i32, i32, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
