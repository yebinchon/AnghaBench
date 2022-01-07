; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_master/main/extr_can_network_example_master_main.c_can_control_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_master/main/extr_can_network_example_master_main.c_can_control_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctrl_task_sem = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@NO_OF_ITERS = common dso_local global i32 0, align 4
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Driver started\00", align 1
@TX_SEND_PINGS = common dso_local global i32 0, align 4
@RX_RECEIVE_PING_RESP = common dso_local global i32 0, align 4
@tx_task_queue = common dso_local global i32 0, align 4
@rx_task_queue = common dso_local global i32 0, align 4
@TX_SEND_START_CMD = common dso_local global i32 0, align 4
@RX_RECEIVE_DATA = common dso_local global i32 0, align 4
@TX_SEND_STOP_CMD = common dso_local global i32 0, align 4
@RX_RECEIVE_STOP_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Driver stopped\00", align 1
@ITER_DELAY_MS = common dso_local global i32 0, align 4
@TX_TASK_EXIT = common dso_local global i32 0, align 4
@RX_TASK_EXIT = common dso_local global i32 0, align 4
@done_sem = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @can_control_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_control_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @ctrl_task_sem, align 4
  %7 = load i32, i32* @portMAX_DELAY, align 4
  %8 = call i32 @xSemaphoreTake(i32 %6, i32 %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %58, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NO_OF_ITERS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %9
  %14 = call i32 (...) @can_start()
  %15 = call i32 @ESP_ERROR_CHECK(i32 %14)
  %16 = load i32, i32* @EXAMPLE_TAG, align 4
  %17 = call i32 @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @TX_SEND_PINGS, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @RX_RECEIVE_PING_RESP, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @tx_task_queue, align 4
  %21 = load i32, i32* @portMAX_DELAY, align 4
  %22 = call i32 @xQueueSend(i32 %20, i32* %3, i32 %21)
  %23 = load i32, i32* @rx_task_queue, align 4
  %24 = load i32, i32* @portMAX_DELAY, align 4
  %25 = call i32 @xQueueSend(i32 %23, i32* %4, i32 %24)
  %26 = load i32, i32* @ctrl_task_sem, align 4
  %27 = load i32, i32* @portMAX_DELAY, align 4
  %28 = call i32 @xSemaphoreTake(i32 %26, i32 %27)
  %29 = load i32, i32* @TX_SEND_START_CMD, align 4
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @RX_RECEIVE_DATA, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @tx_task_queue, align 4
  %32 = load i32, i32* @portMAX_DELAY, align 4
  %33 = call i32 @xQueueSend(i32 %31, i32* %3, i32 %32)
  %34 = load i32, i32* @rx_task_queue, align 4
  %35 = load i32, i32* @portMAX_DELAY, align 4
  %36 = call i32 @xQueueSend(i32 %34, i32* %4, i32 %35)
  %37 = load i32, i32* @ctrl_task_sem, align 4
  %38 = load i32, i32* @portMAX_DELAY, align 4
  %39 = call i32 @xSemaphoreTake(i32 %37, i32 %38)
  %40 = load i32, i32* @TX_SEND_STOP_CMD, align 4
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @RX_RECEIVE_STOP_RESP, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @tx_task_queue, align 4
  %43 = load i32, i32* @portMAX_DELAY, align 4
  %44 = call i32 @xQueueSend(i32 %42, i32* %3, i32 %43)
  %45 = load i32, i32* @rx_task_queue, align 4
  %46 = load i32, i32* @portMAX_DELAY, align 4
  %47 = call i32 @xQueueSend(i32 %45, i32* %4, i32 %46)
  %48 = load i32, i32* @ctrl_task_sem, align 4
  %49 = load i32, i32* @portMAX_DELAY, align 4
  %50 = call i32 @xSemaphoreTake(i32 %48, i32 %49)
  %51 = call i32 (...) @can_stop()
  %52 = call i32 @ESP_ERROR_CHECK(i32 %51)
  %53 = load i32, i32* @EXAMPLE_TAG, align 4
  %54 = call i32 @ESP_LOGI(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ITER_DELAY_MS, align 4
  %56 = call i32 @pdMS_TO_TICKS(i32 %55)
  %57 = call i32 @vTaskDelay(i32 %56)
  br label %58

58:                                               ; preds = %13
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %9

61:                                               ; preds = %9
  %62 = load i32, i32* @TX_TASK_EXIT, align 4
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @RX_TASK_EXIT, align 4
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @tx_task_queue, align 4
  %65 = load i32, i32* @portMAX_DELAY, align 4
  %66 = call i32 @xQueueSend(i32 %64, i32* %3, i32 %65)
  %67 = load i32, i32* @rx_task_queue, align 4
  %68 = load i32, i32* @portMAX_DELAY, align 4
  %69 = call i32 @xQueueSend(i32 %67, i32* %4, i32 %68)
  %70 = load i32, i32* @done_sem, align 4
  %71 = call i32 @xSemaphoreGive(i32 %70)
  %72 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @can_start(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @xQueueSend(i32, i32*, i32) #1

declare dso_local i32 @can_stop(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
