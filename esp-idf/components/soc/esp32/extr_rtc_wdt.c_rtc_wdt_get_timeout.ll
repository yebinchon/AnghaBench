; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_wdt.c_rtc_wdt_get_timeout.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_wdt.c_rtc_wdt_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RTC_WDT_STAGE0 = common dso_local global i32 0, align 4
@RTC_CNTL_WDTCONFIG1_REG = common dso_local global i32 0, align 4
@RTC_WDT_STAGE1 = common dso_local global i32 0, align 4
@RTC_CNTL_WDTCONFIG2_REG = common dso_local global i32 0, align 4
@RTC_WDT_STAGE2 = common dso_local global i32 0, align 4
@RTC_CNTL_WDTCONFIG3_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WDTCONFIG4_REG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_wdt_get_timeout(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %10, i32* %3, align 4
  br label %44

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RTC_WDT_STAGE0, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @RTC_CNTL_WDTCONFIG1_REG, align 4
  %17 = call i32 @READ_PERI_REG(i32 %16)
  store i32 %17, i32* %6, align 4
  br label %37

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @RTC_WDT_STAGE1, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @RTC_CNTL_WDTCONFIG2_REG, align 4
  %24 = call i32 @READ_PERI_REG(i32 %23)
  store i32 %24, i32* %6, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @RTC_WDT_STAGE2, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @RTC_CNTL_WDTCONFIG3_REG, align 4
  %31 = call i32 @READ_PERI_REG(i32 %30)
  store i32 %31, i32* %6, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @RTC_CNTL_WDTCONFIG4_REG, align 4
  %34 = call i32 @READ_PERI_REG(i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 1000
  %40 = call i32 (...) @rtc_clk_slow_freq_get_hz()
  %41 = sdiv i32 %39, %40
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @ESP_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %9
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @rtc_clk_slow_freq_get_hz(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
