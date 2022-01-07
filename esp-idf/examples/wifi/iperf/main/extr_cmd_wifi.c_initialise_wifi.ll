; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_initialise_wifi.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_initialise_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"wifi\00", align 1
@ESP_LOG_WARN = common dso_local global i32 0, align 4
@initialise_wifi.initialized = internal global i32 0, align 4
@wifi_event_group = common dso_local global i32 0, align 4
@netif_ap = common dso_local global i32 0, align 4
@netif_sta = common dso_local global i32 0, align 4
@WIFI_EVENT = common dso_local global i32 0, align 4
@WIFI_EVENT_SCAN_DONE = common dso_local global i32 0, align 4
@scan_done_handler = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_DISCONNECTED = common dso_local global i32 0, align 4
@disconnect_handler = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@got_ip_handler = common dso_local global i32 0, align 4
@WIFI_STORAGE_RAM = common dso_local global i32 0, align 4
@WIFI_MODE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialise_wifi() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ESP_LOG_WARN, align 4
  %3 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @initialise_wifi.initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %41

7:                                                ; preds = %0
  %8 = call i32 (...) @esp_netif_init()
  %9 = call i32 (...) @xEventGroupCreate()
  store i32 %9, i32* @wifi_event_group, align 4
  %10 = call i32 (...) @esp_event_loop_create_default()
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = call i32 (...) @esp_netif_create_default_wifi_ap()
  store i32 %12, i32* @netif_ap, align 4
  %13 = load i32, i32* @netif_ap, align 4
  %14 = call i32 @assert(i32 %13)
  %15 = call i32 (...) @esp_netif_create_default_wifi_sta()
  store i32 %15, i32* @netif_sta, align 4
  %16 = load i32, i32* @netif_sta, align 4
  %17 = call i32 @assert(i32 %16)
  %18 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  store i32 %18, i32* %1, align 4
  %19 = call i32 @esp_wifi_init(i32* %1)
  %20 = call i32 @ESP_ERROR_CHECK(i32 %19)
  %21 = load i32, i32* @WIFI_EVENT, align 4
  %22 = load i32, i32* @WIFI_EVENT_SCAN_DONE, align 4
  %23 = call i32 @esp_event_handler_register(i32 %21, i32 %22, i32* @scan_done_handler, i32* null)
  %24 = call i32 @ESP_ERROR_CHECK(i32 %23)
  %25 = load i32, i32* @WIFI_EVENT, align 4
  %26 = load i32, i32* @WIFI_EVENT_STA_DISCONNECTED, align 4
  %27 = call i32 @esp_event_handler_register(i32 %25, i32 %26, i32* @disconnect_handler, i32* null)
  %28 = call i32 @ESP_ERROR_CHECK(i32 %27)
  %29 = load i32, i32* @IP_EVENT, align 4
  %30 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %31 = call i32 @esp_event_handler_register(i32 %29, i32 %30, i32* @got_ip_handler, i32* null)
  %32 = call i32 @ESP_ERROR_CHECK(i32 %31)
  %33 = load i32, i32* @WIFI_STORAGE_RAM, align 4
  %34 = call i32 @esp_wifi_set_storage(i32 %33)
  %35 = call i32 @ESP_ERROR_CHECK(i32 %34)
  %36 = load i32, i32* @WIFI_MODE_NULL, align 4
  %37 = call i32 @esp_wifi_set_mode(i32 %36)
  %38 = call i32 @ESP_ERROR_CHECK(i32 %37)
  %39 = call i32 (...) @esp_wifi_start()
  %40 = call i32 @ESP_ERROR_CHECK(i32 %39)
  store i32 1, i32* @initialise_wifi.initialized, align 4
  br label %41

41:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @esp_log_level_set(i8*, i32) #1

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @xEventGroupCreate(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32 @esp_netif_create_default_wifi_ap(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @esp_netif_create_default_wifi_sta(...) #1

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @esp_wifi_init(i32*) #1

declare dso_local i32 @esp_event_handler_register(i32, i32, i32*, i32*) #1

declare dso_local i32 @esp_wifi_set_storage(i32) #1

declare dso_local i32 @esp_wifi_set_mode(i32) #1

declare dso_local i32 @esp_wifi_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
