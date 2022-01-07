; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_to_pll.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32s2beta/extr_rtc_clk.c_rtc_clk_cpu_freq_to_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_cur_pll = common dso_local global i64 0, align 8
@RTC_PLL_NONE = common dso_local global i64 0, align 8
@RTC_PLL_320M = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_240M = common dso_local global i64 0, align 8
@RTC_CPU_FREQ_80M = common dso_local global i64 0, align 8
@RTC_CPU_320M_80M = common dso_local global i64 0, align 8
@RTC_CNTL_REG = common dso_local global i32 0, align 4
@RTC_CNTL_DIG_DBIAS_WAK = common dso_local global i32 0, align 4
@DIG_DBIAS_80M_160M = common dso_local global i32 0, align 4
@DPORT_CPU_PER_CONF_REG = common dso_local global i32 0, align 4
@RTC_CPU_FREQ_160M = common dso_local global i64 0, align 8
@RTC_CPU_320M_160M = common dso_local global i64 0, align 8
@DIG_DBIAS_240M = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@s_cur_freq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rtc_clk_cpu_freq_to_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtc_clk_cpu_freq_to_pll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @s_cur_pll, align 8
  %5 = load i64, i64* @RTC_PLL_NONE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @s_cur_pll, align 8
  %9 = load i64, i64* @RTC_PLL_320M, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @RTC_CPU_FREQ_240M, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %1
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @rtc_clk_cpu_freq_set(i64 %16)
  br label %68

18:                                               ; preds = %11, %7
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @RTC_CPU_FREQ_80M, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @RTC_CPU_320M_80M, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @RTC_CNTL_REG, align 4
  %28 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %29 = load i32, i32* @DIG_DBIAS_80M_160M, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %32 = call i32 @DPORT_REG_WRITE(i32 %31, i32 0)
  store i32 80, i32* %3, align 4
  br label %61

33:                                               ; preds = %22
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @RTC_CPU_FREQ_160M, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @RTC_CPU_320M_160M, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @RTC_CNTL_REG, align 4
  %43 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %44 = load i32, i32* @DIG_DBIAS_80M_160M, align 4
  %45 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %47 = call i32 @DPORT_REG_WRITE(i32 %46, i32 1)
  store i32 160, i32* %3, align 4
  br label %60

48:                                               ; preds = %37
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @RTC_CPU_FREQ_240M, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* @RTC_CNTL_REG, align 4
  %54 = load i32, i32* @RTC_CNTL_DIG_DBIAS_WAK, align 4
  %55 = load i32, i32* @DIG_DBIAS_240M, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @DPORT_CPU_PER_CONF_REG, align 4
  %58 = call i32 @DPORT_REG_WRITE(i32 %57, i32 2)
  store i32 240, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %48
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* @MHZ, align 4
  %63 = mul nsw i32 80, %62
  %64 = call i32 @rtc_clk_apb_freq_update(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @ets_update_cpu_frequency(i32 %65)
  %67 = load i64, i64* %2, align 8
  store i64 %67, i64* @s_cur_freq, align 8
  br label %68

68:                                               ; preds = %61, %15
  ret void
}

declare dso_local i32 @rtc_clk_cpu_freq_set(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @DPORT_REG_WRITE(i32, i32) #1

declare dso_local i32 @rtc_clk_apb_freq_update(i32) #1

declare dso_local i32 @ets_update_cpu_frequency(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
