; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_eap_sm_process_request.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_eap_sm_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, %struct.wpabuf*, i32, i32*, %struct.eap_method*, i64 }
%struct.eap_method = type { i64, i64, i64 (%struct.eap_sm*, i32*, i32*)*, i64 (%struct.eap_sm*, i32*)*, %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, i32* (%struct.eap_sm*)* }
%struct.eap_method_ret = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i64, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@EAP_TYPE_NOTIFICATION = common dso_local global i64 0, align 8
@EAP_TYPE_EXPANDED = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"GET_METHOD\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Method private structure allocated failure\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Response build fail, return.\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@WPA_ERR_INVALID_BSSID = common dso_local global i32 0, align 4
@WPA2_ENT_EAP_STATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sm_process_request(%struct.eap_sm* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.eap_hdr*, align 8
  %12 = alloca %struct.eap_method*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.eap_method_ret, align 4
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store %struct.eap_method* null, %struct.eap_method** %12, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %17 = icmp eq %struct.wpabuf* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %20 = call i64 @wpabuf_len(%struct.wpabuf* %19)
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %23, i32* %3, align 4
  br label %315

24:                                               ; preds = %18
  %25 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %26 = call i64 @wpabuf_head(%struct.wpabuf* %25)
  %27 = inttoptr i64 %26 to %struct.eap_hdr*
  store %struct.eap_hdr* %27, %struct.eap_hdr** %11, align 8
  %28 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %29 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @be_to_host16(i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %34 = call i64 @wpabuf_len(%struct.wpabuf* %33)
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @ESP_FAIL, align 4
  store i32 %37, i32* %3, align 4
  br label %315

38:                                               ; preds = %24
  %39 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %40 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %43 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %48 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %47, i32 0, i32 1
  %49 = load %struct.wpabuf*, %struct.wpabuf** %48, align 8
  store %struct.wpabuf* %49, %struct.wpabuf** %13, align 8
  br label %266

50:                                               ; preds = %38
  %51 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %52 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %55 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %57 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %56, i64 1
  %58 = bitcast %struct.eap_hdr* %57 to i64*
  store i64* %58, i64** %10, align 8
  %59 = load i64*, i64** %10, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %10, align 8
  %61 = load i64, i64* %59, align 8
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %67 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %68 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @eap_sm_build_identity_resp(%struct.eap_sm* %66, i64 %69, i32 0)
  %71 = inttoptr i64 %70 to %struct.wpabuf*
  store %struct.wpabuf* %71, %struct.wpabuf** %13, align 8
  br label %266

72:                                               ; preds = %50
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @EAP_TYPE_NOTIFICATION, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %313

77:                                               ; preds = %72
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @EAP_TYPE_EXPANDED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i64, i64* %6, align 8
  %83 = icmp ult i64 %82, 24
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @ESP_FAIL, align 4
  store i32 %85, i32* %3, align 4
  br label %315

86:                                               ; preds = %81
  %87 = load i64*, i64** %10, align 8
  %88 = call i64 @WPA_GET_BE24(i64* %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 3
  store i64* %90, i64** %10, align 8
  %91 = load i64*, i64** %10, align 8
  %92 = call i64 @WPA_GET_BE32(i64* %91)
  store i64 %92, i64* %8, align 8
  br label %96

93:                                               ; preds = %77
  %94 = load i64, i64* @EAP_VENDOR_IETF, align 8
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %9, align 8
  store i64 %95, i64* %8, align 8
  br label %96

96:                                               ; preds = %93, %86
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %100 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %99, i32 0, i32 4
  %101 = load %struct.eap_method*, %struct.eap_method** %100, align 8
  %102 = icmp ne %struct.eap_method* %101, null
  br i1 %102, label %103, label %143

103:                                              ; preds = %98
  %104 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %105 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %104, i32 0, i32 4
  %106 = load %struct.eap_method*, %struct.eap_method** %105, align 8
  %107 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %106, i32 0, i32 4
  %108 = load %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)** %107, align 8
  %109 = icmp ne %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)* %108, null
  br i1 %109, label %110, label %143

110:                                              ; preds = %103
  %111 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %112 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %143

115:                                              ; preds = %110
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %118 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %117, i32 0, i32 4
  %119 = load %struct.eap_method*, %struct.eap_method** %118, align 8
  %120 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %116, %121
  br i1 %122, label %123, label %143

123:                                              ; preds = %115
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %126 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %125, i32 0, i32 4
  %127 = load %struct.eap_method*, %struct.eap_method** %126, align 8
  %128 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %124, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %123
  %132 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %133 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %132, i32 0, i32 4
  %134 = load %struct.eap_method*, %struct.eap_method** %133, align 8
  %135 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %134, i32 0, i32 4
  %136 = load %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)** %135, align 8
  %137 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %138 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %139 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %142 = call %struct.wpabuf* %136(%struct.eap_sm* %137, i32* %140, %struct.eap_method_ret* %14, %struct.wpabuf* %141)
  store %struct.wpabuf* %142, %struct.wpabuf** %13, align 8
  br label %200

143:                                              ; preds = %123, %115, %110, %103, %98
  %144 = load i64, i64* %7, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call %struct.eap_method* @eap_peer_get_eap_method(i64 %144, i64 %145)
  store %struct.eap_method* %146, %struct.eap_method** %12, align 8
  %147 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %148 = icmp eq %struct.eap_method* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %252

150:                                              ; preds = %143
  %151 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %152 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %151, i32 0, i32 4
  %153 = load %struct.eap_method*, %struct.eap_method** %152, align 8
  %154 = icmp ne %struct.eap_method* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %157 = call i32 @eap_deinit_prev_method(%struct.eap_sm* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %150
  %159 = load %struct.eap_method*, %struct.eap_method** %12, align 8
  %160 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %161 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %160, i32 0, i32 4
  store %struct.eap_method* %159, %struct.eap_method** %161, align 8
  %162 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %163 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %162, i32 0, i32 4
  %164 = load %struct.eap_method*, %struct.eap_method** %163, align 8
  %165 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %164, i32 0, i32 5
  %166 = load i32* (%struct.eap_sm*)*, i32* (%struct.eap_sm*)** %165, align 8
  %167 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %168 = call i32* %166(%struct.eap_sm* %167)
  %169 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %170 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %169, i32 0, i32 3
  store i32* %168, i32** %170, align 8
  %171 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %172 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %158
  %176 = load i32, i32* @MSG_ERROR, align 4
  %177 = call i32 @wpa_printf(i32 %176, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %178 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %179 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %178, i32 0, i32 4
  store %struct.eap_method* null, %struct.eap_method** %179, align 8
  br label %252

180:                                              ; preds = %158
  %181 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %182 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %181, i32 0, i32 4
  %183 = load %struct.eap_method*, %struct.eap_method** %182, align 8
  %184 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %183, i32 0, i32 4
  %185 = load %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)** %184, align 8
  %186 = icmp ne %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %180
  %188 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %189 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %188, i32 0, i32 4
  %190 = load %struct.eap_method*, %struct.eap_method** %189, align 8
  %191 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %190, i32 0, i32 4
  %192 = load %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)** %191, align 8
  %193 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %194 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %195 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %198 = call %struct.wpabuf* %192(%struct.eap_sm* %193, i32* %196, %struct.eap_method_ret* %14, %struct.wpabuf* %197)
  store %struct.wpabuf* %198, %struct.wpabuf** %13, align 8
  br label %199

199:                                              ; preds = %187, %180
  br label %200

200:                                              ; preds = %199, %131
  %201 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %202 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %201, i32 0, i32 4
  %203 = load %struct.eap_method*, %struct.eap_method** %202, align 8
  %204 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %203, i32 0, i32 3
  %205 = load i64 (%struct.eap_sm*, i32*)*, i64 (%struct.eap_sm*, i32*)** %204, align 8
  %206 = icmp ne i64 (%struct.eap_sm*, i32*)* %205, null
  br i1 %206, label %207, label %251

207:                                              ; preds = %200
  %208 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %209 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %208, i32 0, i32 4
  %210 = load %struct.eap_method*, %struct.eap_method** %209, align 8
  %211 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %210, i32 0, i32 2
  %212 = load i64 (%struct.eap_sm*, i32*, i32*)*, i64 (%struct.eap_sm*, i32*, i32*)** %211, align 8
  %213 = icmp ne i64 (%struct.eap_sm*, i32*, i32*)* %212, null
  br i1 %213, label %214, label %251

214:                                              ; preds = %207
  %215 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %216 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %215, i32 0, i32 4
  %217 = load %struct.eap_method*, %struct.eap_method** %216, align 8
  %218 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %217, i32 0, i32 3
  %219 = load i64 (%struct.eap_sm*, i32*)*, i64 (%struct.eap_sm*, i32*)** %218, align 8
  %220 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %221 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %222 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = call i64 %219(%struct.eap_sm* %220, i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %251

226:                                              ; preds = %214
  %227 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %228 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %226
  %232 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %233 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %232, i32 0, i32 5
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @os_free(i64 %234)
  br label %236

236:                                              ; preds = %231, %226
  %237 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %238 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %237, i32 0, i32 4
  %239 = load %struct.eap_method*, %struct.eap_method** %238, align 8
  %240 = getelementptr inbounds %struct.eap_method, %struct.eap_method* %239, i32 0, i32 2
  %241 = load i64 (%struct.eap_sm*, i32*, i32*)*, i64 (%struct.eap_sm*, i32*, i32*)** %240, align 8
  %242 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %243 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %244 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %247 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %246, i32 0, i32 2
  %248 = call i64 %241(%struct.eap_sm* %242, i32* %245, i32* %247)
  %249 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %250 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %249, i32 0, i32 5
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %236, %214, %207, %200
  br label %266

252:                                              ; preds = %175, %149
  %253 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %254 = load i64, i64* %9, align 8
  %255 = load %struct.eap_hdr*, %struct.eap_hdr** %11, align 8
  %256 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @eap_sm_build_nak(%struct.eap_sm* %253, i64 %254, i64 %257)
  %259 = inttoptr i64 %258 to %struct.wpabuf*
  store %struct.wpabuf* %259, %struct.wpabuf** %13, align 8
  %260 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %261 = icmp eq %struct.wpabuf* %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %252
  %263 = load i32, i32* @ESP_FAIL, align 4
  store i32 %263, i32* %3, align 4
  br label %315

264:                                              ; preds = %252
  %265 = load i32, i32* @ESP_FAIL, align 4
  store i32 %265, i32* %15, align 4
  br label %266

266:                                              ; preds = %264, %251, %65, %46
  %267 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %268 = icmp eq %struct.wpabuf* %267, null
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load i32, i32* @MSG_ERROR, align 4
  %271 = call i32 @wpa_printf(i32 %270, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %272 = load i32, i32* @ESP_FAIL, align 4
  store i32 %272, i32* %3, align 4
  br label %315

273:                                              ; preds = %266
  %274 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %275 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %276 = call i32 @eap_sm_send_eapol(%struct.eap_sm* %274, %struct.wpabuf* %275)
  store i32 %276, i32* %15, align 4
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* @ESP_OK, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %295

280:                                              ; preds = %273
  %281 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %282 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %283 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %282, i32 0, i32 1
  %284 = load %struct.wpabuf*, %struct.wpabuf** %283, align 8
  %285 = icmp ne %struct.wpabuf* %281, %284
  br i1 %285, label %286, label %294

286:                                              ; preds = %280
  %287 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %288 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %287, i32 0, i32 1
  %289 = load %struct.wpabuf*, %struct.wpabuf** %288, align 8
  %290 = call i32 @wpabuf_free(%struct.wpabuf* %289)
  %291 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %292 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %293 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %292, i32 0, i32 1
  store %struct.wpabuf* %291, %struct.wpabuf** %293, align 8
  br label %294

294:                                              ; preds = %286, %280
  br label %312

295:                                              ; preds = %273
  %296 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %297 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %296, i32 0, i32 1
  %298 = load %struct.wpabuf*, %struct.wpabuf** %297, align 8
  %299 = call i32 @wpabuf_free(%struct.wpabuf* %298)
  %300 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %301 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %300, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %301, align 8
  %302 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %303 = call i32 @wpabuf_free(%struct.wpabuf* %302)
  store %struct.wpabuf* null, %struct.wpabuf** %13, align 8
  %304 = load i32, i32* %15, align 4
  %305 = load i32, i32* @WPA_ERR_INVALID_BSSID, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %295
  %308 = load i32, i32* @WPA2_ENT_EAP_STATE_FAIL, align 4
  store i32 %308, i32* %15, align 4
  %309 = load i32, i32* @WPA2_ENT_EAP_STATE_FAIL, align 4
  %310 = call i32 @wpa2_set_eap_state(i32 %309)
  br label %311

311:                                              ; preds = %307, %295
  br label %312

312:                                              ; preds = %311, %294
  br label %313

313:                                              ; preds = %312, %76
  %314 = load i32, i32* %15, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %313, %269, %262, %84, %36, %22
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i64 @eap_sm_build_identity_resp(%struct.eap_sm*, i64, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i64 @WPA_GET_BE32(i64*) #1

declare dso_local %struct.eap_method* @eap_peer_get_eap_method(i64, i64) #1

declare dso_local i32 @eap_deinit_prev_method(%struct.eap_sm*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i64) #1

declare dso_local i64 @eap_sm_build_nak(%struct.eap_sm*, i64, i64) #1

declare dso_local i32 @eap_sm_send_eapol(%struct.eap_sm*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa2_set_eap_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
