; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_wdt.c_get_addr_reg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_wdt.c_get_addr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_WDT_STAGE0 = common dso_local global i64 0, align 8
@RTC_CNTL_WDTCONFIG1_REG = common dso_local global i32 0, align 4
@RTC_WDT_STAGE1 = common dso_local global i64 0, align 8
@RTC_CNTL_WDTCONFIG2_REG = common dso_local global i32 0, align 4
@RTC_WDT_STAGE2 = common dso_local global i64 0, align 8
@RTC_CNTL_WDTCONFIG3_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WDTCONFIG4_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_addr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_addr_reg(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @RTC_WDT_STAGE0, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @RTC_CNTL_WDTCONFIG1_REG, align 4
  store i32 %8, i32* %3, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @RTC_WDT_STAGE1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @RTC_CNTL_WDTCONFIG2_REG, align 4
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %9
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @RTC_WDT_STAGE2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @RTC_CNTL_WDTCONFIG3_REG, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @RTC_CNTL_WDTCONFIG4_REG, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %24

24:                                               ; preds = %23, %13
  br label %25

25:                                               ; preds = %24, %7
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
