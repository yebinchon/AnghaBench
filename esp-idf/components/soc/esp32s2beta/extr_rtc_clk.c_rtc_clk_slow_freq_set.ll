; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_slow_freq_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_slow_freq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_ANA_CLK_RTC_SEL = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_XTAL32K_EN = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_32K_XTAL = common dso_local global i64 0, align 8
@RTC_CNTL_CK8M_FORCE_PU = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_8MD256 = common dso_local global i64 0, align 8
@DELAY_SLOW_CLK_SWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_slow_freq_set(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %4 = load i32, i32* @RTC_CNTL_ANA_CLK_RTC_SEL, align 4
  %5 = load i64, i64* %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 @REG_SET_FIELD(i32 %3, i32 %4, i32 %6)
  %8 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %9 = load i32, i32* @RTC_CNTL_DIG_XTAL32K_EN, align 4
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @RTC_SLOW_FREQ_32K_XTAL, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = call i32 @REG_SET_FIELD(i32 %8, i32 %9, i32 %14)
  %16 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %17 = load i32, i32* @RTC_CNTL_CK8M_FORCE_PU, align 4
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @RTC_SLOW_FREQ_8MD256, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = call i32 @REG_SET_FIELD(i32 %16, i32 %17, i32 %22)
  %24 = call i32 (...) @rtc_clk_set_xtal_wait()
  %25 = load i32, i32* @DELAY_SLOW_CLK_SWITCH, align 4
  %26 = call i32 @ets_delay_us(i32 %25)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @rtc_clk_set_xtal_wait(...) #1

declare dso_local i32 @ets_delay_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
