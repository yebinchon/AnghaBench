; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/custom_config/main/extr_app_prov.c_app_prov_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/custom_config/main/extr_app_prov.c_app_prov_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@g_prov = common dso_local global %struct.TYPE_4__* null, align 8
@WIFI_EVENT = common dso_local global i64 0, align 8
@WIFI_EVENT_STA_START = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"STA Start\00", align 1
@WIFI_PROV_STA_CONNECTING = common dso_local global i8* null, align 8
@IP_EVENT = common dso_local global i64 0, align 8
@IP_EVENT_STA_GOT_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"STA Got IP\00", align 1
@WIFI_PROV_STA_CONNECTED = common dso_local global i8* null, align 8
@WIFI_EVENT_STA_DISCONNECTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"STA Disconnected\00", align 1
@WIFI_PROV_STA_DISCONNECTED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Disconnect reason : %d\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"STA Auth Error\00", align 1
@WIFI_PROV_STA_AUTH_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"STA AP Not found\00", align 1
@WIFI_PROV_STA_AP_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i8*)* @app_prov_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @app_prov_event_handler(i8* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %98

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @WIFI_EVENT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @WIFI_EVENT_STA_START, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGI(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** @WIFI_PROV_STA_CONNECTING, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %98

27:                                               ; preds = %17, %13
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @IP_EVENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @IP_EVENT_STA_GOT_IP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i32, i32* @TAG, align 4
  %37 = call i32 @ESP_LOGI(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** @WIFI_PROV_STA_CONNECTED, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @esp_timer_start_once(i64 %51, i32 30000000)
  br label %53

53:                                               ; preds = %48, %43, %35
  br label %97

54:                                               ; preds = %31, %27
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @WIFI_EVENT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @WIFI_EVENT_STA_DISCONNECTED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i32, i32* @TAG, align 4
  %64 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i8*, i8** @WIFI_PROV_STA_DISCONNECTED, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = bitcast i8* %68 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %69, %struct.TYPE_3__** %9, align 8
  %70 = load i32, i32* @TAG, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %90 [
    i32 132, label %78
    i32 134, label %78
    i32 130, label %78
    i32 131, label %78
    i32 133, label %78
    i32 129, label %78
    i32 128, label %84
  ]

78:                                               ; preds = %62, %62, %62, %62, %62, %62
  %79 = load i32, i32* @TAG, align 4
  %80 = call i32 @ESP_LOGI(i32 %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @WIFI_PROV_STA_AUTH_ERROR, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %95

84:                                               ; preds = %62
  %85 = load i32, i32* @TAG, align 4
  %86 = call i32 @ESP_LOGI(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @WIFI_PROV_STA_AP_NOT_FOUND, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  br label %95

90:                                               ; preds = %62
  %91 = load i8*, i8** @WIFI_PROV_STA_CONNECTING, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_prov, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = call i32 (...) @esp_wifi_connect()
  br label %95

95:                                               ; preds = %90, %84, %78
  br label %96

96:                                               ; preds = %95, %58, %54
  br label %97

97:                                               ; preds = %96, %53
  br label %98

98:                                               ; preds = %12, %97, %21
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_timer_start_once(i64, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_wifi_connect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
