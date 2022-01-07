; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_eap_peer_sm_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_eap_peer_sm_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }

@gEapSm = common dso_local global %struct.eap_sm* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"EAP deinit\00", align 1
@s_wpa2_rxq = common dso_local global i32 0, align 4
@s_wifi_wpa2_sync_sem = common dso_local global i32* null, align 8
@s_wpa2_data_lock = common dso_local global i32* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"wpa2 eap_peer_sm_deinit: free data lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @eap_peer_sm_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peer_sm_deinit() #0 {
  %1 = alloca %struct.eap_sm*, align 8
  %2 = load %struct.eap_sm*, %struct.eap_sm** @gEapSm, align 8
  store %struct.eap_sm* %2, %struct.eap_sm** %1, align 8
  %3 = load %struct.eap_sm*, %struct.eap_sm** %1, align 8
  %4 = icmp eq %struct.eap_sm* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %40

6:                                                ; preds = %0
  %7 = load %struct.eap_sm*, %struct.eap_sm** %1, align 8
  %8 = call i32 @eap_peer_config_deinit(%struct.eap_sm* %7)
  %9 = load %struct.eap_sm*, %struct.eap_sm** %1, align 8
  %10 = call i32 @eap_peer_blob_deinit(%struct.eap_sm* %9)
  %11 = load %struct.eap_sm*, %struct.eap_sm** %1, align 8
  %12 = call i32 @eap_deinit_prev_method(%struct.eap_sm* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.eap_sm*, %struct.eap_sm** %1, align 8
  %14 = call i32 @eap_sm_abort(%struct.eap_sm* %13)
  %15 = load %struct.eap_sm*, %struct.eap_sm** %1, align 8
  %16 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @tls_deinit(i32 %17)
  %19 = call i32* @STAILQ_FIRST(i32* @s_wpa2_rxq)
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = call i32 (...) @wpa2_rxq_deinit()
  br label %23

23:                                               ; preds = %21, %6
  %24 = load i32*, i32** @s_wifi_wpa2_sync_sem, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** @s_wifi_wpa2_sync_sem, align 8
  %28 = call i32 @vSemaphoreDelete(i32* %27)
  br label %29

29:                                               ; preds = %26, %23
  store i32* null, i32** @s_wifi_wpa2_sync_sem, align 8
  %30 = load i32*, i32** @s_wpa2_data_lock, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32*, i32** @s_wpa2_data_lock, align 8
  %34 = call i32 @vSemaphoreDelete(i32* %33)
  store i32* null, i32** @s_wpa2_data_lock, align 8
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.eap_sm*, %struct.eap_sm** %1, align 8
  %39 = call i32 @os_free(%struct.eap_sm* %38)
  store %struct.eap_sm* null, %struct.eap_sm** @gEapSm, align 8
  br label %40

40:                                               ; preds = %37, %5
  ret void
}

declare dso_local i32 @eap_peer_config_deinit(%struct.eap_sm*) #1

declare dso_local i32 @eap_peer_blob_deinit(%struct.eap_sm*) #1

declare dso_local i32 @eap_deinit_prev_method(%struct.eap_sm*, i8*) #1

declare dso_local i32 @eap_sm_abort(%struct.eap_sm*) #1

declare dso_local i32 @tls_deinit(i32) #1

declare dso_local i32* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @wpa2_rxq_deinit(...) #1

declare dso_local i32 @vSemaphoreDelete(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(%struct.eap_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
