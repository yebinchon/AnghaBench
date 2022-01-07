; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_random.c_bootloader_random_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_random.c_bootloader_random_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERIPH_RNG_MODULE = common dso_local global i32 0, align 4
@RTC_CNTL_TEST_MUX_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DTEST_RTC = common dso_local global i32 0, align 4
@RTC_CNTL_DTEST_RTC_S = common dso_local global i32 0, align 4
@RTC_CNTL_ENT_RTC = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR2_PATT_TAB1_REG = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR2_PATT_TAB2_REG = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR2_PATT_TAB3_REG = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR2_PATT_TAB4_REG = common dso_local global i32 0, align 4
@SYSCON_SARADC_CTRL_REG = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR_CLK_DIV = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR_CLK_DIV_S = common dso_local global i32 0, align 4
@SYSCON_SARADC_FSM_REG = common dso_local global i32 0, align 4
@SYSCON_SARADC_RSTB_WAIT = common dso_local global i32 0, align 4
@SYSCON_SARADC_RSTB_WAIT_S = common dso_local global i32 0, align 4
@SYSCON_SARADC_WORK_MODE = common dso_local global i32 0, align 4
@SYSCON_SARADC_WORK_MODE_S = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR_SEL = common dso_local global i32 0, align 4
@SYSCON_SARADC_DATA_SAR_SEL = common dso_local global i32 0, align 4
@I2S_RX_BCK_DIV_NUM = common dso_local global i32 0, align 4
@I2S_RX_BCK_DIV_NUM_S = common dso_local global i32 0, align 4
@SYSCON_SARADC_DATA_TO_I2S = common dso_local global i32 0, align 4
@I2S_CAMERA_EN = common dso_local global i32 0, align 4
@I2S_LCD_EN = common dso_local global i32 0, align 4
@I2S_DATA_ENABLE = common dso_local global i32 0, align 4
@I2S_DATA_ENABLE_TEST_EN = common dso_local global i32 0, align 4
@I2S_RX_START = common dso_local global i32 0, align 4
@DPORT_I2S0_CLK_EN = common dso_local global i32 0, align 4
@DPORT_PERIP_CLK_EN_REG = common dso_local global i32 0, align 4
@DPORT_WIFI_CLK_EN_REG = common dso_local global i32 0, align 4
@DPORT_WIFI_CLK_RNG_EN = common dso_local global i32 0, align 4
@PERIPH_I2S0_MODULE = common dso_local global i32 0, align 4
@RTC_CNTL_ULP_CP_CTRL_REG = common dso_local global i32 0, align 4
@RTC_CNTL_ULP_CP_FORCE_START_TOP = common dso_local global i32 0, align 4
@RTC_CNTL_ULP_CP_START_TOP = common dso_local global i32 0, align 4
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
@SENS_ULP_CP_FORCE_START_TOP = common dso_local global i32 0, align 4
@SENS_ULP_CP_START_TOP = common dso_local global i32 0, align 4
@SYSCON_SARADC_SAR2_MUX = common dso_local global i32 0, align 4
@SYSCON_SARADC_START_WAIT = common dso_local global i32 0, align 4
@SYSCON_SARADC_START_WAIT_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bootloader_random_enable() #0 {
  %1 = load i32, i32* @PERIPH_RNG_MODULE, align 4
  %2 = call i32 @periph_module_enable(i32 %1)
  %3 = load i32, i32* @RTC_CNTL_TEST_MUX_REG, align 4
  %4 = load i32, i32* @RTC_CNTL_DTEST_RTC, align 4
  %5 = load i32, i32* @RTC_CNTL_DTEST_RTC_S, align 4
  %6 = call i32 @SET_PERI_REG_BITS(i32 %3, i32 %4, i32 2, i32 %5)
  %7 = load i32, i32* @RTC_CNTL_TEST_MUX_REG, align 4
  %8 = load i32, i32* @RTC_CNTL_ENT_RTC, align 4
  %9 = call i32 @SET_PERI_REG_MASK(i32 %7, i32 %8)
  %10 = load i32, i32* @SYSCON_SARADC_SAR2_PATT_TAB1_REG, align 4
  %11 = call i32 @WRITE_PERI_REG(i32 %10, i32 -1381126739)
  %12 = load i32, i32* @SYSCON_SARADC_SAR2_PATT_TAB2_REG, align 4
  %13 = call i32 @WRITE_PERI_REG(i32 %12, i32 -1381126739)
  %14 = load i32, i32* @SYSCON_SARADC_SAR2_PATT_TAB3_REG, align 4
  %15 = call i32 @WRITE_PERI_REG(i32 %14, i32 -1381126739)
  %16 = load i32, i32* @SYSCON_SARADC_SAR2_PATT_TAB4_REG, align 4
  %17 = call i32 @WRITE_PERI_REG(i32 %16, i32 -1381126739)
  %18 = load i32, i32* @SYSCON_SARADC_CTRL_REG, align 4
  %19 = load i32, i32* @SYSCON_SARADC_SAR_CLK_DIV, align 4
  %20 = load i32, i32* @SYSCON_SARADC_SAR_CLK_DIV_S, align 4
  %21 = call i32 @SET_PERI_REG_BITS(i32 %18, i32 %19, i32 4, i32 %20)
  %22 = load i32, i32* @SYSCON_SARADC_FSM_REG, align 4
  %23 = load i32, i32* @SYSCON_SARADC_RSTB_WAIT, align 4
  %24 = load i32, i32* @SYSCON_SARADC_RSTB_WAIT_S, align 4
  %25 = call i32 @SET_PERI_REG_BITS(i32 %22, i32 %23, i32 8, i32 %24)
  %26 = load i32, i32* @SYSCON_SARADC_CTRL_REG, align 4
  %27 = load i32, i32* @SYSCON_SARADC_WORK_MODE, align 4
  %28 = load i32, i32* @SYSCON_SARADC_WORK_MODE_S, align 4
  %29 = call i32 @SET_PERI_REG_BITS(i32 %26, i32 %27, i32 0, i32 %28)
  %30 = load i32, i32* @SYSCON_SARADC_CTRL_REG, align 4
  %31 = load i32, i32* @SYSCON_SARADC_SAR_SEL, align 4
  %32 = call i32 @SET_PERI_REG_MASK(i32 %30, i32 %31)
  %33 = load i32, i32* @SYSCON_SARADC_CTRL_REG, align 4
  %34 = load i32, i32* @SYSCON_SARADC_DATA_SAR_SEL, align 4
  %35 = call i32 @CLEAR_PERI_REG_MASK(i32 %33, i32 %34)
  %36 = call i32 @I2S_SAMPLE_RATE_CONF_REG(i32 0)
  %37 = load i32, i32* @I2S_RX_BCK_DIV_NUM, align 4
  %38 = load i32, i32* @I2S_RX_BCK_DIV_NUM_S, align 4
  %39 = call i32 @SET_PERI_REG_BITS(i32 %36, i32 %37, i32 20, i32 %38)
  %40 = load i32, i32* @SYSCON_SARADC_CTRL_REG, align 4
  %41 = load i32, i32* @SYSCON_SARADC_DATA_TO_I2S, align 4
  %42 = call i32 @SET_PERI_REG_MASK(i32 %40, i32 %41)
  %43 = call i32 @I2S_CONF2_REG(i32 0)
  %44 = load i32, i32* @I2S_CAMERA_EN, align 4
  %45 = call i32 @CLEAR_PERI_REG_MASK(i32 %43, i32 %44)
  %46 = call i32 @I2S_CONF2_REG(i32 0)
  %47 = load i32, i32* @I2S_LCD_EN, align 4
  %48 = call i32 @SET_PERI_REG_MASK(i32 %46, i32 %47)
  %49 = call i32 @I2S_CONF2_REG(i32 0)
  %50 = load i32, i32* @I2S_DATA_ENABLE, align 4
  %51 = call i32 @SET_PERI_REG_MASK(i32 %49, i32 %50)
  %52 = call i32 @I2S_CONF2_REG(i32 0)
  %53 = load i32, i32* @I2S_DATA_ENABLE_TEST_EN, align 4
  %54 = call i32 @SET_PERI_REG_MASK(i32 %52, i32 %53)
  %55 = call i32 @I2S_CONF_REG(i32 0)
  %56 = load i32, i32* @I2S_RX_START, align 4
  %57 = call i32 @SET_PERI_REG_MASK(i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @SET_PERI_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @I2S_SAMPLE_RATE_CONF_REG(i32) #1

declare dso_local i32 @I2S_CONF2_REG(i32) #1

declare dso_local i32 @I2S_CONF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
