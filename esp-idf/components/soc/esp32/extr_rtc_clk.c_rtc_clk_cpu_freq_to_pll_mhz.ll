; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_cpu_freq_to_pll_mhz.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_cpu_freq_to_pll_mhz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIG_DBIAS_80M_160M = common dso_local global i32 0, align 4
@DPORT_CPUPERIOD_SEL_80 = common dso_local global i32 0, align 4
@DPORT_CPUPERIOD_SEL_160 = common dso_local global i32 0, align 4
@DIG_DBIAS_240M = common dso_local global i32 0, align 4
@DPORT_CPUPERIOD_SEL_240 = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid frequency\00", align 1
@DPORT_CPU_PER_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_DBIAS_WAK = common dso_local global i32 0, align 4
@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SOC_CLK_SEL = common dso_local global i32 0, align 4
@RTC_CNTL_SOC_CLK_SEL_PLL = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rtc_clk_cpu_freq_to_pll_mhz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_clk_cpu_freq_to_pll_mhz(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @DIG_DBIAS_80M_160M, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @DPORT_CPUPERIOD_SEL_80, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 80
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 160
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @DPORT_CPUPERIOD_SEL_160, align 4
  store i32 %14, i32* %4, align 4
  br label %26

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 240
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @DIG_DBIAS_240M, align 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @DPORT_CPUPERIOD_SEL_240, align 4
  store i32 %20, i32* %4, align 4
  br label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @SOC_LOGE(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 (...) @abort() #3
  unreachable

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %13
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DPORT_REG_WRITE(i32 %28, i32 %29)
  %31 = load i32, i32* @RTC_CNTL_REG, align 4
  %32 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %36 = load i32, i32* @RTC_CNTL_SOC_CLK_SEL, align 4
  %37 = load i32, i32* @RTC_CNTL_SOC_CLK_SEL_PLL, align 4
  %38 = call i32 @REG_SET_FIELD(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @MHZ, align 4
  %40 = mul nsw i32 80, %39
  %41 = call i32 @rtc_clk_apb_freq_update(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @ets_update_cpu_frequency(i32 %42)
  %44 = call i32 (...) @rtc_clk_wait_for_slow_cycle()
  ret void
}

declare dso_local i32 @SOC_LOGE(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @DPORT_REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @rtc_clk_apb_freq_update(i32) #1

declare dso_local i32 @ets_update_cpu_frequency(i32) #1

declare dso_local i32 @rtc_clk_wait_for_slow_cycle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
