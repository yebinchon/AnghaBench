; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_handlers.c_get_status_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_handlers.c_get_status_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i64 }

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Wi-Fi provisioning manager not running\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@WIFI_PROV_STA_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Got state : connected\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"WIFI_STA_DEF\00", align 1
@WIFI_PROV_STA_DISCONNECTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Got state : disconnected\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Got state : connecting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32**)* @get_status_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_status_handler(%struct.TYPE_10__* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = call i32 @memset(%struct.TYPE_10__* %8, i32 0, i32 32)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = call i64 @wifi_prov_mgr_get_wifi_state(i64* %11)
  %13 = load i64, i64* @ESP_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 @ESP_LOGW(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %18, i64* %3, align 8
  br label %82

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WIFI_PROV_STA_CONNECTED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %19
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 @ESP_LOGD(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @esp_netif_get_handle_from_ifkey(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @esp_netif_get_ip_info(i32 %28, %struct.TYPE_12__* %6)
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @esp_ip4addr_ntoa(i32* %30, i32 %34, i32 4)
  %36 = call i32 @esp_wifi_sta_get_ap_info(%struct.TYPE_11__* %7)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @memcpy(i32 %40, i8* %43, i32 8)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @memcpy(i32 %48, i8* %51, i32 8)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = call i32 (...) @wifi_prov_mgr_done()
  br label %80

64:                                               ; preds = %19
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WIFI_PROV_STA_DISCONNECTED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 @ESP_LOGD(i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = call i32 @wifi_prov_mgr_get_wifi_disconnect_reason(i32* %74)
  br label %79

76:                                               ; preds = %64
  %77 = load i32, i32* @TAG, align 4
  %78 = call i32 @ESP_LOGD(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %70
  br label %80

80:                                               ; preds = %79, %25
  %81 = load i64, i64* @ESP_OK, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %80, %15
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @wifi_prov_mgr_get_wifi_state(i64*) #1

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @esp_netif_get_ip_info(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @esp_netif_get_handle_from_ifkey(i8*) #1

declare dso_local i32 @esp_ip4addr_ntoa(i32*, i32, i32) #1

declare dso_local i32 @esp_wifi_sta_get_ap_info(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @wifi_prov_mgr_done(...) #1

declare dso_local i32 @wifi_prov_mgr_get_wifi_disconnect_reason(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
