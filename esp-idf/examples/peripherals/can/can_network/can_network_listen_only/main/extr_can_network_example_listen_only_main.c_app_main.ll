; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_listen_only/main/extr_can_network_example_listen_only_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_listen_only/main/extr_can_network_example_listen_only_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rx_sem = common dso_local global i32 0, align 4
@can_receive_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CAN_rx\00", align 1
@RX_TASK_PRIO = common dso_local global i32 0, align 4
@tskNO_AFFINITY = common dso_local global i32 0, align 4
@g_config = common dso_local global i32 0, align 4
@t_config = common dso_local global i32 0, align 4
@f_config = common dso_local global i32 0, align 4
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Driver installed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Driver started\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Driver stopped\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Driver uninstalled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = call i32 (...) @xSemaphoreCreateBinary()
  store i32 %1, i32* @rx_sem, align 4
  %2 = load i32, i32* @can_receive_task, align 4
  %3 = load i32, i32* @RX_TASK_PRIO, align 4
  %4 = load i32, i32* @tskNO_AFFINITY, align 4
  %5 = call i32 @xTaskCreatePinnedToCore(i32 %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4096, i32* null, i32 %3, i32* null, i32 %4)
  %6 = call i32 @can_driver_install(i32* @g_config, i32* @t_config, i32* @f_config)
  %7 = call i32 @ESP_ERROR_CHECK(i32 %6)
  %8 = load i32, i32* @EXAMPLE_TAG, align 4
  %9 = call i32 @ESP_LOGI(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 (...) @can_start()
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = load i32, i32* @EXAMPLE_TAG, align 4
  %13 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* @rx_sem, align 4
  %15 = call i32 @xSemaphoreGive(i32 %14)
  %16 = call i32 @pdMS_TO_TICKS(i32 100)
  %17 = call i32 @vTaskDelay(i32 %16)
  %18 = load i32, i32* @rx_sem, align 4
  %19 = load i32, i32* @portMAX_DELAY, align 4
  %20 = call i32 @xSemaphoreTake(i32 %18, i32 %19)
  %21 = call i32 (...) @can_stop()
  %22 = call i32 @ESP_ERROR_CHECK(i32 %21)
  %23 = load i32, i32* @EXAMPLE_TAG, align 4
  %24 = call i32 @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 (...) @can_driver_uninstall()
  %26 = call i32 @ESP_ERROR_CHECK(i32 %25)
  %27 = load i32, i32* @EXAMPLE_TAG, align 4
  %28 = call i32 @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* @rx_sem, align 4
  %30 = call i32 @vSemaphoreDelete(i32 %29)
  ret void
}

declare dso_local i32 @xSemaphoreCreateBinary(...) #1

declare dso_local i32 @xTaskCreatePinnedToCore(i32, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @can_driver_install(i32*, i32*, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @can_start(...) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @can_stop(...) #1

declare dso_local i32 @can_driver_uninstall(...) #1

declare dso_local i32 @vSemaphoreDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
