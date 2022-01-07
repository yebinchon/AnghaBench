; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_alert_and_recovery/main/extr_can_alert_and_recovery_example_main.c_ctrl_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/can/can_alert_and_recovery/main/extr_can_alert_and_recovery_example_main.c_ctrl_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ctrl_task_sem = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@EXAMPLE_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Driver started\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Starting transmissions\00", align 1
@tx_task_sem = common dso_local global i32 0, align 4
@CAN_ALERT_ABOVE_ERR_WARN = common dso_local global i32 0, align 4
@CAN_ALERT_ERR_PASS = common dso_local global i32 0, align 4
@CAN_ALERT_BUS_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Trigger TX errors in %d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Trigger errors\00", align 1
@trigger_tx_error = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Surpassed Error Warning Limit\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Entered Error Passive state\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Bus Off state\00", align 1
@CAN_ALERT_BUS_RECOVERED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Initiate bus recovery in %d\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Initiate bus recovery\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Bus Recovered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ctrl_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctrl_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @ctrl_task_sem, align 4
  %7 = load i32, i32* @portMAX_DELAY, align 4
  %8 = call i32 @xSemaphoreTake(i32 %6, i32 %7)
  %9 = call i32 (...) @can_start()
  %10 = call i32 @ESP_ERROR_CHECK(i32 %9)
  %11 = load i32, i32* @EXAMPLE_TAG, align 4
  %12 = call i32 @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EXAMPLE_TAG, align 4
  %14 = call i32 @ESP_LOGI(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @tx_task_sem, align 4
  %16 = call i32 @xSemaphoreGive(i32 %15)
  %17 = load i32, i32* @CAN_ALERT_ABOVE_ERR_WARN, align 4
  %18 = load i32, i32* @CAN_ALERT_ERR_PASS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CAN_ALERT_BUS_OFF, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @can_reconfigure_alerts(i32 %21, i32* null)
  store i32 3, i32* %3, align 4
  br label %23

23:                                               ; preds = %32, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* @EXAMPLE_TAG, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ESP_LOGW(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32 @pdMS_TO_TICKS(i32 1000)
  %31 = call i32 @vTaskDelay(i32 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %3, align 4
  br label %23

35:                                               ; preds = %23
  %36 = load i32, i32* @EXAMPLE_TAG, align 4
  %37 = call i32 @ESP_LOGI(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @trigger_tx_error, align 4
  br label %38

38:                                               ; preds = %35, %90
  %39 = load i32, i32* @portMAX_DELAY, align 4
  %40 = call i32 @can_read_alerts(i32* %4, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @CAN_ALERT_ABOVE_ERR_WARN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EXAMPLE_TAG, align 4
  %47 = call i32 @ESP_LOGI(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @CAN_ALERT_ERR_PASS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EXAMPLE_TAG, align 4
  %55 = call i32 @ESP_LOGI(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @CAN_ALERT_BUS_OFF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load i32, i32* @EXAMPLE_TAG, align 4
  %63 = call i32 @ESP_LOGI(i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32, i32* @CAN_ALERT_BUS_RECOVERED, align 4
  %65 = call i32 @can_reconfigure_alerts(i32 %64, i32* null)
  store i32 3, i32* %5, align 4
  br label %66

66:                                               ; preds = %75, %61
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* @EXAMPLE_TAG, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ESP_LOGW(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  %73 = call i32 @pdMS_TO_TICKS(i32 1000)
  %74 = call i32 @vTaskDelay(i32 %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %5, align 4
  br label %66

78:                                               ; preds = %66
  %79 = call i32 (...) @can_initiate_recovery()
  %80 = load i32, i32* @EXAMPLE_TAG, align 4
  %81 = call i32 @ESP_LOGI(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %82

82:                                               ; preds = %78, %56
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @CAN_ALERT_BUS_RECOVERED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EXAMPLE_TAG, align 4
  %89 = call i32 @ESP_LOGI(i32 %88, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %91

90:                                               ; preds = %82
  br label %38

91:                                               ; preds = %87
  %92 = load i32, i32* @ctrl_task_sem, align 4
  %93 = call i32 @xSemaphoreGive(i32 %92)
  %94 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @xSemaphoreTake(i32, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @can_start(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @can_reconfigure_alerts(i32, i32*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @can_read_alerts(i32*, i32) #1

declare dso_local i32 @can_initiate_recovery(...) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
