; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_flog2.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_flog2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @flog2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @flog2(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %2, align 4
  store float 0.000000e+00, float* %3, align 4
  br label %4

4:                                                ; preds = %7, %1
  %5 = load float, float* %2, align 4
  %6 = fcmp ogt float %5, 3.200000e+01
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load float, float* %3, align 4
  %9 = fadd float %8, 4.000000e+00
  store float %9, float* %3, align 4
  %10 = load float, float* %2, align 4
  %11 = fdiv float %10, 1.600000e+01
  store float %11, float* %2, align 4
  br label %4

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %16, %12
  %14 = load float, float* %2, align 4
  %15 = fcmp ogt float %14, 2.000000e+00
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load float, float* %3, align 4
  %18 = fadd float %17, 1.000000e+00
  store float %18, float* %3, align 4
  %19 = load float, float* %2, align 4
  %20 = fdiv float %19, 2.000000e+00
  store float %20, float* %2, align 4
  br label %13

21:                                               ; preds = %13
  %22 = load float, float* %3, align 4
  %23 = load float, float* %2, align 4
  %24 = load float, float* %2, align 4
  %25 = fmul float %23, %24
  %26 = load float, float* %2, align 4
  %27 = fmul float %25, %26
  %28 = fdiv float %27, 3.000000e+00
  %29 = load float, float* %2, align 4
  %30 = fmul float 3.000000e+00, %29
  %31 = load float, float* %2, align 4
  %32 = fmul float %30, %31
  %33 = fdiv float %32, 2.000000e+00
  %34 = fsub float %28, %33
  %35 = load float, float* %2, align 4
  %36 = fmul float 3.000000e+00, %35
  %37 = fadd float %34, %36
  %38 = fsub float %37, 0x3FFD5551E0000000
  %39 = fmul float 0x3FF7154760000000, %38
  %40 = fadd float %22, %39
  ret float %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
