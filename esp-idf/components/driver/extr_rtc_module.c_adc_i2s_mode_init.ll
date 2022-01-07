; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc_i2s_mode_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc_i2s_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADC_UNIT_1 = common dso_local global i32 0, align 4
@ADC1_CHANNEL_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"ADC1 channel error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ADC_WIDTH_BIT_12 = common dso_local global i32 0, align 4
@ADC_ATTEN_DB_11 = common dso_local global i32 0, align 4
@rtc_spinlock = common dso_local global i32 0, align 4
@ADC_CTRL_DIG = common dso_local global i32 0, align 4
@ADC_UNIT_2 = common dso_local global i32 0, align 4
@ADC_I2S_DATA_SRC_ADC = common dso_local global i32 0, align 4
@SAR_ADC_CLK_DIV_DEFUALT = common dso_local global i32 0, align 4
@ADC_FSM_RSTB_WAIT_DEFAULT = common dso_local global i32 0, align 4
@ADC_FSM_START_WAIT_DEFAULT = common dso_local global i32 0, align 4
@ADC_FSM_STANDBY_WAIT_DEFAULT = common dso_local global i32 0, align 4
@ADC_FSM_TIME_KEEP = common dso_local global i32 0, align 4
@ADC_ENCODE_12BIT = common dso_local global i32 0, align 4
@ADC_MAX_MEAS_NUM_DEFAULT = common dso_local global i32 0, align 4
@ADC_MEAS_NUM_LIM_DEFAULT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adc_i2s_mode_init(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ADC_CHECK_UNIT(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ADC_UNIT_1, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @ADC1_CHANNEL_MAX, align 8
  %15 = icmp slt i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %18 = call i32 @RTC_MODULE_CHECK(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %12, %2
  store i32 1, i32* %5, align 4
  %20 = call i32 (...) @adc_power_always_on()
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @adc_gpio_init(i32 %21, i64 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @adc_set_i2s_data_len(i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @ADC_WIDTH_BIT_12, align 4
  %30 = load i32, i32* @ADC_ATTEN_DB_11, align 4
  %31 = call i32 @adc_set_i2s_data_pattern(i32 %27, i32 0, i64 %28, i32 %29, i32 %30)
  %32 = call i32 @portENTER_CRITICAL(i32* @rtc_spinlock)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ADC_UNIT_1, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load i32, i32* @ADC_UNIT_1, align 4
  %39 = load i32, i32* @ADC_CTRL_DIG, align 4
  %40 = call i32 @adc_set_controller(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %19
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @ADC_UNIT_2, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @ADC_UNIT_2, align 4
  %48 = load i32, i32* @ADC_CTRL_DIG, align 4
  %49 = call i32 @adc_set_controller(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = call i32 @portEXIT_CRITICAL(i32* @rtc_spinlock)
  %52 = load i32, i32* @ADC_I2S_DATA_SRC_ADC, align 4
  %53 = call i32 @adc_set_i2s_data_source(i32 %52)
  %54 = load i32, i32* @SAR_ADC_CLK_DIV_DEFUALT, align 4
  %55 = call i32 @adc_set_clk_div(i32 %54)
  %56 = load i32, i32* @ADC_FSM_RSTB_WAIT_DEFAULT, align 4
  %57 = load i32, i32* @ADC_FSM_START_WAIT_DEFAULT, align 4
  %58 = load i32, i32* @ADC_FSM_STANDBY_WAIT_DEFAULT, align 4
  %59 = load i32, i32* @ADC_FSM_TIME_KEEP, align 4
  %60 = call i32 @adc_set_fsm_time(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @adc_set_work_mode(i32 %61)
  %63 = load i32, i32* @ADC_ENCODE_12BIT, align 4
  %64 = call i32 @adc_set_data_format(i32 %63)
  %65 = load i32, i32* @ADC_MAX_MEAS_NUM_DEFAULT, align 4
  %66 = load i32, i32* @ADC_MEAS_NUM_LIM_DEFAULT, align 4
  %67 = call i32 @adc_set_measure_limit(i32 %65, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @adc_set_data_inv(i32 %68, i32 1)
  %70 = load i32, i32* @ESP_OK, align 4
  ret i32 %70
}

declare dso_local i32 @ADC_CHECK_UNIT(i32) #1

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @adc_power_always_on(...) #1

declare dso_local i32 @adc_gpio_init(i32, i64) #1

declare dso_local i32 @adc_set_i2s_data_len(i32, i32) #1

declare dso_local i32 @adc_set_i2s_data_pattern(i32, i32, i64, i32, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @adc_set_controller(i32, i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

declare dso_local i32 @adc_set_i2s_data_source(i32) #1

declare dso_local i32 @adc_set_clk_div(i32) #1

declare dso_local i32 @adc_set_fsm_time(i32, i32, i32, i32) #1

declare dso_local i32 @adc_set_work_mode(i32) #1

declare dso_local i32 @adc_set_data_format(i32) #1

declare dso_local i32 @adc_set_measure_limit(i32, i32) #1

declare dso_local i32 @adc_set_data_inv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
