; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_credential.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_credential = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, %struct.wps_credential*)* @wps_build_credential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_build_credential(%struct.wpabuf* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_credential*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %5, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %7 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %8 = call i64 @wps_build_cred_network_idx(%struct.wpabuf* %6, %struct.wps_credential* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %12 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %13 = call i64 @wps_build_cred_ssid(%struct.wpabuf* %11, %struct.wps_credential* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %17 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %18 = call i64 @wps_build_cred_auth_type(%struct.wpabuf* %16, %struct.wps_credential* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %22 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %23 = call i64 @wps_build_cred_encr_type(%struct.wpabuf* %21, %struct.wps_credential* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %27 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %28 = call i64 @wps_build_cred_network_key(%struct.wpabuf* %26, %struct.wps_credential* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %32 = load %struct.wps_credential*, %struct.wps_credential** %5, align 8
  %33 = call i64 @wps_build_cred_mac_addr(%struct.wpabuf* %31, %struct.wps_credential* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25, %20, %15, %10, %2
  store i32 -1, i32* %3, align 4
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @wps_build_cred_network_idx(%struct.wpabuf*, %struct.wps_credential*) #1

declare dso_local i64 @wps_build_cred_ssid(%struct.wpabuf*, %struct.wps_credential*) #1

declare dso_local i64 @wps_build_cred_auth_type(%struct.wpabuf*, %struct.wps_credential*) #1

declare dso_local i64 @wps_build_cred_encr_type(%struct.wpabuf*, %struct.wps_credential*) #1

declare dso_local i64 @wps_build_cred_network_key(%struct.wpabuf*, %struct.wps_credential*) #1

declare dso_local i64 @wps_build_cred_mac_addr(%struct.wpabuf*, %struct.wps_credential*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
