; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_32k_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_32k_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XTAL_32K_DAC_VAL = common dso_local global i32 0, align 4
@XTAL_32K_DRES_VAL = common dso_local global i32 0, align 4
@XTAL_32K_DBIAS_VAL = common dso_local global i32 0, align 4
@RTC_IO_XTAL_32K_PAD_REG = common dso_local global i32 0, align 4
@RTC_IO_XPD_XTAL_32K_M = common dso_local global i32 0, align 4
@RTC_IO_X32N_MUX_SEL = common dso_local global i32 0, align 4
@RTC_IO_X32P_MUX_SEL = common dso_local global i32 0, align 4
@RTC_IO_TOUCH_PAD9_REG = common dso_local global i32 0, align 4
@RTC_IO_TOUCH_PAD9_XPD_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_32k_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* @XTAL_32K_DAC_VAL, align 4
  %7 = load i32, i32* @XTAL_32K_DRES_VAL, align 4
  %8 = load i32, i32* @XTAL_32K_DBIAS_VAL, align 4
  %9 = call i32 @rtc_clk_32k_enable_common(i32 %6, i32 %7, i32 %8)
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @RTC_IO_XTAL_32K_PAD_REG, align 4
  %12 = load i32, i32* @RTC_IO_XPD_XTAL_32K_M, align 4
  %13 = call i32 @CLEAR_PERI_REG_MASK(i32 %11, i32 %12)
  %14 = load i32, i32* @RTC_IO_XTAL_32K_PAD_REG, align 4
  %15 = load i32, i32* @RTC_IO_X32N_MUX_SEL, align 4
  %16 = load i32, i32* @RTC_IO_X32P_MUX_SEL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @CLEAR_PERI_REG_MASK(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %10, %5
  ret void
}

declare dso_local i32 @rtc_clk_32k_enable_common(i32, i32, i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
