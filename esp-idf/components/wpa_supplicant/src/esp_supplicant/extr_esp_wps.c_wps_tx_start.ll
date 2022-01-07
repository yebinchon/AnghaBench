; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_tx_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bssid is empty!\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"WPS: Send EAPOL START.\00", align 1
@IEEE802_1X_TYPE_EAPOL_START = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_tx_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wps_sm*, align 8
  %3 = alloca [6 x i32], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %7, %struct.wps_sm** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %9 = call i32 @esp_wifi_get_assoc_bssid_internal(i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @MSG_ERROR, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %1, align 4
  br label %45

16:                                               ; preds = %0
  %17 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %18 = icmp ne %struct.wps_sm* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @ESP_FAIL, align 4
  store i32 %20, i32* %1, align 4
  br label %45

21:                                               ; preds = %16
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %25 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_START, align 4
  %26 = bitcast i32* %5 to i64*
  %27 = call i32* @wps_sm_alloc_eapol(%struct.wps_sm* %24, i32 %25, i32* bitcast ([1 x i8]* @.str.2 to i32*), i32 0, i64* %26, i32* null)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %31, i32* %1, align 4
  br label %45

32:                                               ; preds = %21
  %33 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %35 = load i32, i32* @ETH_P_EAPOL, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @wps_sm_ether_send(%struct.wps_sm* %33, i32* %34, i32 %35, i32* %36, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @wps_sm_free_eapol(i32* %39)
  %41 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %42 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %41, i32 0, i32 0
  %43 = call i32 @ets_timer_arm(i32* %42, i32 3000, i32 0)
  %44 = load i32, i32* @ESP_OK, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %32, %30, %19, %12
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i32 @esp_wifi_get_assoc_bssid_internal(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @wps_sm_alloc_eapol(%struct.wps_sm*, i32, i32*, i32, i64*, i32*) #1

declare dso_local i32 @wps_sm_ether_send(%struct.wps_sm*, i32*, i32, i32*, i32) #1

declare dso_local i32 @wps_sm_free_eapol(i32*) #1

declare dso_local i32 @ets_timer_arm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
