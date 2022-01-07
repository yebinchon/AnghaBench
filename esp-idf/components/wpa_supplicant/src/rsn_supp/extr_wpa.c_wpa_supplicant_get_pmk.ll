; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_get_pmk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_get_pmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i64, i64, i32, %struct.rsn_pmksa_cache_entry*, i32, i32, i32, i32, i64 }
%struct.rsn_pmksa_cache_entry = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RSN: found matching PMKID from PMKSA cache\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"RSN: no matching PMKID found\00", align 1
@PMKID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"RSN: matched PMKID\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"RSN: PMK from PMKSA cache\00", align 1
@PMK_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"WPA: PMK from EAPOL state machines\00", align 1
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"RSN: the new PMK matches with the PMKID\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [77 x i8] c"RSN: PMKID mismatch - authentication server may have derived different MSK?!\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [88 x i8] c"WPA: Failed to get master session key from EAPOL state machines - key handshake aborted\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"RSN: Cancelled PMKSA caching attempt\00", align 1
@WPA_KEY_MGMT_OSEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [60 x i8] c"RSN: no PMKSA entry found - trigger full EAP authentication\00", align 1
@IEEE802_1X_TYPE_EAPOL_START = common dso_local global i32 0, align 4
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i8*, i32*)* @wpa_supplicant_get_pmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_get_pmk(%struct.wpa_sm* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 4
  %19 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %18, align 8
  %20 = icmp ne %struct.rsn_pmksa_cache_entry* %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call %struct.rsn_pmksa_cache_entry* @pmksa_cache_get(i32 %24, i8* %25, i32* %26, i32* null)
  %28 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %28, i32 0, i32 4
  store %struct.rsn_pmksa_cache_entry* %27, %struct.rsn_pmksa_cache_entry** %29, align 8
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %30, i32 0, i32 4
  %32 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %31, align 8
  %33 = icmp ne %struct.rsn_pmksa_cache_entry* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %40

37:                                               ; preds = %21
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %16, %3
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %46 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %45, i32 0, i32 4
  %47 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %46, align 8
  %48 = icmp ne %struct.rsn_pmksa_cache_entry* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %51, i32 0, i32 4
  %53 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %52, align 8
  %54 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PMKID_LEN, align 4
  %57 = call i64 @os_memcmp_const(i32* %50, i32 %55, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %49
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @PMKID_LEN, align 4
  %63 = call i32 @wpa_hexdump(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %61, i32 %62)
  %64 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %65 = call i32 @wpa_sm_set_pmk_from_pmksa(%struct.wpa_sm* %64)
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %68 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %71 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @wpa_hexdump_key(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %72)
  br label %200

74:                                               ; preds = %49, %44, %41
  %75 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %76 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @wpa_key_mgmt_wpa_ieee8021x(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %199

80:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  %81 = load i32, i32* @PMK_LEN, align 4
  store i32 %81, i32* %10, align 4
  %82 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %83 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store i32 -1, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %80
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %180

90:                                               ; preds = %87
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %11, align 8
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %93 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @wpa_hexdump_key(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %99 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %101 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @WPA_PROTO_RSN, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %136

105:                                              ; preds = %90
  %106 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %107 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @wpa_key_mgmt_suite_b(i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %136, label %111

111:                                              ; preds = %105
  %112 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %113 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @wpa_key_mgmt_ft(i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %111
  %118 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %119 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %122 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %127 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %130 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %133 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call %struct.rsn_pmksa_cache_entry* @pmksa_cache_add(i32 %120, i32 %123, i32 %124, i32* null, i32 0, i8* %125, i32 %128, i32 %131, i64 %134)
  store %struct.rsn_pmksa_cache_entry* %135, %struct.rsn_pmksa_cache_entry** %11, align 8
  br label %136

136:                                              ; preds = %117, %111, %105, %90
  %137 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %138 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %137, i32 0, i32 4
  %139 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %138, align 8
  %140 = icmp ne %struct.rsn_pmksa_cache_entry* %139, null
  br i1 %140, label %155, label %141

141:                                              ; preds = %136
  %142 = load i32*, i32** %7, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %146 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = call %struct.rsn_pmksa_cache_entry* @pmksa_cache_get(i32 %147, i8* %148, i32* %149, i32* null)
  %151 = icmp ne %struct.rsn_pmksa_cache_entry* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = call i32 @wpa_printf(i32 %153, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %170

155:                                              ; preds = %144, %141, %136
  %156 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %11, align 8
  %157 = icmp ne %struct.rsn_pmksa_cache_entry* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %155
  %159 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %160 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %159, i32 0, i32 4
  %161 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %160, align 8
  %162 = icmp ne %struct.rsn_pmksa_cache_entry* %161, null
  br i1 %162, label %169, label %163

163:                                              ; preds = %158
  %164 = load i32*, i32** %7, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @MSG_INFO, align 4
  %168 = call i32 @wpa_printf(i32 %167, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %248

169:                                              ; preds = %163, %158, %155
  br label %170

170:                                              ; preds = %169, %152
  %171 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %172 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %171, i32 0, i32 4
  %173 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %172, align 8
  %174 = icmp ne %struct.rsn_pmksa_cache_entry* %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %170
  %176 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %11, align 8
  %177 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %178 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %177, i32 0, i32 4
  store %struct.rsn_pmksa_cache_entry* %176, %struct.rsn_pmksa_cache_entry** %178, align 8
  br label %179

179:                                              ; preds = %175, %170
  br label %198

180:                                              ; preds = %87
  %181 = load i32, i32* @MSG_WARNING, align 4
  %182 = call i32 @wpa_printf(i32 %181, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.7, i64 0, i64 0))
  %183 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %184 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %183, i32 0, i32 4
  %185 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %184, align 8
  %186 = icmp ne %struct.rsn_pmksa_cache_entry* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = load i32, i32* @MSG_DEBUG, align 4
  %189 = call i32 @wpa_printf(i32 %188, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %190 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %191 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %190, i32 0, i32 4
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %191, align 8
  store i32 1, i32* %8, align 4
  br label %197

192:                                              ; preds = %180
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  store i32 -1, i32* %4, align 4
  br label %248

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196, %187
  br label %198

198:                                              ; preds = %197, %179
  br label %199

199:                                              ; preds = %198, %74
  br label %200

200:                                              ; preds = %199, %59
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %247

203:                                              ; preds = %200
  %204 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %205 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i64 @wpa_key_mgmt_wpa_ieee8021x(i64 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %247

209:                                              ; preds = %203
  %210 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %211 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @wpa_key_mgmt_suite_b(i64 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %247, label %215

215:                                              ; preds = %209
  %216 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %217 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @wpa_key_mgmt_ft(i64 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %247, label %221

221:                                              ; preds = %215
  %222 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %223 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @WPA_KEY_MGMT_OSEN, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %247

227:                                              ; preds = %221
  %228 = load i32, i32* @MSG_DEBUG, align 4
  %229 = call i32 @wpa_printf(i32 %228, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  %230 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %231 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_START, align 4
  %232 = call i32* @wpa_sm_alloc_eapol(%struct.wpa_sm* %230, i32 %231, i32* null, i32 0, i64* %13, i32* null)
  store i32* %232, i32** %12, align 8
  %233 = load i32*, i32** %12, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %246

235:                                              ; preds = %227
  %236 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %237 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %238 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @ETH_P_EAPOL, align 4
  %241 = load i32*, i32** %12, align 8
  %242 = load i64, i64* %13, align 8
  %243 = call i32 @wpa_sm_ether_send(%struct.wpa_sm* %236, i32 %239, i32 %240, i32* %241, i64 %242)
  %244 = load i32*, i32** %12, align 8
  %245 = call i32 @os_free(i32* %244)
  store i32 -2, i32* %4, align 4
  br label %248

246:                                              ; preds = %227
  store i32 -1, i32* %4, align 4
  br label %248

247:                                              ; preds = %221, %215, %209, %203, %200
  store i32 0, i32* %4, align 4
  br label %248

248:                                              ; preds = %247, %246, %235, %195, %166
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_get(i32, i8*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @os_memcmp_const(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_sm_set_pmk_from_pmksa(%struct.wpa_sm*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

declare dso_local i64 @wpa_key_mgmt_wpa_ieee8021x(i64) #1

declare dso_local i32 @wpa_key_mgmt_suite_b(i64) #1

declare dso_local i32 @wpa_key_mgmt_ft(i64) #1

declare dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_add(i32, i32, i32, i32*, i32, i8*, i32, i32, i64) #1

declare dso_local i32* @wpa_sm_alloc_eapol(%struct.wpa_sm*, i32, i32*, i32, i64*, i32*) #1

declare dso_local i32 @wpa_sm_ether_send(%struct.wpa_sm*, i32, i32, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
