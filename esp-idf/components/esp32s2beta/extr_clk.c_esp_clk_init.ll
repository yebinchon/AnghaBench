; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_clk.c_esp_clk_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_clk.c_esp_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_XTAL_FREQ_AUTO = common dso_local global i64 0, align 8
@RTC_FAST_FREQ_8M = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_RTC = common dso_local global i32 0, align 4
@CONFIG_ESP32S2_DEFAULT_CPU_FREQ_MHZ = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_80M = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_240M = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_160M = common dso_local global i32 0, align 4
@CONFIG_ESP_CONSOLE_UART_NUM = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@CONFIG_BOOTLOADER_WDT_TIME_MS = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_32K_XTAL = common dso_local global i32 0, align 4
@RTC_WDT_STAGE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_clk_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @RTC_CONFIG_DEFAULT()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @rtc_init(i32 %7)
  %9 = call i64 (...) @rtc_clk_xtal_freq_get()
  %10 = load i64, i64* @RTC_XTAL_FREQ_AUTO, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* @RTC_FAST_FREQ_8M, align 4
  %15 = call i32 @rtc_clk_fast_freq_set(i32 %14)
  %16 = load i32, i32* @RTC_SLOW_FREQ_RTC, align 4
  %17 = call i32 @select_rtc_slow_clk(i32 %16)
  %18 = load i32, i32* @CONFIG_ESP32S2_DEFAULT_CPU_FREQ_MHZ, align 4
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @RTC_CPU_FREQ_80M, align 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %2, align 4
  switch i32 %20, label %27 [
    i32 240, label %21
    i32 160, label %23
    i32 80, label %25
  ]

21:                                               ; preds = %0
  %22 = load i32, i32* @RTC_CPU_FREQ_240M, align 4
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %0
  %24 = load i32, i32* @RTC_CPU_FREQ_160M, align 4
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %0
  %26 = load i32, i32* @RTC_CPU_FREQ_80M, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %0
  store i32 80, i32* %2, align 4
  %28 = load i32, i32* @RTC_CPU_FREQ_80M, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25, %23, %21
  %30 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_NUM, align 4
  %31 = call i32 @uart_tx_wait_idle(i32 %30)
  %32 = call i32 (...) @rtc_clk_cpu_freq_get()
  %33 = call i32 @rtc_clk_cpu_freq_value(i32 %32)
  %34 = load i32, i32* @MHZ, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @rtc_clk_cpu_freq_set(i32 %36)
  %38 = load i32, i32* @CONFIG_ESP32S2_DEFAULT_CPU_FREQ_MHZ, align 4
  store i32 %38, i32* %5, align 4
  %39 = call i32 (...) @XTHAL_GET_CCOUNT()
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = sdiv i32 %41, %42
  %44 = call i32 @XTHAL_SET_CCOUNT(i32 %43)
  ret void
}

declare dso_local i32 @RTC_CONFIG_DEFAULT(...) #1

declare dso_local i32 @rtc_init(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rtc_clk_xtal_freq_get(...) #1

declare dso_local i32 @rtc_clk_fast_freq_set(i32) #1

declare dso_local i32 @select_rtc_slow_clk(i32) #1

declare dso_local i32 @uart_tx_wait_idle(i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_value(i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_get(...) #1

declare dso_local i32 @rtc_clk_cpu_freq_set(i32) #1

declare dso_local i32 @XTHAL_SET_CCOUNT(i32) #1

declare dso_local i32 @XTHAL_GET_CCOUNT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
