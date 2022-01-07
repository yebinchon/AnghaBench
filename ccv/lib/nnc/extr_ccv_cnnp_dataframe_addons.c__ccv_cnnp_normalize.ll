; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c__ccv_cnnp_normalize.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_dataframe_addons.c__ccv_cnnp_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*, float*)* @_ccv_cnnp_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_normalize(%struct.TYPE_5__* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load float*, float** %19, align 8
  store float* %20, float** %9, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %87, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %90

25:                                               ; preds = %21
  %26 = load float*, float** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %26, i64 %29
  %31 = load float, float* %30, align 4
  %32 = load float*, float** %5, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  %34 = load float, float* %33, align 4
  %35 = fsub float %31, %34
  %36 = load float*, float** %6, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = fmul float %35, %38
  %40 = load float*, float** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %41, 3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %40, i64 %43
  store float %39, float* %44, align 4
  %45 = load float*, float** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, 3
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %45, i64 %49
  %51 = load float, float* %50, align 4
  %52 = load float*, float** %5, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load float, float* %53, align 4
  %55 = fsub float %51, %54
  %56 = load float*, float** %6, align 8
  %57 = getelementptr inbounds float, float* %56, i64 1
  %58 = load float, float* %57, align 4
  %59 = fmul float %55, %58
  %60 = load float*, float** %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %61, 3
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %60, i64 %64
  store float %59, float* %65, align 4
  %66 = load float*, float** %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, 3
  %69 = add nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %66, i64 %70
  %72 = load float, float* %71, align 4
  %73 = load float*, float** %5, align 8
  %74 = getelementptr inbounds float, float* %73, i64 2
  %75 = load float, float* %74, align 4
  %76 = fsub float %72, %75
  %77 = load float*, float** %6, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  %79 = load float, float* %78, align 4
  %80 = fmul float %76, %79
  %81 = load float*, float** %9, align 8
  %82 = load i32, i32* %7, align 4
  %83 = mul nsw i32 %82, 3
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %81, i64 %85
  store float %80, float* %86, align 4
  br label %87

87:                                               ; preds = %25
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %21

90:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
