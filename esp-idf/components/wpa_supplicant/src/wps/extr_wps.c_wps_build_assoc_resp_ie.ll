; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_build_assoc_resp_ie.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_build_assoc_resp_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"WPS: Building WPS IE for (Re)Association Response\00", align 1
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WPS_DEV_OUI_WFA = common dso_local global i32 0, align 4
@WPS_RESP_AP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_build_assoc_resp_ie() #0 {
  %1 = alloca %struct.wpabuf*, align 8
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca i64*, align 8
  %4 = load i32, i32* @MSG_DEBUG, align 4
  %5 = call i32 @wpa_printf(i32 %4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %6 = call %struct.wpabuf* @wpabuf_alloc(i32 100)
  store %struct.wpabuf* %6, %struct.wpabuf** %2, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %8 = icmp eq %struct.wpabuf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %40

10:                                               ; preds = %0
  %11 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %12 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %13 = call i32 @wpabuf_put_u8(%struct.wpabuf* %11, i32 %12)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %15 = call i64* @wpabuf_put(%struct.wpabuf* %14, i32 1)
  store i64* %15, i64** %3, align 8
  %16 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %17 = load i32, i32* @WPS_DEV_OUI_WFA, align 4
  %18 = call i32 @wpabuf_put_be32(%struct.wpabuf* %16, i32 %17)
  %19 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %20 = call i64 @wps_build_version(%struct.wpabuf* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %10
  %23 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %24 = load i32, i32* @WPS_RESP_AP, align 4
  %25 = call i64 @wps_build_resp_type(%struct.wpabuf* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %29 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %28, i32 0, i32* null, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %22, %10
  %32 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %33 = call i32 @wpabuf_free(%struct.wpabuf* %32)
  store %struct.wpabuf* null, %struct.wpabuf** %1, align 8
  br label %40

34:                                               ; preds = %27
  %35 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %36 = call i64 @wpabuf_len(%struct.wpabuf* %35)
  %37 = sub nsw i64 %36, 2
  %38 = load i64*, i64** %3, align 8
  store i64 %37, i64* %38, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  store %struct.wpabuf* %39, %struct.wpabuf** %1, align 8
  br label %40

40:                                               ; preds = %34, %31, %9
  %41 = load %struct.wpabuf*, %struct.wpabuf** %1, align 8
  ret %struct.wpabuf* %41
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i64* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_resp_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
