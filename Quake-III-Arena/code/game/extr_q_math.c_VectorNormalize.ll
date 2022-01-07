; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_VectorNormalize.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_VectorNormalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @VectorNormalize(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float* %0, float** %2, align 8
  %5 = load float*, float** %2, align 8
  %6 = getelementptr inbounds float, float* %5, i64 0
  %7 = load float, float* %6, align 4
  %8 = load float*, float** %2, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = fmul float %7, %10
  %12 = load float*, float** %2, align 8
  %13 = getelementptr inbounds float, float* %12, i64 1
  %14 = load float, float* %13, align 4
  %15 = load float*, float** %2, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  %18 = fmul float %14, %17
  %19 = fadd float %11, %18
  %20 = load float*, float** %2, align 8
  %21 = getelementptr inbounds float, float* %20, i64 2
  %22 = load float, float* %21, align 4
  %23 = load float*, float** %2, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  %25 = load float, float* %24, align 4
  %26 = fmul float %22, %25
  %27 = fadd float %19, %26
  store float %27, float* %3, align 4
  %28 = load float, float* %3, align 4
  %29 = call float @sqrt(float %28)
  store float %29, float* %3, align 4
  %30 = load float, float* %3, align 4
  %31 = fcmp une float %30, 0.000000e+00
  br i1 %31, label %32, label %50

32:                                               ; preds = %1
  %33 = load float, float* %3, align 4
  %34 = fdiv float 1.000000e+00, %33
  store float %34, float* %4, align 4
  %35 = load float, float* %4, align 4
  %36 = load float*, float** %2, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = fmul float %38, %35
  store float %39, float* %37, align 4
  %40 = load float, float* %4, align 4
  %41 = load float*, float** %2, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  %43 = load float, float* %42, align 4
  %44 = fmul float %43, %40
  store float %44, float* %42, align 4
  %45 = load float, float* %4, align 4
  %46 = load float*, float** %2, align 8
  %47 = getelementptr inbounds float, float* %46, i64 2
  %48 = load float, float* %47, align 4
  %49 = fmul float %48, %45
  store float %49, float* %47, align 4
  br label %50

50:                                               ; preds = %32, %1
  %51 = load float, float* %3, align 4
  ret float %51
}

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
