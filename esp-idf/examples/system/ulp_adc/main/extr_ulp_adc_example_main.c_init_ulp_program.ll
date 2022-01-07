; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/ulp_adc/main/extr_ulp_adc_example_main.c_init_ulp_program.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/ulp_adc/main/extr_ulp_adc_example_main.c_init_ulp_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ulp_main_bin_start = common dso_local global i32 0, align 4
@ulp_main_bin_end = common dso_local global i32 0, align 4
@ADC1_CHANNEL_6 = common dso_local global i32 0, align 4
@ADC_ATTEN_DB_11 = common dso_local global i32 0, align 4
@ADC_WIDTH_BIT_12 = common dso_local global i32 0, align 4
@ulp_low_thr = common dso_local global i32 0, align 4
@ulp_high_thr = common dso_local global i32 0, align 4
@GPIO_NUM_12 = common dso_local global i32 0, align 4
@GPIO_NUM_15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_ulp_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ulp_program() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ulp_main_bin_start, align 4
  %3 = load i32, i32* @ulp_main_bin_end, align 4
  %4 = load i32, i32* @ulp_main_bin_start, align 4
  %5 = sub nsw i32 %3, %4
  %6 = sext i32 %5 to i64
  %7 = udiv i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = call i32 @ulp_load_binary(i32 0, i32 %2, i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = load i32, i32* @ADC1_CHANNEL_6, align 4
  %13 = load i32, i32* @ADC_ATTEN_DB_11, align 4
  %14 = call i32 @adc1_config_channel_atten(i32 %12, i32 %13)
  %15 = load i32, i32* @ADC_WIDTH_BIT_12, align 4
  %16 = call i32 @adc1_config_width(i32 %15)
  %17 = call i32 (...) @adc1_ulp_enable()
  store i32 1500, i32* @ulp_low_thr, align 4
  store i32 2000, i32* @ulp_high_thr, align 4
  %18 = call i32 @ulp_set_wakeup_period(i32 0, i32 20000)
  %19 = load i32, i32* @GPIO_NUM_12, align 4
  %20 = call i32 @rtc_gpio_isolate(i32 %19)
  %21 = load i32, i32* @GPIO_NUM_15, align 4
  %22 = call i32 @rtc_gpio_isolate(i32 %21)
  %23 = call i32 (...) @esp_deep_sleep_disable_rom_logging()
  ret void
}

declare dso_local i32 @ulp_load_binary(i32, i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @adc1_config_channel_atten(i32, i32) #1

declare dso_local i32 @adc1_config_width(i32) #1

declare dso_local i32 @adc1_ulp_enable(...) #1

declare dso_local i32 @ulp_set_wakeup_period(i32, i32) #1

declare dso_local i32 @rtc_gpio_isolate(i32) #1

declare dso_local i32 @esp_deep_sleep_disable_rom_logging(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
