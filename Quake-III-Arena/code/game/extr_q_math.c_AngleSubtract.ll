; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_AngleSubtract.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_AngleSubtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @AngleSubtract(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = load float, float* %4, align 4
  %8 = fsub float %6, %7
  store float %8, float* %5, align 4
  br label %9

9:                                                ; preds = %12, %2
  %10 = load float, float* %5, align 4
  %11 = fcmp ogt float %10, 1.800000e+02
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load float, float* %5, align 4
  %14 = fsub float %13, 3.600000e+02
  store float %14, float* %5, align 4
  br label %9

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %19, %15
  %17 = load float, float* %5, align 4
  %18 = fcmp olt float %17, -1.800000e+02
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load float, float* %5, align 4
  %21 = fadd float %20, 3.600000e+02
  store float %21, float* %5, align 4
  br label %16

22:                                               ; preds = %16
  %23 = load float, float* %5, align 4
  ret float %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
