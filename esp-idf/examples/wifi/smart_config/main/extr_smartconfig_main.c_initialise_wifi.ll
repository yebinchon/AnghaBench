; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/smart_config/main/extr_smartconfig_main.c_initialise_wifi.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/smart_config/main/extr_smartconfig_main.c_initialise_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_wifi_event_group = common dso_local global i32 0, align 4
@WIFI_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@event_handler = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@SC_EVENT = common dso_local global i32 0, align 4
@WIFI_MODE_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialise_wifi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialise_wifi() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @esp_netif_init()
  %4 = call i32 (...) @xEventGroupCreate()
  store i32 %4, i32* @s_wifi_event_group, align 4
  %5 = call i32 (...) @esp_event_loop_create_default()
  %6 = call i32 @ESP_ERROR_CHECK(i32 %5)
  %7 = call i32* (...) @esp_netif_create_default_wifi_sta()
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @assert(i32* %8)
  %10 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  store i32 %10, i32* %2, align 4
  %11 = call i32 @esp_wifi_init(i32* %2)
  %12 = call i32 @ESP_ERROR_CHECK(i32 %11)
  %13 = load i32, i32* @WIFI_EVENT, align 4
  %14 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %15 = call i32 @esp_event_handler_register(i32 %13, i32 %14, i32* @event_handler, i32* null)
  %16 = call i32 @ESP_ERROR_CHECK(i32 %15)
  %17 = load i32, i32* @IP_EVENT, align 4
  %18 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %19 = call i32 @esp_event_handler_register(i32 %17, i32 %18, i32* @event_handler, i32* null)
  %20 = call i32 @ESP_ERROR_CHECK(i32 %19)
  %21 = load i32, i32* @SC_EVENT, align 4
  %22 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %23 = call i32 @esp_event_handler_register(i32 %21, i32 %22, i32* @event_handler, i32* null)
  %24 = call i32 @ESP_ERROR_CHECK(i32 %23)
  %25 = load i32, i32* @WIFI_MODE_STA, align 4
  %26 = call i32 @esp_wifi_set_mode(i32 %25)
  %27 = call i32 @ESP_ERROR_CHECK(i32 %26)
  %28 = call i32 (...) @esp_wifi_start()
  %29 = call i32 @ESP_ERROR_CHECK(i32 %28)
  ret void
}

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @xEventGroupCreate(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32* @esp_netif_create_default_wifi_sta(...) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @esp_wifi_init(i32*) #1

declare dso_local i32 @esp_event_handler_register(i32, i32, i32*, i32*) #1

declare dso_local i32 @esp_wifi_set_mode(i32) #1

declare dso_local i32 @esp_wifi_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
