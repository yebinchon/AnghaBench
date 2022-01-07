; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_bbpll_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_bbpll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_PLL_480M = common dso_local global i64 0, align 8
@DPORT_CPU_PER_CONF_REG = common dso_local global i32 0, align 4
@DPORT_PLL_FREQ_SEL = common dso_local global i32 0, align 4
@I2C_BBPLL = common dso_local global i32 0, align 4
@I2C_BBPLL_MODE_HF = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_DCHGP_LSB = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_DLREF_SEL_LSB = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_DHREF_SEL_LSB = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_REF_DIV = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_DIV_7_0 = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_DR1 = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_DR3 = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_DCUR = common dso_local global i32 0, align 4
@I2C_BBPLL_IR_CAL_ENX_CAP = common dso_local global i32 0, align 4
@I2C_BBPLL_IR_CAL_EXT_CAP = common dso_local global i32 0, align 4
@I2C_BBPLL_OR_CAL_CAP = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BBPLL SOFTWARE CAL FAIL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_bbpll_set(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @RTC_PLL_480M, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %21 = load i32, i32* @DPORT_PLL_FREQ_SEL, align 4
  %22 = call i32 @SET_PERI_REG_MASK(i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %27 [
    i32 128, label %24
    i32 129, label %25
    i32 130, label %26
  ]

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  store i32 8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %28

25:                                               ; preds = %19
  store i32 12, i32* %5, align 4
  store i32 156, i32* %6, align 4
  store i32 3, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %28

26:                                               ; preds = %19
  store i32 11, i32* %5, align 4
  store i32 156, i32* %6, align 4
  store i32 3, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  store i32 8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %24
  %29 = load i32, i32* @I2C_BBPLL, align 4
  %30 = load i32, i32* @I2C_BBPLL_MODE_HF, align 4
  %31 = call i32 @I2C_WRITEREG_RTC(i32 %29, i32 %30, i32 107)
  br label %45

32:                                               ; preds = %2
  %33 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %34 = load i32, i32* @DPORT_PLL_FREQ_SEL, align 4
  %35 = call i32 @CLEAR_PERI_REG_MASK(i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  switch i32 %36, label %40 [
    i32 128, label %37
    i32 129, label %38
    i32 130, label %39
  ]

37:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 5, i32* %10, align 4
  br label %41

38:                                               ; preds = %32
  store i32 12, i32* %5, align 4
  store i32 236, i32* %6, align 4
  store i32 3, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %41

39:                                               ; preds = %32
  store i32 11, i32* %5, align 4
  store i32 236, i32* %6, align 4
  store i32 3, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 5, i32* %9, align 4
  store i32 5, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %39, %38, %37
  %42 = load i32, i32* @I2C_BBPLL, align 4
  %43 = load i32, i32* @I2C_BBPLL_MODE_HF, align 4
  %44 = call i32 @I2C_WRITEREG_RTC(i32 %42, i32 %43, i32 105)
  br label %45

45:                                               ; preds = %41, %28
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @I2C_BBPLL_OC_DCHGP_LSB, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* @I2C_BBPLL_OC_DLREF_SEL_LSB, align 4
  %53 = shl i32 2, %52
  %54 = load i32, i32* @I2C_BBPLL_OC_DHREF_SEL_LSB, align 4
  %55 = shl i32 1, %54
  %56 = or i32 %53, %55
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @I2C_BBPLL, align 4
  %60 = load i32, i32* @I2C_BBPLL_OC_REF_DIV, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @I2C_WRITEREG_RTC(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @I2C_BBPLL, align 4
  %64 = load i32, i32* @I2C_BBPLL_OC_DIV_7_0, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @I2C_WRITEREG_RTC(i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* @I2C_BBPLL, align 4
  %68 = load i32, i32* @I2C_BBPLL_OC_DR1, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @I2C_WRITEREG_MASK_RTC(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @I2C_BBPLL, align 4
  %72 = load i32, i32* @I2C_BBPLL_OC_DR3, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @I2C_WRITEREG_MASK_RTC(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @I2C_BBPLL, align 4
  %76 = load i32, i32* @I2C_BBPLL_OC_DCUR, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @I2C_WRITEREG_RTC(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @I2C_BBPLL, align 4
  %80 = load i32, i32* @I2C_BBPLL_IR_CAL_ENX_CAP, align 4
  %81 = call i32 @I2C_WRITEREG_MASK_RTC(i32 %79, i32 %80, i32 1)
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %103, %45
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 16
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load i32, i32* @I2C_BBPLL, align 4
  %87 = load i32, i32* @I2C_BBPLL_IR_CAL_EXT_CAP, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @I2C_WRITEREG_MASK_RTC(i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* @I2C_BBPLL, align 4
  %91 = load i32, i32* @I2C_BBPLL_OR_CAL_CAP, align 4
  %92 = call i32 @I2C_READREG_MASK_RTC(i32 %90, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %106

96:                                               ; preds = %85
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 15
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @TAG, align 4
  %101 = call i32 @SOC_LOGE(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %82

106:                                              ; preds = %95, %82
  ret void
}

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @I2C_WRITEREG_RTC(i32, i32, i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @I2C_WRITEREG_MASK_RTC(i32, i32, i32) #1

declare dso_local i32 @I2C_READREG_MASK_RTC(i32, i32) #1

declare dso_local i32 @SOC_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
