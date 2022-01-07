; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/mesh/manual_networking/main/extr_mesh_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/mesh/manual_networking/main/extr_mesh_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@netif_sta = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@ip_event_handler = common dso_local global i32 0, align 4
@WIFI_STORAGE_FLASH = common dso_local global i32 0, align 4
@MESH_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@mesh_event_handler = common dso_local global i32 0, align 4
@MESH_ID = common dso_local global i32 0, align 4
@CONFIG_MESH_CHANNEL = common dso_local global i32 0, align 4
@CONFIG_MESH_ROUTER_SSID = common dso_local global i32 0, align 4
@CONFIG_MESH_ROUTER_PASSWD = common dso_local global i32 0, align 4
@CONFIG_MESH_AP_AUTHMODE = common dso_local global i32 0, align 4
@CONFIG_MESH_AP_CONNECTIONS = common dso_local global i32 0, align 4
@CONFIG_MESH_AP_PASSWD = common dso_local global i32 0, align 4
@MESH_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"mesh starts successfully, heap:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = call i32 (...) @mesh_light_init()
  %4 = call i32 @ESP_ERROR_CHECK(i32 %3)
  %5 = call i32 (...) @nvs_flash_init()
  %6 = call i32 @ESP_ERROR_CHECK(i32 %5)
  %7 = call i32 (...) @esp_netif_init()
  %8 = call i32 (...) @esp_event_loop_create_default()
  %9 = call i32 @ESP_ERROR_CHECK(i32 %8)
  %10 = call i32 @esp_netif_create_default_wifi_mesh_netifs(i32* @netif_sta, i32* null)
  %11 = call i32 @ESP_ERROR_CHECK(i32 %10)
  %12 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  store i32 %12, i32* %1, align 4
  %13 = call i32 @esp_wifi_init(i32* %1)
  %14 = call i32 @ESP_ERROR_CHECK(i32 %13)
  %15 = load i32, i32* @IP_EVENT, align 4
  %16 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %17 = call i32 @esp_event_handler_register(i32 %15, i32 %16, i32* @ip_event_handler, i32* null)
  %18 = call i32 @ESP_ERROR_CHECK(i32 %17)
  %19 = load i32, i32* @WIFI_STORAGE_FLASH, align 4
  %20 = call i32 @esp_wifi_set_storage(i32 %19)
  %21 = call i32 @ESP_ERROR_CHECK(i32 %20)
  %22 = call i32 (...) @esp_wifi_start()
  %23 = call i32 @ESP_ERROR_CHECK(i32 %22)
  %24 = call i32 (...) @esp_mesh_init()
  %25 = call i32 @ESP_ERROR_CHECK(i32 %24)
  %26 = load i32, i32* @MESH_EVENT, align 4
  %27 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %28 = call i32 @esp_event_handler_register(i32 %26, i32 %27, i32* @mesh_event_handler, i32* null)
  %29 = call i32 @ESP_ERROR_CHECK(i32 %28)
  call void (%struct.TYPE_8__*, ...) @MESH_INIT_CONFIG_DEFAULT(%struct.TYPE_8__* sret %2)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %31 = load i32, i32* @MESH_ID, align 4
  %32 = call i32 @memcpy(i32* %30, i32 %31, i32 6)
  %33 = load i32, i32* @CONFIG_MESH_CHANNEL, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @CONFIG_MESH_ROUTER_SSID, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* @CONFIG_MESH_ROUTER_SSID, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcpy(i32* %40, i32 %41, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* @CONFIG_MESH_ROUTER_PASSWD, align 4
  %49 = load i32, i32* @CONFIG_MESH_ROUTER_PASSWD, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = call i32 @memcpy(i32* %47, i32 %48, i32 %50)
  %52 = load i32, i32* @CONFIG_MESH_AP_AUTHMODE, align 4
  %53 = call i32 @esp_mesh_set_ap_authmode(i32 %52)
  %54 = call i32 @ESP_ERROR_CHECK(i32 %53)
  %55 = load i32, i32* @CONFIG_MESH_AP_CONNECTIONS, align 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* @CONFIG_MESH_AP_PASSWD, align 4
  %61 = load i32, i32* @CONFIG_MESH_AP_PASSWD, align 4
  %62 = call i32 @strlen(i32 %61)
  %63 = call i32 @memcpy(i32* %59, i32 %60, i32 %62)
  %64 = call i32 @esp_mesh_set_config(%struct.TYPE_8__* %2)
  %65 = call i32 @ESP_ERROR_CHECK(i32 %64)
  %66 = call i32 (...) @esp_mesh_start()
  %67 = call i32 @ESP_ERROR_CHECK(i32 %66)
  %68 = load i32, i32* @MESH_TAG, align 4
  %69 = call i32 (...) @esp_get_free_heap_size()
  %70 = call i32 @ESP_LOGI(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %69)
  ret void
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @mesh_light_init(...) #1

declare dso_local i32 @nvs_flash_init(...) #1

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32 @esp_netif_create_default_wifi_mesh_netifs(i32*, i32*) #1

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @esp_wifi_init(i32*) #1

declare dso_local i32 @esp_event_handler_register(i32, i32, i32*, i32*) #1

declare dso_local i32 @esp_wifi_set_storage(i32) #1

declare dso_local i32 @esp_wifi_start(...) #1

declare dso_local i32 @esp_mesh_init(...) #1

declare dso_local void @MESH_INIT_CONFIG_DEFAULT(%struct.TYPE_8__* sret, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @esp_mesh_set_ap_authmode(i32) #1

declare dso_local i32 @esp_mesh_set_config(%struct.TYPE_8__*) #1

declare dso_local i32 @esp_mesh_start(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

declare dso_local i32 @esp_get_free_heap_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
