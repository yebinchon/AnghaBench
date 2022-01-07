; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_LerpAngle.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_LerpAngle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @LerpAngle(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %8 = load float, float* %5, align 4
  %9 = load float, float* %4, align 4
  %10 = fsub float %8, %9
  %11 = fcmp ogt float %10, 1.800000e+02
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load float, float* %5, align 4
  %14 = fsub float %13, 3.600000e+02
  store float %14, float* %5, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = load float, float* %5, align 4
  %17 = load float, float* %4, align 4
  %18 = fsub float %16, %17
  %19 = fcmp olt float %18, -1.800000e+02
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load float, float* %5, align 4
  %22 = fadd float %21, 3.600000e+02
  store float %22, float* %5, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load float, float* %4, align 4
  %25 = load float, float* %6, align 4
  %26 = load float, float* %5, align 4
  %27 = load float, float* %4, align 4
  %28 = fsub float %26, %27
  %29 = fmul float %25, %28
  %30 = fadd float %24, %29
  store float %30, float* %7, align 4
  %31 = load float, float* %7, align 4
  ret float %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
