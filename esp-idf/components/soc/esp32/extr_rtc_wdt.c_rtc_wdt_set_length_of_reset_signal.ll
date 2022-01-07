; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_wdt.c_rtc_wdt_set_length_of_reset_signal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_wdt.c_rtc_wdt_set_length_of_reset_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RTC_CNTL_WDTCONFIG0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WDT_SYS_RESET_LENGTH = common dso_local global i32 0, align 4
@RTC_CNTL_WDT_CPU_RESET_LENGTH = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_wdt_set_length_of_reset_signal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 7
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @RTC_CNTL_WDTCONFIG0_REG, align 4
  %18 = load i32, i32* @RTC_CNTL_WDT_SYS_RESET_LENGTH, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @REG_SET_FIELD(i32 %17, i32 %18, i32 %19)
  br label %26

21:                                               ; preds = %13
  %22 = load i32, i32* @RTC_CNTL_WDTCONFIG0_REG, align 4
  %23 = load i32, i32* @RTC_CNTL_WDT_CPU_RESET_LENGTH, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @REG_SET_FIELD(i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @ESP_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
