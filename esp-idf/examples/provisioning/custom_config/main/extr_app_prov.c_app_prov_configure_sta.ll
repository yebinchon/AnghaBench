; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/custom_config/main/extr_app_prov.c_app_prov_configure_sta.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/custom_config/main/extr_app_prov.c_app_prov_configure_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@WIFI_MODE_APSTA = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to set WiFi mode\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_IF_WIFI_STA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to set WiFi configuration\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to restart WiFi\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to connect WiFi\00", align 1
@g_prov = common dso_local global %struct.TYPE_2__* null, align 8
@WIFI_PROV_STA_CONNECTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @app_prov_configure_sta(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @WIFI_MODE_APSTA, align 4
  %5 = call i64 @esp_wifi_set_mode(i32 %4)
  %6 = load i64, i64* @ESP_OK, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGE(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @ESP_FAIL, align 8
  store i64 %11, i64* %2, align 8
  br label %47

12:                                               ; preds = %1
  %13 = load i32, i32* @ESP_IF_WIFI_STA, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @esp_wifi_set_config(i32 %13, i32* %14)
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @ESP_LOGE(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @ESP_FAIL, align 8
  store i64 %21, i64* %2, align 8
  br label %47

22:                                               ; preds = %12
  %23 = call i64 (...) @esp_wifi_start()
  %24 = load i64, i64* @ESP_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i64, i64* @ESP_FAIL, align 8
  store i64 %29, i64* %2, align 8
  br label %47

30:                                               ; preds = %22
  %31 = call i64 (...) @esp_wifi_connect()
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i64, i64* @ESP_FAIL, align 8
  store i64 %37, i64* %2, align 8
  br label %47

38:                                               ; preds = %30
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @WIFI_PROV_STA_CONNECTING, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i64, i64* @ESP_OK, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %45, %34, %26, %18, %8
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local i64 @esp_wifi_set_mode(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i64 @esp_wifi_set_config(i32, i32*) #1

declare dso_local i64 @esp_wifi_start(...) #1

declare dso_local i64 @esp_wifi_connect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
