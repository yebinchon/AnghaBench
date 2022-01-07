; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_enable_fn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_esp_wifi_sta_wpa2_ent_enable_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa2_funcs = type { i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WPA2 ENTERPRISE VERSION: [%s] enable\0A\00", align 1
@WPA2_VERSION = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"WPA2: no mem for wpa2 cb\0A\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@wpa2_ent_rx_eapol = common dso_local global i32 0, align 4
@wpa2_start_eapol = common dso_local global i32 0, align 4
@eap_peer_sm_init = common dso_local global i32 0, align 4
@eap_peer_sm_deinit = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"WPA2 ENTERPRISE CRYPTO INIT.\0D\0A\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wifi_sta_wpa2_ent_enable_fn(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa2_funcs*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @MSG_INFO, align 4
  %6 = load i32, i32* @WPA2_VERSION, align 4
  %7 = call i32 (i32, i8*, ...) @wpa_printf(i32 %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i64 @os_zalloc(i32 16)
  %9 = inttoptr i64 %8 to %struct.wpa2_funcs*
  store %struct.wpa2_funcs* %9, %struct.wpa2_funcs** %4, align 8
  %10 = load %struct.wpa2_funcs*, %struct.wpa2_funcs** %4, align 8
  %11 = icmp eq %struct.wpa2_funcs* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_ERROR, align 4
  %14 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load i32, i32* @wpa2_ent_rx_eapol, align 4
  %18 = load %struct.wpa2_funcs*, %struct.wpa2_funcs** %4, align 8
  %19 = getelementptr inbounds %struct.wpa2_funcs, %struct.wpa2_funcs* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @wpa2_start_eapol, align 4
  %21 = load %struct.wpa2_funcs*, %struct.wpa2_funcs** %4, align 8
  %22 = getelementptr inbounds %struct.wpa2_funcs, %struct.wpa2_funcs* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @eap_peer_sm_init, align 4
  %24 = load %struct.wpa2_funcs*, %struct.wpa2_funcs** %4, align 8
  %25 = getelementptr inbounds %struct.wpa2_funcs, %struct.wpa2_funcs* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @eap_peer_sm_deinit, align 4
  %27 = load %struct.wpa2_funcs*, %struct.wpa2_funcs** %4, align 8
  %28 = getelementptr inbounds %struct.wpa2_funcs, %struct.wpa2_funcs* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wpa2_funcs*, %struct.wpa2_funcs** %4, align 8
  %30 = call i32 @esp_wifi_register_wpa2_cb_internal(%struct.wpa2_funcs* %29)
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @ESP_OK, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %16, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @esp_wifi_register_wpa2_cb_internal(%struct.wpa2_funcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
