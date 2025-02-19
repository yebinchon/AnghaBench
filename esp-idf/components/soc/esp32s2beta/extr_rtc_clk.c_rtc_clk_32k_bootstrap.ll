; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_32k_bootstrap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_32k_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DPORT_BT_LPCK_DIV_INT_REG = common dso_local global i32 0, align 4
@DPORT_BT_LPCK_DIV_NUM = common dso_local global i32 0, align 4
@DPORT_BT_LPCK_DIV_FRAC_REG = common dso_local global i32 0, align 4
@DPORT_BT_LPCK_DIV_A = common dso_local global i32 0, align 4
@DPORT_BT_LPCK_DIV_B = common dso_local global i32 0, align 4
@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_CLK8M_EN = common dso_local global i32 0, align 4
@DPORT_LPCLK_SEL_8M = common dso_local global i32 0, align 4
@DPORT_LPCLK_SEL_XTAL = common dso_local global i32 0, align 4
@DPORT_LPCLK_RTC_EN = common dso_local global i32 0, align 4
@RTC_CNTL_EXT_XTL_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_ENCKINIT_XTAL_32K = common dso_local global i32 0, align 4
@XTAL_32K_BOOTSTRAP_DAC_VAL = common dso_local global i32 0, align 4
@XTAL_32K_BOOTSTRAP_DRES_VAL = common dso_local global i32 0, align 4
@XTAL_32K_BOOTSTRAP_DBIAS_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_32k_bootstrap(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @DPORT_BT_LPCK_DIV_INT_REG, align 4
  %4 = load i32, i32* @DPORT_BT_LPCK_DIV_NUM, align 4
  %5 = call i32 @REG_SET_FIELD(i32 %3, i32 %4, i32 2441)
  %6 = load i32, i32* @DPORT_BT_LPCK_DIV_FRAC_REG, align 4
  %7 = load i32, i32* @DPORT_BT_LPCK_DIV_A, align 4
  %8 = call i32 @REG_SET_FIELD(i32 %6, i32 %7, i32 32)
  %9 = load i32, i32* @DPORT_BT_LPCK_DIV_FRAC_REG, align 4
  %10 = load i32, i32* @DPORT_BT_LPCK_DIV_B, align 4
  %11 = call i32 @REG_SET_FIELD(i32 %9, i32 %10, i32 13)
  %12 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %13 = load i32, i32* @RTC_CNTL_DIG_CLK8M_EN, align 4
  %14 = call i32 @SET_PERI_REG_MASK(i32 %12, i32 %13)
  %15 = load i32, i32* @DPORT_BT_LPCK_DIV_FRAC_REG, align 4
  %16 = load i32, i32* @DPORT_LPCLK_SEL_8M, align 4
  %17 = call i32 @CLEAR_PERI_REG_MASK(i32 %15, i32 %16)
  %18 = load i32, i32* @DPORT_BT_LPCK_DIV_FRAC_REG, align 4
  %19 = load i32, i32* @DPORT_LPCLK_SEL_XTAL, align 4
  %20 = call i32 @SET_PERI_REG_MASK(i32 %18, i32 %19)
  %21 = load i32, i32* @DPORT_BT_LPCK_DIV_FRAC_REG, align 4
  %22 = load i32, i32* @DPORT_LPCLK_RTC_EN, align 4
  %23 = call i32 @SET_PERI_REG_MASK(i32 %21, i32 %22)
  %24 = load i32, i32* @RTC_CNTL_EXT_XTL_CONF_REG, align 4
  %25 = load i32, i32* @RTC_CNTL_ENCKINIT_XTAL_32K, align 4
  %26 = call i32 @SET_PERI_REG_MASK(i32 %24, i32 %25)
  %27 = load i32, i32* @XTAL_32K_BOOTSTRAP_DAC_VAL, align 4
  %28 = load i32, i32* @XTAL_32K_BOOTSTRAP_DRES_VAL, align 4
  %29 = load i32, i32* @XTAL_32K_BOOTSTRAP_DBIAS_VAL, align 4
  %30 = call i32 @rtc_clk_32k_enable_internal(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @ets_delay_us(i32 %31)
  %33 = load i32, i32* @DPORT_BT_LPCK_DIV_FRAC_REG, align 4
  %34 = load i32, i32* @DPORT_LPCLK_SEL_XTAL, align 4
  %35 = call i32 @CLEAR_PERI_REG_MASK(i32 %33, i32 %34)
  %36 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %37 = load i32, i32* @RTC_CNTL_DIG_CLK8M_EN, align 4
  %38 = call i32 @CLEAR_PERI_REG_MASK(i32 %36, i32 %37)
  %39 = load i32, i32* @RTC_CNTL_EXT_XTL_CONF_REG, align 4
  %40 = load i32, i32* @RTC_CNTL_ENCKINIT_XTAL_32K, align 4
  %41 = call i32 @CLEAR_PERI_REG_MASK(i32 %39, i32 %40)
  %42 = load i32, i32* @DPORT_BT_LPCK_DIV_FRAC_REG, align 4
  %43 = load i32, i32* @DPORT_LPCLK_RTC_EN, align 4
  %44 = call i32 @CLEAR_PERI_REG_MASK(i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @rtc_clk_32k_enable_internal(i32, i32, i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
