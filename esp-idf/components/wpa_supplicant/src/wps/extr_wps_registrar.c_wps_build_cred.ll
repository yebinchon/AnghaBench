; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_cred.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_build_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i8*, i32, i32, i8*, i8*, i32, %struct.TYPE_4__*, %struct.wps_credential, i64 }
%struct.TYPE_4__ = type { i8*, i32, i64, i8*, i32, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { %struct.wpabuf*, i32, i64 }
%struct.wps_credential = type { i32, i32, i32, i32, %struct.wps_credential*, %struct.wps_credential*, %struct.wps_credential* }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"WPS:  * Credential\00", align 1
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPS_WIFI_AUTH_OPEN = common dso_local global i32 0, align 4
@WPS_AUTH_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"WPS: Unsupported auth_type 0x%x\00", align 1
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"WPS: No suitable encryption type for WPA/WPA2\00", align 1
@WPS_ENCR_WEP = common dso_local global i32 0, align 4
@WPS_ENCR_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"WPS: No suitable encryption type for non-WPA/WPA2 mode\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_STATE_NOT_CONFIGURED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"WPS: Generated passphrase\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"WPS: Use PSK format for Network Key\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"WPS: Generated per-device PSK\00", align 1
@ATTR_CRED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"WPS:  * Credential (pre-configured)\00", align 1
@wps_testing_dummy_cred = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_cred(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [65 x i8], align 16
  %9 = alloca [65 x i8], align 16
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %10 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %11 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %10, i32 0, i32 6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %450

19:                                               ; preds = %2
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %23 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %28 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %27, i32 0, i32 7
  %29 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %30 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @os_memcpy(%struct.wps_credential* %28, i8* %31, i32 40)
  br label %423

33:                                               ; preds = %19
  %34 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %35 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %34, i32 0, i32 7
  %36 = call i32 @os_memset(%struct.wps_credential* %35, i32 0, i32 40)
  %37 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %38 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %38, i32 0, i32 6
  %40 = load %struct.wps_credential*, %struct.wps_credential** %39, align 8
  %41 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %42 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %41, i32 0, i32 6
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %47 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %46, i32 0, i32 6
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @os_memcpy(%struct.wps_credential* %40, i8* %45, i32 %50)
  %52 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %53 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %52, i32 0, i32 6
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %61 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %33
  %67 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %68 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %69 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %112

70:                                               ; preds = %33
  %71 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %72 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %79 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %80 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %111

81:                                               ; preds = %70
  %82 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %83 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @WPS_WIFI_AUTH_OPEN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* @WPS_WIFI_AUTH_OPEN, align 4
  %90 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %91 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  br label %110

92:                                               ; preds = %81
  %93 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %94 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @WPS_AUTH_SHARED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* @WPS_AUTH_SHARED, align 4
  %101 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %102 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  br label %109

103:                                              ; preds = %92
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %106 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  store i32 -1, i32* %3, align 4
  br label %472

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %88
  br label %111

111:                                              ; preds = %110, %77
  br label %112

112:                                              ; preds = %111, %66
  %113 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %114 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %117 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %120 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %112
  %125 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %126 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %124, %112
  %131 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %132 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @WPS_ENCR_AES, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @WPS_ENCR_AES, align 4
  %139 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %140 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  br label %156

141:                                              ; preds = %130
  %142 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %143 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %150 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %151 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  br label %155

152:                                              ; preds = %141
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = call i32 (i32, i8*, ...) @wpa_printf(i32 %153, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %472

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %137
  br label %184

157:                                              ; preds = %124
  %158 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %159 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @WPS_ENCR_WEP, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i32, i32* @WPS_ENCR_WEP, align 4
  %166 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %167 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 4
  br label %183

168:                                              ; preds = %157
  %169 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %170 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @WPS_ENCR_NONE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %168
  %176 = load i32, i32* @WPS_ENCR_NONE, align 4
  %177 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %178 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  br label %182

179:                                              ; preds = %168
  %180 = load i32, i32* @MSG_DEBUG, align 4
  %181 = call i32 (i32, i8*, ...) @wpa_printf(i32 %180, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %472

182:                                              ; preds = %175
  br label %183

183:                                              ; preds = %182, %164
  br label %184

184:                                              ; preds = %183, %156
  %185 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %186 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %189 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %189, i32 0, i32 2
  store i32 %187, i32* %190, align 8
  %191 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %192 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %191, i32 0, i32 7
  %193 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %192, i32 0, i32 4
  %194 = load %struct.wps_credential*, %struct.wps_credential** %193, align 8
  %195 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %196 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* @ETH_ALEN, align 4
  %199 = call i32 @os_memcpy(%struct.wps_credential* %194, i8* %197, i32 %198)
  %200 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %201 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %200, i32 0, i32 6
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @WPS_STATE_NOT_CONFIGURED, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %294

207:                                              ; preds = %184
  %208 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %209 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %208, i32 0, i32 6
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 7
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %294

214:                                              ; preds = %207
  %215 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %216 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %215, i32 0, i32 6
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 5
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %294, label %223

223:                                              ; preds = %214
  %224 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %225 = call i64 @random_get_bytes(i8* %224, i32 16)
  %226 = icmp slt i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %223
  store i32 -1, i32* %3, align 4
  br label %472

228:                                              ; preds = %223
  %229 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %230 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %229, i32 0, i32 4
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @os_free(i8* %231)
  %233 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %234 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %233, i32 0, i32 4
  %235 = load i8*, i8** %234, align 8
  %236 = icmp eq i8* %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %228
  store i32 -1, i32* %3, align 4
  br label %472

238:                                              ; preds = %228
  %239 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %240 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, -1
  store i32 %242, i32* %240, align 8
  br label %243

243:                                              ; preds = %263, %238
  %244 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %245 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %243
  %249 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %250 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %249, i32 0, i32 4
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %253 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %251, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp eq i32 %259, 61
  br label %261

261:                                              ; preds = %248, %243
  %262 = phi i1 [ false, %243 ], [ %260, %248 ]
  br i1 %262, label %263, label %268

263:                                              ; preds = %261
  %264 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %265 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, -1
  store i32 %267, i32* %265, align 8
  br label %243

268:                                              ; preds = %261
  %269 = load i32, i32* @MSG_DEBUG, align 4
  %270 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %271 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %270, i32 0, i32 4
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %274 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @wpa_hexdump_ascii_key(i32 %269, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %272, i32 %275)
  %277 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %278 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %278, i32 0, i32 5
  %280 = load %struct.wps_credential*, %struct.wps_credential** %279, align 8
  %281 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %282 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %281, i32 0, i32 4
  %283 = load i8*, i8** %282, align 8
  %284 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %285 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @os_memcpy(%struct.wps_credential* %280, i8* %283, i32 %286)
  %288 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %289 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %292 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %291, i32 0, i32 7
  %293 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %292, i32 0, i32 3
  store i32 %290, i32* %293, align 4
  br label %422

294:                                              ; preds = %214, %207, %184
  %295 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %296 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %295, i32 0, i32 8
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %318

299:                                              ; preds = %294
  %300 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %301 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %300, i32 0, i32 6
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %299
  %307 = load i32, i32* @MSG_DEBUG, align 4
  %308 = call i32 (i32, i8*, ...) @wpa_printf(i32 %307, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %309 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %310 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %309, i32 0, i32 7
  %311 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %310, i32 0, i32 5
  %312 = load %struct.wps_credential*, %struct.wps_credential** %311, align 8
  %313 = getelementptr inbounds [65 x i8], [65 x i8]* %8, i64 0, i64 0
  %314 = call i32 @os_memcpy(%struct.wps_credential* %312, i8* %313, i32 64)
  %315 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %316 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %315, i32 0, i32 7
  %317 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %316, i32 0, i32 3
  store i32 64, i32* %317, align 4
  br label %421

318:                                              ; preds = %299, %294
  %319 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %320 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %319, i32 0, i32 6
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 3
  %323 = load i8*, i8** %322, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %349

325:                                              ; preds = %318
  %326 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %327 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %326, i32 0, i32 7
  %328 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %327, i32 0, i32 5
  %329 = load %struct.wps_credential*, %struct.wps_credential** %328, align 8
  %330 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %331 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %330, i32 0, i32 6
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 3
  %334 = load i8*, i8** %333, align 8
  %335 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %336 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %335, i32 0, i32 6
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @os_memcpy(%struct.wps_credential* %329, i8* %334, i32 %339)
  %341 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %342 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %341, i32 0, i32 6
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %347 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %346, i32 0, i32 7
  %348 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %347, i32 0, i32 3
  store i32 %345, i32* %348, align 4
  br label %420

349:                                              ; preds = %318
  %350 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %351 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %354 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %355 = or i32 %353, %354
  %356 = and i32 %352, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %419

358:                                              ; preds = %349
  %359 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %360 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %359, i32 0, i32 4
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 @os_free(i8* %361)
  %363 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %364 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %363, i32 0, i32 5
  store i32 32, i32* %364, align 8
  %365 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %366 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %365, i32 0, i32 5
  %367 = load i32, i32* %366, align 8
  %368 = call i64 @os_malloc(i32 %367)
  %369 = inttoptr i64 %368 to i8*
  %370 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %371 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %370, i32 0, i32 4
  store i8* %369, i8** %371, align 8
  %372 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %373 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %372, i32 0, i32 4
  %374 = load i8*, i8** %373, align 8
  %375 = icmp eq i8* %374, null
  br i1 %375, label %376, label %377

376:                                              ; preds = %358
  store i32 -1, i32* %3, align 4
  br label %472

377:                                              ; preds = %358
  %378 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %379 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %378, i32 0, i32 4
  %380 = load i8*, i8** %379, align 8
  %381 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %382 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = call i64 @random_get_bytes(i8* %380, i32 %383)
  %385 = icmp slt i64 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %377
  %387 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %388 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %387, i32 0, i32 4
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 @os_free(i8* %389)
  %391 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %392 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %391, i32 0, i32 4
  store i8* null, i8** %392, align 8
  store i32 -1, i32* %3, align 4
  br label %472

393:                                              ; preds = %377
  %394 = load i32, i32* @MSG_DEBUG, align 4
  %395 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %396 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %395, i32 0, i32 4
  %397 = load i8*, i8** %396, align 8
  %398 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %399 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 8
  %401 = call i32 @wpa_hexdump_key(i32 %394, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %397, i32 %400)
  %402 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %403 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %402, i32 0, i32 7
  %404 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %403, i32 0, i32 5
  %405 = load %struct.wps_credential*, %struct.wps_credential** %404, align 8
  %406 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %407 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %408 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 8
  %410 = mul nsw i32 %409, 2
  %411 = call i32 @os_memcpy(%struct.wps_credential* %405, i8* %406, i32 %410)
  %412 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %413 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 8
  %415 = mul nsw i32 %414, 2
  %416 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %417 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %416, i32 0, i32 7
  %418 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %417, i32 0, i32 3
  store i32 %415, i32* %418, align 4
  br label %419

419:                                              ; preds = %393, %349
  br label %420

420:                                              ; preds = %419, %325
  br label %421

421:                                              ; preds = %420, %306
  br label %422

422:                                              ; preds = %421, %268
  br label %423

423:                                              ; preds = %422, %26
  %424 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %424, %struct.wpabuf** %6, align 8
  %425 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %426 = icmp eq %struct.wpabuf* %425, null
  br i1 %426, label %427, label %428

427:                                              ; preds = %423
  store i32 -1, i32* %3, align 4
  br label %472

428:                                              ; preds = %423
  %429 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %430 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %431 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %430, i32 0, i32 7
  %432 = call i64 @wps_build_credential(%struct.wpabuf* %429, %struct.wps_credential* %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %428
  %435 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %436 = call i32 @wpabuf_free(%struct.wpabuf* %435)
  store i32 -1, i32* %3, align 4
  br label %472

437:                                              ; preds = %428
  %438 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %439 = load i32, i32* @ATTR_CRED, align 4
  %440 = call i32 @wpabuf_put_be16(%struct.wpabuf* %438, i32 %439)
  %441 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %442 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %443 = call i32 @wpabuf_len(%struct.wpabuf* %442)
  %444 = call i32 @wpabuf_put_be16(%struct.wpabuf* %441, i32 %443)
  %445 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %446 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %447 = call i32 @wpabuf_put_buf(%struct.wpabuf* %445, %struct.wpabuf* %446)
  %448 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %449 = call i32 @wpabuf_free(%struct.wpabuf* %448)
  br label %450

450:                                              ; preds = %437, %18
  %451 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %452 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %451, i32 0, i32 6
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 5
  %455 = load %struct.TYPE_3__*, %struct.TYPE_3__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 0
  %457 = load %struct.wpabuf*, %struct.wpabuf** %456, align 8
  %458 = icmp ne %struct.wpabuf* %457, null
  br i1 %458, label %459, label %471

459:                                              ; preds = %450
  %460 = load i32, i32* @MSG_DEBUG, align 4
  %461 = call i32 (i32, i8*, ...) @wpa_printf(i32 %460, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %462 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %463 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %464 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %463, i32 0, i32 6
  %465 = load %struct.TYPE_4__*, %struct.TYPE_4__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 5
  %467 = load %struct.TYPE_3__*, %struct.TYPE_3__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 0
  %469 = load %struct.wpabuf*, %struct.wpabuf** %468, align 8
  %470 = call i32 @wpabuf_put_buf(%struct.wpabuf* %462, %struct.wpabuf* %469)
  br label %471

471:                                              ; preds = %459, %450
  store i32 0, i32* %3, align 4
  br label %472

472:                                              ; preds = %471, %434, %427, %386, %376, %237, %227, %179, %152, %103
  %473 = load i32, i32* %3, align 4
  ret i32 %473
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(%struct.wps_credential*, i8*, i32) #1

declare dso_local i32 @os_memset(%struct.wps_credential*, i32, i32) #1

declare dso_local i64 @random_get_bytes(i8*, i32) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i8*, i32) #1

declare dso_local i64 @os_malloc(i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i8*, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_credential(%struct.wpabuf*, %struct.wps_credential*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
