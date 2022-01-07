; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_record.c_tlsv1_record_receive.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_record.c_tlsv1_record_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_record_layer = type { i64, i64, i64, i64, i32*, i32, i32, i32 }
%struct.crypto_hash = type { i32 }

@TLS_RECORD_HEADER_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLSv1: Too short record (in_len=%lu) - need more data\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"TLSv1: Record Layer - Received\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"TLSv1: Received content type %d version %d.%d length %d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"TLSv1: Unexpected protocol version %u.%u\00", align 1
@TLS_ALERT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"TLSv1: Record overflow (len=%lu)\00", align 1
@TLS_ALERT_RECORD_OVERFLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"TLSv1: Not all record data included (rlen=%lu > in_len=%lu)\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_ALERT = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_APPLICATION_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"TLSv1: Ignore record with unknown content type 0x%x\00", align 1
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"TLSv1: Not enough output buffer for processing received record\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_NULL_WITH_NULL_NULL = common dso_local global i64 0, align 8
@TLS_ALERT_DECRYPTION_FAILED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"TLSv1: Record Layer - Decrypted data\00", align 1
@TLS_VERSION_1_1 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"TLSv1.1: Not enough room for IV\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"TLSv1: Too short record (no pad)\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"TLSv1: Incorrect pad length (%u, plen=%lu) in received record\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"TLSv1: Invalid pad in received record\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"TLSv1: Record Layer - Decrypted data with IV and padding removed\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"TLSv1: Too short record; no hash value\00", align 1
@TLS_ALERT_BAD_RECORD_MAC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"TLSv1: Record Layer - Failed to initialize HMAC\00", align 1
@TLS_SEQ_NUM_LEN = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [47 x i8] c"TLSv1: Record Layer - Failed to calculate HMAC\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"TLSv1: Invalid HMAC value in received message (force_mac_error=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_record_receive(%struct.tlsv1_record_layer* %0, i32* %1, i64 %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlsv1_record_layer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.crypto_hash*, align 8
  %19 = alloca [2 x i32], align 4
  %20 = alloca [100 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.tlsv1_record_layer* %0, %struct.tlsv1_record_layer** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.crypto_hash* null, %struct.crypto_hash** %18, align 8
  store i32 0, i32* %21, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %6
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @MSG_MSGDUMP, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @wpa_hexdump(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %32, i32 %34)
  store i32 0, i32* %7, align 4
  br label %389

36:                                               ; preds = %6
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %22, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = call i64 @WPA_GET_BE16(i32* %41)
  store i64 %42, i64* %15, align 8
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %15, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 3
  br i1 %57, label %58, label %69

58:                                               ; preds = %36
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i32, i32* @TLS_ALERT_PROTOCOL_VERSION, align 4
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  store i32 -1, i32* %7, align 4
  br label %389

69:                                               ; preds = %36
  %70 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %71 = load i64, i64* %15, align 8
  %72 = add i64 %70, %71
  %73 = icmp ugt i64 %72, 18432
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %77 = load i64, i64* %15, align 8
  %78 = add i64 %76, %77
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @TLS_ALERT_RECORD_OVERFLOW, align 4
  %81 = load i32*, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  store i32 -1, i32* %7, align 4
  br label %389

82:                                               ; preds = %69
  %83 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %83
  store i32* %85, i32** %9, align 8
  %86 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i64 %94, i64 %95)
  store i32 0, i32* %7, align 4
  br label %389

97:                                               ; preds = %82
  %98 = load i32, i32* @MSG_MSGDUMP, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i64, i64* %15, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @wpa_hexdump(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %99, i32 %101)
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %97
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* @TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* @TLS_CONTENT_TYPE_ALERT, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* @TLS_CONTENT_TYPE_APPLICATION_DATA, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load i32, i32* %22, align 4
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %123 = load i32*, i32** %13, align 8
  store i32 %122, i32* %123, align 4
  store i32 -1, i32* %7, align 4
  br label %389

124:                                              ; preds = %114, %110, %106, %97
  %125 = load i64, i64* %15, align 8
  store i64 %125, i64* %10, align 8
  %126 = load i64*, i64** %12, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %134 = load i32*, i32** %13, align 8
  store i32 %133, i32* %134, align 4
  store i32 -1, i32* %7, align 4
  br label %389

135:                                              ; preds = %124
  %136 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %137 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TLS_NULL_WITH_NULL_NULL, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %357

141:                                              ; preds = %135
  %142 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %143 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i64, i64* %10, align 8
  %148 = call i64 @crypto_cipher_decrypt(i32 %144, i32* %145, i32* %146, i64 %147)
  %149 = trunc i64 %148 to i32
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = load i32, i32* @TLS_ALERT_DECRYPTION_FAILED, align 4
  %153 = load i32*, i32** %13, align 8
  store i32 %152, i32* %153, align 4
  store i32 -1, i32* %7, align 4
  br label %389

154:                                              ; preds = %141
  %155 = load i64, i64* %10, align 8
  store i64 %155, i64* %23, align 8
  %156 = load i32, i32* @MSG_MSGDUMP, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = load i64, i64* %23, align 8
  %159 = call i32 @wpa_hexdump_key(i32 %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32* %157, i64 %158)
  %160 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %161 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %263

164:                                              ; preds = %154
  %165 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %166 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @TLS_VERSION_1_1, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %170, label %197

170:                                              ; preds = %164
  %171 = load i64, i64* %23, align 8
  %172 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %173 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ult i64 %171, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32, i32* @MSG_DEBUG, align 4
  %178 = call i32 (i32, i8*, ...) @wpa_printf(i32 %177, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %264

179:                                              ; preds = %170
  %180 = load i32*, i32** %11, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %183 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i64, i64* %23, align 8
  %187 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %188 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = sub i64 %186, %189
  %191 = call i32 @os_memmove(i32* %180, i32* %185, i64 %190)
  %192 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %193 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %23, align 8
  %196 = sub i64 %195, %194
  store i64 %196, i64* %23, align 8
  br label %197

197:                                              ; preds = %179, %164
  %198 = load i64, i64* %23, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* @MSG_DEBUG, align 4
  %202 = call i32 (i32, i8*, ...) @wpa_printf(i32 %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %264

203:                                              ; preds = %197
  %204 = load i32*, i32** %11, align 8
  %205 = load i64, i64* %23, align 8
  %206 = sub i64 %205, 1
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %23, align 8
  %212 = icmp uge i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %203
  %214 = load i32, i32* @MSG_DEBUG, align 4
  %215 = load i32, i32* %17, align 4
  %216 = load i64, i64* %23, align 8
  %217 = call i32 (i32, i8*, ...) @wpa_printf(i32 %214, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i32 %215, i64 %216)
  store i32 1, i32* %21, align 4
  br label %264

218:                                              ; preds = %203
  %219 = load i64, i64* %23, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = sub i64 %219, %221
  %223 = sub i64 %222, 1
  store i64 %223, i64* %14, align 8
  br label %224

224:                                              ; preds = %250, %218
  %225 = load i64, i64* %14, align 8
  %226 = load i64, i64* %23, align 8
  %227 = sub i64 %226, 1
  %228 = icmp ult i64 %225, %227
  br i1 %228, label %229, label %253

229:                                              ; preds = %224
  %230 = load i32*, i32** %11, align 8
  %231 = load i64, i64* %14, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %17, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %249

236:                                              ; preds = %229
  %237 = load i32, i32* @MSG_DEBUG, align 4
  %238 = load i32*, i32** %11, align 8
  %239 = load i64, i64* %23, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %17, align 4
  %242 = sext i32 %241 to i64
  %243 = sub i64 0, %242
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = getelementptr inbounds i32, i32* %244, i64 -1
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, 1
  %248 = call i32 @wpa_hexdump(i32 %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32* %245, i32 %247)
  store i32 1, i32* %21, align 4
  br label %264

249:                                              ; preds = %229
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %14, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %14, align 8
  br label %224

253:                                              ; preds = %224
  %254 = load i32, i32* %17, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %23, align 8
  %258 = sub i64 %257, %256
  store i64 %258, i64* %23, align 8
  %259 = load i32, i32* @MSG_MSGDUMP, align 4
  %260 = load i32*, i32** %11, align 8
  %261 = load i64, i64* %23, align 8
  %262 = call i32 @wpa_hexdump_key(i32 %259, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i32* %260, i64 %261)
  br label %263

263:                                              ; preds = %253, %154
  br label %264

264:                                              ; preds = %263, %236, %213, %200, %176
  %265 = load i64, i64* %23, align 8
  %266 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %267 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = icmp ult i64 %265, %268
  br i1 %269, label %270, label %275

270:                                              ; preds = %264
  %271 = load i32, i32* @MSG_DEBUG, align 4
  %272 = call i32 (i32, i8*, ...) @wpa_printf(i32 %271, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %273 = load i32, i32* @TLS_ALERT_BAD_RECORD_MAC, align 4
  %274 = load i32*, i32** %13, align 8
  store i32 %273, i32* %274, align 4
  store i32 -1, i32* %7, align 4
  br label %389

275:                                              ; preds = %264
  %276 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %277 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* %23, align 8
  %280 = sub i64 %279, %278
  store i64 %280, i64* %23, align 8
  %281 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %282 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %285 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %288 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = call %struct.crypto_hash* @crypto_hash_init(i32 %283, i32 %286, i64 %289)
  store %struct.crypto_hash* %290, %struct.crypto_hash** %18, align 8
  %291 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %292 = icmp eq %struct.crypto_hash* %291, null
  br i1 %292, label %293, label %298

293:                                              ; preds = %275
  %294 = load i32, i32* @MSG_DEBUG, align 4
  %295 = call i32 (i32, i8*, ...) @wpa_printf(i32 %294, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  %296 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %297 = load i32*, i32** %13, align 8
  store i32 %296, i32* %297, align 4
  store i32 -1, i32* %7, align 4
  br label %389

298:                                              ; preds = %275
  %299 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %300 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %301 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %300, i32 0, i32 4
  %302 = load i32*, i32** %301, align 8
  %303 = load i64, i64* @TLS_SEQ_NUM_LEN, align 8
  %304 = call i32 @crypto_hash_update(%struct.crypto_hash* %299, i32* %302, i64 %303)
  %305 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %306 = load i32*, i32** %9, align 8
  %307 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %308 = sub i64 0, %307
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = call i32 @crypto_hash_update(%struct.crypto_hash* %305, i32* %309, i64 3)
  %311 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %312 = load i64, i64* %23, align 8
  %313 = call i32 @WPA_PUT_BE16(i32* %311, i64 %312)
  %314 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %315 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %316 = call i32 @crypto_hash_update(%struct.crypto_hash* %314, i32* %315, i64 2)
  %317 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %318 = load i32*, i32** %11, align 8
  %319 = load i64, i64* %23, align 8
  %320 = call i32 @crypto_hash_update(%struct.crypto_hash* %317, i32* %318, i64 %319)
  store i64 400, i64* %16, align 8
  %321 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %322 = getelementptr inbounds [100 x i32], [100 x i32]* %20, i64 0, i64 0
  %323 = call i64 @crypto_hash_finish(%struct.crypto_hash* %321, i32* %322, i64* %16)
  %324 = trunc i64 %323 to i32
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %331

326:                                              ; preds = %298
  %327 = load i32, i32* @MSG_DEBUG, align 4
  %328 = call i32 (i32, i8*, ...) @wpa_printf(i32 %327, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  %329 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %330 = load i32*, i32** %13, align 8
  store i32 %329, i32* %330, align 4
  store i32 -1, i32* %7, align 4
  br label %389

331:                                              ; preds = %298
  %332 = load i64, i64* %16, align 8
  %333 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %334 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %333, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %332, %335
  br i1 %336, label %348, label %337

337:                                              ; preds = %331
  %338 = getelementptr inbounds [100 x i32], [100 x i32]* %20, i64 0, i64 0
  %339 = load i32*, i32** %11, align 8
  %340 = load i64, i64* %23, align 8
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  %342 = load i64, i64* %16, align 8
  %343 = call i64 @os_memcmp(i32* %338, i32* %341, i64 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %337
  %346 = load i32, i32* %21, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %345, %337, %331
  %349 = load i32, i32* @MSG_DEBUG, align 4
  %350 = load i32, i32* %21, align 4
  %351 = call i32 (i32, i8*, ...) @wpa_printf(i32 %349, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.17, i64 0, i64 0), i32 %350)
  %352 = load i32, i32* @TLS_ALERT_BAD_RECORD_MAC, align 4
  %353 = load i32*, i32** %13, align 8
  store i32 %352, i32* %353, align 4
  store i32 -1, i32* %7, align 4
  br label %389

354:                                              ; preds = %345
  %355 = load i64, i64* %23, align 8
  %356 = load i64*, i64** %12, align 8
  store i64 %355, i64* %356, align 8
  br label %364

357:                                              ; preds = %135
  %358 = load i32*, i32** %11, align 8
  %359 = load i32*, i32** %9, align 8
  %360 = load i64, i64* %10, align 8
  %361 = call i32 @os_memcpy(i32* %358, i32* %359, i64 %360)
  %362 = load i64, i64* %10, align 8
  %363 = load i64*, i64** %12, align 8
  store i64 %362, i64* %363, align 8
  br label %364

364:                                              ; preds = %357, %354
  %365 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %366 = load i64*, i64** %12, align 8
  %367 = load i64, i64* %366, align 8
  %368 = add i64 %365, %367
  %369 = icmp ugt i64 %368, 17408
  br i1 %369, label %370, label %379

370:                                              ; preds = %364
  %371 = load i32, i32* @MSG_DEBUG, align 4
  %372 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %373 = load i64*, i64** %12, align 8
  %374 = load i64, i64* %373, align 8
  %375 = add i64 %372, %374
  %376 = call i32 (i32, i8*, ...) @wpa_printf(i32 %371, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %375)
  %377 = load i32, i32* @TLS_ALERT_RECORD_OVERFLOW, align 4
  %378 = load i32*, i32** %13, align 8
  store i32 %377, i32* %378, align 4
  store i32 -1, i32* %7, align 4
  br label %389

379:                                              ; preds = %364
  %380 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %381 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %380, i32 0, i32 4
  %382 = load i32*, i32** %381, align 8
  %383 = load i64, i64* @TLS_SEQ_NUM_LEN, align 8
  %384 = call i32 @inc_byte_array(i32* %382, i64 %383)
  %385 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %386 = load i64, i64* %15, align 8
  %387 = add i64 %385, %386
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %7, align 4
  br label %389

389:                                              ; preds = %379, %370, %348, %326, %293, %270, %151, %130, %118, %92, %74, %58, %27
  %390 = load i32, i32* %7, align 4
  ret i32 %390
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i64 @crypto_cipher_decrypt(i32, i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memmove(i32*, i32*, i64) #1

declare dso_local %struct.crypto_hash* @crypto_hash_init(i32, i32, i64) #1

declare dso_local i32 @crypto_hash_update(%struct.crypto_hash*, i32*, i64) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i64 @crypto_hash_finish(%struct.crypto_hash*, i32*, i64*) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @inc_byte_array(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
