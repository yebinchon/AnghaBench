; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_wdt.c_rtc_wdt_disable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_wdt.c_rtc_wdt_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_WDTFEED_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WDT_FEED = common dso_local global i32 0, align 4
@RTC_WDT_STAGE0 = common dso_local global i32 0, align 4
@RTC_WDT_STAGE_ACTION_OFF = common dso_local global i32 0, align 4
@RTC_WDT_STAGE1 = common dso_local global i32 0, align 4
@RTC_WDT_STAGE2 = common dso_local global i32 0, align 4
@RTC_WDT_STAGE3 = common dso_local global i32 0, align 4
@RTC_CNTL_WDTCONFIG0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WDT_FLASHBOOT_MOD_EN = common dso_local global i32 0, align 4
@RTC_CNTL_WDT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_wdt_disable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @rtc_wdt_get_protect_status()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (...) @rtc_wdt_protect_off()
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @RTC_CNTL_WDTFEED_REG, align 4
  %9 = load i32, i32* @RTC_CNTL_WDT_FEED, align 4
  %10 = call i32 @REG_SET_BIT(i32 %8, i32 %9)
  %11 = load i32, i32* @RTC_WDT_STAGE0, align 4
  %12 = load i32, i32* @RTC_WDT_STAGE_ACTION_OFF, align 4
  %13 = call i32 @rtc_wdt_set_stage(i32 %11, i32 %12)
  %14 = load i32, i32* @RTC_WDT_STAGE1, align 4
  %15 = load i32, i32* @RTC_WDT_STAGE_ACTION_OFF, align 4
  %16 = call i32 @rtc_wdt_set_stage(i32 %14, i32 %15)
  %17 = load i32, i32* @RTC_WDT_STAGE2, align 4
  %18 = load i32, i32* @RTC_WDT_STAGE_ACTION_OFF, align 4
  %19 = call i32 @rtc_wdt_set_stage(i32 %17, i32 %18)
  %20 = load i32, i32* @RTC_WDT_STAGE3, align 4
  %21 = load i32, i32* @RTC_WDT_STAGE_ACTION_OFF, align 4
  %22 = call i32 @rtc_wdt_set_stage(i32 %20, i32 %21)
  %23 = load i32, i32* @RTC_CNTL_WDTCONFIG0_REG, align 4
  %24 = load i32, i32* @RTC_CNTL_WDT_FLASHBOOT_MOD_EN, align 4
  %25 = call i32 @REG_CLR_BIT(i32 %23, i32 %24)
  %26 = load i32, i32* @RTC_CNTL_WDTCONFIG0_REG, align 4
  %27 = load i32, i32* @RTC_CNTL_WDT_EN, align 4
  %28 = call i32 @REG_CLR_BIT(i32 %26, i32 %27)
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = call i32 (...) @rtc_wdt_protect_on()
  br label %33

33:                                               ; preds = %31, %7
  ret void
}

declare dso_local i32 @rtc_wdt_get_protect_status(...) #1

declare dso_local i32 @rtc_wdt_protect_off(...) #1

declare dso_local i32 @REG_SET_BIT(i32, i32) #1

declare dso_local i32 @rtc_wdt_set_stage(i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(i32, i32) #1

declare dso_local i32 @rtc_wdt_protect_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
