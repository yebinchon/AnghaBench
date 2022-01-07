; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/mesh/internal_communication/main/extr_mesh_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/mesh/internal_communication/main/extr_mesh_main.c_app_main.c"
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
@CONFIG_MESH_MAX_LAYER = common dso_local global i32 0, align 4
@MESH_ID = common dso_local global i32 0, align 4
@CONFIG_MESH_CHANNEL = common dso_local global i32 0, align 4
@CONFIG_MESH_ROUTER_SSID = common dso_local global i32 0, align 4
@CONFIG_MESH_ROUTER_PASSWD = common dso_local global i32 0, align 4
@CONFIG_MESH_AP_AUTHMODE = common dso_local global i32 0, align 4
@CONFIG_MESH_AP_CONNECTIONS = common dso_local global i32 0, align 4
@CONFIG_MESH_AP_PASSWD = common dso_local global i32 0, align 4
@MESH_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mesh starts successfully, heap:%d, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"root fixed\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"root not fixed\00", align 1

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
  %30 = load i32, i32* @CONFIG_MESH_MAX_LAYER, align 4
  %31 = call i32 @esp_mesh_set_max_layer(i32 %30)
  %32 = call i32 @ESP_ERROR_CHECK(i32 %31)
  %33 = call i32 @esp_mesh_set_vote_percentage(i32 1)
  %34 = call i32 @ESP_ERROR_CHECK(i32 %33)
  %35 = call i32 @esp_mesh_set_ap_assoc_expire(i32 10)
  %36 = call i32 @ESP_ERROR_CHECK(i32 %35)
  call void (%struct.TYPE_8__*, ...) @MESH_INIT_CONFIG_DEFAULT(%struct.TYPE_8__* sret %2)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %38 = load i32, i32* @MESH_ID, align 4
  %39 = call i32 @memcpy(i32* %37, i32 %38, i32 6)
  %40 = load i32, i32* @CONFIG_MESH_CHANNEL, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @CONFIG_MESH_ROUTER_SSID, align 4
  %43 = call i32 @strlen(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load i32, i32* @CONFIG_MESH_ROUTER_SSID, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32* %47, i32 %48, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* @CONFIG_MESH_ROUTER_PASSWD, align 4
  %56 = load i32, i32* @CONFIG_MESH_ROUTER_PASSWD, align 4
  %57 = call i32 @strlen(i32 %56)
  %58 = call i32 @memcpy(i32* %54, i32 %55, i32 %57)
  %59 = load i32, i32* @CONFIG_MESH_AP_AUTHMODE, align 4
  %60 = call i32 @esp_mesh_set_ap_authmode(i32 %59)
  %61 = call i32 @ESP_ERROR_CHECK(i32 %60)
  %62 = load i32, i32* @CONFIG_MESH_AP_CONNECTIONS, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* @CONFIG_MESH_AP_PASSWD, align 4
  %68 = load i32, i32* @CONFIG_MESH_AP_PASSWD, align 4
  %69 = call i32 @strlen(i32 %68)
  %70 = call i32 @memcpy(i32* %66, i32 %67, i32 %69)
  %71 = call i32 @esp_mesh_set_config(%struct.TYPE_8__* %2)
  %72 = call i32 @ESP_ERROR_CHECK(i32 %71)
  %73 = call i32 (...) @esp_mesh_start()
  %74 = call i32 @ESP_ERROR_CHECK(i32 %73)
  %75 = load i32, i32* @MESH_TAG, align 4
  %76 = call i32 (...) @esp_get_free_heap_size()
  %77 = call i64 (...) @esp_mesh_is_root_fixed()
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)
  %81 = call i32 @ESP_LOGI(i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %76, i8* %80)
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

declare dso_local i32 @esp_mesh_set_max_layer(i32) #1

declare dso_local i32 @esp_mesh_set_vote_percentage(i32) #1

declare dso_local i32 @esp_mesh_set_ap_assoc_expire(i32) #1

declare dso_local void @MESH_INIT_CONFIG_DEFAULT(%struct.TYPE_8__* sret, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @esp_mesh_set_ap_authmode(i32) #1

declare dso_local i32 @esp_mesh_set_config(%struct.TYPE_8__*) #1

declare dso_local i32 @esp_mesh_start(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i8*) #1

declare dso_local i32 @esp_get_free_heap_size(...) #1

declare dso_local i64 @esp_mesh_is_root_fixed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
