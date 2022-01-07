; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_clock.c_bootloader_clock_configure.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_clock.c_bootloader_clock_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@CONFIG_ESP32S2_XTAL_FREQ = common dso_local global i32 0, align 4
@CONFIG_ESP32_RTC_XTAL_BOOTSTRAP_CYCLES = common dso_local global i32 0, align 4
@CONFIG_ESP32_XTAL_FREQ = common dso_local global i32 0, align 4
@DPORT_CPUPERIOD_SEL = common dso_local global i32 0, align 4
@DPORT_CPUPERIOD_SEL_240 = common dso_local global i64 0, align 8
@DPORT_CPU_PER_CONF_REG = common dso_local global i32 0, align 4
@EFUSE_BLK0_RDATA3_REG = common dso_local global i32 0, align 4
@EFUSE_RD_CHIP_VER_REV1_M = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_80M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootloader_clock_configure() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @uart_tx_wait_idle(i32 0)
  call void (%struct.TYPE_4__*, ...) @RTC_CLK_CONFIG_DEFAULT(%struct.TYPE_4__* sret %1)
  %3 = call i32 (...) @rtc_clk_slow_freq_get()
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %3, i32* %4, align 4
  %5 = call i32 (...) @rtc_clk_fast_freq_get()
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = call i32 @rtc_clk_init(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %1)
  ret void
}

declare dso_local i32 @uart_tx_wait_idle(i32) #1

declare dso_local void @RTC_CLK_CONFIG_DEFAULT(%struct.TYPE_4__* sret, ...) #1

declare dso_local i32 @rtc_clk_slow_freq_get(...) #1

declare dso_local i32 @rtc_clk_fast_freq_get(...) #1

declare dso_local i32 @rtc_clk_init(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
