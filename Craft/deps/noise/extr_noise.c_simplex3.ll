; ModuleID = '/home/carl/AnghaBench/Craft/deps/noise/extr_noise.c_simplex3.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/noise/extr_noise.c_simplex3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @simplex3(float %0, float %1, float %2, i32 %3, float %4, float %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  store float 1.000000e+00, float* %13, align 4
  store float 1.000000e+00, float* %14, align 4
  store float 1.000000e+00, float* %15, align 4
  %18 = load float, float* %7, align 4
  %19 = load float, float* %8, align 4
  %20 = load float, float* %9, align 4
  %21 = call float @noise3(float %18, float %19, float %20)
  store float %21, float* %16, align 4
  store i32 1, i32* %17, align 4
  br label %22

22:                                               ; preds = %50, %6
  %23 = load i32, i32* %17, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load float, float* %12, align 4
  %28 = load float, float* %13, align 4
  %29 = fmul float %28, %27
  store float %29, float* %13, align 4
  %30 = load float, float* %11, align 4
  %31 = load float, float* %14, align 4
  %32 = fmul float %31, %30
  store float %32, float* %14, align 4
  %33 = load float, float* %14, align 4
  %34 = load float, float* %15, align 4
  %35 = fadd float %34, %33
  store float %35, float* %15, align 4
  %36 = load float, float* %7, align 4
  %37 = load float, float* %13, align 4
  %38 = fmul float %36, %37
  %39 = load float, float* %8, align 4
  %40 = load float, float* %13, align 4
  %41 = fmul float %39, %40
  %42 = load float, float* %9, align 4
  %43 = load float, float* %13, align 4
  %44 = fmul float %42, %43
  %45 = call float @noise3(float %38, float %41, float %44)
  %46 = load float, float* %14, align 4
  %47 = fmul float %45, %46
  %48 = load float, float* %16, align 4
  %49 = fadd float %48, %47
  store float %49, float* %16, align 4
  br label %50

50:                                               ; preds = %26
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load float, float* %16, align 4
  %55 = load float, float* %15, align 4
  %56 = fdiv float %54, %55
  %57 = fadd float 1.000000e+00, %56
  %58 = fdiv float %57, 2.000000e+00
  ret float %58
}

declare dso_local float @noise3(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
