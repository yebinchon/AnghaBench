; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/wps/main/extr_wps.c_start_wps.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/wps/main/extr_wps.c_start_wps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIFI_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@wifi_event_handler = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@got_ip_event_handler = common dso_local global i32 0, align 4
@WIFI_MODE_STA = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"start wps...\00", align 1
@config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_wps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_wps() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @esp_netif_init()
  %4 = call i32 (...) @esp_event_loop_create_default()
  %5 = call i32 @ESP_ERROR_CHECK(i32 %4)
  %6 = call i32* (...) @esp_netif_create_default_wifi_sta()
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @assert(i32* %7)
  %9 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  store i32 %9, i32* %2, align 4
  %10 = call i32 @esp_wifi_init(i32* %2)
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = load i32, i32* @WIFI_EVENT, align 4
  %13 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %14 = call i32 @esp_event_handler_register(i32 %12, i32 %13, i32* @wifi_event_handler, i32* null)
  %15 = call i32 @ESP_ERROR_CHECK(i32 %14)
  %16 = load i32, i32* @IP_EVENT, align 4
  %17 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %18 = call i32 @esp_event_handler_register(i32 %16, i32 %17, i32* @got_ip_event_handler, i32* null)
  %19 = call i32 @ESP_ERROR_CHECK(i32 %18)
  %20 = load i32, i32* @WIFI_MODE_STA, align 4
  %21 = call i32 @esp_wifi_set_mode(i32 %20)
  %22 = call i32 @ESP_ERROR_CHECK(i32 %21)
  %23 = call i32 (...) @esp_wifi_start()
  %24 = call i32 @ESP_ERROR_CHECK(i32 %23)
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @esp_wifi_wps_enable(i32* @config)
  %28 = call i32 @ESP_ERROR_CHECK(i32 %27)
  %29 = call i32 @esp_wifi_wps_start(i32 0)
  %30 = call i32 @ESP_ERROR_CHECK(i32 %29)
  ret void
}

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32* @esp_netif_create_default_wifi_sta(...) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @esp_wifi_init(i32*) #1

declare dso_local i32 @esp_event_handler_register(i32, i32, i32*, i32*) #1

declare dso_local i32 @esp_wifi_set_mode(i32) #1

declare dso_local i32 @esp_wifi_start(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_wifi_wps_enable(i32*) #1

declare dso_local i32 @esp_wifi_wps_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
