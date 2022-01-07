; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_8m_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_8m_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_ENB_CK8M = common dso_local global i32 0, align 4
@RTC_CNTL_TIMER1_REG = common dso_local global i32 0, align 4
@RTC_CNTL_CK8M_WAIT = common dso_local global i32 0, align 4
@DELAY_8M_ENABLE = common dso_local global i32 0, align 4
@RTC_CNTL_CK8M_WAIT_DEFAULT = common dso_local global i32 0, align 4
@RTC_CNTL_ENB_CK8M_DIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_8m_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %9 = load i32, i32* @RTC_CNTL_ENB_CK8M, align 4
  %10 = call i32 @CLEAR_PERI_REG_MASK(i32 %8, i32 %9)
  %11 = load i32, i32* @RTC_CNTL_TIMER1_REG, align 4
  %12 = load i32, i32* @RTC_CNTL_CK8M_WAIT, align 4
  %13 = call i32 @REG_SET_FIELD(i32 %11, i32 %12, i32 1)
  %14 = load i32, i32* @DELAY_8M_ENABLE, align 4
  %15 = call i32 @ets_delay_us(i32 %14)
  br label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %18 = load i32, i32* @RTC_CNTL_ENB_CK8M, align 4
  %19 = call i32 @SET_PERI_REG_MASK(i32 %17, i32 %18)
  %20 = load i32, i32* @RTC_CNTL_TIMER1_REG, align 4
  %21 = load i32, i32* @RTC_CNTL_CK8M_WAIT, align 4
  %22 = load i32, i32* @RTC_CNTL_CK8M_WAIT_DEFAULT, align 4
  %23 = call i32 @REG_SET_FIELD(i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %16, %7
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %29 = load i32, i32* @RTC_CNTL_ENB_CK8M_DIV, align 4
  %30 = call i32 @CLEAR_PERI_REG_MASK(i32 %28, i32 %29)
  br label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %33 = load i32, i32* @RTC_CNTL_ENB_CK8M_DIV, align 4
  %34 = call i32 @SET_PERI_REG_MASK(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
