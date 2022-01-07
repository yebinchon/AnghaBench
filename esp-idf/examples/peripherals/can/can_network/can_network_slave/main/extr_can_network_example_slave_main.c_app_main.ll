; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_slave/main/extr_can_network_example_slave_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_slave/main/extr_can_network_example_slave_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Slave starting in %d\0A\00", align 1
@tx_task_queue = common dso_local global i32 0, align 4
@rx_task_queue = common dso_local global i32 0, align 4
@ctrl_task_sem = common dso_local global i32 0, align 4
@stop_data_sem = common dso_local global i32 0, align 4
@done_sem = common dso_local global i32 0, align 4
@can_receive_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"CAN_rx\00", align 1
@RX_TASK_PRIO = common dso_local global i32 0, align 4
@tskNO_AFFINITY = common dso_local global i32 0, align 4
@can_transmit_task = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"CAN_tx\00", align 1
@TX_TASK_PRIO = common dso_local global i32 0, align 4
@can_control_task = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"CAN_ctrl\00", align 1
@CTRL_TSK_PRIO = common dso_local global i32 0, align 4
@g_config = common dso_local global i32 0, align 4
@t_config = common dso_local global i32 0, align 4
@f_config = common dso_local global i32 0, align 4
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Driver installed\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Driver uninstalled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  store i32 3, i32* %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @pdMS_TO_TICKS(i32 1000)
  %9 = call i32 @vTaskDelay(i32 %8)
  br label %10

10:                                               ; preds = %5
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %1, align 4
  br label %2

13:                                               ; preds = %2
  %14 = call i32 @xQueueCreate(i32 1, i32 4)
  store i32 %14, i32* @tx_task_queue, align 4
  %15 = call i32 @xQueueCreate(i32 1, i32 4)
  store i32 %15, i32* @rx_task_queue, align 4
  %16 = call i32 (...) @xSemaphoreCreateBinary()
  store i32 %16, i32* @ctrl_task_sem, align 4
  %17 = call i32 (...) @xSemaphoreCreateBinary()
  store i32 %17, i32* @stop_data_sem, align 4
  %18 = call i32 (...) @xSemaphoreCreateBinary()
  store i32 %18, i32* @done_sem, align 4
  %19 = load i32, i32* @can_receive_task, align 4
  %20 = load i32, i32* @RX_TASK_PRIO, align 4
  %21 = load i32, i32* @tskNO_AFFINITY, align 4
  %22 = call i32 @xTaskCreatePinnedToCore(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 4096, i32* null, i32 %20, i32* null, i32 %21)
  %23 = load i32, i32* @can_transmit_task, align 4
  %24 = load i32, i32* @TX_TASK_PRIO, align 4
  %25 = load i32, i32* @tskNO_AFFINITY, align 4
  %26 = call i32 @xTaskCreatePinnedToCore(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 4096, i32* null, i32 %24, i32* null, i32 %25)
  %27 = load i32, i32* @can_control_task, align 4
  %28 = load i32, i32* @CTRL_TSK_PRIO, align 4
  %29 = load i32, i32* @tskNO_AFFINITY, align 4
  %30 = call i32 @xTaskCreatePinnedToCore(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 4096, i32* null, i32 %28, i32* null, i32 %29)
  %31 = call i32 @can_driver_install(i32* @g_config, i32* @t_config, i32* @f_config)
  %32 = call i32 @ESP_ERROR_CHECK(i32 %31)
  %33 = load i32, i32* @EXAMPLE_TAG, align 4
  %34 = call i32 @ESP_LOGI(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32, i32* @ctrl_task_sem, align 4
  %36 = call i32 @xSemaphoreGive(i32 %35)
  %37 = load i32, i32* @done_sem, align 4
  %38 = load i32, i32* @portMAX_DELAY, align 4
  %39 = call i32 @xSemaphoreTake(i32 %37, i32 %38)
  %40 = call i32 (...) @can_driver_uninstall()
  %41 = call i32 @ESP_ERROR_CHECK(i32 %40)
  %42 = load i32, i32* @EXAMPLE_TAG, align 4
  %43 = call i32 @ESP_LOGI(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i32, i32* @ctrl_task_sem, align 4
  %45 = call i32 @vSemaphoreDelete(i32 %44)
  %46 = load i32, i32* @stop_data_sem, align 4
  %47 = call i32 @vSemaphoreDelete(i32 %46)
  %48 = load i32, i32* @done_sem, align 4
  %49 = call i32 @vSemaphoreDelete(i32 %48)
  %50 = load i32, i32* @tx_task_queue, align 4
  %51 = call i32 @vQueueDelete(i32 %50)
  %52 = load i32, i32* @rx_task_queue, align 4
  %53 = call i32 @vQueueDelete(i32 %52)
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @xQueueCreate(i32, i32) #1

declare dso_local i32 @xSemaphoreCreateBinary(...) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @can_driver_install(i32*, i32*, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @can_driver_uninstall(...) #1

declare dso_local i32 @vSemaphoreDelete(i32) #1

declare dso_local i32 @vQueueDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
