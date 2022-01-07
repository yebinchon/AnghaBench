; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-ledc.c_ledcWriteTone.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-ledc.c_ledcWriteTone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ledcWriteTone(i32 %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 15
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %23

10:                                               ; preds = %2
  %11 = load double, double* %5, align 8
  %12 = fcmp une double %11, 0.000000e+00
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ledcWrite(i32 %14, i32 0)
  store double 0.000000e+00, double* %3, align 8
  br label %23

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load double, double* %5, align 8
  %19 = call double @_ledcSetupTimerFreq(i32 %17, double %18, i32 10)
  store double %19, double* %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ledcWrite(i32 %20, i32 511)
  %22 = load double, double* %6, align 8
  store double %22, double* %3, align 8
  br label %23

23:                                               ; preds = %16, %13, %9
  %24 = load double, double* %3, align 8
  ret double %24
}

declare dso_local i32 @ledcWrite(i32, i32) #1

declare dso_local double @_ledcSetupTimerFreq(i32, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
