; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc2_get_raw.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc2_get_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADC2_CHANNEL_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"ADC Channel Err\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@adc2_spinlock = common dso_local global i32 0, align 4
@adc2_wifi_lock = common dso_local global i32 0, align 4
@ESP_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ADC_UNIT_2 = common dso_local global i32 0, align 4
@ADC_CTRL_RTC = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adc2_get_raw(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @ADC2_CHANNEL_MAX, align 8
  %11 = icmp slt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %14 = call i32 @RTC_MODULE_CHECK(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = call i32 (...) @adc_power_on()
  %16 = call i32 @portENTER_CRITICAL(i32* @adc2_spinlock)
  %17 = call i32 @_lock_try_acquire(i32* @adc2_wifi_lock)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = call i32 @portEXIT_CRITICAL(i32* @adc2_spinlock)
  %21 = load i32, i32* @ESP_ERR_TIMEOUT, align 4
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @adc2_config_width(i32 %23)
  %25 = load i32, i32* @ADC_UNIT_2, align 4
  %26 = load i32, i32* @ADC_CTRL_RTC, align 4
  %27 = call i32 @adc_set_controller(i32 %25, i32 %26)
  %28 = load i32, i32* @ADC_UNIT_2, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @adc_convert(i32 %28, i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = call i32 @_lock_release(i32* @adc2_wifi_lock)
  %32 = call i32 @portEXIT_CRITICAL(i32* @adc2_spinlock)
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @ESP_OK, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %22, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @adc_power_on(...) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @_lock_try_acquire(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

declare dso_local i32 @adc2_config_width(i32) #1

declare dso_local i32 @adc_set_controller(i32, i32) #1

declare dso_local i64 @adc_convert(i32, i64) #1

declare dso_local i32 @_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
