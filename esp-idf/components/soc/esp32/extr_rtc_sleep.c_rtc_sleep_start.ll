; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_sleep.c_rtc_sleep_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_sleep.c_rtc_sleep_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_WAKEUP_STATE_REG = common dso_local global i32 0, align 4
@RTC_CNTL_WAKEUP_ENA = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_REJECT_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_STATE0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SLEEP_EN = common dso_local global i32 0, align 4
@RTC_CNTL_INT_RAW_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_REJECT_INT_RAW = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_WAKEUP_INT_RAW = common dso_local global i32 0, align 4
@RTC_CNTL_INT_CLR_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_REJECT_INT_CLR = common dso_local global i32 0, align 4
@RTC_CNTL_SLP_WAKEUP_INT_CLR = common dso_local global i32 0, align 4
@RTC_CNTL_BIAS_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DBG_ATTEN = common dso_local global i32 0, align 4
@RTC_CNTL_DBG_ATTEN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_sleep_start(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @RTC_CNTL_WAKEUP_STATE_REG, align 4
  %7 = load i32, i32* @RTC_CNTL_WAKEUP_ENA, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @REG_SET_FIELD(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @RTC_CNTL_SLP_REJECT_CONF_REG, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @WRITE_PERI_REG(i32 %10, i32 %11)
  %13 = load i32, i32* @RTC_CNTL_STATE0_REG, align 4
  %14 = load i32, i32* @RTC_CNTL_SLEEP_EN, align 4
  %15 = call i32 @SET_PERI_REG_MASK(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %23, %2
  %17 = load i32, i32* @RTC_CNTL_INT_RAW_REG, align 4
  %18 = load i32, i32* @RTC_CNTL_SLP_REJECT_INT_RAW, align 4
  %19 = load i32, i32* @RTC_CNTL_SLP_WAKEUP_INT_RAW, align 4
  %20 = or i32 %18, %19
  %21 = call i64 @GET_PERI_REG_MASK(i32 %17, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %16

24:                                               ; preds = %16
  %25 = load i32, i32* @RTC_CNTL_INT_RAW_REG, align 4
  %26 = load i32, i32* @RTC_CNTL_SLP_REJECT_INT_RAW, align 4
  %27 = call i32 @REG_GET_FIELD(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @RTC_CNTL_INT_CLR_REG, align 4
  %29 = load i32, i32* @RTC_CNTL_SLP_REJECT_INT_CLR, align 4
  %30 = load i32, i32* @RTC_CNTL_SLP_WAKEUP_INT_CLR, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @SET_PERI_REG_MASK(i32 %28, i32 %31)
  %33 = load i32, i32* @RTC_CNTL_BIAS_CONF_REG, align 4
  %34 = load i32, i32* @RTC_CNTL_DBG_ATTEN, align 4
  %35 = load i32, i32* @RTC_CNTL_DBG_ATTEN_DEFAULT, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i64 @GET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
