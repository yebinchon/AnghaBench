; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tls_process_certificate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_read.c_tls_process_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.x509_certificate = type { %struct.x509_certificate* }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLSv1: Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"TLSv1: Too short Certificate message (len=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"TLSv1: Unexpected Certificate message length (len=%lu != left=%lu)\00", align 1
@TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_CERTIFICATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [124 x i8] c"TLSv1: Received unexpected handshake message %d (expected Certificate/ServerKeyExchange/CertificateRequest/ServerHelloDone)\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"TLSv1: Received Certificate (certificate_list len %lu)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"TLSv1: Too short Certificate (left=%lu)\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"TLSv1: Unexpected certificate_list length (len=%lu left=%lu)\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"TLSv1: Failed to parse certificate_list\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"TLSv1: Unexpected certificate length (len=%lu left=%lu)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"TLSv1: Certificate %lu (len %lu)\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"TLSv1: Failed to parse the certificate\00", align 1
@TLS_ALERT_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [62 x i8] c"TLSv1: Server certificate chain validation failed (reason=%d)\00", align 1
@TLS_ALERT_UNSUPPORTED_CERTIFICATE = common dso_local global i32 0, align 4
@TLS_ALERT_CERTIFICATE_REVOKED = common dso_local global i32 0, align 4
@TLS_ALERT_CERTIFICATE_EXPIRED = common dso_local global i32 0, align 4
@TLS_ALERT_CERTIFICATE_UNKNOWN = common dso_local global i32 0, align 4
@TLS_ALERT_UNKNOWN_CA = common dso_local global i32 0, align 4
@SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64, i64*, i64*)* @tls_process_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_certificate(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.x509_certificate*, align 8
  %19 = alloca %struct.x509_certificate*, align 8
  %20 = alloca %struct.x509_certificate*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.x509_certificate* null, %struct.x509_certificate** %18, align 8
  store %struct.x509_certificate* null, %struct.x509_certificate** %19, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %31 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %32 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %33 = call i32 @tls_alert(%struct.tlsv1_client* %30, i32 %31, i32 %32)
  store i32 -1, i32* %5, align 4
  br label %327

34:                                               ; preds = %4
  %35 = load i64*, i64** %8, align 8
  store i64* %35, i64** %10, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %45 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %46 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %47 = call i32 @tls_alert(%struct.tlsv1_client* %44, i32 %45, i32 %46)
  store i32 -1, i32* %5, align 4
  br label %327

48:                                               ; preds = %34
  %49 = load i64*, i64** %10, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %10, align 8
  %51 = load i64, i64* %49, align 8
  store i64 %51, i64* %17, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = call i64 @WPA_GET_BE24(i64* %52)
  store i64 %53, i64* %13, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  store i64* %55, i64** %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub i64 %56, 4
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %48
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %67 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %68 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %69 = call i32 @tls_alert(%struct.tlsv1_client* %66, i32 %67, i32 %68)
  store i32 -1, i32* %5, align 4
  br label %327

70:                                               ; preds = %48
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* @TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = call i32 @tls_process_server_key_exchange(%struct.tlsv1_client* %75, i64 %76, i64* %77, i64* %78)
  store i32 %79, i32* %5, align 4
  br label %327

80:                                               ; preds = %70
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = load i64*, i64** %9, align 8
  %89 = call i32 @tls_process_certificate_request(%struct.tlsv1_client* %85, i64 %86, i64* %87, i64* %88)
  store i32 %89, i32* %5, align 4
  br label %327

90:                                               ; preds = %80
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* @TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = load i64*, i64** %9, align 8
  %99 = call i32 @tls_process_server_hello_done(%struct.tlsv1_client* %95, i64 %96, i64* %97, i64* %98)
  store i32 %99, i32* %5, align 4
  br label %327

100:                                              ; preds = %90
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load i64, i64* %17, align 8
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  %108 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %109 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %110 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %111 = call i32 @tls_alert(%struct.tlsv1_client* %108, i32 %109, i32 %110)
  store i32 -1, i32* %5, align 4
  br label %327

112:                                              ; preds = %100
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = load i64, i64* %13, align 8
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i64 %114)
  %116 = load i64*, i64** %10, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  store i64* %118, i64** %11, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = load i64*, i64** %10, align 8
  %121 = ptrtoint i64* %119 to i64
  %122 = ptrtoint i64* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 8
  %125 = icmp slt i64 %124, 3
  br i1 %125, label %126, label %134

126:                                              ; preds = %112
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load i64, i64* %12, align 8
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %128)
  %130 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %131 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %132 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %133 = call i32 @tls_alert(%struct.tlsv1_client* %130, i32 %131, i32 %132)
  store i32 -1, i32* %5, align 4
  br label %327

134:                                              ; preds = %112
  %135 = load i64*, i64** %10, align 8
  %136 = call i64 @WPA_GET_BE24(i64* %135)
  store i64 %136, i64* %14, align 8
  %137 = load i64*, i64** %10, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 3
  store i64* %138, i64** %10, align 8
  %139 = load i64*, i64** %11, align 8
  %140 = load i64*, i64** %10, align 8
  %141 = ptrtoint i64* %139 to i64
  %142 = ptrtoint i64* %140 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 8
  %145 = load i64, i64* %14, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %134
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = load i64, i64* %14, align 8
  %150 = load i64*, i64** %11, align 8
  %151 = load i64*, i64** %10, align 8
  %152 = ptrtoint i64* %150 to i64
  %153 = ptrtoint i64* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 8
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i64 %149, i64 %155)
  %157 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %158 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %159 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %160 = call i32 @tls_alert(%struct.tlsv1_client* %157, i32 %158, i32 %159)
  store i32 -1, i32* %5, align 4
  br label %327

161:                                              ; preds = %134
  store i64 0, i64* %16, align 8
  br label %162

162:                                              ; preds = %264, %161
  %163 = load i64*, i64** %10, align 8
  %164 = load i64*, i64** %11, align 8
  %165 = icmp ult i64* %163, %164
  br i1 %165, label %166, label %271

166:                                              ; preds = %162
  %167 = load i64*, i64** %11, align 8
  %168 = load i64*, i64** %10, align 8
  %169 = ptrtoint i64* %167 to i64
  %170 = ptrtoint i64* %168 to i64
  %171 = sub i64 %169, %170
  %172 = sdiv exact i64 %171, 8
  %173 = icmp slt i64 %172, 3
  br i1 %173, label %174, label %183

174:                                              ; preds = %166
  %175 = load i32, i32* @MSG_DEBUG, align 4
  %176 = call i32 (i32, i8*, ...) @wpa_printf(i32 %175, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %177 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %178 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %179 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %180 = call i32 @tls_alert(%struct.tlsv1_client* %177, i32 %178, i32 %179)
  %181 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %182 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %181)
  store i32 -1, i32* %5, align 4
  br label %327

183:                                              ; preds = %166
  %184 = load i64*, i64** %10, align 8
  %185 = call i64 @WPA_GET_BE24(i64* %184)
  store i64 %185, i64* %15, align 8
  %186 = load i64*, i64** %10, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 3
  store i64* %187, i64** %10, align 8
  %188 = load i64*, i64** %11, align 8
  %189 = load i64*, i64** %10, align 8
  %190 = ptrtoint i64* %188 to i64
  %191 = ptrtoint i64* %189 to i64
  %192 = sub i64 %190, %191
  %193 = sdiv exact i64 %192, 8
  %194 = load i64, i64* %15, align 8
  %195 = icmp ult i64 %193, %194
  br i1 %195, label %196, label %212

196:                                              ; preds = %183
  %197 = load i32, i32* @MSG_DEBUG, align 4
  %198 = load i64, i64* %15, align 8
  %199 = load i64*, i64** %11, align 8
  %200 = load i64*, i64** %10, align 8
  %201 = ptrtoint i64* %199 to i64
  %202 = ptrtoint i64* %200 to i64
  %203 = sub i64 %201, %202
  %204 = sdiv exact i64 %203, 8
  %205 = call i32 (i32, i8*, ...) @wpa_printf(i32 %197, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 %198, i64 %204)
  %206 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %207 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %208 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %209 = call i32 @tls_alert(%struct.tlsv1_client* %206, i32 %207, i32 %208)
  %210 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %211 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %210)
  store i32 -1, i32* %5, align 4
  br label %327

212:                                              ; preds = %183
  %213 = load i32, i32* @MSG_DEBUG, align 4
  %214 = load i64, i64* %16, align 8
  %215 = load i64, i64* %15, align 8
  %216 = call i32 (i32, i8*, ...) @wpa_printf(i32 %213, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %214, i64 %215)
  %217 = load i64, i64* %16, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %240

219:                                              ; preds = %212
  %220 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %221 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @crypto_public_key_free(i32 %222)
  %224 = load i64*, i64** %10, align 8
  %225 = load i64, i64* %15, align 8
  %226 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %227 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %226, i32 0, i32 3
  %228 = call i64 @tls_parse_cert(i64* %224, i64 %225, i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %219
  %231 = load i32, i32* @MSG_DEBUG, align 4
  %232 = call i32 (i32, i8*, ...) @wpa_printf(i32 %231, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %233 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %234 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %235 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %236 = call i32 @tls_alert(%struct.tlsv1_client* %233, i32 %234, i32 %235)
  %237 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %238 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %237)
  store i32 -1, i32* %5, align 4
  br label %327

239:                                              ; preds = %219
  br label %240

240:                                              ; preds = %239, %212
  %241 = load i64*, i64** %10, align 8
  %242 = load i64, i64* %15, align 8
  %243 = call %struct.x509_certificate* @x509_certificate_parse(i64* %241, i64 %242)
  store %struct.x509_certificate* %243, %struct.x509_certificate** %20, align 8
  %244 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  %245 = icmp eq %struct.x509_certificate* %244, null
  br i1 %245, label %246, label %255

246:                                              ; preds = %240
  %247 = load i32, i32* @MSG_DEBUG, align 4
  %248 = call i32 (i32, i8*, ...) @wpa_printf(i32 %247, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %249 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %250 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %251 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %252 = call i32 @tls_alert(%struct.tlsv1_client* %249, i32 %250, i32 %251)
  %253 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %254 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %253)
  store i32 -1, i32* %5, align 4
  br label %327

255:                                              ; preds = %240
  %256 = load %struct.x509_certificate*, %struct.x509_certificate** %19, align 8
  %257 = icmp eq %struct.x509_certificate* %256, null
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  store %struct.x509_certificate* %259, %struct.x509_certificate** %18, align 8
  br label %264

260:                                              ; preds = %255
  %261 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  %262 = load %struct.x509_certificate*, %struct.x509_certificate** %19, align 8
  %263 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %262, i32 0, i32 0
  store %struct.x509_certificate* %261, %struct.x509_certificate** %263, align 8
  br label %264

264:                                              ; preds = %260, %258
  %265 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  store %struct.x509_certificate* %265, %struct.x509_certificate** %19, align 8
  %266 = load i64, i64* %16, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %16, align 8
  %268 = load i64, i64* %15, align 8
  %269 = load i64*, i64** %10, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 %268
  store i64* %270, i64** %10, align 8
  br label %162

271:                                              ; preds = %162
  %272 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %273 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %272, i32 0, i32 2
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = icmp ne %struct.TYPE_2__* %274, null
  br i1 %275, label %276, label %314

276:                                              ; preds = %271
  %277 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %278 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %277, i32 0, i32 2
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %283 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %284 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i64 @x509_certificate_chain_validate(i32 %281, %struct.x509_certificate* %282, i32* %21, i32 %285)
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %288, label %314

288:                                              ; preds = %276
  %289 = load i32, i32* @MSG_DEBUG, align 4
  %290 = load i32, i32* %21, align 4
  %291 = call i32 (i32, i8*, ...) @wpa_printf(i32 %289, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* %21, align 4
  switch i32 %292, label %305 [
    i32 133, label %293
    i32 128, label %295
    i32 131, label %297
    i32 132, label %299
    i32 130, label %301
    i32 129, label %303
  ]

293:                                              ; preds = %288
  %294 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  store i32 %294, i32* %22, align 4
  br label %307

295:                                              ; preds = %288
  %296 = load i32, i32* @TLS_ALERT_UNSUPPORTED_CERTIFICATE, align 4
  store i32 %296, i32* %22, align 4
  br label %307

297:                                              ; preds = %288
  %298 = load i32, i32* @TLS_ALERT_CERTIFICATE_REVOKED, align 4
  store i32 %298, i32* %22, align 4
  br label %307

299:                                              ; preds = %288
  %300 = load i32, i32* @TLS_ALERT_CERTIFICATE_EXPIRED, align 4
  store i32 %300, i32* %22, align 4
  br label %307

301:                                              ; preds = %288
  %302 = load i32, i32* @TLS_ALERT_CERTIFICATE_UNKNOWN, align 4
  store i32 %302, i32* %22, align 4
  br label %307

303:                                              ; preds = %288
  %304 = load i32, i32* @TLS_ALERT_UNKNOWN_CA, align 4
  store i32 %304, i32* %22, align 4
  br label %307

305:                                              ; preds = %288
  %306 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  store i32 %306, i32* %22, align 4
  br label %307

307:                                              ; preds = %305, %303, %301, %299, %297, %295, %293
  %308 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %309 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %310 = load i32, i32* %22, align 4
  %311 = call i32 @tls_alert(%struct.tlsv1_client* %308, i32 %309, i32 %310)
  %312 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %313 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %312)
  store i32 -1, i32* %5, align 4
  br label %327

314:                                              ; preds = %276, %271
  %315 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %316 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %315)
  %317 = load i64*, i64** %11, align 8
  %318 = load i64*, i64** %8, align 8
  %319 = ptrtoint i64* %317 to i64
  %320 = ptrtoint i64* %318 to i64
  %321 = sub i64 %319, %320
  %322 = sdiv exact i64 %321, 8
  %323 = load i64*, i64** %9, align 8
  store i64 %322, i64* %323, align 8
  %324 = load i32, i32* @SERVER_KEY_EXCHANGE, align 4
  %325 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %326 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  store i32 0, i32* %5, align 4
  br label %327

327:                                              ; preds = %314, %307, %246, %230, %196, %174, %147, %126, %104, %94, %84, %74, %61, %40, %26
  %328 = load i32, i32* %5, align 4
  ret i32 %328
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i32 @tls_process_server_key_exchange(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_certificate_request(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_server_hello_done(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @x509_certificate_chain_free(%struct.x509_certificate*) #1

declare dso_local i32 @crypto_public_key_free(i32) #1

declare dso_local i64 @tls_parse_cert(i64*, i64, i32*) #1

declare dso_local %struct.x509_certificate* @x509_certificate_parse(i64*, i64) #1

declare dso_local i64 @x509_certificate_chain_validate(i32, %struct.x509_certificate*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
