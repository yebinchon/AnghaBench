; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_m5.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_m5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS: Building Message M5\00", align 1
@WPS_M5 = common dso_local global i32 0, align 4
@RECV_M6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m5(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %8, %struct.wpabuf** %5, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %10 = icmp eq %struct.wpabuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %70

12:                                               ; preds = %1
  %13 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %13, %struct.wpabuf** %4, align 8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %15 = icmp eq %struct.wpabuf* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = call i32 @wpabuf_free(%struct.wpabuf* %17)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %70

19:                                               ; preds = %12
  %20 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %21 = call i64 @wps_build_version(%struct.wpabuf* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %19
  %24 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %25 = load i32, i32* @WPS_M5, align 4
  %26 = call i64 @wps_build_msg_type(%struct.wpabuf* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %23
  %29 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %31 = call i64 @wps_build_registrar_nonce(%struct.wps_data* %29, %struct.wpabuf* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %28
  %34 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %36 = call i64 @wps_build_e_snonce1(%struct.wps_data* %34, %struct.wpabuf* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %33
  %39 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %40 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %41 = call i64 @wps_build_key_wrap_auth(%struct.wps_data* %39, %struct.wpabuf* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %47 = call i64 @wps_build_encr_settings(%struct.wps_data* %44, %struct.wpabuf* %45, %struct.wpabuf* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %43
  %50 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %51 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %50, i32 0, i32* null, i32 0)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %56 = call i64 @wps_build_authenticator(%struct.wps_data* %54, %struct.wpabuf* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %49, %43, %38, %33, %28, %23, %19
  %59 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %60 = call i32 @wpabuf_free(%struct.wpabuf* %59)
  %61 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %62 = call i32 @wpabuf_free(%struct.wpabuf* %61)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %70

63:                                               ; preds = %53
  %64 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %65 = call i32 @wpabuf_free(%struct.wpabuf* %64)
  %66 = load i32, i32* @RECV_M6, align 4
  %67 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %68 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %69, %struct.wpabuf** %2, align 8
  br label %70

70:                                               ; preds = %63, %58, %16, %11
  %71 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %71
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_registrar_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_e_snonce1(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_encr_settings(%struct.wps_data*, %struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32) #1

declare dso_local i64 @wps_build_authenticator(%struct.wps_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
