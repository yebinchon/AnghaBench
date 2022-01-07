; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotAddToTarget.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotAddToTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotAddToTarget(i32 %0, i32 %1, float %2, float* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float %2, float* %9, align 4
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @VectorSubtract(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %12, align 4
  %19 = call float @VectorNormalize(i32 %18)
  store float %19, float* %13, align 4
  %20 = load float*, float** %10, align 8
  %21 = load float, float* %20, align 4
  %22 = load float, float* %13, align 4
  %23 = fadd float %21, %22
  %24 = load float, float* %9, align 4
  %25 = fcmp olt float %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @VectorCopy(i32 %27, i32 %28)
  %30 = load float, float* %13, align 4
  %31 = load float*, float** %10, align 8
  %32 = load float, float* %31, align 4
  %33 = fadd float %32, %30
  store float %33, float* %31, align 4
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %6, align 4
  br label %47

35:                                               ; preds = %5
  %36 = load i32, i32* %7, align 4
  %37 = load float, float* %9, align 4
  %38 = load float*, float** %10, align 8
  %39 = load float, float* %38, align 4
  %40 = fsub float %37, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @VectorMA(i32 %36, float %40, i32 %41, i32 %42)
  %44 = load float, float* %9, align 4
  %45 = load float*, float** %10, align 8
  store float %44, float* %45, align 4
  %46 = load i32, i32* @qtrue, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %35, %26
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorNormalize(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
