; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_pwr.c_PWR_EnterSleepMode.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/ThirdParty/SPL/src/extr_stm32f0xx_pwr.c_PWR_EnterSleepMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SCB_SCR_SLEEPDEEP_Msk = common dso_local global i64 0, align 8
@SCB = common dso_local global %struct.TYPE_2__* null, align 8
@PWR_SLEEPEntry_WFI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PWR_EnterSleepMode(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @IS_PWR_SLEEP_ENTRY(i64 %3)
  %5 = call i32 @assert_param(i32 %4)
  %6 = load i64, i64* @SCB_SCR_SLEEPDEEP_Msk, align 8
  %7 = xor i64 %6, -1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SCB, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = and i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @PWR_SLEEPEntry_WFI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (...) @__WFI()
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (...) @__WFE()
  br label %19

19:                                               ; preds = %17, %15
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_PWR_SLEEP_ENTRY(i64) #1

declare dso_local i32 @__WFI(...) #1

declare dso_local i32 @__WFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
