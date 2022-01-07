; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@SYSCON_SYSCLK_CONF_REG = common dso_local global i32 0, align 4
@SYSCON_SOC_CLK_SEL = common dso_local global i32 0, align 4
@SYSCON_SOC_CLK_SEL_PLL = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_XTAL = common dso_local global i32 0, align 4
@RTC_CNTL_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SCK_DCAP = common dso_local global i32 0, align 4
@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_CK8M_DFREQ = common dso_local global i32 0, align 4
@ANA_CONFIG_REG = common dso_local global i32 0, align 4
@ANA_CONFIG_M = common dso_local global i32 0, align 4
@ANA_CONFIG_S = common dso_local global i32 0, align 4
@I2C_APLL_M = common dso_local global i32 0, align 4
@I2C_BBPLL_M = common dso_local global i32 0, align 4
@RTC_XTAL_FREQ_AUTO = common dso_local global i32 0, align 4
@RTC_XTAL_FREQ_REG = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Can't estimate XTAL frequency, assuming 26MHz\00", align 1
@RTC_XTAL_FREQ_26M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Possibly invalid CONFIG_ESP32S2_XTAL_FREQ setting (%dMHz). Detected %d MHz.\00", align 1
@MHZ = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_32K_XTAL = common dso_local global i64 0, align 8
@RTC_FAST_FREQ_8M = common dso_local global i64 0, align 8
@RTC_SLOW_FREQ_8MD256 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_init(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (...) @rtc_clk_cpu_freq_get()
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @SYSCON_SYSCLK_CONF_REG, align 4
  %10 = load i32, i32* @SYSCON_SOC_CLK_SEL, align 4
  %11 = call i64 @REG_GET_FIELD(i32 %9, i32 %10)
  %12 = load i64, i64* @SYSCON_SOC_CLK_SEL_PLL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @RTC_CPU_FREQ_XTAL, align 4
  %16 = call i32 @rtc_clk_cpu_freq_set(i32 %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* @RTC_CNTL_REG, align 4
  %19 = load i32, i32* @RTC_CNTL_SCK_DCAP, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @REG_SET_FIELD(i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %24 = load i32, i32* @RTC_CNTL_CK8M_DFREQ, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @REG_SET_FIELD(i32 %23, i32 %24, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rtc_clk_divider_set(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rtc_clk_8m_divider_set(i32 %32)
  %34 = load i32, i32* @ANA_CONFIG_REG, align 4
  %35 = load i32, i32* @ANA_CONFIG_M, align 4
  %36 = load i32, i32* @ANA_CONFIG_M, align 4
  %37 = load i32, i32* @ANA_CONFIG_S, align 4
  %38 = call i32 @SET_PERI_REG_BITS(i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @ANA_CONFIG_REG, align 4
  %40 = load i32, i32* @I2C_APLL_M, align 4
  %41 = load i32, i32* @I2C_BBPLL_M, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @CLEAR_PERI_REG_MASK(i32 %39, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @RTC_XTAL_FREQ_AUTO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %17
  %50 = load i32, i32* @RTC_XTAL_FREQ_REG, align 4
  %51 = call i32 @READ_PERI_REG(i32 %50)
  %52 = call i64 @clk_val_is_valid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 (...) @rtc_clk_xtal_freq_get()
  store i32 %55, i32* %3, align 4
  br label %66

56:                                               ; preds = %49
  %57 = call i32 (...) @rtc_clk_xtal_freq_estimate()
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @RTC_XTAL_FREQ_AUTO, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @TAG, align 4
  %63 = call i32 (i32, i8*, ...) @SOC_LOGW(i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @RTC_XTAL_FREQ_26M, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %54
  br label %84

67:                                               ; preds = %17
  %68 = load i32, i32* @RTC_XTAL_FREQ_REG, align 4
  %69 = call i32 @READ_PERI_REG(i32 %68)
  %70 = call i64 @clk_val_is_valid(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = call i32 (...) @rtc_clk_xtal_freq_estimate()
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* @TAG, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i32, i8*, ...) @SOC_LOGW(i32 %78, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83, %66
  %85 = call i32 @uart_tx_wait_idle(i32 0)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @rtc_clk_xtal_freq_update(i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @MHZ, align 4
  %90 = mul nsw i32 %88, %89
  %91 = call i32 @rtc_clk_apb_freq_update(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @rtc_clk_cpu_freq_set(i32 %93)
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @rtc_clk_cpu_freq_value(i32 %95)
  %97 = load i32, i32* @MHZ, align 4
  %98 = sdiv i32 %96, %97
  store i32 %98, i32* %5, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @rtc_clk_cpu_freq_value(i32 %100)
  %102 = load i32, i32* @MHZ, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, i32* %6, align 4
  %104 = call i32 (...) @XTHAL_GET_CCOUNT()
  %105 = load i32, i32* %6, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %5, align 4
  %108 = sdiv i32 %106, %107
  %109 = call i32 @XTHAL_SET_CCOUNT(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @RTC_SLOW_FREQ_32K_XTAL, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %84
  %115 = call i32 @rtc_clk_32k_enable(i32 1)
  br label %116

116:                                              ; preds = %114, %84
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @RTC_FAST_FREQ_8M, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RTC_SLOW_FREQ_8MD256, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @rtc_clk_8m_enable(i32 1, i32 %127)
  br label %129

129:                                              ; preds = %121, %116
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @rtc_clk_fast_freq_set(i64 %131)
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @rtc_clk_slow_freq_set(i64 %134)
  ret void
}

declare dso_local i32 @rtc_clk_cpu_freq_get(...) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_set(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @rtc_clk_divider_set(i32) #1

declare dso_local i32 @rtc_clk_8m_divider_set(i32) #1

declare dso_local i32 @SET_PERI_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i64 @clk_val_is_valid(i32) #1

declare dso_local i32 @READ_PERI_REG(i32) #1

declare dso_local i32 @rtc_clk_xtal_freq_get(...) #1

declare dso_local i32 @rtc_clk_xtal_freq_estimate(...) #1

declare dso_local i32 @SOC_LOGW(i32, i8*, ...) #1

declare dso_local i32 @uart_tx_wait_idle(i32) #1

declare dso_local i32 @rtc_clk_xtal_freq_update(i32) #1

declare dso_local i32 @rtc_clk_apb_freq_update(i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_value(i32) #1

declare dso_local i32 @XTHAL_SET_CCOUNT(i32) #1

declare dso_local i32 @XTHAL_GET_CCOUNT(...) #1

declare dso_local i32 @rtc_clk_32k_enable(i32) #1

declare dso_local i32 @rtc_clk_8m_enable(i32, i32) #1

declare dso_local i32 @rtc_clk_fast_freq_set(i64) #1

declare dso_local i32 @rtc_clk_slow_freq_set(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
