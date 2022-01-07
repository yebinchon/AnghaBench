; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_bbpll_configure.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_rtc_clk.c_rtc_clk_bbpll_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTC_PLL_FREQ_320M = common dso_local global i32 0, align 4
@RTC_CNTL_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_DBIAS_WAK = common dso_local global i32 0, align 4
@DIG_DBIAS_80M_160M = common dso_local global i32 0, align 4
@I2C_BBPLL = common dso_local global i32 0, align 4
@I2C_BBPLL_ENDIV5 = common dso_local global i32 0, align 4
@BBPLL_ENDIV5_VAL_320M = common dso_local global i32 0, align 4
@I2C_BBPLL_BBADC_DSMP = common dso_local global i32 0, align 4
@BBPLL_BBADC_DSMP_VAL_320M = common dso_local global i32 0, align 4
@DIG_DBIAS_240M = common dso_local global i32 0, align 4
@DELAY_PLL_DBIAS_RAISE = common dso_local global i32 0, align 4
@BBPLL_ENDIV5_VAL_480M = common dso_local global i32 0, align 4
@BBPLL_BBADC_DSMP_VAL_480M = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_LREF = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_DIV_7_0 = common dso_local global i32 0, align 4
@I2C_BBPLL_OC_DCUR = common dso_local global i32 0, align 4
@RTC_SLOW_FREQ_RTC = common dso_local global i64 0, align 8
@DELAY_PLL_ENABLE_WITH_150K = common dso_local global i32 0, align 4
@DELAY_PLL_ENABLE_WITH_32K = common dso_local global i32 0, align 4
@s_cur_pll_freq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_clk_bbpll_configure(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RTC_PLL_FREQ_320M, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load i32, i32* @RTC_CNTL_REG, align 4
  %20 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %21 = load i32, i32* @DIG_DBIAS_80M_160M, align 4
  %22 = call i32 @REG_SET_FIELD(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  switch i32 %23, label %27 [
    i32 128, label %24
    i32 129, label %25
    i32 130, label %26
  ]

24:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  store i32 32, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 6, i32* %9, align 4
  store i32 3, i32* %10, align 4
  br label %28

25:                                               ; preds = %18
  store i32 12, i32* %5, align 4
  store i32 224, i32* %6, align 4
  store i32 4, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %28

26:                                               ; preds = %18
  store i32 11, i32* %5, align 4
  store i32 224, i32* %6, align 4
  store i32 4, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %28

27:                                               ; preds = %18
  store i32 12, i32* %5, align 4
  store i32 224, i32* %6, align 4
  store i32 4, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %24
  %29 = load i32, i32* @I2C_BBPLL, align 4
  %30 = load i32, i32* @I2C_BBPLL_ENDIV5, align 4
  %31 = load i32, i32* @BBPLL_ENDIV5_VAL_320M, align 4
  %32 = call i32 @I2C_WRITEREG_RTC(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @I2C_BBPLL, align 4
  %34 = load i32, i32* @I2C_BBPLL_BBADC_DSMP, align 4
  %35 = load i32, i32* @BBPLL_BBADC_DSMP_VAL_320M, align 4
  %36 = call i32 @I2C_WRITEREG_RTC(i32 %33, i32 %34, i32 %35)
  br label %58

37:                                               ; preds = %2
  %38 = load i32, i32* @RTC_CNTL_REG, align 4
  %39 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %40 = load i32, i32* @DIG_DBIAS_240M, align 4
  %41 = call i32 @REG_SET_FIELD(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @DELAY_PLL_DBIAS_RAISE, align 4
  %43 = call i32 @ets_delay_us(i32 %42)
  %44 = load i32, i32* %3, align 4
  switch i32 %44, label %48 [
    i32 128, label %45
    i32 129, label %46
    i32 130, label %47
  ]

45:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  store i32 28, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 6, i32* %9, align 4
  store i32 3, i32* %10, align 4
  br label %49

46:                                               ; preds = %37
  store i32 12, i32* %5, align 4
  store i32 144, i32* %6, align 4
  store i32 4, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %49

47:                                               ; preds = %37
  store i32 11, i32* %5, align 4
  store i32 144, i32* %6, align 4
  store i32 4, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %49

48:                                               ; preds = %37
  store i32 12, i32* %5, align 4
  store i32 224, i32* %6, align 4
  store i32 4, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %47, %46, %45
  %50 = load i32, i32* @I2C_BBPLL, align 4
  %51 = load i32, i32* @I2C_BBPLL_ENDIV5, align 4
  %52 = load i32, i32* @BBPLL_ENDIV5_VAL_480M, align 4
  %53 = call i32 @I2C_WRITEREG_RTC(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @I2C_BBPLL, align 4
  %55 = load i32, i32* @I2C_BBPLL_BBADC_DSMP, align 4
  %56 = load i32, i32* @BBPLL_BBADC_DSMP_VAL_480M, align 4
  %57 = call i32 @I2C_WRITEREG_RTC(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %28
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, 7
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 %61, 4
  %63 = or i32 %60, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 6
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* @I2C_BBPLL, align 4
  %72 = load i32, i32* @I2C_BBPLL_OC_LREF, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @I2C_WRITEREG_RTC(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @I2C_BBPLL, align 4
  %76 = load i32, i32* @I2C_BBPLL_OC_DIV_7_0, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @I2C_WRITEREG_RTC(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @I2C_BBPLL, align 4
  %80 = load i32, i32* @I2C_BBPLL_OC_DCUR, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @I2C_WRITEREG_RTC(i32 %79, i32 %80, i32 %81)
  %83 = call i64 (...) @rtc_clk_slow_freq_get()
  %84 = load i64, i64* @RTC_SLOW_FREQ_RTC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %58
  %87 = load i32, i32* @DELAY_PLL_ENABLE_WITH_150K, align 4
  br label %90

88:                                               ; preds = %58
  %89 = load i32, i32* @DELAY_PLL_ENABLE_WITH_32K, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @ets_delay_us(i32 %92)
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* @s_cur_pll_freq, align 4
  ret void
}

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @I2C_WRITEREG_RTC(i32, i32, i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i64 @rtc_clk_slow_freq_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
