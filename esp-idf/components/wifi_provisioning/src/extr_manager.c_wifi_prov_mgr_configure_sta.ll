; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_configure_sta.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_configure_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@prov_ctx_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Provisioning manager not initialized\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@prov_ctx = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid state of Provisioning app\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@WIFI_PROV_STATE_CRED_RECV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Wi-Fi credentials already received by provisioning app\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Received\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to set Wi-Fi mode\00", align 1
@WIFI_STORAGE_FLASH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to set storage Wi-Fi\00", align 1
@ESP_IF_WIFI_STA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Failed to set Wi-Fi configuration\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed to connect Wi-Fi\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@WIFI_PROV_STA_CONNECTING = common dso_local global i32 0, align 4
@WIFI_PROV_CRED_RECV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wifi_prov_mgr_configure_sta(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %4 = load i32, i32* @prov_ctx_lock, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @TAG, align 4
  %8 = call i32 @ESP_LOGE(i32 %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %9, i64* %2, align 8
  br label %103

10:                                               ; preds = %1
  %11 = load i32, i32* @prov_ctx_lock, align 4
  %12 = call i32 @ACQUIRE_LOCK(i32 %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @prov_ctx, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 @ESP_LOGE(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @prov_ctx_lock, align 4
  %19 = call i32 @RELEASE_LOCK(i32 %18)
  %20 = load i64, i64* @ESP_FAIL, align 8
  store i64 %20, i64* %2, align 8
  br label %103

21:                                               ; preds = %10
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @prov_ctx, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WIFI_PROV_STATE_CRED_RECV, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 @ESP_LOGE(i32 %28, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @prov_ctx_lock, align 4
  %31 = call i32 @RELEASE_LOCK(i32 %30)
  %32 = load i64, i64* @ESP_FAIL, align 8
  store i64 %32, i64* %2, align 8
  br label %103

33:                                               ; preds = %21
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @debug_print_wifi_credentials(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @prov_ctx, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @esp_wifi_set_mode(i32 %42)
  %44 = load i64, i64* @ESP_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load i32, i32* @TAG, align 4
  %48 = call i32 @ESP_LOGE(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @prov_ctx_lock, align 4
  %50 = call i32 @RELEASE_LOCK(i32 %49)
  %51 = load i64, i64* @ESP_FAIL, align 8
  store i64 %51, i64* %2, align 8
  br label %103

52:                                               ; preds = %33
  %53 = load i32, i32* @WIFI_STORAGE_FLASH, align 4
  %54 = call i64 @esp_wifi_set_storage(i32 %53)
  %55 = load i64, i64* @ESP_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @TAG, align 4
  %59 = call i32 @ESP_LOGE(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @prov_ctx_lock, align 4
  %61 = call i32 @RELEASE_LOCK(i32 %60)
  %62 = load i64, i64* @ESP_FAIL, align 8
  store i64 %62, i64* %2, align 8
  br label %103

63:                                               ; preds = %52
  %64 = load i32, i32* @ESP_IF_WIFI_STA, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = call i64 @esp_wifi_set_config(i32 %64, %struct.TYPE_9__* %65)
  %67 = load i64, i64* @ESP_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, i32* @TAG, align 4
  %71 = call i32 @ESP_LOGE(i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %72 = load i32, i32* @prov_ctx_lock, align 4
  %73 = call i32 @RELEASE_LOCK(i32 %72)
  %74 = load i64, i64* @ESP_FAIL, align 8
  store i64 %74, i64* %2, align 8
  br label %103

75:                                               ; preds = %63
  %76 = call i64 (...) @esp_wifi_connect()
  %77 = load i64, i64* @ESP_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @TAG, align 4
  %81 = call i32 @ESP_LOGE(i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i32, i32* @prov_ctx_lock, align 4
  %83 = call i32 @RELEASE_LOCK(i32 %82)
  %84 = load i64, i64* @ESP_FAIL, align 8
  store i64 %84, i64* %2, align 8
  br label %103

85:                                               ; preds = %75
  %86 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %87 = sdiv i32 1000, %86
  %88 = call i32 @vTaskDelay(i32 %87)
  %89 = load i32, i32* @WIFI_PROV_STA_CONNECTING, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @prov_ctx, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load i64, i64* @WIFI_PROV_STATE_CRED_RECV, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @prov_ctx, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* @WIFI_PROV_CRED_RECV, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = bitcast i32* %97 to i8*
  %99 = call i32 @execute_event_cb(i32 %95, i8* %98, i32 4)
  %100 = load i32, i32* @prov_ctx_lock, align 4
  %101 = call i32 @RELEASE_LOCK(i32 %100)
  %102 = load i64, i64* @ESP_OK, align 8
  store i64 %102, i64* %2, align 8
  br label %103

103:                                              ; preds = %85, %79, %69, %57, %46, %27, %15, %6
  %104 = load i64, i64* %2, align 8
  ret i64 %104
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ACQUIRE_LOCK(i32) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i32 @debug_print_wifi_credentials(i32, i8*) #1

declare dso_local i64 @esp_wifi_set_mode(i32) #1

declare dso_local i64 @esp_wifi_set_storage(i32) #1

declare dso_local i64 @esp_wifi_set_config(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @esp_wifi_connect(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @execute_event_cb(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
