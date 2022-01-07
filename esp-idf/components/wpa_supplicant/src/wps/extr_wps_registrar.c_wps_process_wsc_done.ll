; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_wsc_done.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_wsc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, %struct.TYPE_8__*, i32*, i32, i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, i64, i32, i32 (i32, %struct.wps_credential*)*, i32, i32*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.wps_credential = type { i32, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WPS: Received WSC_Done\00", align 1
@RECV_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"WPS: Unexpected state (%d) for receiving WSC_Done\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"WPS: No Message Type attribute\00", align 1
@WPS_WSC_DONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"WPS: Invalid Message Type %d\00", align 1
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"WPS: Mismatch in registrar nonce\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"WPS: Mismatch in enrollee nonce\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"WPS: Negotiation completed successfully\00", align 1
@WPS_STATE_NOT_CONFIGURED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [67 x i8] c"WPS: Moving to Configured state based on first Enrollee connection\00", align 1
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@WPS_STATE_CONFIGURED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"WPS: Generated random passphrase\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"WPS: Failed to configure the new PSK\00", align 1
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@WPS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_process_wsc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_wsc_done(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wps_parse_attr, align 8
  %7 = alloca %struct.wps_credential, align 4
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %11 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RECV_DONE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %17 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %16, i32 0, i32 14
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %23 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %26, i32* %3, align 4
  br label %327

27:                                               ; preds = %15, %2
  %28 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %29 = call i64 @wps_parse_msg(%struct.wpabuf* %28, %struct.wps_parse_attr* %6)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %32, i32* %3, align 4
  br label %327

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = icmp eq i64* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %40, i32* %3, align 4
  br label %327

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WPS_WSC_DONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %53, i32* %3, align 4
  br label %327

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %60 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %59, i32 0, i32 13
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @WPS_NONCE_LEN, align 4
  %65 = call i64 @os_memcmp(i32 %61, i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58, %54
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %70, i32* %3, align 4
  br label %327

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %77 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @WPS_NONCE_LEN, align 4
  %82 = call i64 @os_memcmp(i32 %78, i32* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75, %71
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %87, i32* %3, align 4
  br label %327

88:                                               ; preds = %75
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %91 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %92 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %97 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %96, i32 0, i32 11
  %98 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %99 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @wps_device_store(%struct.TYPE_9__* %95, i32* %97, i32* %100)
  %102 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %103 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @WPS_STATE_NOT_CONFIGURED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %212

109:                                              ; preds = %88
  %110 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %111 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %110, i32 0, i32 8
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %212

114:                                              ; preds = %109
  %115 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %116 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %212

121:                                              ; preds = %114
  %122 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %123 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %212, label %130

130:                                              ; preds = %121
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  %133 = call i32 @os_memset(%struct.wps_credential* %7, i32 0, i32 24)
  %134 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %7, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %137 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %142 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @os_memcpy(i32 %135, i32* %140, i32 %145)
  %147 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %148 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %7, i32 0, i32 4
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %154 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %155 = or i32 %153, %154
  %156 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %7, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %158 = load i32, i32* @WPS_ENCR_AES, align 4
  %159 = or i32 %157, %158
  %160 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %7, i32 0, i32 1
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %7, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %164 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %163, i32 0, i32 8
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %167 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @os_memcpy(i32 %162, i32* %165, i32 %168)
  %170 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %171 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %7, i32 0, i32 2
  store i32 %172, i32* %173, align 4
  %174 = load i64, i64* @WPS_STATE_CONFIGURED, align 8
  %175 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %176 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i64 %174, i64* %178, align 8
  %179 = load i32, i32* @MSG_DEBUG, align 4
  %180 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %181 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %180, i32 0, i32 8
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %184 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %183, i32 0, i32 9
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @wpa_hexdump_ascii_key(i32 %179, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32* %182, i32 %185)
  %187 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %188 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %187, i32 0, i32 1
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 4
  %191 = load i32 (i32, %struct.wps_credential*)*, i32 (i32, %struct.wps_credential*)** %190, align 8
  %192 = icmp ne i32 (i32, %struct.wps_credential*)* %191, null
  br i1 %192, label %193, label %205

193:                                              ; preds = %130
  %194 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %195 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %194, i32 0, i32 1
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  %198 = load i32 (i32, %struct.wps_credential*)*, i32 (i32, %struct.wps_credential*)** %197, align 8
  %199 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %200 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %199, i32 0, i32 1
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = call i32 %198(i32 %203, %struct.wps_credential* %7)
  br label %205

205:                                              ; preds = %193, %130
  %206 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %207 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %206, i32 0, i32 8
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @os_free(i32* %208)
  %210 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %211 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %210, i32 0, i32 8
  store i32* null, i32** %211, align 8
  br label %212

212:                                              ; preds = %205, %121, %114, %109, %88
  %213 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %214 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %213, i32 0, i32 1
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %212
  %220 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %221 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %220, i32 0, i32 10
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %219
  %225 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %226 = call i32 @wps_sta_cred_cb(%struct.wps_data* %225)
  br label %227

227:                                              ; preds = %224, %219, %212
  %228 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %229 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %228, i32 0, i32 8
  %230 = load i32*, i32** %229, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %259

232:                                              ; preds = %227
  %233 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %234 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %233, i32 0, i32 1
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %239 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %242 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %241, i32 0, i32 8
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %245 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @wps_cb_new_psk(%struct.TYPE_9__* %237, i32 %240, i32* %243, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %232
  %250 = load i32, i32* @MSG_DEBUG, align 4
  %251 = call i32 (i32, i8*, ...) @wpa_printf(i32 %250, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %252

252:                                              ; preds = %249, %232
  %253 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %254 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %253, i32 0, i32 8
  %255 = load i32*, i32** %254, align 8
  %256 = call i32 @os_free(i32* %255)
  %257 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %258 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %257, i32 0, i32 8
  store i32* null, i32** %258, align 8
  br label %259

259:                                              ; preds = %252, %227
  %260 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %261 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %260, i32 0, i32 1
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %263, align 8
  %265 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %266 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %269 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %272 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %275 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @wps_cb_reg_success(%struct.TYPE_9__* %264, i32 %267, i32* %270, i32 %273, i32 %276)
  %278 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %279 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %320

282:                                              ; preds = %259
  %283 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %284 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %283, i32 0, i32 1
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %286, align 8
  %288 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %289 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %288, i32 0, i32 2
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %292 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @wps_registrar_remove_pbc_session(%struct.TYPE_9__* %287, i32* %290, i32 %293)
  %295 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %296 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %295, i32 0, i32 1
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %298, align 8
  %300 = call i32 @wps_registrar_pbc_completed(%struct.TYPE_9__* %299)
  %301 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %302 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %301, i32 0, i32 1
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 1
  %307 = call i32 @os_get_time(i32* %306)
  %308 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %309 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %308, i32 0, i32 1
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %316 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* @WPS_UUID_LEN, align 4
  %319 = call i32 @os_memcpy(i32 %314, i32* %317, i32 %318)
  br label %321

320:                                              ; preds = %259
  br label %321

321:                                              ; preds = %320, %282
  %322 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %323 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %322, i32 0, i32 1
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %323, align 8
  %325 = call i32 @wps_success_event(%struct.TYPE_8__* %324)
  %326 = load i32, i32* @WPS_DONE, align 4
  store i32 %326, i32* %3, align 4
  br label %327

327:                                              ; preds = %321, %84, %67, %47, %37, %31, %20
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @wps_device_store(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @os_memset(%struct.wps_credential*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wps_sta_cred_cb(%struct.wps_data*) #1

declare dso_local i64 @wps_cb_new_psk(%struct.TYPE_9__*, i32, i32*, i32) #1

declare dso_local i32 @wps_cb_reg_success(%struct.TYPE_9__*, i32, i32*, i32, i32) #1

declare dso_local i32 @wps_registrar_remove_pbc_session(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @wps_registrar_pbc_completed(%struct.TYPE_9__*) #1

declare dso_local i32 @os_get_time(i32*) #1

declare dso_local i32 @wps_success_event(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
