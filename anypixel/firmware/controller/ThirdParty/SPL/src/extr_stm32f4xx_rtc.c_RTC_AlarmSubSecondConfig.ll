; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_AlarmSubSecondConfig.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_rtc.c_RTC_AlarmSubSecondConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@RTC = common dso_local global %struct.TYPE_2__* null, align 8
@RTC_Alarm_A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RTC_AlarmSubSecondConfig(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @IS_RTC_ALARM(i64 %8)
  %10 = call i32 @assert_param(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @IS_RTC_ALARM_SUB_SECOND_VALUE(i64 %11)
  %13 = call i32 @assert_param(i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @IS_RTC_ALARM_SUB_SECOND_MASK(i64 %14)
  %16 = call i32 @assert_param(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 202, i32* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 83, i32* %20, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @RTC_Alarm_A, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  br label %35

31:                                               ; preds = %3
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @RTC, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 255, i32* %37, align 8
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_RTC_ALARM(i64) #1

declare dso_local i32 @IS_RTC_ALARM_SUB_SECOND_VALUE(i64) #1

declare dso_local i32 @IS_RTC_ALARM_SUB_SECOND_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
