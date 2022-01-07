; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_wdt.c_rtc_wdt_set_stage.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_wdt.c_rtc_wdt_set_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RTC_WDT_STAGE0 = common dso_local global i32 0, align 4
@RTC_CNTL_WDTCONFIG0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WDT_STG0 = common dso_local global i32 0, align 4
@RTC_WDT_STAGE1 = common dso_local global i32 0, align 4
@RTC_CNTL_WDT_STG1 = common dso_local global i32 0, align 4
@RTC_WDT_STAGE2 = common dso_local global i32 0, align 4
@RTC_CNTL_WDT_STG2 = common dso_local global i32 0, align 4
@RTC_CNTL_WDT_STG3 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_wdt_set_stage(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 4
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %12, i32* %3, align 4
  br label %49

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RTC_WDT_STAGE0, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* @RTC_CNTL_WDTCONFIG0_REG, align 4
  %19 = load i32, i32* @RTC_CNTL_WDT_STG0, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @REG_SET_FIELD(i32 %18, i32 %19, i32 %20)
  br label %47

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @RTC_WDT_STAGE1, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @RTC_CNTL_WDTCONFIG0_REG, align 4
  %28 = load i32, i32* @RTC_CNTL_WDT_STG1, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29)
  br label %46

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @RTC_WDT_STAGE2, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @RTC_CNTL_WDTCONFIG0_REG, align 4
  %37 = load i32, i32* @RTC_CNTL_WDT_STG2, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @REG_SET_FIELD(i32 %36, i32 %37, i32 %38)
  br label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @RTC_CNTL_WDTCONFIG0_REG, align 4
  %42 = load i32, i32* @RTC_CNTL_WDT_STG3, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @REG_SET_FIELD(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %26
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32, i32* @ESP_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
