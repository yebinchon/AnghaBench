; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_apll_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_apll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_CNTL_ANA_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_PLLA_FORCE_PD = common dso_local global i32 0, align 4
@RTC_CNTL_PLLA_FORCE_PU = common dso_local global i32 0, align 4
@RTC_CNTL_CLK_CONF_REG = common dso_local global i32 0, align 4
@RTC_CNTL_SOC_CLK_SEL = common dso_local global i32 0, align 4
@RTC_CNTL_SOC_CLK_SEL_PLL = common dso_local global i64 0, align 8
@RTC_CNTL_OPTIONS0_REG = common dso_local global i32 0, align 4
@RTC_CNTL_BIAS_I2C_FORCE_PD = common dso_local global i32 0, align 4
@APLL_SDM_STOP_VAL_2_REV1 = common dso_local global i32 0, align 4
@EFUSE_BLK0_RDATA3_REG = common dso_local global i32 0, align 4
@APLL_SDM_STOP_VAL_2_REV0 = common dso_local global i32 0, align 4
@I2C_APLL = common dso_local global i32 0, align 4
@I2C_APLL_DSDM2 = common dso_local global i32 0, align 4
@I2C_APLL_DSDM0 = common dso_local global i32 0, align 4
@I2C_APLL_DSDM1 = common dso_local global i32 0, align 4
@I2C_APLL_SDM_STOP = common dso_local global i32 0, align 4
@APLL_SDM_STOP_VAL_1 = common dso_local global i32 0, align 4
@I2C_APLL_OR_OUTPUT_DIV = common dso_local global i32 0, align 4
@I2C_APLL_IR_CAL_DELAY = common dso_local global i32 0, align 4
@APLL_CAL_DELAY_1 = common dso_local global i32 0, align 4
@APLL_CAL_DELAY_2 = common dso_local global i32 0, align 4
@APLL_CAL_DELAY_3 = common dso_local global i32 0, align 4
@I2C_APLL_OR_CAL_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_apll_enable(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @RTC_CNTL_ANA_CONF_REG, align 4
  %14 = load i32, i32* @RTC_CNTL_PLLA_FORCE_PD, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 0, i32 1
  %19 = call i32 @REG_SET_FIELD(i32 %13, i32 %14, i32 %18)
  %20 = load i32, i32* @RTC_CNTL_ANA_CONF_REG, align 4
  %21 = load i32, i32* @RTC_CNTL_PLLA_FORCE_PU, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = call i32 @REG_SET_FIELD(i32 %20, i32 %21, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @RTC_CNTL_CLK_CONF_REG, align 4
  %31 = load i32, i32* @RTC_CNTL_SOC_CLK_SEL, align 4
  %32 = call i64 @REG_GET_FIELD(i32 %30, i32 %31)
  %33 = load i64, i64* @RTC_CNTL_SOC_CLK_SEL_PLL, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @RTC_CNTL_OPTIONS0_REG, align 4
  %37 = load i32, i32* @RTC_CNTL_BIAS_I2C_FORCE_PD, align 4
  %38 = call i32 @REG_SET_BIT(i32 %36, i32 %37)
  br label %43

39:                                               ; preds = %29, %5
  %40 = load i32, i32* @RTC_CNTL_OPTIONS0_REG, align 4
  %41 = load i32, i32* @RTC_CNTL_BIAS_I2C_FORCE_PD, align 4
  %42 = call i32 @REG_CLR_BIT(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %102

46:                                               ; preds = %43
  %47 = load i32, i32* @APLL_SDM_STOP_VAL_2_REV1, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* @EFUSE_BLK0_RDATA3_REG, align 4
  %49 = call i64 @GET_PERI_REG_BITS2(i32 %48, i32 1, i32 15)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %55 = load i32, i32* @APLL_SDM_STOP_VAL_2_REV0, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* @I2C_APLL, align 4
  %58 = load i32, i32* @I2C_APLL_DSDM2, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @I2C_WRITEREG_MASK_RTC(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @I2C_APLL, align 4
  %62 = load i32, i32* @I2C_APLL_DSDM0, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @I2C_WRITEREG_MASK_RTC(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @I2C_APLL, align 4
  %66 = load i32, i32* @I2C_APLL_DSDM1, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @I2C_WRITEREG_MASK_RTC(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @I2C_APLL, align 4
  %70 = load i32, i32* @I2C_APLL_SDM_STOP, align 4
  %71 = load i32, i32* @APLL_SDM_STOP_VAL_1, align 4
  %72 = call i32 @I2C_WRITEREG_RTC(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @I2C_APLL, align 4
  %74 = load i32, i32* @I2C_APLL_SDM_STOP, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @I2C_WRITEREG_RTC(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* @I2C_APLL, align 4
  %78 = load i32, i32* @I2C_APLL_OR_OUTPUT_DIV, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @I2C_WRITEREG_MASK_RTC(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* @I2C_APLL, align 4
  %82 = load i32, i32* @I2C_APLL_IR_CAL_DELAY, align 4
  %83 = load i32, i32* @APLL_CAL_DELAY_1, align 4
  %84 = call i32 @I2C_WRITEREG_RTC(i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* @I2C_APLL, align 4
  %86 = load i32, i32* @I2C_APLL_IR_CAL_DELAY, align 4
  %87 = load i32, i32* @APLL_CAL_DELAY_2, align 4
  %88 = call i32 @I2C_WRITEREG_RTC(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @I2C_APLL, align 4
  %90 = load i32, i32* @I2C_APLL_IR_CAL_DELAY, align 4
  %91 = load i32, i32* @APLL_CAL_DELAY_3, align 4
  %92 = call i32 @I2C_WRITEREG_RTC(i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %99, %56
  %94 = load i32, i32* @I2C_APLL, align 4
  %95 = load i32, i32* @I2C_APLL_OR_CAL_END, align 4
  %96 = call i32 @I2C_READREG_MASK_RTC(i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 @ets_delay_us(i32 1)
  br label %93

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %43
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32) #1

declare dso_local i32 @REG_SET_BIT(i32, i32) #1

declare dso_local i32 @REG_CLR_BIT(i32, i32) #1

declare dso_local i64 @GET_PERI_REG_BITS2(i32, i32, i32) #1

declare dso_local i32 @I2C_WRITEREG_MASK_RTC(i32, i32, i32) #1

declare dso_local i32 @I2C_WRITEREG_RTC(i32, i32, i32) #1

declare dso_local i32 @I2C_READREG_MASK_RTC(i32, i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
