; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/test/extr_test_rtc_clk.c_start_freq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/test/extr_test_rtc_clk.c_start_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [114 x i8] c"Test is started. Kconfig settings:\0A Internal RC is selected,\0A Oscillation cycles = %d,\0A Calibration cycles = %d.\0A\00", align 1
@CONFIG_ESP32_RTC_CLK_CAL_CYCLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Recommended increase Number of cycles for RTC_SLOW_CLK calibration to 3000!\0A\00", align 1
@COUNT_TEST = common dso_local global i32 0, align 4
@configTICK_RATE_HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"attempt #%d/%d...\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c" [time=%d] \00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"FAIL. Time measurement...\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"PASS. Time measurement...\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c" [calibration val = %d] \0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Test failed\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Test passed successfully\0A\00", align 1
@CONFIG_ESP32_RTC_XTAL_BOOTSTRAP_CYCLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @start_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_freq(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = call i32 (...) @stop_rtc_external_quartz()
  store i32 5, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @CONFIG_ESP32_RTC_CLK_CAL_CYCLES, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @CONFIG_ESP32_RTC_CLK_CAL_CYCLES, align 4
  %23 = icmp slt i32 %22, 1500
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  store i32 50, i32* %4, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21, %2
  br label %27

27:                                               ; preds = %91, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @COUNT_TEST, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %96

31:                                               ; preds = %27
  %32 = call i32 (...) @xTaskGetTickCount()
  %33 = load i32, i32* @configTICK_RATE_HZ, align 4
  %34 = sdiv i32 1000, %33
  %35 = mul nsw i32 %32, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @COUNT_TEST, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @rtc_clk_32k_bootstrap(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 1000
  %45 = call i32 @ets_delay_us(i32 %44)
  %46 = call i32 (...) @rtc_clk_select_rtc_slow_clk()
  %47 = call i64 (...) @rtc_clk_slow_freq_get()
  store i64 %47, i64* %9, align 8
  %48 = call i32 (...) @xTaskGetTickCount()
  %49 = load i32, i32* @configTICK_RATE_HZ, align 4
  %50 = sdiv i32 1000, %49
  %51 = mul nsw i32 %48, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %3, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %31
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %65

63:                                               ; preds = %31
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %61
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %83, %65
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = call i64 (...) @esp_clk_rtc_time()
  store i64 %70, i64* %11, align 8
  %71 = call i32 @ets_delay_us(i32 1000000)
  %72 = call i64 (...) @esp_clk_rtc_time()
  %73 = load i64, i64* %11, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %14, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp slt i64 %75, 900000
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load i64, i64* %14, align 8
  %79 = icmp sgt i64 %78, 1100000
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %69
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  store i32 1, i32* %12, align 4
  br label %86

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %66

86:                                               ; preds = %80, %66
  %87 = load i32, i32* %12, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = call i32 (...) @esp_clk_slowclk_cal_get()
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %92)
  %94 = call i32 (...) @stop_rtc_external_quartz()
  %95 = call i32 @ets_delay_us(i32 500000)
  br label %27

96:                                               ; preds = %27
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @TEST_ASSERT_MESSAGE(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @stop_rtc_external_quartz(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @xTaskGetTickCount(...) #1

declare dso_local i32 @rtc_clk_32k_bootstrap(i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i32 @rtc_clk_select_rtc_slow_clk(...) #1

declare dso_local i64 @rtc_clk_slow_freq_get(...) #1

declare dso_local i64 @esp_clk_rtc_time(...) #1

declare dso_local i32 @esp_clk_slowclk_cal_get(...) #1

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
