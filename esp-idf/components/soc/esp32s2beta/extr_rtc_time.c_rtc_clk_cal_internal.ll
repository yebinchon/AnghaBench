; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_time.c_rtc_clk_cal_internal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_time.c_rtc_clk_cal_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_XTAL32K_EN = common dso_local global i32 0, align 4
@RTC_CAL_32K_XTAL = common dso_local global i32 0, align 4
@RTC_CAL_8MD256 = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_CLK8M_D256_EN = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_CLK_SEL = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_TIMEOUT = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_START_CYCLING = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_RDY = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_MAX = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_TIMEOUT_THRES = common dso_local global i32 0, align 4
@RTC_FAST_CLK_FREQ_APPROX = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_START = common dso_local global i32 0, align 4
@TIMG_RTC_CALI_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtc_clk_cal_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %10 = load i32, i32* @RTC_CNTL_DIG_XTAL32K_EN, align 4
  %11 = call i32 @REG_GET_FIELD(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @RTC_CAL_32K_XTAL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %20 = load i32, i32* @RTC_CNTL_DIG_XTAL32K_EN, align 4
  %21 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 1)
  br label %22

22:                                               ; preds = %18, %15, %2
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @RTC_CAL_8MD256, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %28 = load i32, i32* @RTC_CNTL_DIG_CLK8M_D256_EN, align 4
  %29 = call i32 @SET_PERI_REG_MASK(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %32 = load i32, i32* @TIMG_RTC_CALI_CLK_SEL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33)
  %35 = call i32 @TIMG_RTCCALICFG2_REG(i32 0)
  %36 = load i32, i32* @TIMG_RTC_CALI_TIMEOUT, align 4
  %37 = call i64 @GET_PERI_REG_MASK(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %30
  %40 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %41 = load i32, i32* @TIMG_RTC_CALI_START_CYCLING, align 4
  %42 = call i64 @GET_PERI_REG_MASK(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %51, %44
  %46 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %47 = load i32, i32* @TIMG_RTC_CALI_RDY, align 4
  %48 = call i64 @GET_PERI_REG_MASK(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %45

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %30
  %55 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %56 = load i32, i32* @TIMG_RTC_CALI_START_CYCLING, align 4
  %57 = call i32 @CLEAR_PERI_REG_MASK(i32 %55, i32 %56)
  %58 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %59 = load i32, i32* @TIMG_RTC_CALI_MAX, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @REG_SET_FIELD(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @RTC_CAL_32K_XTAL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = call i32 @TIMG_RTCCALICFG2_REG(i32 0)
  %67 = load i32, i32* @TIMG_RTC_CALI_TIMEOUT_THRES, align 4
  %68 = load i32, i32* %4, align 4
  %69 = shl i32 %68, 13
  %70 = call i32 @REG_SET_FIELD(i32 %66, i32 %67, i32 %69)
  store i32 32768, i32* %6, align 4
  br label %90

71:                                               ; preds = %54
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @RTC_CAL_8MD256, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = call i32 @TIMG_RTCCALICFG2_REG(i32 0)
  %77 = load i32, i32* @TIMG_RTC_CALI_TIMEOUT_THRES, align 4
  %78 = load i32, i32* %4, align 4
  %79 = shl i32 %78, 13
  %80 = call i32 @REG_SET_FIELD(i32 %76, i32 %77, i32 %79)
  %81 = load i32, i32* @RTC_FAST_CLK_FREQ_APPROX, align 4
  %82 = sdiv i32 %81, 256
  store i32 %82, i32* %6, align 4
  br label %89

83:                                               ; preds = %71
  %84 = call i32 @TIMG_RTCCALICFG2_REG(i32 0)
  %85 = load i32, i32* @TIMG_RTC_CALI_TIMEOUT_THRES, align 4
  %86 = load i32, i32* %4, align 4
  %87 = shl i32 %86, 11
  %88 = call i32 @REG_SET_FIELD(i32 %84, i32 %85, i32 %87)
  store i32 90000, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %75
  br label %90

90:                                               ; preds = %89, %65
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @MHZ, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %7, align 4
  %96 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %97 = load i32, i32* @TIMG_RTC_CALI_START, align 4
  %98 = call i32 @CLEAR_PERI_REG_MASK(i32 %96, i32 %97)
  %99 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %100 = load i32, i32* @TIMG_RTC_CALI_START, align 4
  %101 = call i32 @SET_PERI_REG_MASK(i32 %99, i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @ets_delay_us(i32 %102)
  br label %104

104:                                              ; preds = %90, %119
  %105 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %106 = load i32, i32* @TIMG_RTC_CALI_RDY, align 4
  %107 = call i64 @GET_PERI_REG_MASK(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = call i32 @TIMG_RTCCALICFG1_REG(i32 0)
  %111 = load i32, i32* @TIMG_RTC_CALI_VALUE, align 4
  %112 = call i32 @REG_GET_FIELD(i32 %110, i32 %111)
  store i32 %112, i32* %8, align 4
  br label %120

113:                                              ; preds = %104
  %114 = call i32 @TIMG_RTCCALICFG2_REG(i32 0)
  %115 = load i32, i32* @TIMG_RTC_CALI_TIMEOUT, align 4
  %116 = call i64 @GET_PERI_REG_MASK(i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %120

119:                                              ; preds = %113
  br label %104

120:                                              ; preds = %118, %109
  %121 = call i32 @TIMG_RTCCALICFG_REG(i32 0)
  %122 = load i32, i32* @TIMG_RTC_CALI_START, align 4
  %123 = call i32 @CLEAR_PERI_REG_MASK(i32 %121, i32 %122)
  %124 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %125 = load i32, i32* @RTC_CNTL_DIG_XTAL32K_EN, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @REG_SET_FIELD(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @RTC_CAL_8MD256, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %120
  %132 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %133 = load i32, i32* @RTC_CNTL_DIG_CLK8M_D256_EN, align 4
  %134 = call i32 @CLEAR_PERI_REG_MASK(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %120
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local i32 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @TIMG_RTCCALICFG_REG(i32) #1

declare dso_local i64 @GET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @TIMG_RTCCALICFG2_REG(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i32 @TIMG_RTCCALICFG1_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
