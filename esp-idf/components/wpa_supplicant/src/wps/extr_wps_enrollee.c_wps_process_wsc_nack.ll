; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_wsc_nack.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_enrollee.c_wps_process_wsc_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, i32, i32, i32*, i32* }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32*, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WPS: Received WSC_NACK\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WPS: No Message Type attribute\00", align 1
@WPS_WSC_NACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"WPS: Invalid Message Type %d\00", align 1
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"WPS: Mismatch in registrar nonce\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"WPS: Received Registrar Nonce\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"WPS: Expected Registrar Nonce\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"WPS: Mismatch in enrollee nonce\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"WPS: Received Enrollee Nonce\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"WPS: Expected Enrollee Nonce\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"WPS: No Configuration Error attribute in WSC_NACK\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"WPS: Registrar terminated negotiation with Configuration Error %d\00", align 1
@WPS_M3 = common dso_local global i32 0, align 4
@WPS_M5 = common dso_local global i32 0, align 4
@WPS_M7 = common dso_local global i32 0, align 4
@SEND_WSC_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_process_wsc_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_wsc_nack(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_data*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 @os_zalloc(i32 32)
  %11 = inttoptr i64 %10 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %11, %struct.wps_parse_attr** %5, align 8
  %12 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %13 = icmp eq %struct.wps_parse_attr* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %15, i32* %6, align 4
  br label %165

16:                                               ; preds = %2
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %18 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %19 = call i64 @wps_parse_msg(%struct.wpabuf* %17, %struct.wps_parse_attr* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %22, i32* %6, align 4
  br label %165

23:                                               ; preds = %16
  %24 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %25 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %31, i32* %6, align 4
  br label %165

32:                                               ; preds = %23
  %33 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %34 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WPS_WSC_NACK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %42 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %46, i32* %6, align 4
  br label %165

47:                                               ; preds = %32
  %48 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %49 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %54 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %57 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @WPS_NONCE_LEN, align 4
  %60 = call i64 @os_memcmp(i32* %55, i32* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %52, %47
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %67 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @WPS_NONCE_LEN, align 4
  %70 = call i32 @wpa_hexdump(i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %68, i32 %69)
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %73 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @WPS_NONCE_LEN, align 4
  %76 = call i32 @wpa_hexdump(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32* %74, i32 %75)
  %77 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %77, i32* %6, align 4
  br label %165

78:                                               ; preds = %52
  %79 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %80 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %85 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %88 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* @WPS_NONCE_LEN, align 4
  %91 = call i64 @os_memcmp(i32* %86, i32* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %83, %78
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %98 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @WPS_NONCE_LEN, align 4
  %101 = call i32 @wpa_hexdump(i32 %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32* %99, i32 %100)
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %104 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @WPS_NONCE_LEN, align 4
  %107 = call i32 @wpa_hexdump(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32* %105, i32 %106)
  %108 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %108, i32* %6, align 4
  br label %165

109:                                              ; preds = %83
  %110 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %111 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %117, i32* %6, align 4
  br label %165

118:                                              ; preds = %109
  %119 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %120 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @WPA_GET_BE16(i32* %121)
  store i64 %122, i64* %7, align 8
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load i64, i64* %7, align 8
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i64 %124)
  %126 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %127 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  switch i32 %128, label %159 [
    i32 130, label %129
    i32 129, label %139
    i32 128, label %149
  ]

129:                                              ; preds = %118
  %130 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %131 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @WPS_M3, align 4
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %136 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @wps_fail_event(i32 %132, i32 %133, i64 %134, i32 %137)
  br label %160

139:                                              ; preds = %118
  %140 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %141 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @WPS_M5, align 4
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %146 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @wps_fail_event(i32 %142, i32 %143, i64 %144, i32 %147)
  br label %160

149:                                              ; preds = %118
  %150 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %151 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @WPS_M7, align 4
  %154 = load i64, i64* %7, align 8
  %155 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %156 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @wps_fail_event(i32 %152, i32 %153, i64 %154, i32 %157)
  br label %160

159:                                              ; preds = %118
  br label %160

160:                                              ; preds = %159, %149, %139, %129
  %161 = load i32, i32* @SEND_WSC_NACK, align 4
  %162 = load %struct.wps_data*, %struct.wps_data** %3, align 8
  %163 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %160, %114, %93, %62, %39, %28, %21, %14
  %166 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %167 = icmp ne %struct.wps_parse_attr* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %170 = call i32 @os_free(%struct.wps_parse_attr* %169)
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wps_fail_event(i32, i32, i64, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
