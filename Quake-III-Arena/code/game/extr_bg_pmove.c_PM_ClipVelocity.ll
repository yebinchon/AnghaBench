; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_ClipVelocity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_ClipVelocity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PM_ClipVelocity(float* %0, float* %1, float* %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %12 = load float*, float** %5, align 8
  %13 = load float*, float** %6, align 8
  %14 = call float @DotProduct(float* %12, float* %13)
  store float %14, float* %9, align 4
  %15 = load float, float* %9, align 4
  %16 = fcmp olt float %15, 0.000000e+00
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load float, float* %8, align 4
  %19 = load float, float* %9, align 4
  %20 = fmul float %19, %18
  store float %20, float* %9, align 4
  br label %25

21:                                               ; preds = %4
  %22 = load float, float* %8, align 4
  %23 = load float, float* %9, align 4
  %24 = fdiv float %23, %22
  store float %24, float* %9, align 4
  br label %25

25:                                               ; preds = %21, %17
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load float*, float** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = load float, float* %9, align 4
  %36 = fmul float %34, %35
  store float %36, float* %10, align 4
  %37 = load float*, float** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float, float* %10, align 4
  %43 = fsub float %41, %42
  %44 = load float*, float** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %43, float* %47, align 4
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %26

51:                                               ; preds = %26
  ret void
}

declare dso_local float @DotProduct(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
