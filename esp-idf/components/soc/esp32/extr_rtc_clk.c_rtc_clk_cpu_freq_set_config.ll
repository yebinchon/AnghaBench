; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_cpu_freq_set_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_cpu_freq_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SOC_CLK_SEL = common dso_local global i32 0, align 4
@RTC_CNTL_SOC_CLK_SEL_XTL = common dso_local global i64 0, align 8
@RTC_CNTL_SOC_CLK_SEL_PLL = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_SRC_XTAL = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_SRC_PLL = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_SRC_8M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_cpu_freq_set_config(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = call i32 (...) @rtc_clk_xtal_freq_get()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %7 = load i32, i32* @RTC_CNTL_SOC_CLK_SEL, align 4
  %8 = call i64 @REG_GET_FIELD(i32 %6, i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @RTC_CNTL_SOC_CLK_SEL_XTL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rtc_clk_cpu_freq_to_xtal(i32 %13, i32 1)
  %15 = call i32 (...) @rtc_clk_wait_for_slow_cycle()
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @RTC_CNTL_SOC_CLK_SEL_PLL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @rtc_clk_bbpll_disable()
  br label %22

22:                                               ; preds = %20, %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RTC_CPU_FREQ_SRC_XTAL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rtc_clk_cpu_freq_to_xtal(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %28
  br label %70

42:                                               ; preds = %22
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RTC_CPU_FREQ_SRC_PLL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = call i32 (...) @rtc_clk_bbpll_enable()
  %50 = call i32 (...) @rtc_clk_wait_for_slow_cycle()
  %51 = call i32 (...) @rtc_clk_xtal_freq_get()
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @rtc_clk_bbpll_configure(i32 %51, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rtc_clk_cpu_freq_to_pll_mhz(i32 %58)
  br label %69

60:                                               ; preds = %42
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RTC_CPU_FREQ_SRC_8M, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 (...) @rtc_clk_cpu_freq_to_8m()
  br label %68

68:                                               ; preds = %66, %60
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69, %41
  ret void
}

declare dso_local i32 @rtc_clk_xtal_freq_get(...) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_to_xtal(i32, i32) #1

declare dso_local i32 @rtc_clk_wait_for_slow_cycle(...) #1

declare dso_local i32 @rtc_clk_bbpll_disable(...) #1

declare dso_local i32 @rtc_clk_bbpll_enable(...) #1

declare dso_local i32 @rtc_clk_bbpll_configure(i32, i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_to_pll_mhz(i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_to_8m(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
