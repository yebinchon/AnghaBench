; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_send_frag_ack.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_send_frag_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32 }
%struct.wpabuf = type { i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@WSC_FRAG_ACK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"send frag ack id:%d\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bssid is empty!\00", align 1
@EAP_VENDOR_WFA = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@IEEE802_1X_TYPE_EAP_PACKET = common dso_local global i32 0, align 4
@ETH_P_EAPOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_send_frag_ack(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_sm*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %11, %struct.wps_sm** %4, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @WSC_FRAG_ACK, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %17 = icmp ne %struct.wps_sm* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ESP_FAIL, align 4
  store i32 %19, i32* %2, align 4
  br label %74

20:                                               ; preds = %1
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %22 = call i32 @esp_wifi_get_assoc_bssid_internal(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @MSG_ERROR, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %2, align 4
  br label %74

29:                                               ; preds = %20
  %30 = load i32, i32* @EAP_VENDOR_WFA, align 4
  %31 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call %struct.wpabuf* @eap_msg_alloc(i32 %30, i32 1, i32 2, i32 %31, i32 %32)
  store %struct.wpabuf* %33, %struct.wpabuf** %5, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %35 = icmp ne %struct.wpabuf* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %37, i32* %9, align 4
  br label %70

38:                                               ; preds = %29
  %39 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @wpabuf_put_u8(%struct.wpabuf* %39, i32 %40)
  %42 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %43 = call i32 @wpabuf_put_u8(%struct.wpabuf* %42, i32 0)
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

54:                                               ; preds = %38
  %55 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %55, i32* %9, align 4
  br label %70

56:                                               ; preds = %38
  %57 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %59 = load i32, i32* @ETH_P_EAPOL, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @wps_sm_ether_send(%struct.wps_sm* %57, i32* %58, i32 %59, i32* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @wps_sm_free_eapol(i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %68, i32* %9, align 4
  br label %70

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %67, %54, %36
  %71 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %72 = call i32 @wpabuf_free(%struct.wpabuf* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %25, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @esp_wifi_get_assoc_bssid_internal(i32*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

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
