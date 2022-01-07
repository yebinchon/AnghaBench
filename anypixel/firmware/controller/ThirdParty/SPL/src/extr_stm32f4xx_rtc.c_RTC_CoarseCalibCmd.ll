; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_CoarseCalibCmd.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_CoarseCalibCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ERROR = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_2__* null, align 8
@DISABLE = common dso_local global i64 0, align 8
@RTC_CR_DCE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RTC_CoarseCalibCmd(i64 %0) #0 {
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
  br label %39

17:                                               ; preds = %1
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @DISABLE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i64, i64* @RTC_CR_DCE, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %36

28:                                               ; preds = %17
  %29 = load i64, i64* @RTC_CR_DCE, align 8
  %30 = xor i64 %29, -1
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %21
  %37 = call i32 (...) @RTC_ExitInitMode()
  %38 = load i64, i64* @SUCCESS, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %36, %15
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 255, i32* %41, align 4
  %42 = load i64, i64* %3, align 8
  ret i64 %42
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
