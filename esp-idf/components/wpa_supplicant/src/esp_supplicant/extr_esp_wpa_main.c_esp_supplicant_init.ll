; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa_main.c_esp_supplicant_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa_main.c_esp_supplicant_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_funcs = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@wpa_attach = common dso_local global i32 0, align 4
@wpa_deattach = common dso_local global i32 0, align 4
@wpa_sm_rx_eapol = common dso_local global i32 0, align 4
@wpa_sta_connect = common dso_local global i32 0, align 4
@wpa_sta_in_4way_handshake = common dso_local global i32 0, align 4
@wpa_ap_join = common dso_local global i32 0, align 4
@wpa_ap_remove = common dso_local global i32 0, align 4
@wpa_ap_get_wpa_ie = common dso_local global i32 0, align 4
@wpa_ap_rx_eapol = common dso_local global i32 0, align 4
@hostap_init = common dso_local global i32 0, align 4
@hostap_deinit = common dso_local global i32 0, align 4
@wpa_config_parse_string = common dso_local global i32 0, align 4
@wpa_parse_wpa_ie_wrapper = common dso_local global i32 0, align 4
@wpa_michael_mic_failure = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_supplicant_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wpa_funcs*, align 8
  %3 = call i64 @os_malloc(i32 72)
  %4 = inttoptr i64 %3 to %struct.wpa_funcs*
  store %struct.wpa_funcs* %4, %struct.wpa_funcs** %2, align 8
  %5 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %6 = icmp ne %struct.wpa_funcs* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %8, i32* %1, align 4
  br label %57

9:                                                ; preds = %0
  %10 = load i32, i32* @wpa_attach, align 4
  %11 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %11, i32 0, i32 14
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @wpa_deattach, align 4
  %14 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %15 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %14, i32 0, i32 13
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @wpa_sm_rx_eapol, align 4
  %17 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %18 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @wpa_sta_connect, align 4
  %20 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %21 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @wpa_sta_in_4way_handshake, align 4
  %23 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @wpa_ap_join, align 4
  %26 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %27 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @wpa_ap_remove, align 4
  %29 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %30 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @wpa_ap_get_wpa_ie, align 4
  %32 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %33 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @wpa_ap_rx_eapol, align 4
  %35 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %36 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @hostap_init, align 4
  %38 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %39 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @hostap_deinit, align 4
  %41 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %42 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @wpa_config_parse_string, align 4
  %44 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %45 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @wpa_parse_wpa_ie_wrapper, align 4
  %47 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %48 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %50 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* @wpa_michael_mic_failure, align 4
  %52 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %53 = getelementptr inbounds %struct.wpa_funcs, %struct.wpa_funcs* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.wpa_funcs*, %struct.wpa_funcs** %2, align 8
  %55 = call i32 @esp_wifi_register_wpa_cb_internal(%struct.wpa_funcs* %54)
  %56 = load i32, i32* @ESP_OK, align 4
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %9, %7
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i64 @os_malloc(i32) #1

declare dso_local i32 @esp_wifi_register_wpa_cb_internal(%struct.wpa_funcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
