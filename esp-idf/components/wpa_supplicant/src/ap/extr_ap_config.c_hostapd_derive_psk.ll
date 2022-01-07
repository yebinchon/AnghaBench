; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_derive_psk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_ap_config.c_hostapd_derive_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_ssid = type { %struct.hostapd_wpa_psk*, i32, i64, i64 }
%struct.hostapd_wpa_psk = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to alloc space for PSK\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SSID\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PSK (ASCII passphrase)\00", align 1
@PMK_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"PSK (from passphrase)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_ssid*)* @hostapd_derive_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_derive_psk(%struct.hostapd_ssid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_ssid*, align 8
  store %struct.hostapd_ssid* %0, %struct.hostapd_ssid** %3, align 8
  %4 = call i64 @os_zalloc(i32 4)
  %5 = inttoptr i64 %4 to %struct.hostapd_wpa_psk*
  %6 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %6, i32 0, i32 0
  store %struct.hostapd_wpa_psk* %5, %struct.hostapd_wpa_psk** %7, align 8
  %8 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %9 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %8, i32 0, i32 0
  %10 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %9, align 8
  %11 = icmp eq %struct.hostapd_wpa_psk* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_ERROR, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %18 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %22 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @wpa_hexdump_ascii(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %20, i32 %23)
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %27 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %31 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @strlen(i64 %32)
  %34 = call i32 @wpa_hexdump_ascii_key(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %29, i32 %33)
  %35 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %36 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %39 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %42 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %45 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %44, i32 0, i32 0
  %46 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %45, align 8
  %47 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PMK_LEN, align 4
  %50 = call i32 @pbkdf2_sha1(i64 %37, i64 %40, i32 %43, i32 4096, i32 %48, i32 %49)
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %53 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %52, i32 0, i32 0
  %54 = load %struct.hostapd_wpa_psk*, %struct.hostapd_wpa_psk** %53, align 8
  %55 = getelementptr inbounds %struct.hostapd_wpa_psk, %struct.hostapd_wpa_psk* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PMK_LEN, align 4
  %58 = call i32 @wpa_hexdump_key(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %15, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @pbkdf2_sha1(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
