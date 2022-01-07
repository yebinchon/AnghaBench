; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_m4.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_m4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"WPS: Received M4\00", align 1
@SEND_WSC_NACK = common dso_local global i8* null, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@RECV_M4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"WPS: Unexpected state (%d) for receiving M4\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"WPS: Failed to decrypted Encrypted Settings attribute\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"WPS: Processing decrypted Encrypted Settings attribute\00", align 1
@SEND_M5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*, %struct.wps_parse_attr*)* @wps_process_m4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m4(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wps_parse_attr* %2) #0 {
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
  br label %147

22:                                               ; preds = %3
  %23 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RECV_M4, align 8
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
  br label %147

39:                                               ; preds = %22
  %40 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %41 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %42 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @wps_process_enrollee_nonce(%struct.wps_data* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %39
  %47 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %48 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %49 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = call i64 @wps_process_authenticator(%struct.wps_data* %47, i32 %50, %struct.wpabuf* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %46
  %55 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %56 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %57 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @wps_process_r_hash1(%struct.wps_data* %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %63 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %64 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @wps_process_r_hash2(%struct.wps_data* %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61, %54, %46, %39
  %69 = load i8*, i8** @SEND_WSC_NACK, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %72 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %73, i32* %9, align 4
  br label %147

74:                                               ; preds = %61
  %75 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %76 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %77 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %80 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %75, i32 %78, i32 %81)
  store %struct.wpabuf* %82, %struct.wpabuf** %7, align 8
  %83 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %84 = icmp eq %struct.wpabuf* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i8*, i8** @SEND_WSC_NACK, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %92, i32* %9, align 4
  br label %147

93:                                               ; preds = %74
  %94 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %95 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %6, align 8
  %96 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i64 @wps_validate_m4_encr(%struct.wpabuf* %94, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %93
  %103 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %104 = call i32 @wpabuf_free(%struct.wpabuf* %103)
  %105 = load i8*, i8** @SEND_WSC_NACK, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %108 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %109, i32* %9, align 4
  br label %147

110:                                              ; preds = %93
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %114 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %115 = call i64 @wps_parse_msg(%struct.wpabuf* %113, %struct.wps_parse_attr* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %110
  %118 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %119 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %120 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %121 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @wps_process_key_wrap_auth(%struct.wps_data* %118, %struct.wpabuf* %119, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %117
  %126 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %127 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %128 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @wps_process_r_snonce1(%struct.wps_data* %126, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %125, %117, %110
  %133 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %134 = call i32 @wpabuf_free(%struct.wpabuf* %133)
  %135 = load i8*, i8** @SEND_WSC_NACK, align 8
  %136 = ptrtoint i8* %135 to i64
  %137 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %138 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %139, i32* %9, align 4
  br label %147

140:                                              ; preds = %125
  %141 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %142 = call i32 @wpabuf_free(%struct.wpabuf* %141)
  %143 = load i64, i64* @SEND_M5, align 8
  %144 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %145 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %140, %132, %102, %85, %68, %28, %16
  %148 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %149 = icmp ne %struct.wps_parse_attr* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %8, align 8
  %152 = call i32 @os_free(%struct.wps_parse_attr* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* %9, align 4
  ret i32 %154
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @wps_process_enrollee_nonce(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_authenticator(%struct.wps_data*, i32, %struct.wpabuf*) #1

declare dso_local i64 @wps_process_r_hash1(%struct.wps_data*, i32) #1

declare dso_local i64 @wps_process_r_hash2(%struct.wps_data*, i32) #1

declare dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data*, i32, i32) #1

declare dso_local i64 @wps_validate_m4_encr(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_process_key_wrap_auth(%struct.wps_data*, %struct.wpabuf*, i32) #1

declare dso_local i64 @wps_process_r_snonce1(%struct.wps_data*, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
