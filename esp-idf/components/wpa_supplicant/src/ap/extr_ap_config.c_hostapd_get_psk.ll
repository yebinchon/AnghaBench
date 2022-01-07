; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_get_psk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_get_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_bss_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hostapd_wpa_psk* }
%struct.hostapd_wpa_psk = type { i32*, i32, i64, %struct.hostapd_wpa_psk* }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hostapd_get_psk(%struct.hostapd_bss_config* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hostapd_bss_config*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hostapd_wpa_psk*, align 8
  %9 = alloca i32, align 4
  store %struct.hostapd_bss_config* %0, %struct.hostapd_bss_config** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %14 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %15, align 8
  store %struct.hostapd_wpa_psk* %16, %struct.hostapd_wpa_psk** %8, align 8
  br label %17

17:                                               ; preds = %48, %3
  %18 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %8, align 8
  %19 = icmp ne %struct.hostapd_wpa_psk* %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %8, align 8
  %25 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %8, align 8
  %30 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i64 @memcmp(i32 %31, i32* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28, %23
  %37 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %8, align 8
  %38 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %4, align 8
  br label %53

40:                                               ; preds = %28, %20
  %41 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %8, align 8
  %42 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp eq i32* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %40
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %8, align 8
  %50 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %49, i32 0, i32 3
  %51 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %50, align 8
  store %struct.hostapd_wpa_psk* %51, %struct.hostapd_wpa_psk** %8, align 8
  br label %17

52:                                               ; preds = %17
  store i32* null, i32** %4, align 8
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32*, i32** %4, align 8
  ret i32* %54
}

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
