; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_m8.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_m8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"WPS: Building Message M8\00", align 1
@WPS_M8 = common dso_local global i32 0, align 4
@RECV_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m8(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 @wpa_printf(i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = call %struct.wpabuf* @wpabuf_alloc(i32 500)
  store %struct.wpabuf* %8, %struct.wpabuf** %5, align 8
  %9 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %10 = icmp eq %struct.wpabuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %99

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
  br label %99

19:                                               ; preds = %12
  %20 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %21 = call i64 @wps_build_version(%struct.wpabuf* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %87, label %23

23:                                               ; preds = %19
  %24 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %25 = load i32, i32* @WPS_M8, align 4
  %26 = call i64 @wps_build_msg_type(%struct.wpabuf* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %87, label %28

28:                                               ; preds = %23
  %29 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %31 = call i64 @wps_build_enrollee_nonce(%struct.wps_data* %29, %struct.wpabuf* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %87, label %33

33:                                               ; preds = %28
  %34 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %35 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %42 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %33
  %46 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %48 = call i64 @wps_build_cred(%struct.wps_data* %46, %struct.wpabuf* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %87, label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %52 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %59 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %64 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %65 = call i64 @wps_build_ap_settings(%struct.wps_data* %63, %struct.wpabuf* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %62, %57, %50
  %68 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %70 = call i64 @wps_build_key_wrap_auth(%struct.wps_data* %68, %struct.wpabuf* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %67
  %73 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %74 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %75 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %76 = call i64 @wps_build_encr_settings(%struct.wps_data* %73, %struct.wpabuf* %74, %struct.wpabuf* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %72
  %79 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %80 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %79, i32 0, i32* null, i32 0)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %84 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %85 = call i64 @wps_build_authenticator(%struct.wps_data* %83, %struct.wpabuf* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82, %78, %72, %67, %62, %45, %28, %23, %19
  %88 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %89 = call i32 @wpabuf_free(%struct.wpabuf* %88)
  %90 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %91 = call i32 @wpabuf_free(%struct.wpabuf* %90)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %99

92:                                               ; preds = %82
  %93 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %94 = call i32 @wpabuf_free(%struct.wpabuf* %93)
  %95 = load i32, i32* @RECV_DONE, align 4
  %96 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %97 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %98, %struct.wpabuf** %2, align 8
  br label %99

99:                                               ; preds = %92, %87, %16, %11
  %100 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %100
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_enrollee_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_cred(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_ap_settings(%struct.wps_data*, %struct.wpabuf*) #1

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
