; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_AngleNormalize180.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_AngleNormalize180.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @AngleNormalize180(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = call float @AngleNormalize360(float %3)
  store float %4, float* %2, align 4
  %5 = load float, float* %2, align 4
  %6 = fpext float %5 to double
  %7 = fcmp ogt double %6, 1.800000e+02
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load float, float* %2, align 4
  %10 = fpext float %9 to double
  %11 = fsub double %10, 3.600000e+02
  %12 = fptrunc double %11 to float
  store float %12, float* %2, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = load float, float* %2, align 4
  ret float %14
}

declare dso_local float @AngleNormalize360(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
