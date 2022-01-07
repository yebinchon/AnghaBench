; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_slave/main/extr_can_network_example_slave_main.c_can_control_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_slave/main/extr_can_network_example_slave_main.c_can_control_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ctrl_task_sem = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@NO_OF_ITERS = common dso_local global i32 0, align 4
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Driver started\00", align 1
@RX_RECEIVE_PING = common dso_local global i32 0, align 4
@rx_task_queue = common dso_local global i32 0, align 4
@TX_SEND_PING_RESP = common dso_local global i32 0, align 4
@tx_task_queue = common dso_local global i32 0, align 4
@RX_RECEIVE_START_CMD = common dso_local global i32 0, align 4
@TX_SEND_DATA = common dso_local global i32 0, align 4
@RX_RECEIVE_STOP_CMD = common dso_local global i32 0, align 4
@TX_SEND_STOP_RESP = common dso_local global i32 0, align 4
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
  %6 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @ctrl_task_sem, align 4
  %8 = load i32, i32* @portMAX_DELAY, align 4
  %9 = call i32 @xSemaphoreTake(i32 %7, i32 %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %75, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NO_OF_ITERS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %10
  %15 = call i32 (...) @can_start()
  %16 = call i32 @ESP_ERROR_CHECK(i32 %15)
  %17 = load i32, i32* @EXAMPLE_TAG, align 4
  %18 = call i32 @ESP_LOGI(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @RX_RECEIVE_PING, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @rx_task_queue, align 4
  %21 = load i32, i32* @portMAX_DELAY, align 4
  %22 = call i32 @xQueueSend(i32 %20, i32* %4, i32 %21)
  %23 = load i32, i32* @ctrl_task_sem, align 4
  %24 = load i32, i32* @portMAX_DELAY, align 4
  %25 = call i32 @xSemaphoreTake(i32 %23, i32 %24)
  %26 = load i32, i32* @TX_SEND_PING_RESP, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @tx_task_queue, align 4
  %28 = load i32, i32* @portMAX_DELAY, align 4
  %29 = call i32 @xQueueSend(i32 %27, i32* %3, i32 %28)
  %30 = load i32, i32* @ctrl_task_sem, align 4
  %31 = load i32, i32* @portMAX_DELAY, align 4
  %32 = call i32 @xSemaphoreTake(i32 %30, i32 %31)
  %33 = load i32, i32* @RX_RECEIVE_START_CMD, align 4
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @rx_task_queue, align 4
  %35 = load i32, i32* @portMAX_DELAY, align 4
  %36 = call i32 @xQueueSend(i32 %34, i32* %4, i32 %35)
  %37 = load i32, i32* @ctrl_task_sem, align 4
  %38 = load i32, i32* @portMAX_DELAY, align 4
  %39 = call i32 @xSemaphoreTake(i32 %37, i32 %38)
  %40 = load i32, i32* @TX_SEND_DATA, align 4
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @RX_RECEIVE_STOP_CMD, align 4
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
  %51 = load i32, i32* @TX_SEND_STOP_RESP, align 4
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @tx_task_queue, align 4
  %53 = load i32, i32* @portMAX_DELAY, align 4
  %54 = call i32 @xQueueSend(i32 %52, i32* %3, i32 %53)
  %55 = load i32, i32* @ctrl_task_sem, align 4
  %56 = load i32, i32* @portMAX_DELAY, align 4
  %57 = call i32 @xSemaphoreTake(i32 %55, i32 %56)
  %58 = call i32 @can_get_status_info(%struct.TYPE_3__* %6)
  br label %59

59:                                               ; preds = %63, %14
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = call i32 @pdMS_TO_TICKS(i32 100)
  %65 = call i32 @vTaskDelay(i32 %64)
  %66 = call i32 @can_get_status_info(%struct.TYPE_3__* %6)
  br label %59

67:                                               ; preds = %59
  %68 = call i32 (...) @can_stop()
  %69 = call i32 @ESP_ERROR_CHECK(i32 %68)
  %70 = load i32, i32* @EXAMPLE_TAG, align 4
  %71 = call i32 @ESP_LOGI(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ITER_DELAY_MS, align 4
  %73 = call i32 @pdMS_TO_TICKS(i32 %72)
  %74 = call i32 @vTaskDelay(i32 %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %10

78:                                               ; preds = %10
  %79 = load i32, i32* @TX_TASK_EXIT, align 4
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* @RX_TASK_EXIT, align 4
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @tx_task_queue, align 4
  %82 = load i32, i32* @portMAX_DELAY, align 4
  %83 = call i32 @xQueueSend(i32 %81, i32* %3, i32 %82)
  %84 = load i32, i32* @rx_task_queue, align 4
  %85 = load i32, i32* @portMAX_DELAY, align 4
  %86 = call i32 @xQueueSend(i32 %84, i32* %4, i32 %85)
  %87 = load i32, i32* @done_sem, align 4
  %88 = call i32 @xSemaphoreGive(i32 %87)
  %89 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @can_start(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @xQueueSend(i32, i32*, i32) #1

declare dso_local i32 @can_get_status_info(%struct.TYPE_3__*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @can_stop(...) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
