; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_sleep.c_trigger_deepsleep.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_sleep.c_trigger_deepsleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Trigger deep sleep. Waiting for 10 sec ...\0A\00", align 1
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @trigger_deepsleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trigger_deepsleep() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @esp_clk_slowclk_cal_get()
  %3 = sdiv i32 %2, 2
  %4 = call i32 @esp_clk_slowclk_cal_set(i32 %3)
  %5 = call i32 (...) @esp_set_time_from_rtc()
  %6 = load i32, i32* @portTICK_RATE_MS, align 4
  %7 = sdiv i32 10000, %6
  %8 = call i32 @vTaskDelay(i32 %7)
  %9 = call i32 @gettimeofday(i32* @start, i32* null)
  %10 = call i32 @esp_sleep_enable_timer_wakeup(i32 1000)
  %11 = call i32 (...) @esp_deep_sleep_start()
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @esp_clk_slowclk_cal_set(i32) #1

declare dso_local i32 @esp_clk_slowclk_cal_get(...) #1

declare dso_local i32 @esp_set_time_from_rtc(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @esp_sleep_enable_timer_wakeup(i32) #1

declare dso_local i32 @esp_deep_sleep_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
