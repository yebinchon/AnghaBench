; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_m7.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_m7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, i64, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32*, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M7\00", align 1
@RECV_M7 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M7\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"WPS: Reject negotiation due to PBC session overlap\00", align 1
@WPS_CFG_MULTIPLE_PBC_DETECTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"WPS: Failed to decrypt Encrypted Settings attribute\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"WPS: Processing decrypted Encrypted Settings attribute\00", align 1
@SEND_M8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m7(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wps_parse_attr*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca %struct.wps_parse_attr, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wps_parse_attr* %2, %struct.wps_parse_attr** %7, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %13 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RECV_M7, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = load i8*, i8** @SEND_WSC_NACK, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %26 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %27, i32* %4, align 4
  br label %166

28:                                               ; preds = %3
  %29 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %30 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %35 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %44 = call i32 @wps_registrar_skip_overlap(%struct.wps_data* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** @SEND_WSC_NACK, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %52 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @WPS_CFG_MULTIPLE_PBC_DETECTED, align 4
  %54 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %55 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %56, i32* %4, align 4
  br label %166

57:                                               ; preds = %42, %33, %28
  %58 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %59 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %60 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @wps_process_registrar_nonce(%struct.wps_data* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %66 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %67 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %70 = call i64 @wps_process_authenticator(%struct.wps_data* %65, i32 %68, %struct.wpabuf* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64, %57
  %73 = load i8*, i8** @SEND_WSC_NACK, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %76 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %77, i32* %4, align 4
  br label %166

78:                                               ; preds = %64
  %79 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %80 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %81 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %84 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %79, i32 %82, i32 %85)
  store %struct.wpabuf* %86, %struct.wpabuf** %8, align 8
  %87 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %88 = icmp eq %struct.wpabuf* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i8*, i8** @SEND_WSC_NACK, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %95 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %96, i32* %4, align 4
  br label %166

97:                                               ; preds = %78
  %98 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %99 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %100 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %99, i32 0, i32 2
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %97
  %106 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %107 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %105, %97
  %111 = phi i1 [ true, %97 ], [ %109, %105 ]
  %112 = zext i1 %111 to i32
  %113 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %114 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  %117 = zext i1 %116 to i32
  %118 = call i64 @wps_validate_m7_encr(%struct.wpabuf* %98, i32 %112, i32 %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %110
  %121 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %122 = call i32 @wpabuf_free(%struct.wpabuf* %121)
  %123 = load i8*, i8** @SEND_WSC_NACK, align 8
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %126 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %127, i32* %4, align 4
  br label %166

128:                                              ; preds = %110
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = call i32 (i32, i8*, ...) @wpa_printf(i32 %129, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %132 = call i64 @wps_parse_msg(%struct.wpabuf* %131, %struct.wps_parse_attr* %9)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %151, label %134

134:                                              ; preds = %128
  %135 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %136 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %137 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @wps_process_key_wrap_auth(%struct.wps_data* %135, %struct.wpabuf* %136, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %134
  %142 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %143 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %9, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @wps_process_e_snonce2(%struct.wps_data* %142, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %149 = call i64 @wps_process_ap_settings_r(%struct.wps_data* %148, %struct.wps_parse_attr* %9)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %147, %141, %134, %128
  %152 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %153 = call i32 @wpabuf_free(%struct.wpabuf* %152)
  %154 = load i8*, i8** @SEND_WSC_NACK, align 8
  %155 = ptrtoint i8* %154 to i64
  %156 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %157 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %158, i32* %4, align 4
  br label %166

159:                                              ; preds = %147
  %160 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %161 = call i32 @wpabuf_free(%struct.wpabuf* %160)
  %162 = load i64, i64* @SEND_M8, align 8
  %163 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %164 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %159, %151, %120, %89, %72, %46, %17
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wps_registrar_skip_overlap(%struct.wps_data*) #1

declare dso_local i64 @wps_process_registrar_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_validate_m7_encr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_process_e_snonce2(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_ap_settings_r(%struct.wps_data*, %struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
