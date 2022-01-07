; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_32k_bootstrap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_32k_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_SLOW_CLK_FREQ_32K = common dso_local global i32 0, align 4
@RTC_IO_XTAL_32K_PAD_REG = common dso_local global i32 0, align 4
@RTC_IO_XPD_XTAL_32K = common dso_local global i32 0, align 4
@RTC_IO_X32P_RUE = common dso_local global i32 0, align 4
@RTC_IO_X32N_RDE = common dso_local global i32 0, align 4
@XTAL_32K_BOOTSTRAP_TIME_US = common dso_local global i32 0, align 4
@XTAL_32K_BOOTSTRAP_DAC_VAL = common dso_local global i32 0, align 4
@XTAL_32K_BOOTSTRAP_DRES_VAL = common dso_local global i32 0, align 4
@XTAL_32K_BOOTSTRAP_DBIAS_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_32k_bootstrap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  store i32 32, i32* %3, align 4
  store i32 33, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %11 = call i32 @gpio_pad_select_gpio(i32 32)
  %12 = call i32 @gpio_pad_select_gpio(i32 33)
  %13 = call i32 @gpio_output_set_high(i32 1, i32 2, i32 3, i32 0)
  %14 = load i32, i32* @RTC_SLOW_CLK_FREQ_32K, align 4
  %15 = sdiv i32 1000000, %14
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %20, %10
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = call i32 @gpio_output_set_high(i32 1, i32 2, i32 3, i32 0)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ets_delay_us(i32 %22)
  %24 = call i32 @gpio_output_set_high(i32 2, i32 1, i32 3, i32 0)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ets_delay_us(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %2, align 4
  br label %17

29:                                               ; preds = %17
  %30 = call i32 @gpio_output_set_high(i32 0, i32 0, i32 0, i32 3)
  br label %31

31:                                               ; preds = %29, %1
  %32 = load i32, i32* @RTC_IO_XTAL_32K_PAD_REG, align 4
  %33 = load i32, i32* @RTC_IO_XPD_XTAL_32K, align 4
  %34 = call i32 @CLEAR_PERI_REG_MASK(i32 %32, i32 %33)
  %35 = load i32, i32* @RTC_IO_XTAL_32K_PAD_REG, align 4
  %36 = load i32, i32* @RTC_IO_X32P_RUE, align 4
  %37 = load i32, i32* @RTC_IO_X32N_RDE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @SET_PERI_REG_MASK(i32 %35, i32 %38)
  %40 = load i32, i32* @XTAL_32K_BOOTSTRAP_TIME_US, align 4
  %41 = call i32 @ets_delay_us(i32 %40)
  %42 = load i32, i32* @XTAL_32K_BOOTSTRAP_DAC_VAL, align 4
  %43 = load i32, i32* @XTAL_32K_BOOTSTRAP_DRES_VAL, align 4
  %44 = load i32, i32* @XTAL_32K_BOOTSTRAP_DBIAS_VAL, align 4
  %45 = call i32 @rtc_clk_32k_enable_common(i32 %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @gpio_pad_select_gpio(i32) #1

declare dso_local i32 @gpio_output_set_high(i32, i32, i32, i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @rtc_clk_32k_enable_common(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
