; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_client_finished.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_read.c_tls_process_client_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32*, i32*, i32* }

@TLS_VERIFY_DATA_LEN = common dso_local global i32 0, align 4
@MD5_MAC_LEN = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"TLSv1: Expected Finished; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"TLSv1: Too short record (left=%lu) for Finished\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_FINISHED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"TLSv1: Expected Finished; received type 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"TLSv1: Too short buffer for Finished (len=%lu > left=%lu)\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"TLSv1: Unexpected verify_data length in Finished: %lu (expected %d)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"TLSv1: verify_data in Finished\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_MASTER_SECRET_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"client finished\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"TLSv1: Failed to derive verify_data\00", align 1
@TLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"TLSv1: verify_data (client)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"TLSv1: Mismatch in verify_data\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"TLSv1: Received Finished\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"TLSv1: Abbreviated handshake completed successfully\00", align 1
@ESTABLISHED = common dso_local global i32 0, align 4
@SERVER_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64, i64*, i64*)* @tls_process_client_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_client_finished(%struct.tlsv1_server* %0, i64 %1, i64* %2, i64* %3) #0 {
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
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* @MD5_MAC_LEN, align 4
  %24 = load i32, i32* @SHA1_MAC_LEN, align 4
  %25 = add nsw i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %17, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %4
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %36 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %37 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %38 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %35, i32 %36, i32 %37)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

39:                                               ; preds = %4
  %40 = load i64*, i64** %8, align 8
  store i64* %40, i64** %10, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp ult i64 %43, 4
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i64, i64* %12, align 8
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %50 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %51 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %52 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %49, i32 %50, i32 %51)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

53:                                               ; preds = %39
  %54 = load i64*, i64** %10, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TLS_HANDSHAKE_TYPE_FINISHED, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i64*, i64** %10, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %66 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %67 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %68 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %65, i32 %66, i32 %67)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

69:                                               ; preds = %53
  %70 = load i64*, i64** %10, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = call i64 @WPA_GET_BE24(i64* %71)
  store i64 %72, i64* %13, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 4
  store i64* %74, i64** %10, align 8
  %75 = load i64, i64* %12, align 8
  %76 = sub i64 %75, 4
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load i32, i32* @MSG_DEBUG, align 4
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 %82, i64 %83)
  %85 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %86 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %87 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %88 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %85, i32 %86, i32 %87)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

89:                                               ; preds = %69
  %90 = load i64*, i64** %10, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  store i64* %92, i64** %11, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ne i64 %93, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %89
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = load i64, i64* %13, align 8
  %100 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i64 %99, i32 %100)
  %102 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %103 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %104 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %105 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %102, i32 %103, i32 %104)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

106:                                              ; preds = %89
  %107 = load i32, i32* @MSG_MSGDUMP, align 4
  %108 = load i64*, i64** %10, align 8
  %109 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %110 = call i32 @wpa_hexdump(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64* %108, i32 %109)
  %111 = load i32, i32* @MD5_MAC_LEN, align 4
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %14, align 8
  %113 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %114 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %106
  %119 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %120 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @crypto_hash_finish(i32* %122, i64* %27, i64* %14)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %118, %106
  %126 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %127 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %128 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %129 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %126, i32 %127, i32 %128)
  %130 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %131 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i32* null, i32** %132, align 8
  %133 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %134 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @crypto_hash_finish(i32* %136, i64* null, i64* null)
  %138 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %139 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i32* null, i32** %140, align 8
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

141:                                              ; preds = %118
  %142 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %143 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  store i32* null, i32** %144, align 8
  %145 = load i32, i32* @SHA1_MAC_LEN, align 4
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %14, align 8
  %147 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %148 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %162, label %152

152:                                              ; preds = %141
  %153 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %154 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @MD5_MAC_LEN, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %27, i64 %158
  %160 = call i64 @crypto_hash_finish(i32* %156, i64* %159, i64* %14)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %152, %141
  %163 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %164 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  store i32* null, i32** %165, align 8
  %166 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %167 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %168 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %169 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %166, i32 %167, i32 %168)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

170:                                              ; preds = %152
  %171 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %172 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i32* null, i32** %173, align 8
  %174 = load i32, i32* @MD5_MAC_LEN, align 4
  %175 = load i32, i32* @SHA1_MAC_LEN, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %14, align 8
  %178 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %179 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %183 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @TLS_MASTER_SECRET_LEN, align 4
  %186 = load i64, i64* %14, align 8
  %187 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %188 = call i64 @tls_prf(i64 %181, i32 %184, i32 %185, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64* %27, i64 %186, i64* %22, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %170
  %191 = load i32, i32* @MSG_DEBUG, align 4
  %192 = call i32 (i32, i8*, ...) @wpa_printf(i32 %191, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %193 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %194 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %195 = load i32, i32* @TLS_ALERT_DECRYPT_ERROR, align 4
  %196 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %193, i32 %194, i32 %195)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

197:                                              ; preds = %170
  %198 = load i32, i32* @MSG_DEBUG, align 4
  %199 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %200 = call i32 @wpa_hexdump_key(i32 %198, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64* %22, i32 %199)
  %201 = load i64*, i64** %10, align 8
  %202 = load i32, i32* @TLS_VERIFY_DATA_LEN, align 4
  %203 = call i64 @os_memcmp(i64* %201, i64* %22, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %197
  %206 = load i32, i32* @MSG_INFO, align 4
  %207 = call i32 (i32, i8*, ...) @wpa_printf(i32 %206, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

208:                                              ; preds = %197
  %209 = load i32, i32* @MSG_DEBUG, align 4
  %210 = call i32 (i32, i8*, ...) @wpa_printf(i32 %209, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %211 = load i64*, i64** %11, align 8
  %212 = load i64*, i64** %8, align 8
  %213 = ptrtoint i64* %211 to i64
  %214 = ptrtoint i64* %212 to i64
  %215 = sub i64 %213, %214
  %216 = sdiv exact i64 %215, 8
  %217 = load i64*, i64** %9, align 8
  store i64 %216, i64* %217, align 8
  %218 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %219 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %208
  %223 = load i32, i32* @MSG_DEBUG, align 4
  %224 = call i32 (i32, i8*, ...) @wpa_printf(i32 %223, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0))
  %225 = load i32, i32* @ESTABLISHED, align 4
  %226 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %227 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  br label %232

228:                                              ; preds = %208
  %229 = load i32, i32* @SERVER_CHANGE_CIPHER_SPEC, align 4
  %230 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %231 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %228, %222
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %233

233:                                              ; preds = %232, %205, %190, %162, %125, %97, %80, %59, %45, %31
  %234 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #2

declare dso_local i64 @WPA_GET_BE24(i64*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #2

declare dso_local i64 @crypto_hash_finish(i32*, i64*, i64*) #2

declare dso_local i64 @tls_prf(i64, i32, i32, i8*, i64*, i64, i64*, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i32) #2

declare dso_local i64 @os_memcmp(i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
