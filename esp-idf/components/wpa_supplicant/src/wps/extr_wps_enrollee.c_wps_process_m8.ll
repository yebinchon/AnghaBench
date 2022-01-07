; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_m8.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_m8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M8\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@RECV_M8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M8\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"WPS: AP Setup is locked - refuse registration of a new Registrar\00", align 1
@WPS_CFG_SETUP_LOCKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"WPS: Failed to decrypted Encrypted Settings attribute\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"WPS: Processing decrypted Encrypted Settings attribute\00", align 1
@WPS_MSG_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m8(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
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
  %12 = call i64 @os_zalloc(i32 40)
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
  br label %185

22:                                               ; preds = %3
  %23 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RECV_M8, align 8
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
  br label %185

39:                                               ; preds = %22
  %40 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %41 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %42 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %48 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %49 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %48, i32 0, i32 7
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
  br label %185

60:                                               ; preds = %46
  %61 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %62 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %60
  %68 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %69 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @WPS_CFG_SETUP_LOCKED, align 4
  %78 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %79 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** @SEND_WSC_NACK, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %83 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %84, i32* %9, align 4
  br label %185

85:                                               ; preds = %67, %60
  %86 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %87 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %88 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %91 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %86, i32 %89, i32 %92)
  store %struct.wpabuf* %93, %struct.wpabuf** %7, align 8
  %94 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %95 = icmp eq %struct.wpabuf* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %85
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i8*, i8** @SEND_WSC_NACK, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %102 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %103, i32* %9, align 4
  br label %185

104:                                              ; preds = %85
  %105 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %106 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %107 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %112 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i64 @wps_validate_m8_encr(%struct.wpabuf* %105, i32 %110, i32 %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %104
  %119 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %120 = call i32 @wpabuf_free(%struct.wpabuf* %119)
  %121 = load i8*, i8** @SEND_WSC_NACK, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %124 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %125, i32* %9, align 4
  br label %185

126:                                              ; preds = %104
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %129 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %130 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %131 = call i64 @wps_parse_msg(%struct.wpabuf* %129, %struct.wps_parse_attr* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %170, label %133

133:                                              ; preds = %126
  %134 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %135 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %136 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %137 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @wps_process_key_wrap_auth(%struct.wps_data* %134, %struct.wpabuf* %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %170, label %141

141:                                              ; preds = %133
  %142 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %143 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %144 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %147 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %150 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %153 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i64 @wps_process_creds(%struct.wps_data* %142, i32 %145, i32 %148, i32 %151, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %141
  %160 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %161 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %162 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %163 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %164 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  %167 = zext i1 %166 to i32
  %168 = call i64 @wps_process_ap_settings_e(%struct.wps_data* %160, %struct.wps_parse_attr* %161, %struct.wpabuf* %162, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %159, %141, %133, %126
  %171 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %172 = call i32 @wpabuf_free(%struct.wpabuf* %171)
  %173 = load i8*, i8** @SEND_WSC_NACK, align 8
  %174 = ptrtoint i8* %173 to i64
  %175 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %176 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %177, i32* %9, align 4
  br label %185

178:                                              ; preds = %159
  %179 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %180 = call i32 @wpabuf_free(%struct.wpabuf* %179)
  %181 = load i64, i64* @WPS_MSG_DONE, align 8
  %182 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %183 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %178, %170, %118, %96, %74, %54, %28, %16
  %186 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %187 = icmp ne %struct.wps_parse_attr* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %190 = call i32 @os_free(%struct.wps_parse_attr* %189)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32, i32* %9, align 4
  ret i32 %192
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_validate_m8_encr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_process_creds(%struct.wps_data*, i32, i32, i32, i32) #1

declare dso_local i64 @wps_process_ap_settings_e(%struct.wps_data*, %struct.wps_parse_attr*, %struct.wpabuf*, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
