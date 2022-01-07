; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_ap_settings.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_ap_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WPS:  * AP Settings (pre-configured)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_build_ap_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_ap_settings(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %16 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %17 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %22 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @wpabuf_put_data(%struct.wpabuf* %15, i64 %20, i32 %25)
  store i32 0, i32* %3, align 4
  br label %55

27:                                               ; preds = %2
  %28 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %30 = call i64 @wps_build_cred_ssid(%struct.wps_data* %28, %struct.wpabuf* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %35 = call i64 @wps_build_cred_mac_addr(%struct.wps_data* %33, %struct.wpabuf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %40 = call i64 @wps_build_cred_auth_type(%struct.wps_data* %38, %struct.wpabuf* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %44 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %45 = call i64 @wps_build_cred_encr_type(%struct.wps_data* %43, %struct.wpabuf* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %49 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %50 = call i64 @wps_build_cred_network_key(%struct.wps_data* %48, %struct.wpabuf* %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %42, %37, %32, %27
  %53 = phi i1 [ true, %42 ], [ true, %37 ], [ true, %32 ], [ true, %27 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i32) #1

declare dso_local i64 @wps_build_cred_ssid(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_cred_mac_addr(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_cred_auth_type(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_cred_encr_type(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_cred_network_key(%struct.wps_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
