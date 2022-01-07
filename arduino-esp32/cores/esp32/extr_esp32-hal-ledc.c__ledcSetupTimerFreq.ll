; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-ledc.c__ledcSetupTimerFreq.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-ledc.c__ledcSetupTimerFreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEDC_DIV_NUM_HSTIMER0_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32, double, i32)* @_ledcSetupTimerFreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @_ledcSetupTimerFreq(i32 %0, double %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 (...) @getApbFrequency()
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = shl i32 %11, 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %13, %14
  %16 = sitofp i32 %15 to double
  %17 = load double, double* %5, align 8
  %18 = fdiv double %16, %17
  %19 = fptosi double %18 to i32
  store i32 %19, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @LEDC_DIV_NUM_HSTIMER0_V, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, 80
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %26, %27
  %29 = sitofp i32 %28 to double
  %30 = load double, double* %5, align 8
  %31 = fdiv double %29, %30
  %32 = fptosi double %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @LEDC_DIV_NUM_HSTIMER0_V, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* @LEDC_DIV_NUM_HSTIMER0_V, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %23
  store i32 0, i32* %9, align 4
  br label %44

39:                                               ; preds = %3
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 256
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 256, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %39
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @_ledcSetupTimer(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %50, %51
  %53 = sitofp i32 %52 to double
  %54 = load i32, i32* %8, align 4
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %53, %55
  ret double %56
}

declare dso_local i32 @getApbFrequency(...) #1

declare dso_local i32 @_ledcSetupTimer(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
