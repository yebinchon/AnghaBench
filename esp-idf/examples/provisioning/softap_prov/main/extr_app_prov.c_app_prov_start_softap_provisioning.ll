; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/softap_prov/main/extr_app_prov.c_app_prov_start_softap_provisioning.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/softap_prov/main/extr_app_prov.c_app_prov_start_softap_provisioning.c"
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
@.str.2 = private unnamed_addr constant [15 x i8] c"stop_softap_tm\00", align 1
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
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to start WiFi AP\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to start provisioning app\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"SoftAP Provisioning started with SSID '%s', Password '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @app_prov_start_softap_provisioning(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %13 = icmp ne %struct.app_prov_data* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @ESP_FAIL, align 8
  store i64 %17, i64* %5, align 8
  br label %100

18:                                               ; preds = %4
  %19 = call i64 @calloc(i32 1, i32 16)
  %20 = inttoptr i64 %19 to %struct.app_prov_data*
  store %struct.app_prov_data* %20, %struct.app_prov_data** @g_prov, align 8
  %21 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %22 = icmp ne %struct.app_prov_data* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %26, i64* %5, align 8
  br label %100

27:                                               ; preds = %18
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %30 = getelementptr inbounds %struct.app_prov_data, %struct.app_prov_data* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %33 = getelementptr inbounds %struct.app_prov_data, %struct.app_prov_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %36 = load i32, i32* @ESP_TIMER_TASK, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %39 = load i32, i32* @_stop_prov_cb, align 4
  store i32 %39, i32* %38, align 8
  %40 = load %struct.app_prov_data*, %struct.app_prov_data** @g_prov, align 8
  %41 = getelementptr inbounds %struct.app_prov_data, %struct.app_prov_data* %40, i32 0, i32 1
  %42 = call i64 @esp_timer_create(%struct.TYPE_3__* %10, i32* %41)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @ESP_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = load i32, i32* @TAG, align 4
  %48 = call i32 @ESP_LOGE(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %5, align 8
  br label %100

50:                                               ; preds = %27
  %51 = load i32, i32* @WIFI_EVENT, align 4
  %52 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %53 = load i32, i32* @app_prov_event_handler, align 4
  %54 = call i64 @esp_event_handler_register(i32 %51, i32 %52, i32 %53, i32* null)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @ESP_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @TAG, align 4
  %60 = call i32 @ESP_LOGE(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %5, align 8
  br label %100

62:                                               ; preds = %50
  %63 = load i32, i32* @IP_EVENT, align 4
  %64 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %65 = load i32, i32* @app_prov_event_handler, align 4
  %66 = call i64 @esp_event_handler_register(i32 %63, i32 %64, i32 %65, i32* null)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @ESP_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 @ESP_LOGE(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %5, align 8
  br label %100

74:                                               ; preds = %62
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @start_wifi_ap(i8* %75, i8* %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* @ESP_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @TAG, align 4
  %83 = call i32 @ESP_LOGE(i32 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %5, align 8
  br label %100

85:                                               ; preds = %74
  %86 = call i64 (...) @app_prov_start_service()
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* @ESP_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @TAG, align 4
  %92 = call i32 @ESP_LOGE(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %93 = load i64, i64* %11, align 8
  store i64 %93, i64* %5, align 8
  br label %100

94:                                               ; preds = %85
  %95 = load i32, i32* @TAG, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %95, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* %96, i8* %97)
  %99 = load i64, i64* @ESP_OK, align 8
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %94, %90, %81, %70, %58, %46, %23, %14
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @esp_timer_create(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @esp_event_handler_register(i32, i32, i32, i32*) #1

declare dso_local i64 @start_wifi_ap(i8*, i8*) #1

declare dso_local i64 @app_prov_start_service(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
