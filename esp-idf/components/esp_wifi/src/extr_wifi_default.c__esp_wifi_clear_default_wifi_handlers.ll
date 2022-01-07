; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c__esp_wifi_clear_default_wifi_handlers.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c__esp_wifi_clear_default_wifi_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIFI_EVENT = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_START = common dso_local global i32 0, align 4
@wifi_default_action_sta_start = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_STOP = common dso_local global i32 0, align 4
@wifi_default_action_sta_stop = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_CONNECTED = common dso_local global i32 0, align 4
@wifi_default_action_sta_connected = common dso_local global i32 0, align 4
@WIFI_EVENT_STA_DISCONNECTED = common dso_local global i32 0, align 4
@wifi_default_action_sta_disconnected = common dso_local global i32 0, align 4
@WIFI_EVENT_AP_START = common dso_local global i32 0, align 4
@wifi_default_action_ap_start = common dso_local global i32 0, align 4
@WIFI_EVENT_AP_STOP = common dso_local global i32 0, align 4
@wifi_default_action_ap_stop = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@wifi_default_action_sta_got_ip = common dso_local global i32 0, align 4
@esp_wifi_stop = common dso_local global i64 0, align 8
@wifi_default_handlers_set = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_esp_wifi_clear_default_wifi_handlers() #0 {
  %1 = load i32, i32* @WIFI_EVENT, align 4
  %2 = load i32, i32* @WIFI_EVENT_STA_START, align 4
  %3 = load i32, i32* @wifi_default_action_sta_start, align 4
  %4 = call i32 @esp_event_handler_unregister(i32 %1, i32 %2, i32 %3)
  %5 = load i32, i32* @WIFI_EVENT, align 4
  %6 = load i32, i32* @WIFI_EVENT_STA_STOP, align 4
  %7 = load i32, i32* @wifi_default_action_sta_stop, align 4
  %8 = call i32 @esp_event_handler_unregister(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @WIFI_EVENT, align 4
  %10 = load i32, i32* @WIFI_EVENT_STA_CONNECTED, align 4
  %11 = load i32, i32* @wifi_default_action_sta_connected, align 4
  %12 = call i32 @esp_event_handler_unregister(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* @WIFI_EVENT, align 4
  %14 = load i32, i32* @WIFI_EVENT_STA_DISCONNECTED, align 4
  %15 = load i32, i32* @wifi_default_action_sta_disconnected, align 4
  %16 = call i32 @esp_event_handler_unregister(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @WIFI_EVENT, align 4
  %18 = load i32, i32* @WIFI_EVENT_AP_START, align 4
  %19 = load i32, i32* @wifi_default_action_ap_start, align 4
  %20 = call i32 @esp_event_handler_unregister(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @WIFI_EVENT, align 4
  %22 = load i32, i32* @WIFI_EVENT_AP_STOP, align 4
  %23 = load i32, i32* @wifi_default_action_ap_stop, align 4
  %24 = call i32 @esp_event_handler_unregister(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @IP_EVENT, align 4
  %26 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %27 = load i32, i32* @wifi_default_action_sta_got_ip, align 4
  %28 = call i32 @esp_event_handler_unregister(i32 %25, i32 %26, i32 %27)
  %29 = load i64, i64* @esp_wifi_stop, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @esp_unregister_shutdown_handler(i32 %30)
  store i32 0, i32* @wifi_default_handlers_set, align 4
  %32 = load i32, i32* @ESP_OK, align 4
  ret i32 %32
}

declare dso_local i32 @esp_event_handler_unregister(i32, i32, i32) #1

declare dso_local i32 @esp_unregister_shutdown_handler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
