; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_m1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_build_m1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_data = type { i64, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"WPS: Enrollee Nonce\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"WPS: Building Message M1\00", align 1
@WPS_CONFIG_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_M1 = common dso_local global i32 0, align 4
@WPS_CALC_KEY_NO_CALC = common dso_local global i32 0, align 4
@WPS_CFG_NO_ERROR = common dso_local global i32 0, align 4
@RECV_M2 = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.wps_data*)* @wps_build_m1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @wps_build_m1(%struct.wps_data* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  %6 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %7 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @WPS_NONCE_LEN, align 4
  %10 = call i64 @random_get_bytes(i32 %8, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %176

13:                                               ; preds = %1
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WPS_NONCE_LEN, align 4
  %19 = call i32 @wpa_hexdump(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = call %struct.wpabuf* @wpabuf_alloc(i32 1000)
  store %struct.wpabuf* %22, %struct.wpabuf** %4, align 8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %24 = icmp eq %struct.wpabuf* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %176

26:                                               ; preds = %13
  %27 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %28 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %33 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %26
  %39 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %40 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %45 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %43
  %54 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %48, %38, %26
  %59 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %60 = call i64 @wps_build_version(%struct.wpabuf* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %168, label %62

62:                                               ; preds = %58
  %63 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %64 = load i32, i32* @WPS_M1, align 4
  %65 = call i64 @wps_build_msg_type(%struct.wpabuf* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %168, label %67

67:                                               ; preds = %62
  %68 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %69 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %70 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @wps_build_uuid_e(%struct.wpabuf* %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %168, label %74

74:                                               ; preds = %67
  %75 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %76 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %77 = call i64 @wps_build_mac_addr(%struct.wps_data* %75, %struct.wpabuf* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %168, label %79

79:                                               ; preds = %74
  %80 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %82 = call i64 @wps_build_enrollee_nonce(%struct.wps_data* %80, %struct.wpabuf* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %168, label %84

84:                                               ; preds = %79
  %85 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %86 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %87 = load i32, i32* @WPS_CALC_KEY_NO_CALC, align 4
  %88 = call i64 @wps_build_public_key(%struct.wps_data* %85, %struct.wpabuf* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %168, label %90

90:                                               ; preds = %84
  %91 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %92 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %93 = call i64 @wps_build_auth_type_flags(%struct.wps_data* %91, %struct.wpabuf* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %168, label %95

95:                                               ; preds = %90
  %96 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %98 = call i64 @wps_build_encr_type_flags(%struct.wps_data* %96, %struct.wpabuf* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %168, label %100

100:                                              ; preds = %95
  %101 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %102 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %103 = call i64 @wps_build_conn_type_flags(%struct.wps_data* %101, %struct.wpabuf* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %168, label %105

105:                                              ; preds = %100
  %106 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i64 @wps_build_config_methods(%struct.wpabuf* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %168, label %110

110:                                              ; preds = %105
  %111 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %113 = call i64 @wps_build_wps_state(%struct.wps_data* %111, %struct.wpabuf* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %168, label %115

115:                                              ; preds = %110
  %116 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %117 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %121 = call i64 @wps_build_device_attrs(i32* %119, %struct.wpabuf* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %168, label %123

123:                                              ; preds = %115
  %124 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %125 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %129 = call i64 @wps_build_rf_bands(i32* %127, %struct.wpabuf* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %168, label %131

131:                                              ; preds = %123
  %132 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %133 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %134 = call i64 @wps_build_assoc_state(%struct.wps_data* %132, %struct.wpabuf* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %168, label %136

136:                                              ; preds = %131
  %137 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %138 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %139 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @wps_build_dev_password_id(%struct.wpabuf* %137, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %168, label %143

143:                                              ; preds = %136
  %144 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %145 = load i32, i32* @WPS_CFG_NO_ERROR, align 4
  %146 = call i64 @wps_build_config_error(%struct.wpabuf* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %168, label %148

148:                                              ; preds = %143
  %149 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %150 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %154 = call i64 @wps_build_os_version(i32* %152, %struct.wpabuf* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %148
  %157 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %158 = call i64 @wps_build_wfa_ext(%struct.wpabuf* %157, i32 0, i32* null, i32 0)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %162 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %166 = call i64 @wps_build_vendor_ext_m1(i32* %164, %struct.wpabuf* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %160, %156, %148, %143, %136, %131, %123, %115, %110, %105, %100, %95, %90, %84, %79, %74, %67, %62, %58
  %169 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %170 = call i32 @wpabuf_free(%struct.wpabuf* %169)
  store %struct.wpabuf* null, %struct.wpabuf** %2, align 8
  br label %176

171:                                              ; preds = %160
  %172 = load i32, i32* @RECV_M2, align 4
  %173 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %174 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 8
  %175 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  store %struct.wpabuf* %175, %struct.wpabuf** %2, align 8
  br label %176

176:                                              ; preds = %171, %168, %25, %12
  %177 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  ret %struct.wpabuf* %177
}

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_msg_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_uuid_e(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_mac_addr(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_enrollee_nonce(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_public_key(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_auth_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_encr_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_conn_type_flags(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_methods(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_wps_state(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_device_attrs(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_rf_bands(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_assoc_state(%struct.wps_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_dev_password_id(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_config_error(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_os_version(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_wfa_ext(%struct.wpabuf*, i32, i32*, i32) #1

declare dso_local i64 @wps_build_vendor_ext_m1(i32*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
