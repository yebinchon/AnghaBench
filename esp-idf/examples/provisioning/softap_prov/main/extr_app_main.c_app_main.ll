; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/softap_prov/main/extr_app_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/softap_prov/main/extr_app_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error getting device provisioning state\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Starting WiFi SoftAP provisioning\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Starting WiFi station\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @esp_netif_init()
  %4 = call i32 (...) @esp_event_loop_create_default()
  %5 = call i32 @ESP_ERROR_CHECK(i32 %4)
  %6 = call i32 (...) @nvs_flash_init()
  %7 = call i32 @ESP_ERROR_CHECK(i32 %6)
  %8 = call i32 (...) @esp_netif_create_default_wifi_sta()
  %9 = call i32 (...) @esp_netif_create_default_wifi_ap()
  %10 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  store i32 %10, i32* %1, align 4
  %11 = call i32 @esp_wifi_init(i32* %1)
  %12 = call i32 @ESP_ERROR_CHECK(i32 %11)
  %13 = call i64 @app_prov_is_provisioned(i32* %2)
  %14 = load i64, i64* @ESP_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %30

19:                                               ; preds = %0
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (...) @start_softap_provisioning()
  br label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 (...) @wifi_init_sta()
  br label %30

30:                                               ; preds = %16, %26, %22
  ret void
}

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_event_loop_create_default(...) #1

declare dso_local i32 @nvs_flash_init(...) #1

declare dso_local i32 @esp_netif_create_default_wifi_sta(...) #1

declare dso_local i32 @esp_netif_create_default_wifi_ap(...) #1

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @esp_wifi_init(i32*) #1

declare dso_local i64 @app_prov_is_provisioned(i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @start_softap_provisioning(...) #1

declare dso_local i32 @wifi_init_sta(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
