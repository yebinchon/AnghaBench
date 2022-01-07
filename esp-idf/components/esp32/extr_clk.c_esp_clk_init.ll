; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_clk.c_esp_clk_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_clk.c_esp_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@RTC_XTAL_FREQ_AUTO = common dso_local global i64 0, align 8
@RTC_FAST_FREQ_8M = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_RTC = common dso_local global i32 0, align 4
@CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ = common dso_local global i32 0, align 4
@CONFIG_ESP_CONSOLE_UART_NUM = common dso_local global i32 0, align 4
@CONFIG_BOOTLOADER_WDT_TIME_MS = common dso_local global i32 0, align 4
@RTC_WDT_STAGE0 = common dso_local global i32 0, align 4
@SLOW_CLK_32K_EXT_OSC = common dso_local global i32 0, align 4
@SLOW_CLK_32K_XTAL = common dso_local global i32 0, align 4
@SLOW_CLK_8MD256 = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_clk_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @RTC_CONFIG_DEFAULT()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @rtc_init(i32 %8)
  %10 = call i64 (...) @rtc_clk_xtal_freq_get()
  %11 = load i64, i64* @RTC_XTAL_FREQ_AUTO, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @RTC_FAST_FREQ_8M, align 4
  %16 = call i32 @rtc_clk_fast_freq_set(i32 %15)
  %17 = load i32, i32* @RTC_SLOW_FREQ_RTC, align 4
  %18 = call i32 @select_rtc_slow_clk(i32 %17)
  %19 = call i32 @rtc_clk_cpu_freq_get_config(%struct.TYPE_5__* %2)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @rtc_clk_cpu_freq_mhz_to_config(i32 %23, %struct.TYPE_5__* %3)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @CONFIG_ESP_CONSOLE_UART_NUM, align 4
  %28 = call i32 @uart_tx_wait_idle(i32 %27)
  %29 = call i32 @rtc_clk_cpu_freq_set_config(%struct.TYPE_5__* %3)
  %30 = call i64 (...) @XTHAL_GET_CCOUNT()
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @XTHAL_SET_CCOUNT(i32 %35)
  ret void
}

declare dso_local i32 @RTC_CONFIG_DEFAULT(...) #1

declare dso_local i32 @rtc_init(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @rtc_clk_xtal_freq_get(...) #1

declare dso_local i32 @rtc_clk_fast_freq_set(i32) #1

declare dso_local i32 @select_rtc_slow_clk(i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_get_config(%struct.TYPE_5__*) #1

declare dso_local i32 @rtc_clk_cpu_freq_mhz_to_config(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @uart_tx_wait_idle(i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_set_config(%struct.TYPE_5__*) #1

declare dso_local i32 @XTHAL_SET_CCOUNT(i32) #1

declare dso_local i64 @XTHAL_GET_CCOUNT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
