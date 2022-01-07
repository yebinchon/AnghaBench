; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_websocket_client/extr_esp_websocket_client.c_esp_websocket_client_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_websocket_client/extr_esp_websocket_client.c_esp_websocket_client_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@WEBSOCKET_STATE_INIT = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"The client has started\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@esp_websocket_client_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"websocket_task\00", align 1
@pdTRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Error create websocket task\00", align 1
@STOPPED_BIT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_websocket_client_start(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %5 = icmp eq %struct.TYPE_6__* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %7, i32* %2, align 4
  br label %45

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WEBSOCKET_STATE_INIT, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 @ESP_LOGE(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ESP_FAIL, align 4
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %8
  %19 = load i32, i32* @esp_websocket_client_task, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @xTaskCreate(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %24, %struct.TYPE_6__* %25, i32 %30, i32* null)
  %32 = load i64, i64* @pdTRUE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @ESP_FAIL, align 4
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %18
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @STOPPED_BIT, align 4
  %43 = call i32 @xEventGroupClearBits(i32 %41, i32 %42)
  %44 = load i32, i32* @ESP_OK, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %34, %14, %6
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @xTaskCreate(i32, i8*, i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @xEventGroupClearBits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
