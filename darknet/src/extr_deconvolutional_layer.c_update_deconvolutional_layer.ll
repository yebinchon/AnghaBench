; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_update_deconvolutional_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_update_deconvolutional_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { float, float, float, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_deconvolutional_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, <2 x float> %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.TYPE_5__* %4 to { <2 x float>, i64 }*
  %11 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %10, i32 0, i32 0
  store <2 x float> %1, <2 x float>* %11, align 4
  %12 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %10, i32 0, i32 1
  store i64 %2, i64* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %16 = load float, float* %15, align 8
  %17 = fmul float %14, %16
  store float %17, float* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %19 = load float, float* %18, align 4
  store float %19, float* %6, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %21 = load float, float* %20, align 4
  store float %21, float* %7, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %25, %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %28, %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %31, %33
  store i32 %34, i32* %9, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load float, float* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %37, %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @axpy_cpu(i32 %36, float %40, i32 %42, i32 1, i32 %44, i32 1)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load float, float* %6, align 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @scal_cpu(i32 %47, float %48, i32 %50, i32 1)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load float, float* %5, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %58, %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @axpy_cpu(i32 %57, float %61, i32 %63, i32 1, i32 %65, i32 1)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load float, float* %6, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @scal_cpu(i32 %68, float %69, i32 %71, i32 1)
  br label %73

73:                                               ; preds = %55, %3
  %74 = load i32, i32* %9, align 4
  %75 = load float, float* %7, align 4
  %76 = fneg float %75
  %77 = load i32, i32* %8, align 4
  %78 = sitofp i32 %77 to float
  %79 = fmul float %76, %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @axpy_cpu(i32 %74, float %79, i32 %81, i32 1, i32 %83, i32 1)
  %85 = load i32, i32* %9, align 4
  %86 = load float, float* %5, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sitofp i32 %87 to float
  %89 = fdiv float %86, %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @axpy_cpu(i32 %85, float %89, i32 %91, i32 1, i32 %93, i32 1)
  %95 = load i32, i32* %9, align 4
  %96 = load float, float* %6, align 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @scal_cpu(i32 %95, float %96, i32 %98, i32 1)
  ret void
}

declare dso_local i32 @axpy_cpu(i32, float, i32, i32, i32, i32) #1

declare dso_local i32 @scal_cpu(i32, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
