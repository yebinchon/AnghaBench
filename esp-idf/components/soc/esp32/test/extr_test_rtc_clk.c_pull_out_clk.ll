; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/test/extr_test_rtc_clk.c_pull_out_clk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/test/extr_test_rtc_clk.c_pull_out_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_IO_PAD_DAC1_REG = common dso_local global i32 0, align 4
@RTC_IO_PDAC1_MUX_SEL_M = common dso_local global i32 0, align 4
@RTC_IO_PDAC1_RDE_M = common dso_local global i32 0, align 4
@RTC_IO_PDAC1_RUE_M = common dso_local global i32 0, align 4
@RTC_IO_PDAC1_FUN_SEL = common dso_local global i32 0, align 4
@SENS_SAR_DAC_CTRL1_REG = common dso_local global i32 0, align 4
@SENS_DEBUG_BIT_SEL = common dso_local global i32 0, align 4
@RTC_IO_RTC_DEBUG_SEL_REG = common dso_local global i32 0, align 4
@RTC_IO_DEBUG_SEL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pull_out_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pull_out_clk(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @RTC_IO_PAD_DAC1_REG, align 4
  %4 = load i32, i32* @RTC_IO_PDAC1_MUX_SEL_M, align 4
  %5 = call i32 @REG_SET_BIT(i32 %3, i32 %4)
  %6 = load i32, i32* @RTC_IO_PAD_DAC1_REG, align 4
  %7 = load i32, i32* @RTC_IO_PDAC1_RDE_M, align 4
  %8 = load i32, i32* @RTC_IO_PDAC1_RUE_M, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @REG_CLR_BIT(i32 %6, i32 %9)
  %11 = load i32, i32* @RTC_IO_PAD_DAC1_REG, align 4
  %12 = load i32, i32* @RTC_IO_PDAC1_FUN_SEL, align 4
  %13 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 1)
  %14 = load i32, i32* @SENS_SAR_DAC_CTRL1_REG, align 4
  %15 = load i32, i32* @SENS_DEBUG_BIT_SEL, align 4
  %16 = call i32 @REG_SET_FIELD(i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* @RTC_IO_RTC_DEBUG_SEL_REG, align 4
  %18 = load i32, i32* @RTC_IO_DEBUG_SEL0, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @REG_SET_FIELD(i32 %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @REG_SET_BIT(i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
