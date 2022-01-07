; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_m3.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_m3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS: Building Message M3\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"WPS: No Device Password available\00", align 1
@WPS_M3 = common dso_local global i32 0, align 4
@RECV_M4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m3(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %8 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %16 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %17 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wps_derive_psk(%struct.wps_data* %15, i32* %18, i32 %21)
  %23 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %23, %struct.wpabuf** %4, align 8
  %24 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %25 = icmp eq %struct.wpabuf* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %63

27:                                               ; preds = %14
  %28 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %29 = call i64 @wps_build_version(%struct.wpabuf* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %27
  %32 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %33 = load i32, i32* @WPS_M3, align 4
  %34 = call i64 @wps_build_msg_type(%struct.wpabuf* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %31
  %37 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %39 = call i64 @wps_build_registrar_nonce(%struct.wps_data* %37, %struct.wpabuf* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %44 = call i64 @wps_build_e_hash(%struct.wps_data* %42, %struct.wpabuf* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %48 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %47, i32 0, i32* null, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %53 = call i64 @wps_build_authenticator(%struct.wps_data* %51, %struct.wpabuf* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %46, %41, %36, %31, %27
  %56 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %57 = call i32 @wpabuf_free(%struct.wpabuf* %56)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %63

58:                                               ; preds = %50
  %59 = load i32, i32* @RECV_M4, align 4
  %60 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %61 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %62, %struct.wpabuf** %2, align 8
  br label %63

63:                                               ; preds = %58, %55, %26, %11
  %64 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %64
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_derive_psk(%struct.wps_data*, i32*, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_registrar_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_e_hash(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32) #1

declare dso_local i64 @wps_build_authenticator(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
