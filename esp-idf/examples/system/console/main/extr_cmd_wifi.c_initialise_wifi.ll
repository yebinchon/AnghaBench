; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/console/main/extr_cmd_wifi.c_initialise_wifi.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/console/main/extr_cmd_wifi.c_initialise_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"wifi\00", align 1
@ESP_LOG_WARN = common dso_local global i32 0, align 4
@initialise_wifi.initialized = internal global i32 0, align 4
@wifi_event_group = common dso_local global i32 0, align 4
@WIFI_EVENT = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_DISCONNECTED = common dso_local global i32 0, align 4
@event_handler = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@WIFI_STORAGE_RAM = common dso_local global i32 0, align 4
@WIFI_MODE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialise_wifi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialise_wifi() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ESP_LOG_WARN, align 4
  %5 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @initialise_wifi.initialized, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %39

9:                                                ; preds = %0
  %10 = call i32 (...) @esp_netif_init()
  %11 = call i32 (...) @xEventGroupCreate()
  store i32 %11, i32* @wifi_event_group, align 4
  %12 = call i32 (...) @esp_event_loop_create_default()
  %13 = call i32 @ESP_ERROR_CHECK(i32 %12)
  %14 = call i32* (...) @esp_netif_create_default_wifi_ap()
  store i32* %14, i32** %1, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = call i32* (...) @esp_netif_create_default_wifi_sta()
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @assert(i32* %18)
  %20 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  store i32 %20, i32* %3, align 4
  %21 = call i32 @esp_wifi_init(i32* %3)
  %22 = call i32 @ESP_ERROR_CHECK(i32 %21)
  %23 = load i32, i32* @WIFI_EVENT, align 4
  %24 = load i32, i32* @WIFI_EVENT_STA_DISCONNECTED, align 4
  %25 = call i32 @esp_event_handler_register(i32 %23, i32 %24, i32* @event_handler, i32* null)
  %26 = call i32 @ESP_ERROR_CHECK(i32 %25)
  %27 = load i32, i32* @IP_EVENT, align 4
  %28 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %29 = call i32 @esp_event_handler_register(i32 %27, i32 %28, i32* @event_handler, i32* null)
  %30 = call i32 @ESP_ERROR_CHECK(i32 %29)
  %31 = load i32, i32* @WIFI_STORAGE_RAM, align 4
  %32 = call i32 @esp_wifi_set_storage(i32 %31)
  %33 = call i32 @ESP_ERROR_CHECK(i32 %32)
  %34 = load i32, i32* @WIFI_MODE_NULL, align 4
  %35 = call i32 @esp_wifi_set_mode(i32 %34)
  %36 = call i32 @ESP_ERROR_CHECK(i32 %35)
  %37 = call i32 (...) @esp_wifi_start()
  %38 = call i32 @ESP_ERROR_CHECK(i32 %37)
  store i32 1, i32* @initialise_wifi.initialized, align 4
  br label %39

39:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @esp_log_level_set(i8*, i32) #1

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @xEventGroupCreate(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32* @esp_netif_create_default_wifi_ap(...) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32* @esp_netif_create_default_wifi_sta(...) #1

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
