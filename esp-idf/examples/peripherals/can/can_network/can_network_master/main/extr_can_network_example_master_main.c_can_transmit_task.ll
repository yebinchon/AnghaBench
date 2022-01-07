; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_master/main/extr_can_network_example_master_main.c_can_transmit_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_master/main/extr_can_network_example_master_main.c_can_transmit_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tx_task_queue = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@TX_SEND_PINGS = common dso_local global i64 0, align 8
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Transmitting ping\00", align 1
@stop_ping_sem = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@ping_message = common dso_local global i32 0, align 4
@PING_PERIOD_MS = common dso_local global i32 0, align 4
@TX_SEND_START_CMD = common dso_local global i64 0, align 8
@start_message = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Transmitted start command\00", align 1
@TX_SEND_STOP_CMD = common dso_local global i64 0, align 8
@stop_message = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Transmitted stop command\00", align 1
@TX_TASK_EXIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @can_transmit_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_transmit_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %1, %52
  %5 = load i32, i32* @tx_task_queue, align 4
  %6 = load i32, i32* @portMAX_DELAY, align 4
  %7 = call i32 @xQueueReceive(i32 %5, i64* %3, i32 %6)
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @TX_SEND_PINGS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %4
  %12 = load i32, i32* @EXAMPLE_TAG, align 4
  %13 = call i32 @ESP_LOGI(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %19, %11
  %15 = load i32, i32* @stop_ping_sem, align 4
  %16 = call i64 @xSemaphoreTake(i32 %15, i32 0)
  %17 = load i64, i64* @pdTRUE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @portMAX_DELAY, align 4
  %21 = call i32 @can_transmit(i32* @ping_message, i32 %20)
  %22 = load i32, i32* @PING_PERIOD_MS, align 4
  %23 = call i32 @pdMS_TO_TICKS(i32 %22)
  %24 = call i32 @vTaskDelay(i32 %23)
  br label %14

25:                                               ; preds = %14
  br label %52

26:                                               ; preds = %4
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @TX_SEND_START_CMD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @portMAX_DELAY, align 4
  %32 = call i32 @can_transmit(i32* @start_message, i32 %31)
  %33 = load i32, i32* @EXAMPLE_TAG, align 4
  %34 = call i32 @ESP_LOGI(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %51

35:                                               ; preds = %26
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @TX_SEND_STOP_CMD, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @portMAX_DELAY, align 4
  %41 = call i32 @can_transmit(i32* @stop_message, i32 %40)
  %42 = load i32, i32* @EXAMPLE_TAG, align 4
  %43 = call i32 @ESP_LOGI(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %50

44:                                               ; preds = %35
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @TX_TASK_EXIT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %53

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %39
  br label %51

51:                                               ; preds = %50, %30
  br label %52

52:                                               ; preds = %51, %25
  br label %4

53:                                               ; preds = %48
  %54 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xQueueReceive(i32, i64*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @can_transmit(i32*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
