; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/ble_prov/main/extr_app_prov.c_app_prov_start_ble_provisioning.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/ble_prov/main/extr_app_prov.c_app_prov_start_ble_provisioning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.app_prov_data = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i8*, i32, i32*, i32 }

@g_prov = common dso_local global %struct.app_prov_data* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid provisioning state\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to allocate prov data\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"stop_ble_tm\00", align 1
@ESP_TIMER_TASK = common dso_local global i32 0, align 4
@_stop_prov_cb = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to create timer\00", align 1
@WIFI_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@app_prov_event_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to register WiFi event handler\00", align 1
@IP_EVENT = common dso_local global i32 0, align 4
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to register IP event handler\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Provisioning failed to start\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"BLE Provisioning started\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @app_prov_start_ble_provisioning(i32 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %9 = icmp ne %struct.app_prov_data* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @ESP_FAIL, align 8
  store i64 %13, i64* %3, align 8
  br label %83

14:                                               ; preds = %2
  %15 = call i64 @calloc(i32 1, i32 16)
  %16 = inttoptr i64 %15 to %struct.app_prov_data*
  store %struct.app_prov_data* %16, %struct.app_prov_data** @g_prov, align 8
  %17 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %18 = icmp ne %struct.app_prov_data* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 @ESP_LOGI(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %22, i64* %3, align 8
  br label %83

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %26 = getelementptr inbounds %struct.app_prov_data, %struct.app_prov_data* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %29 = getelementptr inbounds %struct.app_prov_data, %struct.app_prov_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %32 = load i32, i32* @ESP_TIMER_TASK, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %35 = load i32, i32* @_stop_prov_cb, align 4
  store i32 %35, i32* %34, align 8
  %36 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %37 = getelementptr inbounds %struct.app_prov_data, %struct.app_prov_data* %36, i32 0, i32 1
  %38 = call i64 @esp_timer_create(%struct.TYPE_3__* %6, i32* %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %23
  %43 = load i32, i32* @TAG, align 4
  %44 = call i32 @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i64, i64* %7, align 8
  store i64 %45, i64* %3, align 8
  br label %83

46:                                               ; preds = %23
  %47 = load i32, i32* @WIFI_EVENT, align 4
  %48 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %49 = load i32, i32* @app_prov_event_handler, align 4
  %50 = call i64 @esp_event_handler_register(i32 %47, i32 %48, i32 %49, i32* null)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @ESP_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* @TAG, align 4
  %56 = call i32 @ESP_LOGE(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %3, align 8
  br label %83

58:                                               ; preds = %46
  %59 = load i32, i32* @IP_EVENT, align 4
  %60 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %61 = load i32, i32* @app_prov_event_handler, align 4
  %62 = call i64 @esp_event_handler_register(i32 %59, i32 %60, i32 %61, i32* null)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @ESP_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @TAG, align 4
  %68 = call i32 @ESP_LOGE(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %3, align 8
  br label %83

70:                                               ; preds = %58
  %71 = call i64 (...) @app_prov_start_service()
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @ESP_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @TAG, align 4
  %77 = call i32 @ESP_LOGE(i32 %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %3, align 8
  br label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @TAG, align 4
  %81 = call i32 @ESP_LOGI(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i64, i64* @ESP_OK, align 8
  store i64 %82, i64* %3, align 8
  br label %83

83:                                               ; preds = %79, %75, %66, %54, %42, %19, %10
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @esp_timer_create(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @esp_event_handler_register(i32, i32, i32, i32*) #1

declare dso_local i64 @app_prov_start_service(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
