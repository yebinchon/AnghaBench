; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_cred_encr_type.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_cred_encr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_credential = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"WPS:  * Encryption Type (0x%x)\00", align 1
@ATTR_ENCR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, %struct.wps_credential*)* @wps_build_cred_encr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_cred_encr_type(%struct.wpabuf* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wps_credential*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %4, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %7 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %11 = load i32, i32* @ATTR_ENCR_TYPE, align 4
  %12 = call i32 @wpabuf_put_be16(%struct.wpabuf* %10, i32 %11)
  %13 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %14 = call i32 @wpabuf_put_be16(%struct.wpabuf* %13, i32 2)
  %15 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %16 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %17 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wpabuf_put_be16(%struct.wpabuf* %15, i32 %18)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
