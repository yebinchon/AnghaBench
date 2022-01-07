; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/ble_prov/main/extr_app_prov.c_app_prov_start_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/ble_prov/main/extr_app_prov.c_app_prov_start_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32 }

@g_prov = common dso_local global %struct.TYPE_7__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create new protocomm instance\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"prov-session\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"prov-config\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"proto-ver\00", align 1
@WIFI_IF_STA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"%s%02X%02X%02X\00", align 1
@ssid_prefix = common dso_local global i8* null, align 8
@ESP_BT_MODE_CLASSIC_BT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"bt_controller_mem_release failed %d\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to start BLE provisioning\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"V0.1\00", align 1
@protocomm_security0 = common dso_local global i32 0, align 4
@protocomm_security1 = common dso_local global i32 0, align 4
@wifi_prov_config_data_handler = common dso_local global i32 0, align 4
@wifi_prov_handlers = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to set provisioning endpoint\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Provisioning started with BLE devname : '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @app_prov_start_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @app_prov_start_service() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [3 x %struct.TYPE_5__], align 16
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i64, align 8
  %6 = call i32* (...) @protocomm_new()
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32* %6, i32** %8, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @TAG, align 4
  %15 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @ESP_FAIL, align 8
  store i64 %16, i64* %1, align 8
  br label %122

17:                                               ; preds = %0
  %18 = bitcast [3 x %struct.TYPE_5__]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 48, i1 false)
  %19 = bitcast i8* %18 to [3 x %struct.TYPE_5__]*
  %20 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %19, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 2, i32* %25, align 8
  %26 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %19, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8** %27, align 16
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 3, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 3, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %32 = getelementptr inbounds [3 x %struct.TYPE_5__], [3 x %struct.TYPE_5__]* %2, i64 0, i64 0
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 180, i32* %33, align 8
  %34 = load i32, i32* @WIFI_IF_STA, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %36 = call i32 @esp_wifi_get_mac(i32 %34, i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** @ssid_prefix, align 8
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 4
  %43 = load i32, i32* %42, align 16
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @snprintf(i32 %38, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %39, i32 %41, i32 %43, i32 %45)
  %47 = load i32, i32* @ESP_BT_MODE_CLASSIC_BT, align 4
  %48 = call i64 @esp_bt_controller_mem_release(i32 %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %17
  %52 = load i32, i32* @TAG, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* %5, align 8
  store i64 %59, i64* %1, align 8
  br label %122

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %17
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @protocomm_ble_start(i32* %64, %struct.TYPE_6__* %3)
  %66 = load i64, i64* @ESP_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @TAG, align 4
  %70 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %71 = load i64, i64* @ESP_FAIL, align 8
  store i64 %71, i64* %1, align 8
  br label %122

72:                                               ; preds = %61
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @protocomm_set_version(i32* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @protocomm_set_security(i32* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* @protocomm_security0, i32* null)
  br label %100

86:                                               ; preds = %72
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @protocomm_set_security(i32* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* @protocomm_security1, i32* %97)
  br label %99

99:                                               ; preds = %91, %86
  br label %100

100:                                              ; preds = %99, %81
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @wifi_prov_config_data_handler, align 4
  %105 = call i64 @protocomm_add_endpoint(i32* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %104, i8* bitcast (i32* @wifi_prov_handlers to i8*))
  %106 = load i64, i64* @ESP_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load i32, i32* @TAG, align 4
  %110 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @g_prov, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @protocomm_ble_stop(i32* %113)
  %115 = load i64, i64* @ESP_FAIL, align 8
  store i64 %115, i64* %1, align 8
  br label %122

116:                                              ; preds = %100
  %117 = load i32, i32* @TAG, align 4
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ESP_LOGI(i32 %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  %121 = load i64, i64* @ESP_OK, align 8
  store i64 %121, i64* %1, align 8
  br label %122

122:                                              ; preds = %116, %108, %68, %58, %13
  %123 = load i64, i64* %1, align 8
  ret i64 %123
}

declare dso_local i32* @protocomm_new(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @esp_wifi_get_mac(i32, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @esp_bt_controller_mem_release(i32) #1

declare dso_local i64 @protocomm_ble_start(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @protocomm_set_version(i32*, i8*, i8*) #1

declare dso_local i32 @protocomm_set_security(i32*, i8*, i32*, i32*) #1

declare dso_local i64 @protocomm_add_endpoint(i32*, i8*, i32, i8*) #1

declare dso_local i32 @protocomm_ble_stop(i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
