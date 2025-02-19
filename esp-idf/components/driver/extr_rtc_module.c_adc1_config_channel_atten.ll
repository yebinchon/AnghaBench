; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc1_config_channel_atten.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc1_config_channel_atten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADC1_CHANNEL_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"ADC Channel Err\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ADC_ATTEN_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"ADC Atten Err\00", align 1
@ADC_UNIT_1 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adc1_config_channel_atten(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @ADC1_CHANNEL_MAX, align 8
  %7 = icmp slt i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %10 = call i32 @RTC_MODULE_CHECK(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @ADC_ATTEN_MAX, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %16 = call i32 @RTC_MODULE_CHECK(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @ADC_UNIT_1, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @adc_gpio_init(i32 %17, i64 %18)
  %20 = load i32, i32* @ADC_UNIT_1, align 4
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @adc_set_atten(i32 %20, i64 %21, i64 %22)
  %24 = load i32, i32* @ESP_OK, align 4
  ret i32 %24
}

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @adc_gpio_init(i32, i64) #1

declare dso_local i32 @adc_set_atten(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
