; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_build_ic_appie_wps_ar.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_build_ic_appie_wps_ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@WPS_REQ_ENROLLEE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wps build: wps ar\00", align 1
@WIFI_APPIE_WPS_AR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wps_build_ic_appie_wps_ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_build_ic_appie_wps_ar() #0 {
  %1 = alloca %struct.wpabuf*, align 8
  %2 = load i32, i32* @WPS_REQ_ENROLLEE, align 4
  %3 = call i64 @wps_build_assoc_req_ie(i32 %2)
  %4 = inttoptr i64 %3 to %struct.wpabuf*
  store %struct.wpabuf* %4, %struct.wpabuf** %1, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  %8 = icmp ne %struct.wpabuf* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %0
  %10 = load i32, i32* @WIFI_APPIE_WPS_AR, align 4
  %11 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  %12 = call i64 @wpabuf_head(%struct.wpabuf* %11)
  %13 = inttoptr i64 %12 to i32*
  %14 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  %15 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @esp_wifi_set_appie_internal(i32 %10, i32* %13, i32 %16, i32 0)
  %18 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  %19 = call i32 @wpabuf_free(%struct.wpabuf* %18)
  br label %20

20:                                               ; preds = %9, %0
  ret void
}

declare dso_local i64 @wps_build_assoc_req_ie(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @esp_wifi_set_appie_internal(i32, i32*, i32, i32) #1

declare dso_local i64 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
