; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_random.c_bootloader_random_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_random.c_bootloader_random_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2S_RX_START = common dso_local global i32 0, align 4
@I2S_RX_RESET = common dso_local global i32 0, align 4
@I2S_CAMERA_EN = common dso_local global i32 0, align 4
@I2S_LCD_EN = common dso_local global i32 0, align 4
@I2S_DATA_ENABLE_TEST_EN = common dso_local global i32 0, align 4
@I2S_DATA_ENABLE = common dso_local global i32 0, align 4
@PERIPH_I2S0_MODULE = common dso_local global i32 0, align 4
@RTC_CNTL_TEST_MUX_REG = common dso_local global i32 0, align 4
@RTC_CNTL_ENT_RTC = common dso_local global i32 0, align 4
@RTC_CNTL_DTEST_RTC = common dso_local global i32 0, align 4
@RTC_CNTL_DTEST_RTC_S = common dso_local global i32 0, align 4
@DPORT_I2S0_CLK_EN = common dso_local global i32 0, align 4
@DPORT_I2S0_RST = common dso_local global i32 0, align 4
@DPORT_PERIP_CLK_EN_REG = common dso_local global i32 0, align 4
@DPORT_PERIP_RST_EN_REG = common dso_local global i32 0, align 4
@SENS_FORCE_XPD_SAR = common dso_local global i32 0, align 4
@SENS_FORCE_XPD_SAR_S = common dso_local global i32 0, align 4
@SENS_SAR1_DIG_FORCE = common dso_local global i32 0, align 4
@SENS_SAR2_DIG_FORCE = common dso_local global i32 0, align 4
@SENS_SAR2_EN_TEST = common dso_local global i32 0, align 4
@SENS_SAR_MEAS1_MUX_REG = common dso_local global i32 0, align 4
@SENS_SAR_MEAS2_CTRL1_REG = common dso_local global i32 0, align 4
@SENS_SAR_MEAS_WAIT2_REG = common dso_local global i32 0, align 4
@SENS_SAR_POWER_XPD_SAR_REG = common dso_local global i32 0, align 4
@SENS_SAR_READ_CTRL2_REG = common dso_local global i32 0, align 4
@SENS_SAR_READ_CTRL_REG = common dso_local global i32 0, align 4
@SENS_SAR_START_FORCE_REG = common dso_local global i32 0, align 4
@SYSCON_SARADC_CTRL_REG = common dso_local global i32 0, align 4
@SYSCON_SARADC_DATA_TO_I2S = common dso_local global i32 0, align 4
@SYSCON_SARADC_FSM_REG = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR2_MUX = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR_SEL = common dso_local global i32 0, align 4
@SYSCON_SARADC_START_WAIT = common dso_local global i32 0, align 4
@SYSCON_SARADC_START_WAIT_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootloader_random_disable() #0 {
  %1 = call i32 @I2S_CONF_REG(i32 0)
  %2 = load i32, i32* @I2S_RX_START, align 4
  %3 = call i32 @CLEAR_PERI_REG_MASK(i32 %1, i32 %2)
  %4 = call i32 @I2S_CONF_REG(i32 0)
  %5 = load i32, i32* @I2S_RX_RESET, align 4
  %6 = call i32 @SET_PERI_REG_MASK(i32 %4, i32 %5)
  %7 = call i32 @I2S_CONF_REG(i32 0)
  %8 = load i32, i32* @I2S_RX_RESET, align 4
  %9 = call i32 @CLEAR_PERI_REG_MASK(i32 %7, i32 %8)
  %10 = call i32 @I2S_CONF2_REG(i32 0)
  %11 = load i32, i32* @I2S_CAMERA_EN, align 4
  %12 = call i32 @CLEAR_PERI_REG_MASK(i32 %10, i32 %11)
  %13 = call i32 @I2S_CONF2_REG(i32 0)
  %14 = load i32, i32* @I2S_LCD_EN, align 4
  %15 = call i32 @CLEAR_PERI_REG_MASK(i32 %13, i32 %14)
  %16 = call i32 @I2S_CONF2_REG(i32 0)
  %17 = load i32, i32* @I2S_DATA_ENABLE_TEST_EN, align 4
  %18 = call i32 @CLEAR_PERI_REG_MASK(i32 %16, i32 %17)
  %19 = call i32 @I2S_CONF2_REG(i32 0)
  %20 = load i32, i32* @I2S_DATA_ENABLE, align 4
  %21 = call i32 @CLEAR_PERI_REG_MASK(i32 %19, i32 %20)
  %22 = load i32, i32* @PERIPH_I2S0_MODULE, align 4
  %23 = call i32 @periph_module_disable(i32 %22)
  %24 = load i32, i32* @PERIPH_I2S0_MODULE, align 4
  %25 = call i32 @periph_module_reset(i32 %24)
  %26 = load i32, i32* @RTC_CNTL_TEST_MUX_REG, align 4
  %27 = load i32, i32* @RTC_CNTL_ENT_RTC, align 4
  %28 = call i32 @CLEAR_PERI_REG_MASK(i32 %26, i32 %27)
  %29 = load i32, i32* @RTC_CNTL_TEST_MUX_REG, align 4
  %30 = load i32, i32* @RTC_CNTL_DTEST_RTC, align 4
  %31 = load i32, i32* @RTC_CNTL_DTEST_RTC_S, align 4
  %32 = call i32 @SET_PERI_REG_BITS(i32 %29, i32 %30, i32 0, i32 %31)
  ret void
}

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @I2S_CONF_REG(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @I2S_CONF2_REG(i32) #1

declare dso_local i32 @periph_module_disable(i32) #1

declare dso_local i32 @periph_module_reset(i32) #1

declare dso_local i32 @SET_PERI_REG_BITS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
