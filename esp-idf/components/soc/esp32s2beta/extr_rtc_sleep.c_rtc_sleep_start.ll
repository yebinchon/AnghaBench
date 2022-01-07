; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_sleep.c_rtc_sleep_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_sleep.c_rtc_sleep_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_WAKEUP_STATE_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WAKEUP_ENA = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_REJECT_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SLEEP_REJECT_ENA = common dso_local global i32 0, align 4
@RTC_CNTL_STATE0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SLEEP_EN = common dso_local global i32 0, align 4
@RTC_CNTL_INT_RAW_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_REJECT_INT_RAW = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_WAKEUP_INT_RAW = common dso_local global i32 0, align 4
@RTC_CNTL_INT_CLR_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_REJECT_INT_CLR = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_WAKEUP_INT_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtc_sleep_start(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @RTC_CNTL_WAKEUP_STATE_REG, align 4
  %10 = load i32, i32* @RTC_CNTL_WAKEUP_ENA, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @REG_SET_FIELD(i32 %9, i32 %10, i64 %11)
  %13 = load i32, i32* @RTC_CNTL_SLP_REJECT_CONF_REG, align 4
  %14 = load i32, i32* @RTC_CNTL_SLEEP_REJECT_ENA, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @REG_SET_FIELD(i32 %13, i32 %14, i64 %15)
  %17 = load i32, i32* @RTC_CNTL_STATE0_REG, align 4
  %18 = load i32, i32* @RTC_CNTL_SLEEP_EN, align 4
  %19 = call i32 @SET_PERI_REG_MASK(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %27, %3
  %21 = load i32, i32* @RTC_CNTL_INT_RAW_REG, align 4
  %22 = load i32, i32* @RTC_CNTL_SLP_REJECT_INT_RAW, align 4
  %23 = load i32, i32* @RTC_CNTL_SLP_WAKEUP_INT_RAW, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @GET_PERI_REG_MASK(i32 %21, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %20

28:                                               ; preds = %20
  %29 = load i32, i32* @RTC_CNTL_INT_RAW_REG, align 4
  %30 = load i32, i32* @RTC_CNTL_SLP_REJECT_INT_RAW, align 4
  %31 = call i64 @REG_GET_FIELD(i32 %29, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i32, i32* @RTC_CNTL_INT_CLR_REG, align 4
  %33 = load i32, i32* @RTC_CNTL_SLP_REJECT_INT_CLR, align 4
  %34 = load i32, i32* @RTC_CNTL_SLP_WAKEUP_INT_CLR, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @SET_PERI_REG_MASK(i32 %32, i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = call i32 @RTC_SLEEP_PD_CONFIG_ALL(i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @rtc_sleep_pd(i32 %41)
  br label %43

43:                                               ; preds = %39, %28
  %44 = load i64, i64* %7, align 8
  ret i64 %44
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i64) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i64 @GET_PERI_REG_MASK(i32, i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @RTC_SLEEP_PD_CONFIG_ALL(i32) #1

declare dso_local i32 @rtc_sleep_pd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
