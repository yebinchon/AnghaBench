; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_CoarseCalibConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_CoarseCalibConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ERROR = common dso_local global i64 0, align 8
@RTC = common dso_local global %struct.TYPE_2__* null, align 8
@SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RTC_CoarseCalibConfig(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @ERROR, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @IS_RTC_CALIB_SIGN(i32 %7)
  %9 = call i32 @assert_param(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @IS_RTC_CALIB_VALUE(i32 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 202, i32* %14, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 83, i32* %16, align 4
  %17 = call i64 (...) @RTC_EnterInitMode()
  %18 = load i64, i64* @ERROR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* @ERROR, align 8
  store i64 %21, i64* %5, align 8
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = call i32 (...) @RTC_ExitInitMode()
  %29 = load i64, i64* @SUCCESS, align 8
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %22, %20
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 255, i32* %32, align 4
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_CALIB_SIGN(i32) #1

declare dso_local i32 @IS_RTC_CALIB_VALUE(i32) #1

declare dso_local i64 @RTC_EnterInitMode(...) #1

declare dso_local i32 @RTC_ExitInitMode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
