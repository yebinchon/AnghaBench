; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_m6.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_m6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32, i32*)*, i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32*, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M6\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@RECV_M6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M6\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"WPS: Failed to decrypted Encrypted Settings attribute\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"WPS: Processing decrypted Encrypted Settings attribute\00", align 1
@WPS_EV_AP_PIN_SUCCESS = common dso_local global i32 0, align 4
@SEND_M7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m6(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wps_parse_attr*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wps_parse_attr*, align 8
  %9 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store %struct.wps_parse_attr* %2, %struct.wps_parse_attr** %6, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 (i32, i8*, ...) @wpa_printf(i32 %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 @os_zalloc(i32 32)
  %13 = inttoptr i64 %12 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %13, %struct.wps_parse_attr** %8, align 8
  %14 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %15 = icmp eq %struct.wps_parse_attr* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i8*, i8** @SEND_WSC_NACK, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %20 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %21, i32* %9, align 4
  br label %153

22:                                               ; preds = %3
  %23 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RECV_M6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %31 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i8*, i8** @SEND_WSC_NACK, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %37 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %38, i32* %9, align 4
  br label %153

39:                                               ; preds = %22
  %40 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %41 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %42 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %48 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %49 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = call i64 @wps_process_authenticator(%struct.wps_data* %47, i32 %50, %struct.wpabuf* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46, %39
  %55 = load i8*, i8** @SEND_WSC_NACK, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %59, i32* %9, align 4
  br label %153

60:                                               ; preds = %46
  %61 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %62 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %63 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %66 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %61, i32 %64, i32 %67)
  store %struct.wpabuf* %68, %struct.wpabuf** %7, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %70 = icmp eq %struct.wpabuf* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %60
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i8*, i8** @SEND_WSC_NACK, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %77 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %78, i32* %9, align 4
  br label %153

79:                                               ; preds = %60
  %80 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %81 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %82 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i64 @wps_validate_m6_encr(%struct.wpabuf* %80, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %79
  %89 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %90 = call i32 @wpabuf_free(%struct.wpabuf* %89)
  %91 = load i8*, i8** @SEND_WSC_NACK, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %94 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %95, i32* %9, align 4
  br label %153

96:                                               ; preds = %79
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %100 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %101 = call i64 @wps_parse_msg(%struct.wpabuf* %99, %struct.wps_parse_attr* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %96
  %104 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %105 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %106 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %107 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @wps_process_key_wrap_auth(%struct.wps_data* %104, %struct.wpabuf* %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %103
  %112 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %113 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %114 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @wps_process_r_snonce2(%struct.wps_data* %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %111, %103, %96
  %119 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %120 = call i32 @wpabuf_free(%struct.wpabuf* %119)
  %121 = load i8*, i8** @SEND_WSC_NACK, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %124 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %125, i32* %9, align 4
  br label %153

126:                                              ; preds = %111
  %127 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %128 = call i32 @wpabuf_free(%struct.wpabuf* %127)
  %129 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %130 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %126
  %136 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %137 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %139, align 8
  %141 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %142 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @WPS_EV_AP_PIN_SUCCESS, align 4
  %147 = call i32 %140(i32 %145, i32 %146, i32* null)
  br label %148

148:                                              ; preds = %135, %126
  %149 = load i64, i64* @SEND_M7, align 8
  %150 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %151 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %148, %118, %88, %71, %54, %28, %16
  %154 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %155 = icmp ne %struct.wps_parse_attr* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %158 = call i32 @os_free(%struct.wps_parse_attr* %157)
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* %9, align 4
  ret i32 %160
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_validate_m6_encr(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_process_r_snonce2(%struct.wps_data*, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
