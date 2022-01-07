; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/mqtt/ssl_mutual_auth/main/extr_app_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/mqtt/ssl_mutual_auth/main/extr_app_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"[APP] Startup..\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"[APP] Free memory: %d bytes\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"[APP] IDF version: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ESP_LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"MQTT_CLIENT\00", align 1
@ESP_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"TRANSPORT_TCP\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"TRANSPORT_SSL\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"TRANSPORT\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"OUTBOX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = load i32, i32* @TAG, align 4
  %2 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @TAG, align 4
  %4 = call i32 (...) @esp_get_free_heap_size()
  %5 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 (...) @esp_get_idf_version()
  %8 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @ESP_LOG_INFO, align 4
  %10 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @ESP_LOG_VERBOSE, align 4
  %12 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @ESP_LOG_VERBOSE, align 4
  %14 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @ESP_LOG_VERBOSE, align 4
  %16 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @ESP_LOG_VERBOSE, align 4
  %18 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ESP_LOG_VERBOSE, align 4
  %20 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %19)
  %21 = call i32 (...) @nvs_flash_init()
  %22 = call i32 @ESP_ERROR_CHECK(i32 %21)
  %23 = call i32 (...) @esp_netif_init()
  %24 = call i32 (...) @esp_event_loop_create_default()
  %25 = call i32 @ESP_ERROR_CHECK(i32 %24)
  %26 = call i32 (...) @example_connect()
  %27 = call i32 @ESP_ERROR_CHECK(i32 %26)
  %28 = call i32 (...) @mqtt_app_start()
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_get_free_heap_size(...) #1

declare dso_local i32 @esp_get_idf_version(...) #1

declare dso_local i32 @esp_log_level_set(i8*, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @nvs_flash_init(...) #1

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32 @example_connect(...) #1

declare dso_local i32 @mqtt_app_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
