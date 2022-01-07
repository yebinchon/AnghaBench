; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/adc2/main/extr_adc2_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/adc2/main/extr_adc2_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADC2_EXAMPLE_CHANNEL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@DAC_EXAMPLE_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ADC channel %d @ GPIO %d, DAC channel %d @ GPIO %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"adc2_init...\0A\00", align 1
@ADC_ATTEN_0db = common dso_local global i32 0, align 4
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"start conversion.\0A\00", align 1
@ADC_WIDTH_12Bit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: ADC2 not initialized yet.\0A\00", align 1
@ESP_ERR_TIMEOUT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"%s: ADC2 is in use by Wi-Fi.\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @ADC2_EXAMPLE_CHANNEL, align 4
  %7 = call i64 @adc2_pad_get_io_num(i32 %6, i32* %4)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @ESP_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* @DAC_EXAMPLE_CHANNEL, align 4
  %14 = call i64 @dac_pad_get_io_num(i32 %13, i32* %5)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @ADC2_EXAMPLE_CHANNEL, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DAC_EXAMPLE_CHANNEL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @DAC_EXAMPLE_CHANNEL, align 4
  %26 = call i32 @dac_output_enable(i32 %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ADC2_EXAMPLE_CHANNEL, align 4
  %29 = load i32, i32* @ADC_ATTEN_0db, align 4
  %30 = call i32 @adc2_config_channel_atten(i32 %28, i32 %29)
  %31 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %32 = mul nsw i32 2, %31
  %33 = call i32 @vTaskDelay(i32 %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %0, %72
  %36 = load i32, i32* @DAC_EXAMPLE_CHANNEL, align 4
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  %39 = call i32 @dac_output_voltage(i32 %36, i32 %37)
  %40 = load i32, i32* @ADC2_EXAMPLE_CHANNEL, align 4
  %41 = load i32, i32* @ADC_WIDTH_12Bit, align 4
  %42 = call i64 @adc2_get_raw(i32 %40, i32 %41, i32* %2)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @ESP_OK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %48)
  br label %72

50:                                               ; preds = %35
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %3, align 8
  %56 = call i8* @esp_err_to_name(i64 %55)
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %71

58:                                               ; preds = %50
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @ESP_ERR_TIMEOUT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %3, align 8
  %64 = call i8* @esp_err_to_name(i64 %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  br label %70

66:                                               ; preds = %58
  %67 = load i64, i64* %3, align 8
  %68 = call i8* @esp_err_to_name(i64 %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %74 = mul nsw i32 2, %73
  %75 = call i32 @vTaskDelay(i32 %74)
  br label %35
}

declare dso_local i64 @adc2_pad_get_io_num(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dac_pad_get_io_num(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dac_output_enable(i32) #1

declare dso_local i32 @adc2_config_channel_atten(i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @dac_output_voltage(i32, i32) #1

declare dso_local i64 @adc2_get_raw(i32, i32, i32*) #1

declare dso_local i8* @esp_err_to_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
