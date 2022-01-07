; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/websocket/main/extr_websocket_example.c_websocket_app_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/websocket/main/extr_websocket_example.c_websocket_app_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Connectiong to %s...\00", align 1
@WEBSOCKET_ECHO_ENDPOINT = common dso_local global i32 0, align 4
@WEBSOCKET_EVENT_ANY = common dso_local global i32 0, align 4
@websocket_event_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hello %04d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Sending %s\00", align 1
@portMAX_DELAY = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Websocket Stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @websocket_app_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @websocket_app_start() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i64, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @TAG, align 4
  %7 = load i32, i32* @WEBSOCKET_ECHO_ENDPOINT, align 4
  %8 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %10 = load i32, i32* @WEBSOCKET_ECHO_ENDPOINT, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i64 @esp_websocket_client_init(%struct.TYPE_3__* %1)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i32, i32* @WEBSOCKET_EVENT_ANY, align 4
  %14 = load i32, i32* @websocket_event_handler, align 4
  %15 = load i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @esp_websocket_register_events(i64 %12, i32 %13, i32 %14, i8* %16)
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @esp_websocket_client_start(i64 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %40, %0
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @esp_websocket_client_is_connected(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @TAG, align 4
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %34 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @portMAX_DELAY, align 4
  %39 = call i32 @esp_websocket_client_send(i64 %35, i8* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %27, %23
  %41 = load i32, i32* @portTICK_RATE_MS, align 4
  %42 = sdiv i32 1000, %41
  %43 = call i32 @vTaskDelay(i32 %42)
  br label %20

44:                                               ; preds = %20
  %45 = load i64, i64* %2, align 8
  %46 = call i32 @esp_websocket_client_stop(i64 %45)
  %47 = load i32, i32* @TAG, align 4
  %48 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i64, i64* %2, align 8
  %50 = call i32 @esp_websocket_client_destroy(i64 %49)
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i64 @esp_websocket_client_init(%struct.TYPE_3__*) #1

declare dso_local i32 @esp_websocket_register_events(i64, i32, i32, i8*) #1

declare dso_local i32 @esp_websocket_client_start(i64) #1

declare dso_local i64 @esp_websocket_client_is_connected(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @esp_websocket_client_send(i64, i8*, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @esp_websocket_client_stop(i64) #1

declare dso_local i32 @esp_websocket_client_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
