; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s_adc_dac/main/extr_app_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2s_adc_dac/main/extr_app_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"I2S\00", align 1
@ESP_LOG_INFO = common dso_local global i32 0, align 4
@example_i2s_adc_dac = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"example_i2s_adc_dac\00", align 1
@adc_read_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ADC read task\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @app_main() #0 {
  %1 = call i32 (...) @example_i2s_init()
  %2 = load i32, i32* @ESP_LOG_INFO, align 4
  %3 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @example_i2s_adc_dac, align 4
  %5 = call i32 @xTaskCreate(i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 2048, i32* null, i32 5, i32* null)
  %6 = load i32, i32* @adc_read_task, align 4
  %7 = call i32 @xTaskCreate(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 2048, i32* null, i32 5, i32* null)
  %8 = load i32, i32* @ESP_OK, align 4
  ret i32 %8
}

declare dso_local i32 @example_i2s_init(...) #1

declare dso_local i32 @esp_log_level_set(i8*, i32) #1

declare dso_local i32 @xTaskCreate(i32, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
