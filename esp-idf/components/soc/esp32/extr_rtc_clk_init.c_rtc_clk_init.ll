; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk_init.c_rtc_clk_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk_init.c_rtc_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SOC_CLK_SEL = common dso_local global i32 0, align 4
@RTC_CNTL_SOC_CLK_SEL_PLL = common dso_local global i64 0, align 8
@RTC_CNTL_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SCK_DCAP = common dso_local global i32 0, align 4
@RTC_CNTL_CK8M_DFREQ = common dso_local global i32 0, align 4
@RTC_CNTL_CK8M_DIV_SEL = common dso_local global i32 0, align 4
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
@.str.1 = private unnamed_addr constant [74 x i8] c"Possibly invalid CONFIG_ESP32_XTAL_FREQ setting (%dMHz). Detected %d MHz.\00", align 1
@MHZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid CPU frequency value\00", align 1
@APB_CTRL_XTAL_TICK_CONF_REG = common dso_local global i32 0, align 4
@APB_CTRL_PLL_TICK_CONF_REG = common dso_local global i32 0, align 4
@APB_CLK_FREQ = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_32K_XTAL = common dso_local global i64 0, align 8
@RTC_FAST_FREQ_8M = common dso_local global i64 0, align 8
@RTC_SLOW_FREQ_8MD256 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_init(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0) #0 {
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %10 = load i32, i32* @RTC_CNTL_SOC_CLK_SEL, align 4
  %11 = call i64 @REG_GET_FIELD(i32 %9, i32 %10)
  %12 = load i64, i64* @RTC_CNTL_SOC_CLK_SEL_PLL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @rtc_clk_cpu_freq_to_xtal(i32 40, i32 1)
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i32, i32* @RTC_CNTL_REG, align 4
  %18 = load i32, i32* @RTC_CNTL_SCK_DCAP, align 4
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @REG_SET_FIELD(i32 %17, i32 %18, i32 %20)
  %22 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %23 = load i32, i32* @RTC_CNTL_CK8M_DFREQ, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @REG_SET_FIELD(i32 %22, i32 %23, i32 %25)
  %27 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %28 = load i32, i32* @RTC_CNTL_CK8M_DIV_SEL, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %30)
  %32 = load i32, i32* @ANA_CONFIG_REG, align 4
  %33 = load i32, i32* @ANA_CONFIG_M, align 4
  %34 = load i32, i32* @ANA_CONFIG_M, align 4
  %35 = load i32, i32* @ANA_CONFIG_S, align 4
  %36 = call i32 @SET_PERI_REG_BITS(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @ANA_CONFIG_REG, align 4
  %38 = load i32, i32* @I2C_APLL_M, align 4
  %39 = load i32, i32* @I2C_BBPLL_M, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @CLEAR_PERI_REG_MASK(i32 %37, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @RTC_XTAL_FREQ_AUTO, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %16
  %48 = load i32, i32* @RTC_XTAL_FREQ_REG, align 4
  %49 = call i32 @READ_PERI_REG(i32 %48)
  %50 = call i64 @clk_val_is_valid(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (...) @rtc_clk_xtal_freq_get()
  store i32 %53, i32* %4, align 4
  br label %64

54:                                               ; preds = %47
  %55 = call i32 (...) @rtc_clk_xtal_freq_estimate()
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @RTC_XTAL_FREQ_AUTO, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @TAG, align 4
  %61 = call i32 (i32, i8*, ...) @SOC_LOGW(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @RTC_XTAL_FREQ_26M, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %52
  br label %82

65:                                               ; preds = %16
  %66 = load i32, i32* @RTC_XTAL_FREQ_REG, align 4
  %67 = call i32 @READ_PERI_REG(i32 %66)
  %68 = call i64 @clk_val_is_valid(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = call i32 (...) @rtc_clk_xtal_freq_estimate()
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @TAG, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32, i8*, ...) @SOC_LOGW(i32 %76, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %81, %64
  %83 = call i32 @uart_tx_wait_idle(i32 0)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @rtc_clk_xtal_freq_update(i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @MHZ, align 4
  %88 = mul nsw i32 %86, %87
  %89 = call i32 @rtc_clk_apb_freq_update(i32 %88)
  %90 = call i32 @rtc_clk_cpu_freq_get_config(%struct.TYPE_7__* %2)
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @rtc_clk_cpu_freq_mhz_to_config(i32 %94, %struct.TYPE_7__* %3)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %82
  %99 = load i32, i32* @TAG, align 4
  %100 = call i32 @SOC_LOGE(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i32 (...) @abort() #3
  unreachable

102:                                              ; preds = %82
  %103 = call i32 @rtc_clk_cpu_freq_set_config(%struct.TYPE_7__* %3)
  %104 = load i32, i32* @APB_CTRL_XTAL_TICK_CONF_REG, align 4
  %105 = load i32, i32* %4, align 4
  %106 = sub nsw i32 %105, 1
  %107 = call i32 @REG_WRITE(i32 %104, i32 %106)
  %108 = load i32, i32* @APB_CTRL_PLL_TICK_CONF_REG, align 4
  %109 = load i32, i32* @APB_CLK_FREQ, align 4
  %110 = load i32, i32* @MHZ, align 4
  %111 = sdiv i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @REG_WRITE(i32 %108, i32 %112)
  %114 = call i64 (...) @XTHAL_GET_CCOUNT()
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %115, %117
  %119 = load i32, i32* %6, align 4
  %120 = sdiv i32 %118, %119
  %121 = call i32 @XTHAL_SET_CCOUNT(i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RTC_SLOW_FREQ_32K_XTAL, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %102
  %127 = call i32 @rtc_clk_32k_enable(i32 1)
  br label %128

128:                                              ; preds = %126, %102
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @RTC_FAST_FREQ_8M, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RTC_SLOW_FREQ_8MD256, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @rtc_clk_8m_enable(i32 1, i32 %139)
  br label %141

141:                                              ; preds = %133, %128
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @rtc_clk_fast_freq_set(i64 %143)
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @rtc_clk_slow_freq_set(i64 %146)
  ret void
}

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @rtc_clk_cpu_freq_to_xtal(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

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

declare dso_local i32 @rtc_clk_cpu_freq_get_config(%struct.TYPE_7__*) #1

declare dso_local i32 @rtc_clk_cpu_freq_mhz_to_config(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SOC_LOGE(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @rtc_clk_cpu_freq_set_config(%struct.TYPE_7__*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @XTHAL_SET_CCOUNT(i32) #1

declare dso_local i64 @XTHAL_GET_CCOUNT(...) #1

declare dso_local i32 @rtc_clk_32k_enable(i32) #1

declare dso_local i32 @rtc_clk_8m_enable(i32, i32) #1

declare dso_local i32 @rtc_clk_fast_freq_set(i64) #1

declare dso_local i32 @rtc_clk_slow_freq_set(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
