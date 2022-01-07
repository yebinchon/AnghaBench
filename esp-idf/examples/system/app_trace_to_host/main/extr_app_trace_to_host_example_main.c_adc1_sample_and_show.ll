; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/app_trace_to_host/main/extr_app_trace_to_host_example_main.c_adc1_sample_and_show.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/app_trace_to_host/main/extr_app_trace_to_host_example_main.c_adc1_sample_and_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Sample:%d, Value:%d\00", align 1
@ADC1_TEST_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adc1_sample_and_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc1_sample_and_show(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 (...) @esp_log_timestamp()
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %13, %1
  %7 = load i32, i32* @TAG, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @ADC1_TEST_CHANNEL, align 4
  %11 = call i32 @adc1_get_raw(i32 %10)
  %12 = call i32 @ESP_LOGI(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %11)
  br label %13

13:                                               ; preds = %6
  %14 = call i32 (...) @esp_log_timestamp()
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %14, %15
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %6, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @esp_log_timestamp(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @adc1_get_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
