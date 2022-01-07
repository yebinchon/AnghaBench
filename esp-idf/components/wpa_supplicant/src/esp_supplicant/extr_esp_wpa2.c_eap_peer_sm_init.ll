; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_eap_peer_sm_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_eap_peer_sm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32*, i32 }

@gEapSm = common dso_local global %struct.eap_sm* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"WPA2: wpa2 sm not null, deinit it\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@s_wpa2_data_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"wpa2 eap_peer_sm_init: failed to alloc data lock\00", align 1
@WPA2_ENT_EAP_STATE_NOT_START = common dso_local global i32 0, align 4
@WIFI_IF_STA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"eap_peer_blob_init failed\0A\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@g_wpa_private_key_passwd = common dso_local global i32 0, align 4
@g_wpa_private_key_passwd_len = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"eap_peer_config_init failed\0A\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"SSL: Failed to initialize TLS context.\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@SIG_WPA2_MAX = common dso_local global i32 0, align 4
@WPA2_TASK_STACK_SIZE = common dso_local global i32 0, align 4
@s_wifi_wpa2_sync_sem = common dso_local global i32 0, align 4
@s_wpa2_queue = common dso_local global i32 0, align 4
@s_wpa2_task_hdl = common dso_local global i32 0, align 4
@wpa2_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @eap_peer_sm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_peer_sm_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_sm*, align 8
  store i32 0, i32* %2, align 4
  %4 = load %struct.eap_sm*, %struct.eap_sm** @gEapSm, align 8
  %5 = icmp ne %struct.eap_sm* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @MSG_ERROR, align 4
  %8 = call i32 (i32, i8*, ...) @wpa_printf(i32 %7, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @eap_peer_sm_deinit()
  br label %10

10:                                               ; preds = %6, %0
  %11 = call i64 @os_zalloc(i32 24)
  %12 = inttoptr i64 %11 to %struct.eap_sm*
  store %struct.eap_sm* %12, %struct.eap_sm** %3, align 8
  %13 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %14 = icmp eq %struct.eap_sm* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %16, i32* %1, align 4
  br label %82

17:                                               ; preds = %10
  %18 = call i32 (...) @xSemaphoreCreateRecursiveMutex()
  store i32 %18, i32* @s_wpa2_data_lock, align 4
  %19 = load i32, i32* @s_wpa2_data_lock, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @MSG_ERROR, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %24, i32* %1, align 4
  br label %82

25:                                               ; preds = %17
  %26 = load i32, i32* @WPA2_ENT_EAP_STATE_NOT_START, align 4
  %27 = call i32 @wpa2_set_eap_state(i32 %26)
  %28 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %29 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %28, i32 0, i32 0
  store i32 255, i32* %29, align 8
  %30 = load i32, i32* @WIFI_IF_STA, align 4
  %31 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %32 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @esp_wifi_get_macaddr_internal(i32 %30, i32 %33)
  %35 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %36 = call i32 @eap_peer_blob_init(%struct.eap_sm* %35)
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %43 = call i32 @os_free(%struct.eap_sm* %42)
  %44 = load i32, i32* @ESP_FAIL, align 4
  store i32 %44, i32* %1, align 4
  br label %82

45:                                               ; preds = %25
  %46 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %47 = load i32, i32* @g_wpa_private_key_passwd, align 4
  %48 = load i32, i32* @g_wpa_private_key_passwd_len, align 4
  %49 = call i32 @eap_peer_config_init(%struct.eap_sm* %46, i32 %47, i32 %48)
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load i32, i32* @MSG_ERROR, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %56 = call i32 @eap_peer_blob_deinit(%struct.eap_sm* %55)
  %57 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %58 = call i32 @os_free(%struct.eap_sm* %57)
  %59 = load i32, i32* @ESP_FAIL, align 4
  store i32 %59, i32* %1, align 4
  br label %82

60:                                               ; preds = %45
  %61 = call i32* (...) @tls_init()
  %62 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %63 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %65 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load i32, i32* @MSG_WARNING, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %72 = call i32 @eap_peer_blob_deinit(%struct.eap_sm* %71)
  %73 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %74 = call i32 @eap_peer_config_deinit(%struct.eap_sm* %73)
  %75 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  %76 = call i32 @os_free(%struct.eap_sm* %75)
  %77 = load i32, i32* @ESP_FAIL, align 4
  store i32 %77, i32* %1, align 4
  br label %82

78:                                               ; preds = %60
  %79 = call i32 (...) @wpa2_rxq_init()
  %80 = load %struct.eap_sm*, %struct.eap_sm** %3, align 8
  store %struct.eap_sm* %80, %struct.eap_sm** @gEapSm, align 8
  %81 = load i32, i32* @ESP_OK, align 4
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %78, %68, %52, %39, %21, %15
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_peer_sm_deinit(...) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @xSemaphoreCreateRecursiveMutex(...) #1

declare dso_local i32 @wpa2_set_eap_state(i32) #1

declare dso_local i32 @esp_wifi_get_macaddr_internal(i32, i32) #1

declare dso_local i32 @eap_peer_blob_init(%struct.eap_sm*) #1

declare dso_local i32 @os_free(%struct.eap_sm*) #1

declare dso_local i32 @eap_peer_config_init(%struct.eap_sm*, i32, i32) #1

declare dso_local i32 @eap_peer_blob_deinit(%struct.eap_sm*) #1

declare dso_local i32* @tls_init(...) #1

declare dso_local i32 @eap_peer_config_deinit(%struct.eap_sm*) #1

declare dso_local i32 @wpa2_rxq_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
