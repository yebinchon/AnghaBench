; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_32k_enable_internal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_32k_enable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_IO_XTAL_32P_PAD_REG = common dso_local global i32 0, align 4
@RTC_IO_X32P_MUX_SEL = common dso_local global i32 0, align 4
@RTC_IO_XTAL_32N_PAD_REG = common dso_local global i32 0, align 4
@RTC_IO_X32N_MUX_SEL = common dso_local global i32 0, align 4
@RTC_IO_X32P_RUE = common dso_local global i32 0, align 4
@RTC_IO_X32P_FUN_IE = common dso_local global i32 0, align 4
@RTC_IO_X32P_RDE = common dso_local global i32 0, align 4
@RTC_IO_X32N_RUE = common dso_local global i32 0, align 4
@RTC_IO_X32N_FUN_IE = common dso_local global i32 0, align 4
@RTC_IO_X32N_RDE = common dso_local global i32 0, align 4
@RTC_CNTL_EXT_XTL_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DAC_XTAL_32K = common dso_local global i32 0, align 4
@RTC_CNTL_DRES_XTAL_32K = common dso_local global i32 0, align 4
@RTC_CNTL_DGM_XTAL_32K = common dso_local global i32 0, align 4
@RTC_CNTL_XTAL32K_XPD_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_32k_enable_internal(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @RTC_IO_XTAL_32P_PAD_REG, align 4
  %8 = load i32, i32* @RTC_IO_X32P_MUX_SEL, align 4
  %9 = call i32 @SET_PERI_REG_MASK(i32 %7, i32 %8)
  %10 = load i32, i32* @RTC_IO_XTAL_32N_PAD_REG, align 4
  %11 = load i32, i32* @RTC_IO_X32N_MUX_SEL, align 4
  %12 = call i32 @SET_PERI_REG_MASK(i32 %10, i32 %11)
  %13 = load i32, i32* @RTC_IO_XTAL_32P_PAD_REG, align 4
  %14 = load i32, i32* @RTC_IO_X32P_RUE, align 4
  %15 = load i32, i32* @RTC_IO_X32P_FUN_IE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RTC_IO_X32P_RDE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @CLEAR_PERI_REG_MASK(i32 %13, i32 %18)
  %20 = load i32, i32* @RTC_IO_XTAL_32N_PAD_REG, align 4
  %21 = load i32, i32* @RTC_IO_X32N_RUE, align 4
  %22 = load i32, i32* @RTC_IO_X32N_FUN_IE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RTC_IO_X32N_RDE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @CLEAR_PERI_REG_MASK(i32 %20, i32 %25)
  %27 = load i32, i32* @RTC_CNTL_EXT_XTL_CONF_REG, align 4
  %28 = load i32, i32* @RTC_CNTL_DAC_XTAL_32K, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @RTC_CNTL_EXT_XTL_CONF_REG, align 4
  %32 = load i32, i32* @RTC_CNTL_DRES_XTAL_32K, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @RTC_CNTL_EXT_XTL_CONF_REG, align 4
  %36 = load i32, i32* @RTC_CNTL_DGM_XTAL_32K, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @REG_SET_FIELD(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @RTC_CNTL_EXT_XTL_CONF_REG, align 4
  %40 = load i32, i32* @RTC_CNTL_XTAL32K_XPD_FORCE, align 4
  %41 = call i32 @CLEAR_PERI_REG_MASK(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
