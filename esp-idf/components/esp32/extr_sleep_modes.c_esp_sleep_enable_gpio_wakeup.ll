; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_enable_gpio_wakeup.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_enable_gpio_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@s_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RTC_TOUCH_TRIG_EN = common dso_local global i32 0, align 4
@RTC_ULP_TRIG_EN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Conflicting wake-up triggers: touch / ULP\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@RTC_GPIO_TRIG_EN = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_sleep_enable_gpio_wakeup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 4
  %3 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %4 = load i32, i32* @RTC_ULP_TRIG_EN, align 4
  %5 = or i32 %3, %4
  %6 = and i32 %2, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGE(i32 %9, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %11, i32* %1, align 4
  br label %17

12:                                               ; preds = %0
  %13 = load i32, i32* @RTC_GPIO_TRIG_EN, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 4
  %16 = load i32, i32* @ESP_OK, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %12, %8
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
