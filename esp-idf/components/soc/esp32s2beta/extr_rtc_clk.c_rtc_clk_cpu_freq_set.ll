; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_DBIAS_WAK = common dso_local global i32 0, align 4
@DIG_DBIAS_XTAL = common dso_local global i32 0, align 4
@SYSCON_SYSCLK_CONF_REG = common dso_local global i32 0, align 4
@SYSCON_SOC_CLK_SEL = common dso_local global i32 0, align 4
@SYSCON_SOC_CLK_SEL_XTL = common dso_local global i32 0, align 4
@SYSCON_PRE_DIV_CNT = common dso_local global i32 0, align 4
@DPORT_CPU_PER_CONF_REG = common dso_local global i32 0, align 4
@DPORT_CPUPERIOD_SEL = common dso_local global i32 0, align 4
@RTC_CNTL_OPTIONS0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_BB_I2C_FORCE_PD = common dso_local global i32 0, align 4
@RTC_CNTL_BBPLL_FORCE_PD = common dso_local global i32 0, align 4
@RTC_CNTL_BBPLL_I2C_FORCE_PD = common dso_local global i32 0, align 4
@RTC_PLL_NONE = common dso_local global i32 0, align 4
@s_cur_pll = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_XTAL = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_2M = common dso_local global i64 0, align 8
@DIG_DBIAS_2M = common dso_local global i32 0, align 4
@RTC_PLL_320M = common dso_local global i32 0, align 4
@RTC_PLL_480M = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_80M = common dso_local global i64 0, align 8
@RTC_CPU_320M_80M = common dso_local global i64 0, align 8
@DIG_DBIAS_80M_160M = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_160M = common dso_local global i64 0, align 8
@RTC_CPU_320M_160M = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_240M = common dso_local global i64 0, align 8
@DIG_DBIAS_240M = common dso_local global i32 0, align 4
@SYSCON_SOC_CLK_SEL_PLL = common dso_local global i32 0, align 4
@s_cur_freq = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_cpu_freq_set(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = call i32 (...) @rtc_clk_xtal_freq_get()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @RTC_CNTL_REG, align 4
  %6 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %7 = load i32, i32* @DIG_DBIAS_XTAL, align 4
  %8 = call i32 @REG_SET_FIELD(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @SYSCON_SYSCLK_CONF_REG, align 4
  %10 = load i32, i32* @SYSCON_SOC_CLK_SEL, align 4
  %11 = load i32, i32* @SYSCON_SOC_CLK_SEL_XTL, align 4
  %12 = call i32 @REG_SET_FIELD(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @SYSCON_SYSCLK_CONF_REG, align 4
  %14 = load i32, i32* @SYSCON_PRE_DIV_CNT, align 4
  %15 = call i32 @REG_SET_FIELD(i32 %13, i32 %14, i32 0)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ets_update_cpu_frequency(i32 %16)
  %18 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %19 = load i32, i32* @DPORT_CPUPERIOD_SEL, align 4
  %20 = call i32 @DPORT_REG_SET_FIELD(i32 %18, i32 %19, i32 0)
  %21 = load i32, i32* @RTC_CNTL_OPTIONS0_REG, align 4
  %22 = load i32, i32* @RTC_CNTL_BB_I2C_FORCE_PD, align 4
  %23 = load i32, i32* @RTC_CNTL_BBPLL_FORCE_PD, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RTC_CNTL_BBPLL_I2C_FORCE_PD, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @SET_PERI_REG_MASK(i32 %21, i32 %26)
  %28 = load i32, i32* @RTC_PLL_NONE, align 4
  store i32 %28, i32* @s_cur_pll, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MHZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @rtc_clk_apb_freq_update(i32 %31)
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @RTC_CPU_FREQ_XTAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %135

37:                                               ; preds = %1
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @RTC_CPU_FREQ_2M, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load i32, i32* @SYSCON_SYSCLK_CONF_REG, align 4
  %43 = load i32, i32* @SYSCON_PRE_DIV_CNT, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sdiv i32 %44, 2
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %46)
  %48 = call i32 @ets_update_cpu_frequency(i32 2)
  %49 = load i32, i32* @MHZ, align 4
  %50 = mul nsw i32 2, %49
  %51 = call i32 @rtc_clk_apb_freq_update(i32 %50)
  %52 = load i32, i32* @RTC_CNTL_REG, align 4
  %53 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %54 = load i32, i32* @DIG_DBIAS_2M, align 4
  %55 = call i32 @REG_SET_FIELD(i32 %52, i32 %53, i32 %54)
  br label %134

56:                                               ; preds = %37
  %57 = load i32, i32* @RTC_CNTL_OPTIONS0_REG, align 4
  %58 = load i32, i32* @RTC_CNTL_BB_I2C_FORCE_PD, align 4
  %59 = load i32, i32* @RTC_CNTL_BBPLL_FORCE_PD, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RTC_CNTL_BBPLL_I2C_FORCE_PD, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @CLEAR_PERI_REG_MASK(i32 %57, i32 %62)
  %64 = load i64, i64* %2, align 8
  %65 = load i64, i64* @RTC_CPU_FREQ_2M, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %56
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @RTC_PLL_320M, align 4
  %70 = call i32 @rtc_clk_bbpll_set(i32 %68, i32 %69)
  %71 = load i32, i32* @RTC_PLL_320M, align 4
  store i32 %71, i32* @s_cur_pll, align 4
  br label %77

72:                                               ; preds = %56
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @RTC_PLL_480M, align 4
  %75 = call i32 @rtc_clk_bbpll_set(i32 %73, i32 %74)
  %76 = load i32, i32* @RTC_PLL_480M, align 4
  store i32 %76, i32* @s_cur_pll, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* @RTC_CPU_FREQ_80M, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %2, align 8
  %83 = load i64, i64* @RTC_CPU_320M_80M, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81, %77
  %86 = load i32, i32* @RTC_CNTL_REG, align 4
  %87 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %88 = load i32, i32* @DIG_DBIAS_80M_160M, align 4
  %89 = call i32 @REG_SET_FIELD(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %91 = load i32, i32* @DPORT_CPUPERIOD_SEL, align 4
  %92 = call i32 @DPORT_REG_SET_FIELD(i32 %90, i32 %91, i32 0)
  %93 = call i32 @ets_update_cpu_frequency(i32 80)
  br label %126

94:                                               ; preds = %81
  %95 = load i64, i64* %2, align 8
  %96 = load i64, i64* @RTC_CPU_FREQ_160M, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %2, align 8
  %100 = load i64, i64* @RTC_CPU_320M_160M, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %98, %94
  %103 = load i32, i32* @RTC_CNTL_REG, align 4
  %104 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %105 = load i32, i32* @DIG_DBIAS_80M_160M, align 4
  %106 = call i32 @REG_SET_FIELD(i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %108 = load i32, i32* @DPORT_CPUPERIOD_SEL, align 4
  %109 = call i32 @DPORT_REG_SET_FIELD(i32 %107, i32 %108, i32 1)
  %110 = call i32 @ets_update_cpu_frequency(i32 160)
  br label %125

111:                                              ; preds = %98
  %112 = load i64, i64* %2, align 8
  %113 = load i64, i64* @RTC_CPU_FREQ_240M, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i32, i32* @RTC_CNTL_REG, align 4
  %117 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %118 = load i32, i32* @DIG_DBIAS_240M, align 4
  %119 = call i32 @REG_SET_FIELD(i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %121 = load i32, i32* @DPORT_CPUPERIOD_SEL, align 4
  %122 = call i32 @DPORT_REG_SET_FIELD(i32 %120, i32 %121, i32 2)
  %123 = call i32 @ets_update_cpu_frequency(i32 240)
  br label %124

124:                                              ; preds = %115, %111
  br label %125

125:                                              ; preds = %124, %102
  br label %126

126:                                              ; preds = %125, %85
  %127 = load i32, i32* @SYSCON_SYSCLK_CONF_REG, align 4
  %128 = load i32, i32* @SYSCON_SOC_CLK_SEL, align 4
  %129 = load i32, i32* @SYSCON_SOC_CLK_SEL_PLL, align 4
  %130 = call i32 @REG_SET_FIELD(i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* @MHZ, align 4
  %132 = mul nsw i32 80, %131
  %133 = call i32 @rtc_clk_apb_freq_update(i32 %132)
  br label %134

134:                                              ; preds = %126, %41
  br label %135

135:                                              ; preds = %134, %36
  %136 = load i64, i64* %2, align 8
  store i64 %136, i64* @s_cur_freq, align 8
  ret void
}

declare dso_local i32 @rtc_clk_xtal_freq_get(...) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ets_update_cpu_frequency(i32) #1

declare dso_local i32 @DPORT_REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @rtc_clk_apb_freq_update(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @rtc_clk_bbpll_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
