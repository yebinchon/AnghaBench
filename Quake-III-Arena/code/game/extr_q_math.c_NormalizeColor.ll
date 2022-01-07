; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_NormalizeColor.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_NormalizeColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @NormalizeColor(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load float*, float** %3, align 8
  %7 = getelementptr inbounds float, float* %6, i64 0
  %8 = load float, float* %7, align 4
  store float %8, float* %5, align 4
  %9 = load float*, float** %3, align 8
  %10 = getelementptr inbounds float, float* %9, i64 1
  %11 = load float, float* %10, align 4
  %12 = load float, float* %5, align 4
  %13 = fcmp ogt float %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load float*, float** %3, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  store float %17, float* %5, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load float*, float** %3, align 8
  %20 = getelementptr inbounds float, float* %19, i64 2
  %21 = load float, float* %20, align 4
  %22 = load float, float* %5, align 4
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load float*, float** %3, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  %27 = load float, float* %26, align 4
  store float %27, float* %5, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load float, float* %5, align 4
  %30 = fcmp une float %29, 0.000000e+00
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load float*, float** %4, align 8
  %33 = call i32 @VectorClear(float* %32)
  br label %56

34:                                               ; preds = %28
  %35 = load float*, float** %3, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  %37 = load float, float* %36, align 4
  %38 = load float, float* %5, align 4
  %39 = fdiv float %37, %38
  %40 = load float*, float** %4, align 8
  %41 = getelementptr inbounds float, float* %40, i64 0
  store float %39, float* %41, align 4
  %42 = load float*, float** %3, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  %45 = load float, float* %5, align 4
  %46 = fdiv float %44, %45
  %47 = load float*, float** %4, align 8
  %48 = getelementptr inbounds float, float* %47, i64 1
  store float %46, float* %48, align 4
  %49 = load float*, float** %3, align 8
  %50 = getelementptr inbounds float, float* %49, i64 2
  %51 = load float, float* %50, align 4
  %52 = load float, float* %5, align 4
  %53 = fdiv float %51, %52
  %54 = load float*, float** %4, align 8
  %55 = getelementptr inbounds float, float* %54, i64 2
  store float %53, float* %55, align 4
  br label %56

56:                                               ; preds = %34, %31
  %57 = load float, float* %5, align 4
  ret float %57
}

declare dso_local i32 @VectorClear(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
