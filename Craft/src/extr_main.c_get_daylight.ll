; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_get_daylight.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_get_daylight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @get_daylight() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = call float (...) @time_of_day()
  store float %5, float* %2, align 4
  %6 = load float, float* %2, align 4
  %7 = fpext float %6 to double
  %8 = fcmp olt double %7, 5.000000e-01
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  %10 = load float, float* %2, align 4
  %11 = fpext float %10 to double
  %12 = fsub double %11, 2.500000e-01
  %13 = fmul double %12, 1.000000e+02
  %14 = fptrunc double %13 to float
  store float %14, float* %3, align 4
  %15 = load float, float* %3, align 4
  %16 = fneg float %15
  %17 = call i32 @powf(i32 2, float %16)
  %18 = add nsw i32 1, %17
  %19 = sdiv i32 1, %18
  %20 = sitofp i32 %19 to float
  store float %20, float* %1, align 4
  br label %34

21:                                               ; preds = %0
  %22 = load float, float* %2, align 4
  %23 = fpext float %22 to double
  %24 = fsub double %23, 8.500000e-01
  %25 = fmul double %24, 1.000000e+02
  %26 = fptrunc double %25 to float
  store float %26, float* %4, align 4
  %27 = load float, float* %4, align 4
  %28 = fneg float %27
  %29 = call i32 @powf(i32 2, float %28)
  %30 = add nsw i32 1, %29
  %31 = sdiv i32 1, %30
  %32 = sub nsw i32 1, %31
  %33 = sitofp i32 %32 to float
  store float %33, float* %1, align 4
  br label %34

34:                                               ; preds = %21, %9
  %35 = load float, float* %1, align 4
  ret float %35
}

declare dso_local float @time_of_day(...) #1

declare dso_local i32 @powf(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
