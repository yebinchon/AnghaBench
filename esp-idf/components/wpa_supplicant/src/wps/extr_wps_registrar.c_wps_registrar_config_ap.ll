; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_config_ap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_config_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.wps_credential*)*, i32 }
%struct.wps_credential = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@WPS_ENCR_NONE = common dso_local global i32 0, align 4
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@WPS_ENCR_WEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_registrar_config_ap(%struct.wps_registrar* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca %struct.wps_credential*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %5, align 8
  %6 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %7 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i32, %struct.wps_credential*)*, i32 (i32, %struct.wps_credential*)** %9, align 8
  %11 = icmp ne i32 (i32, %struct.wps_credential*)* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %14 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.wps_credential*)*, i32 (i32, %struct.wps_credential*)** %16, align 8
  %18 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %19 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %24 = call i32 %17(i32 %22, %struct.wps_credential* %23)
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
