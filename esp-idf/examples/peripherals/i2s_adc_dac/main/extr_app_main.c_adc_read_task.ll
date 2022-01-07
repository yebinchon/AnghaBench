; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s_adc_dac/main/extr_app_main.c_adc_read_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s_adc_dac/main/extr_app_main.c_adc_read_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADC_WIDTH_12Bit = common dso_local global i32 0, align 4
@ADC1_TEST_CHANNEL = common dso_local global i32 0, align 4
@ADC_ATTEN_11db = common dso_local global i32 0, align 4
@ADC_UNIT_1 = common dso_local global i32 0, align 4
@ADC_ATTEN_DB_11 = common dso_local global i32 0, align 4
@ADC_WIDTH_BIT_12 = common dso_local global i32 0, align 4
@V_REF = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d mV\00", align 1
@portTICK_RATE_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adc_read_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @ADC_WIDTH_12Bit, align 4
  %6 = call i32 @adc1_config_width(i32 %5)
  %7 = load i32, i32* @ADC1_TEST_CHANNEL, align 4
  %8 = load i32, i32* @ADC_ATTEN_11db, align 4
  %9 = call i32 @adc1_config_channel_atten(i32 %7, i32 %8)
  %10 = load i32, i32* @ADC_UNIT_1, align 4
  %11 = load i32, i32* @ADC_ATTEN_DB_11, align 4
  %12 = load i32, i32* @ADC_WIDTH_BIT_12, align 4
  %13 = load i32, i32* @V_REF, align 4
  %14 = call i32 @esp_adc_cal_characterize(i32 %10, i32 %11, i32 %12, i32 %13, i32* %3)
  br label %15

15:                                               ; preds = %1, %15
  %16 = load i32, i32* @ADC1_TEST_CHANNEL, align 4
  %17 = call i32 @esp_adc_cal_get_voltage(i32 %16, i32* %3, i32* %4)
  %18 = load i32, i32* @TAG, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ESP_LOGI(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @portTICK_RATE_MS, align 4
  %22 = sdiv i32 200, %21
  %23 = call i32 @vTaskDelay(i32 %22)
  br label %15
}

declare dso_local i32 @adc1_config_width(i32) #1

declare dso_local i32 @adc1_config_channel_atten(i32, i32) #1

declare dso_local i32 @esp_adc_cal_characterize(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @esp_adc_cal_get_voltage(i32, i32*, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
