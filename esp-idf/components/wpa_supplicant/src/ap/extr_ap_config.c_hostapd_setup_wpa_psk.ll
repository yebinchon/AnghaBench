; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_setup_wpa_psk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_setup_wpa_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_bss_config = type { %struct.hostapd_ssid }
%struct.hostapd_ssid = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Using pre-configured WPA PSK instead of passphrase\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Deriving WPA PSK based on passphrase\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_setup_wpa_psk(%struct.hostapd_bss_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_bss_config*, align 8
  %4 = alloca %struct.hostapd_ssid*, align 8
  store %struct.hostapd_bss_config* %0, %struct.hostapd_bss_config** %3, align 8
  %5 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %3, align 8
  %6 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %5, i32 0, i32 0
  store %struct.hostapd_ssid* %6, %struct.hostapd_ssid** %4, align 8
  %7 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %4, align 8
  %8 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %4, align 8
  %13 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %27

19:                                               ; preds = %11
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %4, align 8
  %23 = call i64 @hostapd_derive_psk(%struct.hostapd_ssid* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %33

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %16
  %28 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %4, align 8
  %29 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @hostapd_derive_psk(%struct.hostapd_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
