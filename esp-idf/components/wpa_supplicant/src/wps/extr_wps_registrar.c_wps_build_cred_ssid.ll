; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_cred_ssid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_cred_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_credential = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"WPS:  * SSID\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"WPS: SSID for Credential\00", align 1
@ATTR_SSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, %struct.wps_credential*)* @wps_build_cred_ssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_cred_ssid(%struct.wpabuf* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wps_credential*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %4, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %9 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %12 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wpa_hexdump_ascii(i32 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %16 = load i32, i32* @ATTR_SSID, align 4
  %17 = call i32 @wpabuf_put_be16(%struct.wpabuf* %15, i32 %16)
  %18 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %19 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %20 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wpabuf_put_be16(%struct.wpabuf* %18, i32 %21)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %24 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %25 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %28 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wpabuf_put_data(%struct.wpabuf* %23, i32 %26, i32 %29)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
