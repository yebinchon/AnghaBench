; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_send_wps_mX_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_send_wps_mX_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32 }
%struct.wpabuf = type { i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"wps send wps mX rsp\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bssid is empty!\00", align 1
@EAP_VENDOR_WFA = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@IEEE802_1X_TYPE_EAP_PACKET = common dso_local global i32 0, align 4
@ETH_P_EAPOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_send_wps_mX_rsp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_sm*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %12, %struct.wps_sm** %4, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %16 = icmp ne %struct.wps_sm* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ESP_FAIL, align 4
  store i32 %18, i32* %2, align 4
  br label %94

19:                                               ; preds = %1
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %21 = call i32 @esp_wifi_get_assoc_bssid_internal(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @MSG_ERROR, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %19
  %29 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %30 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wps_enrollee_get_msg(i32 %31, i32* %11)
  %33 = inttoptr i64 %32 to %struct.wpabuf*
  store %struct.wpabuf* %33, %struct.wpabuf** %6, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %35 = icmp ne %struct.wpabuf* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ESP_FAIL, align 4
  store i32 %37, i32* %10, align 4
  br label %90

38:                                               ; preds = %28
  %39 = load i32, i32* @EAP_VENDOR_WFA, align 4
  %40 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %41 = call i64 @wpabuf_len(%struct.wpabuf* %40)
  %42 = add nsw i64 %41, 2
  %43 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call %struct.wpabuf* @eap_msg_alloc(i32 %39, i32 1, i64 %42, i32 %43, i32 %44)
  store %struct.wpabuf* %45, %struct.wpabuf** %5, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %47 = icmp ne %struct.wpabuf* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %38
  %49 = load i32, i32* @ESP_FAIL, align 4
  store i32 %49, i32* %10, align 4
  br label %90

50:                                               ; preds = %38
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @wpabuf_put_u8(%struct.wpabuf* %51, i32 %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %55 = call i32 @wpabuf_put_u8(%struct.wpabuf* %54, i32 0)
  %56 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %58 = call i32 @wpabuf_head_u8(%struct.wpabuf* %57)
  %59 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %60 = call i64 @wpabuf_len(%struct.wpabuf* %59)
  %61 = call i32 @wpabuf_put_data(%struct.wpabuf* %56, i32 %58, i64 %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %63 = call i32 @wpabuf_free(%struct.wpabuf* %62)
  %64 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %65 = load i32, i32* @IEEE802_1X_TYPE_EAP_PACKET, align 4
  %66 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %67 = call i32 @wpabuf_head_u8(%struct.wpabuf* %66)
  %68 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %69 = call i64 @wpabuf_len(%struct.wpabuf* %68)
  %70 = bitcast i32* %9 to i64*
  %71 = call i32* @wps_sm_alloc_eapol(%struct.wps_sm* %64, i32 %65, i32 %67, i64 %69, i64* %70, i32* null)
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %50
  %75 = load i32, i32* @ESP_FAIL, align 4
  store i32 %75, i32* %10, align 4
  br label %90

76:                                               ; preds = %50
  %77 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %78 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %79 = load i32, i32* @ETH_P_EAPOL, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @wps_sm_ether_send(%struct.wps_sm* %77, i32* %78, i32 %79, i32* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @wps_sm_free_eapol(i32* %83)
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @ESP_FAIL, align 4
  store i32 %88, i32* %10, align 4
  br label %90

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %87, %74, %48, %36
  %91 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %92 = call i32 @wpabuf_free(%struct.wpabuf* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %24, %17
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @esp_wifi_get_assoc_bssid_internal(i32*) #1

declare dso_local i64 @wps_enrollee_get_msg(i32, i32*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i64, i32, i32) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i64) #1

declare dso_local i32 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32* @wps_sm_alloc_eapol(%struct.wps_sm*, i32, i32, i64, i64*, i32*) #1

declare dso_local i32 @wps_sm_ether_send(%struct.wps_sm*, i32*, i32, i32*, i32) #1

declare dso_local i32 @wps_sm_free_eapol(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
