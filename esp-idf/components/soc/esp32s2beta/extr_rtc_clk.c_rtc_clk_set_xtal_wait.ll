; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_set_xtal_wait.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_set_xtal_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_SLOW_FREQ_32K_XTAL = common dso_local global i64 0, align 8
@RTC_SLOW_FREQ_8MD256 = common dso_local global i64 0, align 8
@RTC_CAL_RTC_MUX = common dso_local global i32 0, align 4
@RTC_CAL_32K_XTAL = common dso_local global i32 0, align 4
@RTC_CAL_8MD256 = common dso_local global i32 0, align 4
@RTC_CLK_CAL_FRACT = common dso_local global i32 0, align 4
@RTC_CNTL_TIMER1_REG = common dso_local global i32 0, align 4
@RTC_CNTL_XTL_BUF_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_set_xtal_wait() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i64 (...) @rtc_clk_slow_freq_get()
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* @RTC_SLOW_FREQ_32K_XTAL, align 8
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* @RTC_SLOW_FREQ_8MD256, align 8
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @RTC_CAL_RTC_MUX, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @RTC_CAL_32K_XTAL, align 4
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %0
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @RTC_CAL_8MD256, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @rtc_clk_cal(i32 %24, i32 2000)
  store i32 %25, i32* %5, align 4
  store i32 100, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @RTC_CLK_CAL_FRACT, align 4
  %30 = shl i32 1000, %29
  %31 = load i32, i32* %5, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @RTC_CNTL_TIMER1_REG, align 4
  %35 = load i32, i32* @RTC_CNTL_XTL_BUF_WAIT, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @REG_SET_FIELD(i32 %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i64 @rtc_clk_slow_freq_get(...) #1

declare dso_local i32 @rtc_clk_cal(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
