; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_local_layer.c_update_local_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_local_layer.c_update_local_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { float, float, float, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_local_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, <2 x float> %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_5__* %4 to { <2 x float>, i64 }*
  %12 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %11, i32 0, i32 0
  store <2 x float> %1, <2 x float>* %12, align 4
  %13 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %15 = load float, float* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %17 = load float, float* %16, align 8
  %18 = fmul float %15, %17
  store float %18, float* %5, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %20 = load float, float* %19, align 4
  store float %20, float* %6, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %22 = load float, float* %21, align 4
  store float %22, float* %7, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %26, %28
  store i32 %29, i32* %9, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %31, %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %34, %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %37, %39
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %10, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load float, float* %5, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sitofp i32 %46 to float
  %48 = fdiv float %45, %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @axpy_cpu(i32 %44, float %48, i32 %50, i32 1, i32 %52, i32 1)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load float, float* %6, align 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @scal_cpu(i32 %55, float %56, i32 %58, i32 1)
  %60 = load i32, i32* %10, align 4
  %61 = load float, float* %7, align 4
  %62 = fneg float %61
  %63 = load i32, i32* %8, align 4
  %64 = sitofp i32 %63 to float
  %65 = fmul float %62, %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @axpy_cpu(i32 %60, float %65, i32 %67, i32 1, i32 %69, i32 1)
  %71 = load i32, i32* %10, align 4
  %72 = load float, float* %5, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sitofp i32 %73 to float
  %75 = fdiv float %72, %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @axpy_cpu(i32 %71, float %75, i32 %77, i32 1, i32 %79, i32 1)
  %81 = load i32, i32* %10, align 4
  %82 = load float, float* %6, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @scal_cpu(i32 %81, float %82, i32 %84, i32 1)
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
