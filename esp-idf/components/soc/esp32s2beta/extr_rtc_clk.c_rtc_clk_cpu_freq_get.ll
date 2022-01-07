; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSCON_SYSCLK_CONF_REG = common dso_local global i32 0, align 4
@SYSCON_SOC_CLK_SEL = common dso_local global i32 0, align 4
@SYSCON_PRE_DIV_CNT = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_XTAL = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_2M = common dso_local global i32 0, align 4
@DPORT_CPU_PER_CONF_REG = common dso_local global i32 0, align 4
@DPORT_CPUPERIOD_SEL = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_80M = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_160M = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_240M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_clk_cpu_freq_get() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @SYSCON_SYSCLK_CONF_REG, align 4
  %6 = load i32, i32* @SYSCON_SOC_CLK_SEL, align 4
  %7 = call i32 @REG_GET_FIELD(i32 %5, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %53 [
    i32 128, label %9
    i32 129, label %29
    i32 130, label %52
    i32 131, label %52
  ]

9:                                                ; preds = %0
  %10 = load i32, i32* @SYSCON_SYSCLK_CONF_REG, align 4
  %11 = load i32, i32* @SYSCON_PRE_DIV_CNT, align 4
  %12 = call i32 @REG_GET_FIELD(i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @RTC_CPU_FREQ_XTAL, align 4
  store i32 %16, i32* %1, align 4
  br label %56

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = call i32 (...) @rtc_clk_xtal_freq_get()
  %20 = sdiv i32 %19, 2
  %21 = sub nsw i32 %20, 1
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @RTC_CPU_FREQ_2M, align 4
  store i32 %24, i32* %1, align 4
  br label %56

25:                                               ; preds = %17
  %26 = call i32 @assert(i32 0)
  br label %27

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27
  br label %55

29:                                               ; preds = %0
  %30 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %31 = load i32, i32* @DPORT_CPUPERIOD_SEL, align 4
  %32 = call i32 @DPORT_REG_GET_FIELD(i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @RTC_CPU_FREQ_80M, align 4
  store i32 %36, i32* %1, align 4
  br label %56

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @RTC_CPU_FREQ_160M, align 4
  store i32 %41, i32* %1, align 4
  br label %56

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @RTC_CPU_FREQ_240M, align 4
  store i32 %46, i32* %1, align 4
  br label %56

47:                                               ; preds = %42
  %48 = call i32 @assert(i32 0)
  br label %49

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  br label %55

52:                                               ; preds = %0, %0
  br label %53

53:                                               ; preds = %0, %52
  %54 = call i32 @assert(i32 0)
  br label %55

55:                                               ; preds = %53, %51, %28
  store i32 128, i32* %1, align 4
  br label %56

56:                                               ; preds = %55, %45, %40, %35, %23, %15
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @rtc_clk_xtal_freq_get(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DPORT_REG_GET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
