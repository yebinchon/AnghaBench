; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_get_wakeup_cause.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_get_wakeup_cause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEEPSLEEP_RESET = common dso_local global i64 0, align 8
@s_light_sleep_wakeup = common dso_local global i32 0, align 4
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
@RTC_GPIO_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_GPIO = common dso_local global i32 0, align 4
@RTC_UART0_TRIG_EN = common dso_local global i32 0, align 4
@RTC_UART1_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_UART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_sleep_get_wakeup_cause() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @rtc_get_reset_reason(i32 0)
  %4 = load i64, i64* @DEEPSLEEP_RESET, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* @s_light_sleep_wakeup, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @ESP_SLEEP_WAKEUP_UNDEFINED, align 4
  store i32 %10, i32* %1, align 4
  br label %67

11:                                               ; preds = %6, %0
  %12 = load i32, i32* @RTC_CNTL_WAKEUP_STATE_REG, align 4
  %13 = load i32, i32* @RTC_CNTL_WAKEUP_CAUSE, align 4
  %14 = call i32 @REG_GET_FIELD(i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @RTC_EXT0_TRIG_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @ESP_SLEEP_WAKEUP_EXT0, align 4
  store i32 %20, i32* %1, align 4
  br label %67

21:                                               ; preds = %11
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @RTC_EXT1_TRIG_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @ESP_SLEEP_WAKEUP_EXT1, align 4
  store i32 %27, i32* %1, align 4
  br label %67

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @RTC_TIMER_TRIG_EN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ESP_SLEEP_WAKEUP_TIMER, align 4
  store i32 %34, i32* %1, align 4
  br label %67

35:                                               ; preds = %28
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @ESP_SLEEP_WAKEUP_TOUCHPAD, align 4
  store i32 %41, i32* %1, align 4
  br label %67

42:                                               ; preds = %35
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @RTC_ULP_TRIG_EN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ESP_SLEEP_WAKEUP_ULP, align 4
  store i32 %48, i32* %1, align 4
  br label %67

49:                                               ; preds = %42
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @RTC_GPIO_TRIG_EN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @ESP_SLEEP_WAKEUP_GPIO, align 4
  store i32 %55, i32* %1, align 4
  br label %67

56:                                               ; preds = %49
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @RTC_UART0_TRIG_EN, align 4
  %59 = load i32, i32* @RTC_UART1_TRIG_EN, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @ESP_SLEEP_WAKEUP_UART, align 4
  store i32 %64, i32* %1, align 4
  br label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @ESP_SLEEP_WAKEUP_UNDEFINED, align 4
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %65, %63, %54, %47, %40, %33, %26, %19, %9
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i64 @rtc_get_reset_reason(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
