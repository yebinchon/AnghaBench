; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_send_eap_identity_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_send_eap_identity_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32, i32 }
%struct.wpabuf = type { i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"wps send eapol id rsp\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bssid is empty!\00", align 1
@IEEE802_1X_TYPE_EAP_PACKET = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ETH_P_EAPOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_send_eap_identity_rsp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_sm*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %10, %struct.wps_sm** %4, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32* null, i32** %7, align 8
  %11 = load i32, i32* @ESP_OK, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %15 = load i32, i32* @EAP_TYPE_IDENTITY, align 4
  %16 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %17 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.wpabuf* @eap_msg_alloc(i32 %14, i32 %15, i32 %18, i32 %19, i32 %20)
  store %struct.wpabuf* %21, %struct.wpabuf** %5, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %23 = icmp ne %struct.wpabuf* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ESP_FAIL, align 4
  store i32 %25, i32* %9, align 4
  br label %68

26:                                               ; preds = %1
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %28 = call i32 @esp_wifi_get_assoc_bssid_internal(i32* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @MSG_ERROR, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ESP_FAIL, align 4
  store i32 %34, i32* %2, align 4
  br label %74

35:                                               ; preds = %26
  %36 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %37 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %38 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %41 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wpabuf_put_data(%struct.wpabuf* %36, i32 %39, i32 %42)
  %44 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %45 = load i32, i32* @IEEE802_1X_TYPE_EAP_PACKET, align 4
  %46 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %47 = call i32 @wpabuf_head_u8(%struct.wpabuf* %46)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %49 = call i32 @wpabuf_len(%struct.wpabuf* %48)
  %50 = bitcast i32* %8 to i64*
  %51 = call i32* @wps_sm_alloc_eapol(%struct.wps_sm* %44, i32 %45, i32 %47, i32 %49, i64* %50, i32* null)
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %35
  %55 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %55, i32* %9, align 4
  br label %68

56:                                               ; preds = %35
  %57 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %59 = load i32, i32* @ETH_P_EAPOL, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @wps_sm_ether_send(%struct.wps_sm* %57, i32* %58, i32 %59, i32* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @ESP_FAIL, align 4
  store i32 %66, i32* %9, align 4
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %65, %54, %24
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @wps_sm_free_eapol(i32* %69)
  %71 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %72 = call i32 @wpabuf_free(%struct.wpabuf* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %31
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @esp_wifi_get_assoc_bssid_internal(i32*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @wps_sm_alloc_eapol(%struct.wps_sm*, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wps_sm_ether_send(%struct.wps_sm*, i32*, i32, i32*, i32) #1

declare dso_local i32 @wps_sm_free_eapol(i32*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
