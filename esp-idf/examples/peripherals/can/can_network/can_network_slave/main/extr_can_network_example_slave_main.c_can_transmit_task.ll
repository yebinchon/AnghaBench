; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_slave/main/extr_can_network_example_slave_main.c_can_transmit_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_network/can_network_slave/main/extr_can_network_example_slave_main.c_can_transmit_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@tx_task_queue = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@TX_SEND_PING_RESP = common dso_local global i64 0, align 8
@ping_resp = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Transmitted ping response\00", align 1
@ctrl_task_sem = common dso_local global i32 0, align 4
@TX_SEND_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Start transmitting data\00", align 1
@data_message = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Transmitted data value %d\00", align 1
@DATA_PERIOD_MS = common dso_local global i32 0, align 4
@stop_data_sem = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@TX_SEND_STOP_RESP = common dso_local global i64 0, align 8
@stop_resp = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Transmitted stop response\00", align 1
@TX_TASK_EXIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @can_transmit_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @can_transmit_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %6

6:                                                ; preds = %1, %80
  %7 = load i32, i32* @tx_task_queue, align 4
  %8 = load i32, i32* @portMAX_DELAY, align 4
  %9 = call i32 @xQueueReceive(i32 %7, i64* %3, i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @TX_SEND_PING_RESP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  %14 = load i32, i32* @portMAX_DELAY, align 4
  %15 = call i32 @can_transmit(%struct.TYPE_5__* @ping_resp, i32 %14)
  %16 = load i32, i32* @EXAMPLE_TAG, align 4
  %17 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ctrl_task_sem, align 4
  %19 = call i32 @xSemaphoreGive(i32 %18)
  br label %80

20:                                               ; preds = %6
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @TX_SEND_DATA, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load i32, i32* @EXAMPLE_TAG, align 4
  %26 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %59
  %28 = call i32 (...) @xTaskGetTickCount()
  store i32 %28, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %42, %27
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 8
  %36 = ashr i32 %33, %35
  %37 = and i32 %36, 255
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @data_message, i32 0, i32 0), align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load i32, i32* @portMAX_DELAY, align 4
  %47 = call i32 @can_transmit(%struct.TYPE_5__* @data_message, i32 %46)
  %48 = load i32, i32* @EXAMPLE_TAG, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @DATA_PERIOD_MS, align 4
  %52 = call i32 @pdMS_TO_TICKS(i32 %51)
  %53 = call i32 @vTaskDelay(i32 %52)
  %54 = load i32, i32* @stop_data_sem, align 4
  %55 = call i64 @xSemaphoreTake(i32 %54, i32 0)
  %56 = load i64, i64* @pdTRUE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %60

59:                                               ; preds = %45
  br label %27

60:                                               ; preds = %58
  br label %79

61:                                               ; preds = %20
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @TX_SEND_STOP_RESP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i32, i32* @portMAX_DELAY, align 4
  %67 = call i32 @can_transmit(%struct.TYPE_5__* @stop_resp, i32 %66)
  %68 = load i32, i32* @EXAMPLE_TAG, align 4
  %69 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @ctrl_task_sem, align 4
  %71 = call i32 @xSemaphoreGive(i32 %70)
  br label %78

72:                                               ; preds = %61
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* @TX_TASK_EXIT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %81

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %65
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %79, %13
  br label %6

81:                                               ; preds = %76
  %82 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xQueueReceive(i32, i64*, i32) #1

declare dso_local i32 @can_transmit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @xTaskGetTickCount(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i64 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
