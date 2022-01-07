; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_sleep_modes.c_esp_sleep_disable_wakeup_source.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_sleep_modes.c_esp_sleep_disable_wakeup_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64 }

@ESP_SLEEP_WAKEUP_TIMER = common dso_local global i32 0, align 4
@RTC_TIMER_TRIG_EN = common dso_local global i32 0, align 4
@s_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ESP_SLEEP_WAKEUP_EXT0 = common dso_local global i32 0, align 4
@RTC_EXT0_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_EXT1 = common dso_local global i32 0, align 4
@RTC_EXT1_TRIG_EN = common dso_local global i32 0, align 4
@ESP_SLEEP_WAKEUP_TOUCHPAD = common dso_local global i32 0, align 4
@RTC_TOUCH_TRIG_EN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Incorrect wakeup source (%d) to disable.\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_sleep_disable_wakeup_source(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i32, i32* @ESP_SLEEP_WAKEUP_TIMER, align 4
  %6 = load i32, i32* @RTC_TIMER_TRIG_EN, align 4
  %7 = call i64 @CHECK_SOURCE(i64 %4, i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32, i32* @RTC_TIMER_TRIG_EN, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %13 = and i32 %12, %11
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 5), align 8
  br label %56

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @ESP_SLEEP_WAKEUP_EXT0, align 4
  %17 = load i32, i32* @RTC_EXT0_TRIG_EN, align 4
  %18 = call i64 @CHECK_SOURCE(i64 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 3), align 8
  %21 = load i32, i32* @RTC_EXT0_TRIG_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %24 = and i32 %23, %22
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  br label %55

25:                                               ; preds = %14
  %26 = load i64, i64* %3, align 8
  %27 = load i32, i32* @ESP_SLEEP_WAKEUP_EXT1, align 4
  %28 = load i32, i32* @RTC_EXT1_TRIG_EN, align 4
  %29 = call i64 @CHECK_SOURCE(i64 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 1), align 8
  %32 = load i32, i32* @RTC_EXT1_TRIG_EN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %35 = and i32 %34, %33
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  br label %54

36:                                               ; preds = %25
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* @ESP_SLEEP_WAKEUP_TOUCHPAD, align 4
  %39 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %40 = call i64 @CHECK_SOURCE(i64 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %46 = and i32 %45, %44
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  br label %53

47:                                               ; preds = %36
  %48 = load i32, i32* @TAG, align 4
  %49 = load i64, i64* %3, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @ESP_LOGE(i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %20
  br label %56

56:                                               ; preds = %55, %9
  %57 = load i32, i32* @ESP_OK, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %47
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @CHECK_SOURCE(i64, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
