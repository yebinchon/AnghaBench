; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_mathlib.c_VectorRotate3x3.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_mathlib.c_VectorRotate3x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VectorRotate3x3(float* %0, [3 x float]* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca [3 x float]*, align 8
  %6 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store [3 x float]* %1, [3 x float]** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load float*, float** %4, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  %9 = load float, float* %8, align 4
  %10 = load [3 x float]*, [3 x float]** %5, align 8
  %11 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0
  %12 = getelementptr inbounds [3 x float], [3 x float]* %11, i64 0, i64 0
  %13 = load float, float* %12, align 4
  %14 = fmul float %9, %13
  %15 = load float*, float** %4, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  %18 = load [3 x float]*, [3 x float]** %5, align 8
  %19 = getelementptr inbounds [3 x float], [3 x float]* %18, i64 1
  %20 = getelementptr inbounds [3 x float], [3 x float]* %19, i64 0, i64 0
  %21 = load float, float* %20, align 4
  %22 = fmul float %17, %21
  %23 = fadd float %14, %22
  %24 = load float*, float** %4, align 8
  %25 = getelementptr inbounds float, float* %24, i64 2
  %26 = load float, float* %25, align 4
  %27 = load [3 x float]*, [3 x float]** %5, align 8
  %28 = getelementptr inbounds [3 x float], [3 x float]* %27, i64 2
  %29 = getelementptr inbounds [3 x float], [3 x float]* %28, i64 0, i64 0
  %30 = load float, float* %29, align 4
  %31 = fmul float %26, %30
  %32 = fadd float %23, %31
  %33 = load float*, float** %6, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  store float %32, float* %34, align 4
  %35 = load float*, float** %4, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = load [3 x float]*, [3 x float]** %5, align 8
  %39 = getelementptr inbounds [3 x float], [3 x float]* %38, i64 0
  %40 = getelementptr inbounds [3 x float], [3 x float]* %39, i64 0, i64 1
  %41 = load float, float* %40, align 4
  %42 = fmul float %37, %41
  %43 = load float*, float** %4, align 8
  %44 = getelementptr inbounds float, float* %43, i64 1
  %45 = load float, float* %44, align 4
  %46 = load [3 x float]*, [3 x float]** %5, align 8
  %47 = getelementptr inbounds [3 x float], [3 x float]* %46, i64 1
  %48 = getelementptr inbounds [3 x float], [3 x float]* %47, i64 0, i64 1
  %49 = load float, float* %48, align 4
  %50 = fmul float %45, %49
  %51 = fadd float %42, %50
  %52 = load float*, float** %4, align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  %54 = load float, float* %53, align 4
  %55 = load [3 x float]*, [3 x float]** %5, align 8
  %56 = getelementptr inbounds [3 x float], [3 x float]* %55, i64 2
  %57 = getelementptr inbounds [3 x float], [3 x float]* %56, i64 0, i64 1
  %58 = load float, float* %57, align 4
  %59 = fmul float %54, %58
  %60 = fadd float %51, %59
  %61 = load float*, float** %6, align 8
  %62 = getelementptr inbounds float, float* %61, i64 1
  store float %60, float* %62, align 4
  %63 = load float*, float** %4, align 8
  %64 = getelementptr inbounds float, float* %63, i64 0
  %65 = load float, float* %64, align 4
  %66 = load [3 x float]*, [3 x float]** %5, align 8
  %67 = getelementptr inbounds [3 x float], [3 x float]* %66, i64 0
  %68 = getelementptr inbounds [3 x float], [3 x float]* %67, i64 0, i64 2
  %69 = load float, float* %68, align 4
  %70 = fmul float %65, %69
  %71 = load float*, float** %4, align 8
  %72 = getelementptr inbounds float, float* %71, i64 1
  %73 = load float, float* %72, align 4
  %74 = load [3 x float]*, [3 x float]** %5, align 8
  %75 = getelementptr inbounds [3 x float], [3 x float]* %74, i64 1
  %76 = getelementptr inbounds [3 x float], [3 x float]* %75, i64 0, i64 2
  %77 = load float, float* %76, align 4
  %78 = fmul float %73, %77
  %79 = fadd float %70, %78
  %80 = load float*, float** %4, align 8
  %81 = getelementptr inbounds float, float* %80, i64 2
  %82 = load float, float* %81, align 4
  %83 = load [3 x float]*, [3 x float]** %5, align 8
  %84 = getelementptr inbounds [3 x float], [3 x float]* %83, i64 2
  %85 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 0, i64 2
  %86 = load float, float* %85, align 4
  %87 = fmul float %82, %86
  %88 = fadd float %79, %87
  %89 = load float*, float** %6, align 8
  %90 = getelementptr inbounds float, float* %89, i64 2
  store float %88, float* %90, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
