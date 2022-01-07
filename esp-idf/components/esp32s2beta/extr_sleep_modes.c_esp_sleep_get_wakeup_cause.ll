; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_sleep_modes.c_esp_sleep_get_wakeup_cause.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_sleep_modes.c_esp_sleep_get_wakeup_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEEPSLEEP_RESET = common dso_local global i64 0, align 8
@ESP_SLEEP_WAKEUP_UNDEFINED = common dso_local global i32 0, align 4
@RTC_CNTL_WAKEUP_STATE_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WAKEUP_CAUSE = common dso_local global i32 0, align 4
@RTC_EXT0_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_EXT0 = common dso_local global i32 0, align 4
@RTC_EXT1_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_EXT1 = common dso_local global i32 0, align 4
@RTC_TIMER_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_TIMER = common dso_local global i32 0, align 4
@RTC_TOUCH_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_TOUCHPAD = common dso_local global i32 0, align 4
@RTC_ULP_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_ULP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_sleep_get_wakeup_cause() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @rtc_get_reset_reason(i32 0)
  %4 = load i64, i64* @DEEPSLEEP_RESET, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @ESP_SLEEP_WAKEUP_UNDEFINED, align 4
  store i32 %7, i32* %1, align 4
  br label %48

8:                                                ; preds = %0
  %9 = load i32, i32* @RTC_CNTL_WAKEUP_STATE_REG, align 4
  %10 = load i32, i32* @RTC_CNTL_WAKEUP_CAUSE, align 4
  %11 = call i32 @REG_GET_FIELD(i32 %9, i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @RTC_EXT0_TRIG_EN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load i32, i32* @ESP_SLEEP_WAKEUP_EXT0, align 4
  store i32 %17, i32* %1, align 4
  br label %48

18:                                               ; preds = %8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @RTC_EXT1_TRIG_EN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @ESP_SLEEP_WAKEUP_EXT1, align 4
  store i32 %24, i32* %1, align 4
  br label %48

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @RTC_TIMER_TRIG_EN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ESP_SLEEP_WAKEUP_TIMER, align 4
  store i32 %31, i32* %1, align 4
  br label %48

32:                                               ; preds = %25
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @ESP_SLEEP_WAKEUP_TOUCHPAD, align 4
  store i32 %38, i32* %1, align 4
  br label %48

39:                                               ; preds = %32
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @RTC_ULP_TRIG_EN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @ESP_SLEEP_WAKEUP_ULP, align 4
  store i32 %45, i32* %1, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @ESP_SLEEP_WAKEUP_UNDEFINED, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %46, %44, %37, %30, %23, %16, %6
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i64 @rtc_get_reset_reason(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
