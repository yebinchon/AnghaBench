; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_pwr.c_PWR_EnterSTOPMode.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_pwr.c_PWR_EnterSTOPMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@PWR = common dso_local global %struct.TYPE_4__* null, align 8
@CR_DS_MASK = common dso_local global i64 0, align 8
@SCB_SCR_SLEEPDEEP_Msk = common dso_local global i64 0, align 8
@SCB = common dso_local global %struct.TYPE_3__* null, align 8
@PWR_STOPEntry_WFI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PWR_EnterSTOPMode(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @IS_PWR_REGULATOR(i64 %6)
  %8 = call i32 @assert_param(i32 %7)
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @IS_PWR_STOP_ENTRY(i64 %9)
  %11 = call i32 @assert_param(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PWR, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* @CR_DS_MASK, align 8
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PWR, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* @SCB_SCR_SLEEPDEEP_Msk, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SCB, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @PWR_STOPEntry_WFI, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = call i32 (...) @__WFI()
  br label %36

34:                                               ; preds = %2
  %35 = call i32 (...) @__WFE()
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i64, i64* @SCB_SCR_SLEEPDEEP_Msk, align 8
  %38 = xor i64 %37, -1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @SCB, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, %38
  store i64 %42, i64* %40, align 8
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_PWR_REGULATOR(i64) #1

declare dso_local i32 @IS_PWR_STOP_ENTRY(i64) #1

declare dso_local i32 @__WFI(...) #1

declare dso_local i32 @__WFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
