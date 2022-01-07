; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c_ccv_cnnp_dataframe_one_hot.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c_ccv_cnnp_dataframe_one_hot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, float, float, i32 }

@CCV_32F = common dso_local global i32 0, align 4
@CCV_16F = common dso_local global i32 0, align 4
@_ccv_cnnp_one_hot = common dso_local global i32 0, align 4
@_ccv_cnnp_tensor_deinit = common dso_local global i32 0, align 4
@ccfree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccv_cnnp_dataframe_one_hot(i32* %0, i32 %1, i32 %2, i32 %3, float %4, float %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* @CCV_32F, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @CCV_16F, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %21, %8
  %26 = phi i1 [ true, %8 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i64 @ccmalloc(i32 24)
  %30 = inttoptr i64 %29 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %17, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load float, float* %13, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store float %40, float* %42, align 4
  %43 = load float, float* %14, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store float %43, float* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @_ccv_cnnp_one_hot, align 4
  %51 = load i32, i32* @_ccv_cnnp_tensor_deinit, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @COLUMN_ID_LIST(i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %55 = load i64, i64* @ccfree, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @ccv_cnnp_dataframe_map(i32* %49, i32 %50, i32 0, i32 %51, i32 %53, %struct.TYPE_3__* %54, i32 %56)
  ret i32 %57
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @ccv_cnnp_dataframe_map(i32*, i32, i32, i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @COLUMN_ID_LIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
