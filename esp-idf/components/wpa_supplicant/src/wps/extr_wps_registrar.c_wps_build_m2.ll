; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_m2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_m2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WPS: Registrar Nonce\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"WPS: UUID-R\00", align 1
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"WPS: Building Message M2\00", align 1
@WPS_M2 = common dso_local global i32 0, align 4
@WPS_CALC_KEY_NORMAL = common dso_local global i32 0, align 4
@WPS_CFG_NO_ERROR = common dso_local global i32 0, align 4
@RECV_M3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m2(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %5 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %6 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @WPS_NONCE_LEN, align 4
  %9 = call i64 @random_get_bytes(i32 %7, i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %149

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %15 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @WPS_NONCE_LEN, align 4
  %18 = call i32 @wpa_hexdump(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %21 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WPS_UUID_LEN, align 4
  %24 = call i32 @wpa_hexdump(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %27 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %27, %struct.wpabuf** %4, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %29 = icmp eq %struct.wpabuf* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %12
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %149

31:                                               ; preds = %12
  %32 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %33 = call i64 @wps_build_version(%struct.wpabuf* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %139, label %35

35:                                               ; preds = %31
  %36 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %37 = load i32, i32* @WPS_M2, align 4
  %38 = call i64 @wps_build_msg_type(%struct.wpabuf* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %139, label %40

40:                                               ; preds = %35
  %41 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %43 = call i64 @wps_build_enrollee_nonce(%struct.wps_data* %41, %struct.wpabuf* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %139, label %45

45:                                               ; preds = %40
  %46 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %48 = call i64 @wps_build_registrar_nonce(%struct.wps_data* %46, %struct.wpabuf* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %139, label %50

50:                                               ; preds = %45
  %51 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %52 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %53 = call i64 @wps_build_uuid_r(%struct.wps_data* %51, %struct.wpabuf* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %139, label %55

55:                                               ; preds = %50
  %56 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %58 = load i32, i32* @WPS_CALC_KEY_NORMAL, align 4
  %59 = call i64 @wps_build_public_key(%struct.wps_data* %56, %struct.wpabuf* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %139, label %61

61:                                               ; preds = %55
  %62 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %63 = call i64 @wps_derive_keys(%struct.wps_data* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %139, label %65

65:                                               ; preds = %61
  %66 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %67 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %68 = call i64 @wps_build_auth_type_flags(%struct.wps_data* %66, %struct.wpabuf* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %139, label %70

70:                                               ; preds = %65
  %71 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %72 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %73 = call i64 @wps_build_encr_type_flags(%struct.wps_data* %71, %struct.wpabuf* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %139, label %75

75:                                               ; preds = %70
  %76 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %78 = call i64 @wps_build_conn_type_flags(%struct.wps_data* %76, %struct.wpabuf* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %139, label %80

80:                                               ; preds = %75
  %81 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %82 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %87 = call i64 @wps_build_config_methods_r(i32 %85, %struct.wpabuf* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %139, label %89

89:                                               ; preds = %80
  %90 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %95 = call i64 @wps_build_device_attrs(i32* %93, %struct.wpabuf* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %139, label %97

97:                                               ; preds = %89
  %98 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %99 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %103 = call i64 @wps_build_rf_bands(i32* %101, %struct.wpabuf* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %139, label %105

105:                                              ; preds = %97
  %106 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %107 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %108 = call i64 @wps_build_assoc_state(%struct.wps_data* %106, %struct.wpabuf* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %139, label %110

110:                                              ; preds = %105
  %111 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %112 = load i32, i32* @WPS_CFG_NO_ERROR, align 4
  %113 = call i64 @wps_build_config_error(%struct.wpabuf* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %110
  %116 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %117 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %118 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @wps_build_dev_password_id(%struct.wpabuf* %116, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %115
  %123 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %124 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %128 = call i64 @wps_build_os_version(i32* %126, %struct.wpabuf* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %122
  %131 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %132 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %131, i32 0, i32* null, i32 0)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %136 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %137 = call i64 @wps_build_authenticator(%struct.wps_data* %135, %struct.wpabuf* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134, %130, %122, %115, %110, %105, %97, %89, %80, %75, %70, %65, %61, %55, %50, %45, %40, %35, %31
  %140 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %141 = call i32 @wpabuf_free(%struct.wpabuf* %140)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %149

142:                                              ; preds = %134
  %143 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %144 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load i32, i32* @RECV_M3, align 4
  %146 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %147 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %148, %struct.wpabuf** %2, align 8
  br label %149

149:                                              ; preds = %142, %139, %30, %11
  %150 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %150
}

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_enrollee_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_registrar_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_uuid_r(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_public_key(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_derive_keys(%struct.wps_data*) #1

declare dso_local i64 @wps_build_auth_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_encr_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_conn_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_methods_r(i32, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_device_attrs(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_rf_bands(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_assoc_state(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_error(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_dev_password_id(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_os_version(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32) #1

declare dso_local i64 @wps_build_authenticator(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
