; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_get_ext1_wakeup_status.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_esp_sleep_get_ext1_wakeup_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ESP_SLEEP_WAKEUP_EXT1 = common dso_local global i64 0, align 8
@RTC_CNTL_EXT_WAKEUP1_STATUS_REG = common dso_local global i32 0, align 4
@RTC_CNTL_EXT_WAKEUP1_STATUS = common dso_local global i32 0, align 4
@GPIO_PIN_COUNT = common dso_local global i32 0, align 4
@rtc_gpio_desc = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_sleep_get_ext1_wakeup_status() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 (...) @esp_sleep_get_wakeup_cause()
  %7 = load i64, i64* @ESP_SLEEP_WAKEUP_EXT1, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %47

10:                                               ; preds = %0
  %11 = load i32, i32* @RTC_CNTL_EXT_WAKEUP1_STATUS_REG, align 4
  %12 = load i32, i32* @RTC_CNTL_EXT_WAKEUP1_STATUS, align 4
  %13 = call i32 @REG_GET_FIELD(i32 %11, i32 %12)
  store i32 %13, i32* %2, align 4
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %42, %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @GPIO_PIN_COUNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @RTC_GPIO_IS_VALID_GPIO(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %42

23:                                               ; preds = %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rtc_gpio_desc, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %42

36:                                               ; preds = %23
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = shl i64 1, %38
  %40 = load i64, i64* %3, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %36, %35, %22
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %14

45:                                               ; preds = %14
  %46 = load i64, i64* %3, align 8
  store i64 %46, i64* %1, align 8
  br label %47

47:                                               ; preds = %45, %9
  %48 = load i64, i64* %1, align 8
  ret i64 %48
}

declare dso_local i64 @esp_sleep_get_wakeup_cause(...) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @RTC_GPIO_IS_VALID_GPIO(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
