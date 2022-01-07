; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_eap_sm_send_eapol.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_eap_sm_send_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bssid is empty \0A\00", align 1
@WPA_ERR_INVALID_BSSID = common dso_local global i32 0, align 4
@IEEE802_1X_TYPE_EAP_PACKET = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sm_send_eapol(%struct.eap_sm* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [6 x i32], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i32* null, i32** %8, align 8
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %11 = call i32 @esp_wifi_get_assoc_bssid_internal(i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @WPA_ERR_INVALID_BSSID, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %20 = load i32, i32* @IEEE802_1X_TYPE_EAP_PACKET, align 4
  %21 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %22 = call i32 @wpabuf_head_u8(%struct.wpabuf* %21)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %24 = call i32 @wpabuf_len(%struct.wpabuf* %23)
  %25 = call i32* @wpa2_sm_alloc_eapol(%struct.eap_sm* %19, i32 %20, i32 %22, i32 %24, i64* %6, i32* null)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %18
  %31 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %33 = load i32, i32* @ETH_P_EAPOL, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @wpa2_sm_ether_send(%struct.eap_sm* %31, i32* %32, i32 %33, i32* %34, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @wpa2_sm_free_eapol(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @ESP_FAIL, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %30
  %44 = load i32, i32* @ESP_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41, %28, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @esp_wifi_get_assoc_bssid_internal(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @wpa2_sm_alloc_eapol(%struct.eap_sm*, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa2_sm_ether_send(%struct.eap_sm*, i32*, i32, i32*, i64) #1

declare dso_local i32 @wpa2_sm_free_eapol(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
