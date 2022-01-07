; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_update_convolutional_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_update_convolutional_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { float, float, float, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_convolutional_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, <2 x float> %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_5__* %4 to { <2 x float>, i64 }*
  %10 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %9, i32 0, i32 0
  store <2 x float> %1, <2 x float>* %10, align 4
  %11 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %9, i32 0, i32 1
  store i64 %2, i64* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %15 = load float, float* %14, align 8
  %16 = fmul float %13, %15
  store float %16, float* %5, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %18 = load float, float* %17, align 4
  store float %18, float* %6, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %20 = load float, float* %19, align 4
  store float %20, float* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load float, float* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %25, %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @axpy_cpu(i32 %24, float %28, i32 %30, i32 1, i32 %32, i32 1)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load float, float* %6, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @scal_cpu(i32 %35, float %36, i32 %38, i32 1)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load float, float* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %46, %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @axpy_cpu(i32 %45, float %49, i32 %51, i32 1, i32 %53, i32 1)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load float, float* %6, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @scal_cpu(i32 %56, float %57, i32 %59, i32 1)
  br label %61

61:                                               ; preds = %43, %3
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load float, float* %7, align 4
  %65 = fneg float %64
  %66 = load i32, i32* %8, align 4
  %67 = sitofp i32 %66 to float
  %68 = fmul float %65, %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @axpy_cpu(i32 %63, float %68, i32 %70, i32 1, i32 %72, i32 1)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load float, float* %5, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sitofp i32 %77 to float
  %79 = fdiv float %76, %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @axpy_cpu(i32 %75, float %79, i32 %81, i32 1, i32 %83, i32 1)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load float, float* %6, align 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @scal_cpu(i32 %86, float %87, i32 %89, i32 1)
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
