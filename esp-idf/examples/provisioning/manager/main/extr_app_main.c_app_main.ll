; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/manager/main/extr_app_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/manager/main/extr_app_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i64 0, align 8
@wifi_event_group = common dso_local global i32 0, align 4
@WIFI_PROV_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@event_handler = common dso_local global i32 0, align 4
@WIFI_EVENT = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@WIFI_PROV_SCHEME_BLE_EVENT_HANDLER_FREE_BTDM = common dso_local global i32 0, align 4
@wifi_prov_scheme_ble = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Starting provisioning\00", align 1
@WIFI_PROV_SECURITY_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"abcd1234\00", align 1
@__const.app_main.custom_service_uuid = private unnamed_addr constant [16 x i32] [i32 33, i32 67, i32 101, i32 135, i32 9, i32 186, i32 220, i32 254, i32 239, i32 205, i32 171, i32 144, i32 120, i32 86, i32 52, i32 18], align 16
@.str.2 = private unnamed_addr constant [40 x i8] c"Already provisioned, starting Wi-Fi STA\00", align 1
@WIFI_CONNECTED_EVENT = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i32, align 4
  %5 = alloca [12 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = call i64 (...) @nvs_flash_init()
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @ESP_ERR_NVS_NO_FREE_PAGES, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %0
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @ESP_ERR_NVS_NEW_VERSION_FOUND, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %0
  %19 = call i64 (...) @nvs_flash_erase()
  %20 = call i32 @ESP_ERROR_CHECK(i64 %19)
  %21 = call i64 (...) @nvs_flash_init()
  %22 = call i32 @ESP_ERROR_CHECK(i64 %21)
  br label %23

23:                                               ; preds = %18, %14
  %24 = call i32 (...) @esp_netif_init()
  %25 = call i64 (...) @esp_event_loop_create_default()
  %26 = call i32 @ESP_ERROR_CHECK(i64 %25)
  %27 = call i32 (...) @xEventGroupCreate()
  store i32 %27, i32* @wifi_event_group, align 4
  %28 = load i32, i32* @WIFI_PROV_EVENT, align 4
  %29 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %30 = call i64 @esp_event_handler_register(i32 %28, i32 %29, i32* @event_handler, i32* null)
  %31 = call i32 @ESP_ERROR_CHECK(i64 %30)
  %32 = load i32, i32* @WIFI_EVENT, align 4
  %33 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %34 = call i64 @esp_event_handler_register(i32 %32, i32 %33, i32* @event_handler, i32* null)
  %35 = call i32 @ESP_ERROR_CHECK(i64 %34)
  %36 = load i32, i32* @IP_EVENT, align 4
  %37 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %38 = call i64 @esp_event_handler_register(i32 %36, i32 %37, i32* @event_handler, i32* null)
  %39 = call i32 @ESP_ERROR_CHECK(i64 %38)
  %40 = call i32 (...) @esp_netif_create_default_wifi_sta()
  %41 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  store i32 %41, i32* %2, align 4
  %42 = call i64 @esp_wifi_init(i32* %2)
  %43 = call i32 @ESP_ERROR_CHECK(i64 %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %45 = load i32, i32* @WIFI_PROV_SCHEME_BLE_EVENT_HANDLER_FREE_BTDM, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %47 = load i32, i32* @wifi_prov_scheme_ble, align 4
  store i32 %47, i32* %46, align 4
  %48 = bitcast %struct.TYPE_3__* %3 to i64*
  %49 = load i64, i64* %48, align 4
  %50 = call i64 @wifi_prov_mgr_init(i64 %49)
  %51 = call i32 @ESP_ERROR_CHECK(i64 %50)
  store i32 0, i32* %4, align 4
  %52 = call i64 @wifi_prov_mgr_is_provisioned(i32* %4)
  %53 = call i32 @ESP_ERROR_CHECK(i64 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %23
  %57 = load i32, i32* @TAG, align 4
  %58 = call i32 @ESP_LOGI(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %59 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %60 = call i32 @get_device_service_name(i8* %59, i32 12)
  %61 = load i32, i32* @WIFI_PROV_SECURITY_1, align 4
  store i32 %61, i32* %6, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* null, i8** %8, align 8
  %62 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %62, i8* align 16 bitcast ([16 x i32]* @__const.app_main.custom_service_uuid to i8*), i64 64, i1 false)
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %64 = call i32 @wifi_prov_scheme_ble_set_service_uuid(i32* %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %68 = load i8*, i8** %8, align 8
  %69 = call i64 @wifi_prov_mgr_start_provisioning(i32 %65, i8* %66, i8* %67, i8* %68)
  %70 = call i32 @ESP_ERROR_CHECK(i64 %69)
  br label %76

71:                                               ; preds = %23
  %72 = load i32, i32* @TAG, align 4
  %73 = call i32 @ESP_LOGI(i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 (...) @wifi_prov_mgr_deinit()
  %75 = call i32 (...) @wifi_init_sta()
  br label %76

76:                                               ; preds = %71, %56
  %77 = load i32, i32* @wifi_event_group, align 4
  %78 = load i32, i32* @WIFI_CONNECTED_EVENT, align 4
  %79 = load i32, i32* @portMAX_DELAY, align 4
  %80 = call i32 @xEventGroupWaitBits(i32 %77, i32 %78, i32 0, i32 1, i32 %79)
  br label %81

81:                                               ; preds = %76, %81
  %82 = load i32, i32* @TAG, align 4
  %83 = call i32 @ESP_LOGI(i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %85 = sdiv i32 1000, %84
  %86 = call i32 @vTaskDelay(i32 %85)
  br label %81
}

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i64 @esp_event_loop_create_default(...) #1

declare dso_local i32 @xEventGroupCreate(...) #1

declare dso_local i64 @esp_event_handler_register(i32, i32, i32*, i32*) #1

declare dso_local i32 @esp_netif_create_default_wifi_sta(...) #1

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i64 @esp_wifi_init(i32*) #1

declare dso_local i64 @wifi_prov_mgr_init(i64) #1

declare dso_local i64 @wifi_prov_mgr_is_provisioned(i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @get_device_service_name(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wifi_prov_scheme_ble_set_service_uuid(i32*) #1

declare dso_local i64 @wifi_prov_mgr_start_provisioning(i32, i8*, i8*, i8*) #1

declare dso_local i32 @wifi_prov_mgr_deinit(...) #1

declare dso_local i32 @wifi_init_sta(...) #1

declare dso_local i32 @xEventGroupWaitBits(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
