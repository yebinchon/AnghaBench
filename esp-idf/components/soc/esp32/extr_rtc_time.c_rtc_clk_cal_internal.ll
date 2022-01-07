; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_time.c_rtc_clk_cal_internal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_time.c_rtc_clk_cal_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_XTAL32K_EN = common dso_local global i32 0, align 4
@RTC_CAL_32K_XTAL = common dso_local global i32 0, align 4
@RTC_CAL_8MD256 = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_CLK8M_D256_EN = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_CLK_SEL = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_START_CYCLING = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_MAX = common dso_local global i32 0, align 4
@RTC_CNTL_ANA_CLK_RTC_SEL = common dso_local global i32 0, align 4
@RTC_CAL_RTC_MUX = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_32K_XTAL = common dso_local global i64 0, align 8
@RTC_SLOW_FREQ_8MD256 = common dso_local global i64 0, align 8
@RTC_FAST_CLK_FREQ_APPROX = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@RTC_XTAL_FREQ_AUTO = common dso_local global i64 0, align 8
@RTC_XTAL_FREQ_40M = common dso_local global i64 0, align 8
@TIMG_RTC_CALI_VALUE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"slowclk_cycles value too large, possible overflow\00", align 1
@TIMG_RTC_CALI_START = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rtc_clk_cal_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_clk_cal_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 32767
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %18 = load i32, i32* @RTC_CNTL_DIG_XTAL32K_EN, align 4
  %19 = call i32 @REG_GET_FIELD(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @RTC_CAL_32K_XTAL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %28 = load i32, i32* @RTC_CNTL_DIG_XTAL32K_EN, align 4
  %29 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %26, %23, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RTC_CAL_8MD256, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %36 = load i32, i32* @RTC_CNTL_DIG_CLK8M_D256_EN, align 4
  %37 = call i32 @SET_PERI_REG_MASK(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %40 = load i32, i32* @TIMG_RTC_CALI_CLK_SEL, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41)
  %43 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %44 = load i32, i32* @TIMG_RTC_CALI_START_CYCLING, align 4
  %45 = call i32 @CLEAR_PERI_REG_MASK(i32 %43, i32 %44)
  %46 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %47 = load i32, i32* @TIMG_RTC_CALI_MAX, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %51 = load i32, i32* @RTC_CNTL_ANA_CLK_RTC_SEL, align 4
  %52 = call i32 @REG_GET_FIELD(i32 %50, i32 %51)
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %8, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @RTC_CAL_32K_XTAL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RTC_CAL_RTC_MUX, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @RTC_SLOW_FREQ_32K_XTAL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %38
  store i32 32768, i32* %7, align 4
  br label %83

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @RTC_CAL_8MD256, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @RTC_CAL_RTC_MUX, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @RTC_SLOW_FREQ_8MD256, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74, %66
  %79 = load i32, i32* @RTC_FAST_CLK_FREQ_APPROX, align 4
  %80 = sdiv i32 %79, 256
  store i32 %80, i32* %7, align 4
  br label %82

81:                                               ; preds = %74, %70
  store i32 150000, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %78
  br label %83

83:                                               ; preds = %82, %65
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @MHZ, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %9, align 4
  %89 = call i64 (...) @rtc_clk_xtal_freq_get()
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @RTC_XTAL_FREQ_AUTO, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i64, i64* @RTC_XTAL_FREQ_40M, align 8
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %93, %83
  %96 = load i32, i32* @TIMG_RTC_CALI_VALUE, align 4
  %97 = load i64, i64* %10, align 8
  %98 = trunc i64 %97 to i32
  %99 = sdiv i32 %96, %98
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @TAG, align 4
  %105 = call i32 @SOC_LOGE(i32 %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %150

106:                                              ; preds = %95
  %107 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %108 = load i32, i32* @TIMG_RTC_CALI_START, align 4
  %109 = call i32 @CLEAR_PERI_REG_MASK(i32 %107, i32 %108)
  %110 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %111 = load i32, i32* @TIMG_RTC_CALI_START, align 4
  %112 = call i32 @SET_PERI_REG_MASK(i32 %110, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @ets_delay_us(i32 %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %126, %106
  %117 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %118 = load i32, i32* @TIMG_RTC_CALI_RDY, align 4
  %119 = call i32 @GET_PERI_REG_MASK(i32 %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %12, align 4
  %123 = icmp sgt i32 %122, 0
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi i1 [ false, %116 ], [ %123, %121 ]
  br i1 %125, label %126, label %130

126:                                              ; preds = %124
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %12, align 4
  %129 = call i32 @ets_delay_us(i32 1)
  br label %116

130:                                              ; preds = %124
  %131 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %132 = load i32, i32* @RTC_CNTL_DIG_XTAL32K_EN, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @REG_SET_FIELD(i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @RTC_CAL_8MD256, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %140 = load i32, i32* @RTC_CNTL_DIG_CLK8M_D256_EN, align 4
  %141 = call i32 @CLEAR_PERI_REG_MASK(i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %130
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 0, i32* %3, align 4
  br label %150

146:                                              ; preds = %142
  %147 = call i32 @TIMG_RTCCALICFG1_REG(i32 0)
  %148 = load i32, i32* @TIMG_RTC_CALI_VALUE, align 4
  %149 = call i32 @REG_GET_FIELD(i32 %147, i32 %148)
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %146, %145, %103
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @TIMG_RTCCALICFG_REG(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i64 @rtc_clk_xtal_freq_get(...) #1

declare dso_local i32 @SOC_LOGE(i32, i8*) #1

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i32 @GET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @TIMG_RTCCALICFG1_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
