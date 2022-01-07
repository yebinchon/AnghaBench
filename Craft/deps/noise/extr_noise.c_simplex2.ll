; ModuleID = '/home/carl/AnghaBench/Craft/deps/noise/extr_noise.c_simplex2.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/noise/extr_noise.c_simplex2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @simplex2(float %0, float %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  store float 1.000000e+00, float* %12, align 4
  store float 1.000000e+00, float* %13, align 4
  %16 = load float, float* %6, align 4
  %17 = load float, float* %7, align 4
  %18 = call float @noise2(float %16, float %17)
  store float %18, float* %14, align 4
  store i32 1, i32* %15, align 4
  br label %19

19:                                               ; preds = %44, %5
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load float, float* %10, align 4
  %25 = load float, float* %11, align 4
  %26 = fmul float %25, %24
  store float %26, float* %11, align 4
  %27 = load float, float* %9, align 4
  %28 = load float, float* %12, align 4
  %29 = fmul float %28, %27
  store float %29, float* %12, align 4
  %30 = load float, float* %12, align 4
  %31 = load float, float* %13, align 4
  %32 = fadd float %31, %30
  store float %32, float* %13, align 4
  %33 = load float, float* %6, align 4
  %34 = load float, float* %11, align 4
  %35 = fmul float %33, %34
  %36 = load float, float* %7, align 4
  %37 = load float, float* %11, align 4
  %38 = fmul float %36, %37
  %39 = call float @noise2(float %35, float %38)
  %40 = load float, float* %12, align 4
  %41 = fmul float %39, %40
  %42 = load float, float* %14, align 4
  %43 = fadd float %42, %41
  store float %43, float* %14, align 4
  br label %44

44:                                               ; preds = %23
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load float, float* %14, align 4
  %49 = load float, float* %13, align 4
  %50 = fdiv float %48, %49
  %51 = fadd float 1.000000e+00, %50
  %52 = fdiv float %51, 2.000000e+00
  ret float %52
}

declare dso_local float @noise2(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
