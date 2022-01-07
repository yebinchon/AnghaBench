; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_RefClockCmd.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_RefClockCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ERROR = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_2__* null, align 8
@DISABLE = common dso_local global i64 0, align 8
@RTC_CR_REFCKON = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RTC_RefClockCmd(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @ERROR, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @IS_FUNCTIONAL_STATE(i64 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 202, i32* %9, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 83, i32* %11, align 4
  %12 = call i64 (...) @RTC_EnterInitMode()
  %13 = load i64, i64* @ERROR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @ERROR, align 8
  store i64 %16, i64* %3, align 8
  br label %37

17:                                               ; preds = %1
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @DISABLE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @RTC_CR_REFCKON, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %34

27:                                               ; preds = %17
  %28 = load i32, i32* @RTC_CR_REFCKON, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = call i32 (...) @RTC_ExitInitMode()
  %36 = load i64, i64* @SUCCESS, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %34, %15
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 255, i32* %39, align 4
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_FUNCTIONAL_STATE(i64) #1

declare dso_local i64 @RTC_EnterInitMode(...) #1

declare dso_local i32 @RTC_ExitInitMode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
