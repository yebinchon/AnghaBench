; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_rx_eapol.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_rx_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i64, i64, i32, i64 }
%struct.ieee802_1x_hdr = type { i32, i32, i32 }
%struct.wpa_eapol_key = type { i32, i32, i32, i32 }

@gWpaSm = common dso_local global %struct.wpa_sm zeroinitializer, align 8
@EAPOL_VERSION = common dso_local global i32 0, align 4
@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i32 0, align 4
@EAPOL_KEY_TYPE_WPA = common dso_local global i32 0, align 4
@EAPOL_KEY_TYPE_RSN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"WPA: RX EAPOL-Key\00", align 1
@WPA_KEY_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_HMAC_SHA1_AES = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i64 0, align 8
@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@WPA_KEY_INFO_ACK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_SMK_MESSAGE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_REQUEST = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@WPA_KEY_INFO_ENCR_KEY_DATA = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_INDEX_MASK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_sm_rx_eapol(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_sm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee802_1x_hdr*, align 8
  %13 = alloca %struct.wpa_eapol_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wpa_sm* @gWpaSm, %struct.wpa_sm** %8, align 8
  store i32 -1, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 28
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %256

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  store i32* %23, i32** %16, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = bitcast i32* %24 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %25, %struct.ieee802_1x_hdr** %12, align 8
  %26 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %12, align 8
  %27 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %26, i64 1
  %28 = bitcast %struct.ieee802_1x_hdr* %27 to %struct.wpa_eapol_key*
  store %struct.wpa_eapol_key* %28, %struct.wpa_eapol_key** %13, align 8
  %29 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %12, align 8
  %30 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be_to_host16(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 12
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %12, align 8
  %38 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EAPOL_VERSION, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %12, align 8
  %45 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_KEY, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %17, align 4
  br label %254

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 12
  %56 = icmp ugt i64 %52, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 16
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %50
  store i32 0, i32* %17, align 4
  br label %254

62:                                               ; preds = %57
  %63 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %64 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EAPOL_KEY_TYPE_WPA, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %70 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EAPOL_KEY_TYPE_RSN, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %17, align 4
  br label %254

75:                                               ; preds = %68, %62
  %76 = load i32, i32* @MSG_MSGDUMP, align 4
  %77 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %78 = call i32 @wpa_eapol_key_dump(i32 %76, %struct.wpa_eapol_key* %77)
  %79 = load i32, i32* @MSG_MSGDUMP, align 4
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @wpa_hexdump(i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %75
  %88 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %89 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @WPA_GET_BE16(i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @WPA_KEY_INFO_TYPE_MASK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_MD5_RC4, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %254

103:                                              ; preds = %98, %87
  %104 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %105 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @WPA_CIPHER_CCMP, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %103
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %115 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @WPA_CIPHER_CCMP, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  br label %126

125:                                              ; preds = %119, %113
  br label %254

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %126, %109, %103
  %128 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %129 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %134 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %137 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %140 = call i64 @memcmp(i32 %135, i32 %138, i32 %139)
  %141 = icmp sle i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %254

143:                                              ; preds = %132, %127
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @WPA_KEY_INFO_ACK, align 4
  %146 = load i32, i32* @WPA_KEY_INFO_SMK_MESSAGE, align 4
  %147 = or i32 %145, %146
  %148 = and i32 %144, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  br label %254

151:                                              ; preds = %143
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @WPA_KEY_INFO_REQUEST, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %254

157:                                              ; preds = %151
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %164 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %165 = load i32, i32* %15, align 4
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i64 @wpa_supplicant_verify_eapol_key_mic(%struct.wpa_sm* %163, %struct.wpa_eapol_key* %164, i32 %165, i32* %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %254

171:                                              ; preds = %162, %157
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = sub i64 %173, 12
  %175 = sub i64 %174, 16
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %11, align 4
  %177 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %178 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @WPA_GET_BE16(i32 %179)
  %181 = load i32, i32* %11, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  br label %254

184:                                              ; preds = %171
  %185 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %186 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @WPA_GET_BE16(i32 %187)
  store i32 %188, i32* %11, align 4
  %189 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %190 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @WPA_PROTO_RSN, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %211

194:                                              ; preds = %184
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* @WPA_KEY_INFO_ENCR_KEY_DATA, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %194
  %200 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %201 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %202 = load i32, i32* %15, align 4
  %203 = call i64 @wpa_supplicant_decrypt_key_data(%struct.wpa_sm* %200, %struct.wpa_eapol_key* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %254

206:                                              ; preds = %199
  %207 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %208 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @WPA_GET_BE16(i32 %209)
  store i32 %210, i32* %11, align 4
  br label %211

211:                                              ; preds = %206, %194, %184
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %239

216:                                              ; preds = %211
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* @WPA_KEY_INFO_KEY_INDEX_MASK, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %254

222:                                              ; preds = %216
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %229 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %230 = load i32, i32* %15, align 4
  %231 = call i32 @wpa_supplicant_process_3_of_4(%struct.wpa_sm* %228, %struct.wpa_eapol_key* %229, i32 %230)
  br label %238

232:                                              ; preds = %222
  %233 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %236 = load i32, i32* %15, align 4
  %237 = call i32 @wpa_supplicant_process_1_of_4(%struct.wpa_sm* %233, i32* %234, %struct.wpa_eapol_key* %235, i32 %236)
  br label %238

238:                                              ; preds = %232, %227
  br label %253

239:                                              ; preds = %211
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = load %struct.wpa_sm*, %struct.wpa_sm** %8, align 8
  %246 = load i32*, i32** %5, align 8
  %247 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %13, align 8
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %15, align 4
  %250 = call i32 @wpa_supplicant_process_1_of_2(%struct.wpa_sm* %245, i32* %246, %struct.wpa_eapol_key* %247, i32 %248, i32 %249)
  br label %252

251:                                              ; preds = %239
  br label %252

252:                                              ; preds = %251, %244
  br label %253

253:                                              ; preds = %252, %238
  store i32 1, i32* %17, align 4
  br label %254

254:                                              ; preds = %253, %221, %205, %183, %170, %156, %150, %142, %125, %102, %74, %61, %49
  %255 = load i32, i32* %17, align 4
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %254, %21
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local i32 @wpa_eapol_key_dump(i32, %struct.wpa_eapol_key*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @WPA_GET_BE16(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @wpa_supplicant_verify_eapol_key_mic(%struct.wpa_sm*, %struct.wpa_eapol_key*, i32, i32*, i32) #1

declare dso_local i64 @wpa_supplicant_decrypt_key_data(%struct.wpa_sm*, %struct.wpa_eapol_key*, i32) #1

declare dso_local i32 @wpa_supplicant_process_3_of_4(%struct.wpa_sm*, %struct.wpa_eapol_key*, i32) #1

declare dso_local i32 @wpa_supplicant_process_1_of_4(%struct.wpa_sm*, i32*, %struct.wpa_eapol_key*, i32) #1

declare dso_local i32 @wpa_supplicant_process_1_of_2(%struct.wpa_sm*, i32*, %struct.wpa_eapol_key*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
