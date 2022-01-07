; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_config_defaults_bss.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_config_defaults_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_bss_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i32 }

@WPA_AUTH_ALG_OPEN = common dso_local global i32 0, align 4
@WPA_AUTH_ALG_SHARED = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i8* null, align 8
@MAX_STA_COUNT = common dso_local global i32 0, align 4
@EAPOL_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_config_defaults_bss(%struct.hostapd_bss_config* %0) #0 {
  %2 = alloca %struct.hostapd_bss_config*, align 8
  store %struct.hostapd_bss_config* %0, %struct.hostapd_bss_config** %2, align 8
  %3 = load i32, i32* @WPA_AUTH_ALG_OPEN, align 4
  %4 = load i32, i32* @WPA_AUTH_ALG_SHARED, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %7 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %9 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %8, i32 0, i32 1
  store i32 300, i32* %9, align 4
  %10 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %11 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %10, i32 0, i32 2
  store i32 1, i32* %11, align 8
  %12 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %13 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %12, i32 0, i32 3
  store i32 2, i32* %13, align 4
  %14 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %15 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %14, i32 0, i32 4
  store i32 600, i32* %15, align 8
  %16 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %17 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %16, i32 0, i32 5
  store i32 86400, i32* %17, align 4
  %18 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %19 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %20 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %19, i32 0, i32 21
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @WPA_CIPHER_TKIP, align 8
  %22 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %23 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %22, i32 0, i32 20
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @WPA_CIPHER_TKIP, align 8
  %25 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %26 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %25, i32 0, i32 19
  store i8* %24, i8** %26, align 8
  %27 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %28 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %27, i32 0, i32 18
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @MAX_STA_COUNT, align 4
  %30 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %31 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %30, i32 0, i32 17
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %33 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %32, i32 0, i32 6
  store i32 2, i32* %33, align 8
  %34 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %35 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %34, i32 0, i32 7
  store i32 300, i32* %35, align 4
  %36 = load i32, i32* @EAPOL_VERSION, align 4
  %37 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %38 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %37, i32 0, i32 16
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %40 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %39, i32 0, i32 8
  store i32 65535, i32* %40, align 8
  %41 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %42 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %41, i32 0, i32 14
  store i32 -1, i32* %42, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
