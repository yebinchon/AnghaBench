; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_certificate_verify.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_certificate_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32*, i32*, i32* }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TLSv1: Client did not include CertificateVerify\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"TLSv1: Expected Handshake; received content type 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"TLSv1: Too short CertificateVerify message (len=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"TLSv1: Unexpected CertificateVerify message length (len=%lu != left=%lu)\00", align 1
@TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [77 x i8] c"TLSv1: Received unexpected handshake message %d (expected CertificateVerify)\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"TLSv1: Received CertificateVerify\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"TLSv1: CertificateVerify hash\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"TLSv1: Signature\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"TLSv1: No client public key to verify signature\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to decrypt signature\00", align 1
@TLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"TLSv1: Decrypted Signature\00", align 1
@.str.11 = private unnamed_addr constant [83 x i8] c"TLSv1: Invalid Signature in CertificateVerify - did not match with calculated hash\00", align 1
@CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@TLS_HASH_ALG_SHA256 = common dso_local global i64 0, align 8
@TLS_SIGN_ALG_RSA = common dso_local global i64 0, align 8
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64, i64*, i64*)* @tls_process_certificate_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_certificate_verify(%struct.tlsv1_server* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_server*, align 8
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
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %24 = load i32, i32* @MD5_MAC_LEN, align 4
  %25 = load i32, i32* @SHA1_MAC_LEN, align 4
  %26 = add nsw i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %17, align 8
  %29 = alloca i64, i64 %27, align 16
  store i64 %27, i64* %18, align 8
  store i32 0, i32* %21, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %4
  %34 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %35 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %42 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %43 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %44 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %41, i32 %42, i32 %43)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

45:                                               ; preds = %33
  %46 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = call i32 @tls_process_change_cipher_spec(%struct.tlsv1_server* %46, i64 %47, i64* %48, i64* %49)
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

51:                                               ; preds = %4
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i64, i64* %7, align 8
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %60 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %61 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %62 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %59, i32 %60, i32 %61)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

63:                                               ; preds = %51
  %64 = load i64*, i64** %8, align 8
  store i64* %64, i64** %10, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp ult i64 %67, 4
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load i64, i64* %12, align 8
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  %73 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %74 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %75 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %76 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %73, i32 %74, i32 %75)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

77:                                               ; preds = %63
  %78 = load i64*, i64** %10, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %10, align 8
  %80 = load i64, i64* %78, align 8
  store i64 %80, i64* %14, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = call i64 @WPA_GET_BE24(i64* %81)
  store i64 %82, i64* %13, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 3
  store i64* %84, i64** %10, align 8
  %85 = load i64, i64* %12, align 8
  %86 = sub i64 %85, 4
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %77
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i64 %92, i64 %93)
  %95 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %96 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %97 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %98 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %95, i32 %96, i32 %97)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

99:                                               ; preds = %77
  %100 = load i64*, i64** %10, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  store i64* %102, i64** %11, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = load i64, i64* %14, align 8
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i64 %108)
  %110 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %111 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %112 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %113 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %110, i32 %111, i32 %112)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

114:                                              ; preds = %99
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i64* %29, i64** %19, align 8
  %117 = load i32, i32* %21, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %156

119:                                              ; preds = %114
  %120 = load i32, i32* @MD5_MAC_LEN, align 4
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %15, align 8
  %122 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %123 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %119
  %128 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %129 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64*, i64** %19, align 8
  %133 = call i64 @crypto_hash_finish(i32* %131, i64* %132, i64* %15)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %127, %119
  %136 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %137 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %138 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %139 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %136, i32 %137, i32 %138)
  %140 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %141 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i32* null, i32** %142, align 8
  %143 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %144 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @crypto_hash_finish(i32* %146, i64* null, i64* null)
  %148 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %149 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i32* null, i32** %150, align 8
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

151:                                              ; preds = %127
  %152 = load i32, i32* @MD5_MAC_LEN, align 4
  %153 = load i64*, i64** %19, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  store i64* %155, i64** %19, align 8
  br label %162

156:                                              ; preds = %114
  %157 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %158 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = call i64 @crypto_hash_finish(i32* %160, i64* null, i64* null)
  br label %162

162:                                              ; preds = %156, %151
  %163 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %164 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i32* null, i32** %165, align 8
  %166 = load i32, i32* @SHA1_MAC_LEN, align 4
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %15, align 8
  %168 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %169 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = icmp eq i32* %171, null
  br i1 %172, label %181, label %173

173:                                              ; preds = %162
  %174 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %175 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i64*, i64** %19, align 8
  %179 = call i64 @crypto_hash_finish(i32* %177, i64* %178, i64* %15)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %173, %162
  %182 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %183 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i32* null, i32** %184, align 8
  %185 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %186 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %187 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %188 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %185, i32 %186, i32 %187)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

189:                                              ; preds = %173
  %190 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %191 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  store i32* null, i32** %192, align 8
  %193 = load i32, i32* %21, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load i32, i32* @MD5_MAC_LEN, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %15, align 8
  %199 = add i64 %198, %197
  store i64 %199, i64* %15, align 8
  br label %200

200:                                              ; preds = %195, %189
  %201 = load i32, i32* @MSG_MSGDUMP, align 4
  %202 = load i64, i64* %15, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @wpa_hexdump(i32 %201, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64* %29, i32 %203)
  %205 = load i64*, i64** %11, align 8
  %206 = load i64*, i64** %10, align 8
  %207 = ptrtoint i64* %205 to i64
  %208 = ptrtoint i64* %206 to i64
  %209 = sub i64 %207, %208
  %210 = sdiv exact i64 %209, 8
  %211 = icmp slt i64 %210, 2
  br i1 %211, label %212, label %217

212:                                              ; preds = %200
  %213 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %214 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %215 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %216 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %213, i32 %214, i32 %215)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

217:                                              ; preds = %200
  %218 = load i64*, i64** %10, align 8
  %219 = call i32 @WPA_GET_BE16(i64* %218)
  store i32 %219, i32* %22, align 4
  %220 = load i64*, i64** %10, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 2
  store i64* %221, i64** %10, align 8
  %222 = load i64*, i64** %11, align 8
  %223 = load i64*, i64** %10, align 8
  %224 = ptrtoint i64* %222 to i64
  %225 = ptrtoint i64* %223 to i64
  %226 = sub i64 %224, %225
  %227 = sdiv exact i64 %226, 8
  %228 = load i32, i32* %22, align 4
  %229 = sext i32 %228 to i64
  %230 = icmp slt i64 %227, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %217
  %232 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %233 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %234 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %235 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %232, i32 %233, i32 %234)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

236:                                              ; preds = %217
  %237 = load i32, i32* @MSG_MSGDUMP, align 4
  %238 = load i64*, i64** %10, align 8
  %239 = load i64*, i64** %11, align 8
  %240 = load i64*, i64** %10, align 8
  %241 = ptrtoint i64* %239 to i64
  %242 = ptrtoint i64* %240 to i64
  %243 = sub i64 %241, %242
  %244 = sdiv exact i64 %243, 8
  %245 = trunc i64 %244 to i32
  %246 = call i32 @wpa_hexdump(i32 %237, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64* %238, i32 %245)
  %247 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %248 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = icmp eq i32* %249, null
  br i1 %250, label %251, label %258

251:                                              ; preds = %236
  %252 = load i32, i32* @MSG_DEBUG, align 4
  %253 = call i32 (i32, i8*, ...) @wpa_printf(i32 %252, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %254 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %255 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %256 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %257 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %254, i32 %255, i32 %256)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

258:                                              ; preds = %236
  %259 = load i64*, i64** %11, align 8
  %260 = load i64*, i64** %10, align 8
  %261 = ptrtoint i64* %259 to i64
  %262 = ptrtoint i64* %260 to i64
  %263 = sub i64 %261, %262
  %264 = sdiv exact i64 %263, 8
  store i64 %264, i64* %16, align 8
  %265 = load i64*, i64** %11, align 8
  %266 = load i64*, i64** %10, align 8
  %267 = ptrtoint i64* %265 to i64
  %268 = ptrtoint i64* %266 to i64
  %269 = sub i64 %267, %268
  %270 = sdiv exact i64 %269, 8
  %271 = trunc i64 %270 to i32
  %272 = call i64* @os_malloc(i32 %271)
  store i64* %272, i64** %20, align 8
  %273 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %274 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = load i64*, i64** %10, align 8
  %277 = load i64*, i64** %11, align 8
  %278 = load i64*, i64** %10, align 8
  %279 = ptrtoint i64* %277 to i64
  %280 = ptrtoint i64* %278 to i64
  %281 = sub i64 %279, %280
  %282 = sdiv exact i64 %281, 8
  %283 = trunc i64 %282 to i32
  %284 = load i64*, i64** %20, align 8
  %285 = call i64 @crypto_public_key_decrypt_pkcs1(i32* %275, i64* %276, i32 %283, i64* %284, i64* %16)
  %286 = icmp slt i64 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %258
  %288 = load i32, i32* @MSG_DEBUG, align 4
  %289 = call i32 (i32, i8*, ...) @wpa_printf(i32 %288, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %290 = load i64*, i64** %20, align 8
  %291 = call i32 @os_free(i64* %290)
  %292 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %293 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %294 = load i32, i32* @TLS_ALERT_DECRYPT_ERROR, align 4
  %295 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %292, i32 %293, i32 %294)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

296:                                              ; preds = %258
  %297 = load i32, i32* @MSG_MSGDUMP, align 4
  %298 = load i64*, i64** %20, align 8
  %299 = load i64, i64* %16, align 8
  %300 = call i32 @wpa_hexdump_key(i32 %297, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64* %298, i64 %299)
  %301 = load i64, i64* %16, align 8
  %302 = load i64, i64* %15, align 8
  %303 = icmp ne i64 %301, %302
  br i1 %303, label %309, label %304

304:                                              ; preds = %296
  %305 = load i64*, i64** %20, align 8
  %306 = load i64, i64* %16, align 8
  %307 = call i64 (i64*, ...) @os_memcmp(i64* %305, i64* %29, i64 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %304, %296
  %310 = load i32, i32* @MSG_DEBUG, align 4
  %311 = call i32 (i32, i8*, ...) @wpa_printf(i32 %310, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.11, i64 0, i64 0))
  %312 = load i64*, i64** %20, align 8
  %313 = call i32 @os_free(i64* %312)
  %314 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %315 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %316 = load i32, i32* @TLS_ALERT_DECRYPT_ERROR, align 4
  %317 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %314, i32 %315, i32 %316)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

318:                                              ; preds = %304
  %319 = load i64*, i64** %20, align 8
  %320 = call i32 @os_free(i64* %319)
  %321 = load i64*, i64** %11, align 8
  %322 = load i64*, i64** %8, align 8
  %323 = ptrtoint i64* %321 to i64
  %324 = ptrtoint i64* %322 to i64
  %325 = sub i64 %323, %324
  %326 = sdiv exact i64 %325, 8
  %327 = load i64*, i64** %9, align 8
  store i64 %326, i64* %327, align 8
  %328 = load i32, i32* @CHANGE_CIPHER_SPEC, align 4
  %329 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %330 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %331

331:                                              ; preds = %318, %309, %287, %251, %231, %212, %181, %135, %106, %90, %69, %55, %45, %38
  %332 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %332)
  %333 = load i32, i32* %5, align 4
  ret i32 %333
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #2

declare dso_local i32 @tls_process_change_cipher_spec(%struct.tlsv1_server*, i64, i64*, i64*) #2

declare dso_local i64 @WPA_GET_BE24(i64*) #2

declare dso_local i64 @crypto_hash_finish(i32*, i64*, i64*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #2

declare dso_local i32 @WPA_GET_BE16(i64*) #2

declare dso_local i64* @os_malloc(i32) #2

declare dso_local i64 @crypto_public_key_decrypt_pkcs1(i32*, i64*, i32, i64*, i64*) #2

declare dso_local i32 @os_free(i64*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i64) #2

declare dso_local i64 @os_memcmp(i64*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
