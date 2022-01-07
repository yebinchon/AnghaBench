; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c__VectorMA.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c__VectorMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_VectorMA(float* %0, float %1, float* %2, float* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store float* %0, float** %5, align 8
  store float %1, float* %6, align 4
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %9 = load float*, float** %5, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = load float, float* %6, align 4
  %13 = load float*, float** %7, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  %15 = load float, float* %14, align 4
  %16 = fmul float %12, %15
  %17 = fadd float %11, %16
  %18 = load float*, float** %8, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  store float %17, float* %19, align 4
  %20 = load float*, float** %5, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  %22 = load float, float* %21, align 4
  %23 = load float, float* %6, align 4
  %24 = load float*, float** %7, align 8
  %25 = getelementptr inbounds float, float* %24, i64 1
  %26 = load float, float* %25, align 4
  %27 = fmul float %23, %26
  %28 = fadd float %22, %27
  %29 = load float*, float** %8, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  store float %28, float* %30, align 4
  %31 = load float*, float** %5, align 8
  %32 = getelementptr inbounds float, float* %31, i64 2
  %33 = load float, float* %32, align 4
  %34 = load float, float* %6, align 4
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i64 2
  %37 = load float, float* %36, align 4
  %38 = fmul float %34, %37
  %39 = fadd float %33, %38
  %40 = load float*, float** %8, align 8
  %41 = getelementptr inbounds float, float* %40, i64 2
  store float %39, float* %41, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
