; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_alert_and_recovery/main/extr_can_alert_and_recovery_example_main.c_tx_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_alert_and_recovery/main/extr_can_alert_and_recovery_example_main.c_tx_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tx_task_sem = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@tx_msg = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@trigger_tx_error = common dso_local global i64 0, align 8
@ERR_DELAY_US = common dso_local global i32 0, align 4
@ERR_PERIOD_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tx_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @tx_task_sem, align 4
  %4 = load i32, i32* @portMAX_DELAY, align 4
  %5 = call i32 @xSemaphoreTake(i32 %3, i32 %4)
  br label %6

6:                                                ; preds = %1, %21
  %7 = call i64 @can_transmit(i32* @tx_msg, i32 0)
  %8 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %24

11:                                               ; preds = %6
  %12 = load i64, i64* @trigger_tx_error, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* @ERR_DELAY_US, align 4
  %16 = call i32 @ets_delay_us(i32 %15)
  %17 = call i32 @invert_tx_bits(i32 1)
  %18 = load i32, i32* @ERR_PERIOD_US, align 4
  %19 = call i32 @ets_delay_us(i32 %18)
  %20 = call i32 @invert_tx_bits(i32 0)
  br label %21

21:                                               ; preds = %14, %11
  %22 = call i32 @pdMS_TO_TICKS(i32 50)
  %23 = call i32 @vTaskDelay(i32 %22)
  br label %6

24:                                               ; preds = %10
  %25 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i64 @can_transmit(i32*, i32) #1

declare dso_local i32 @ets_delay_us(i32) #1

declare dso_local i32 @invert_tx_bits(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
