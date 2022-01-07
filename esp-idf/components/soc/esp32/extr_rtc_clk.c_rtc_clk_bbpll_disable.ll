; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_bbpll_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_bbpll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_OPTIONS0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_BB_I2C_FORCE_PD = common dso_local global i32 0, align 4
@RTC_CNTL_BBPLL_FORCE_PD = common dso_local global i32 0, align 4
@RTC_CNTL_BBPLL_I2C_FORCE_PD = common dso_local global i32 0, align 4
@s_cur_pll_freq = common dso_local global i64 0, align 8
@RTC_CNTL_ANA_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_PLLA_FORCE_PD = common dso_local global i32 0, align 4
@RTC_CNTL_BIAS_I2C_FORCE_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rtc_clk_bbpll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_clk_bbpll_disable() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @RTC_CNTL_OPTIONS0_REG, align 4
  %3 = load i32, i32* @RTC_CNTL_BB_I2C_FORCE_PD, align 4
  %4 = load i32, i32* @RTC_CNTL_BBPLL_FORCE_PD, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @RTC_CNTL_BBPLL_I2C_FORCE_PD, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @SET_PERI_REG_MASK(i32 %2, i32 %7)
  store i64 0, i64* @s_cur_pll_freq, align 8
  %9 = load i32, i32* @RTC_CNTL_ANA_CONF_REG, align 4
  %10 = load i32, i32* @RTC_CNTL_PLLA_FORCE_PD, align 4
  %11 = call i64 @REG_GET_FIELD(i32 %9, i32 %10)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @RTC_CNTL_OPTIONS0_REG, align 4
  %16 = load i32, i32* @RTC_CNTL_BIAS_I2C_FORCE_PD, align 4
  %17 = call i32 @SET_PERI_REG_MASK(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %0
  ret void
}

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
