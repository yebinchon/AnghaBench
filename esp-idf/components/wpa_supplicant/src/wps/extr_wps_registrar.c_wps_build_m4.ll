; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_m4.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS: Building Message M4\00", align 1
@WPS_M4 = common dso_local global i32 0, align 4
@RECV_M5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m4(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %9 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %10 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %13 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @wps_derive_psk(%struct.wps_data* %8, i32 %11, i32 %14)
  %16 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %16, %struct.wpabuf** %5, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = icmp eq %struct.wpabuf* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %83

20:                                               ; preds = %1
  %21 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %21, %struct.wpabuf** %4, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %23 = icmp eq %struct.wpabuf* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %26 = call i32 @wpabuf_free(%struct.wpabuf* %25)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %83

27:                                               ; preds = %20
  %28 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %29 = call i64 @wps_build_version(%struct.wpabuf* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %71, label %31

31:                                               ; preds = %27
  %32 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %33 = load i32, i32* @WPS_M4, align 4
  %34 = call i64 @wps_build_msg_type(%struct.wpabuf* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %71, label %36

36:                                               ; preds = %31
  %37 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %39 = call i64 @wps_build_enrollee_nonce(%struct.wps_data* %37, %struct.wpabuf* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %71, label %41

41:                                               ; preds = %36
  %42 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %44 = call i64 @wps_build_r_hash(%struct.wps_data* %42, %struct.wpabuf* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %41
  %47 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %48 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %49 = call i64 @wps_build_r_snonce1(%struct.wps_data* %47, %struct.wpabuf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %46
  %52 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %54 = call i64 @wps_build_key_wrap_auth(%struct.wps_data* %52, %struct.wpabuf* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %58 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %59 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %60 = call i64 @wps_build_encr_settings(%struct.wps_data* %57, %struct.wpabuf* %58, %struct.wpabuf* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %56
  %63 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %64 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %63, i32 0, i32* null, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %68 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %69 = call i64 @wps_build_authenticator(%struct.wps_data* %67, %struct.wpabuf* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66, %62, %56, %51, %46, %41, %36, %31, %27
  %72 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %73 = call i32 @wpabuf_free(%struct.wpabuf* %72)
  %74 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %75 = call i32 @wpabuf_free(%struct.wpabuf* %74)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %83

76:                                               ; preds = %66
  %77 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %78 = call i32 @wpabuf_free(%struct.wpabuf* %77)
  %79 = load i32, i32* @RECV_M5, align 4
  %80 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %81 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %82, %struct.wpabuf** %2, align 8
  br label %83

83:                                               ; preds = %76, %71, %24, %19
  %84 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %84
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_derive_psk(%struct.wps_data*, i32, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_enrollee_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_r_hash(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_r_snonce1(%struct.wps_data*, %struct.wpabuf*) #1

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
