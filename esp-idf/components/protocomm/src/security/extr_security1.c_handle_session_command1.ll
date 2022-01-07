; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_handle_session_command1.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_handle_session_command1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_22__*, i32, i32, i64, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, i32, i32, %struct.TYPE_21__, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__*, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Request to handle setup1_command\00", align 1
@PUBLIC_KEY_LEN = common dso_local global i32 0, align 4
@SESSION_STATE_CMD1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid state of session %d (expected %d)\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Client verifier\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Failure at mbedtls_aes_setkey_enc with error code : -0x%x\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"Failure at mbedtls_aes_crypt_ctr with error code : -0x%x\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Dec Client verifier\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Key mismatch. Close connection\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Error allocating memory for response1\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@STATUS__Success = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Error allocating ciphertext buffer\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Device verify data\00", align 1
@SEC1_MSG_TYPE__Session_Response1 = common dso_local global i32 0, align 4
@SEC1_PAYLOAD__PAYLOAD_SR1 = common dso_local global i32 0, align 4
@SESSION_DATA__PROTO_SEC1 = common dso_local global i32 0, align 4
@SESSION_STATE_DONE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"Secure session established successfully\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, %struct.TYPE_24__*, %struct.TYPE_24__*)* @handle_session_command1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_session_command1(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_24__* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %9, align 8
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 @ESP_LOGD(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %10, align 8
  %23 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca %struct.TYPE_22__, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SESSION_STATE_CMD1, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load i32, i32* @TAG, align 4
  %34 = load i64, i64* @SESSION_STATE_CMD1, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %37)
  %39 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %238

40:                                               ; preds = %4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = call i32 @mbedtls_aes_init(i32* %42)
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memset(i32 %46, i32 0, i32 4)
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @hexdump(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %55, i32 %61)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mbedtls_aes_setkey_enc(i32* %64, i32 %67, i32 32)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %40
  %72 = load i32, i32* @TAG, align 4
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 0, %73
  %75 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %72, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 1
  %78 = call i32 @mbedtls_aes_free(i32* %77)
  %79 = load i32, i32* @ESP_FAIL, align 4
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %238

80:                                               ; preds = %40
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %96, align 8
  %98 = call i32 @mbedtls_aes_crypt_ctr(i32* %82, i32 %83, i64* %85, i32 %88, i32 %91, %struct.TYPE_22__* %97, %struct.TYPE_22__* %26)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %80
  %102 = load i32, i32* @TAG, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 0, %103
  %105 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %102, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = call i32 @mbedtls_aes_free(i32* %107)
  %109 = load i32, i32* @ESP_FAIL, align 4
  store i32 %109, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %238

110:                                              ; preds = %80
  %111 = mul nuw i64 48, %24
  %112 = trunc i64 %111 to i32
  %113 = call i32 @hexdump(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_22__* %26, i32 %112)
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @mbedtls_ssl_safer_memcmp(%struct.TYPE_22__* %26, i32 %116, i32 4)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load i32, i32* @TAG, align 4
  %121 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = call i32 @mbedtls_aes_free(i32* %123)
  %125 = load i32, i32* @ESP_FAIL, align 4
  store i32 %125, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %238

126:                                              ; preds = %110
  %127 = call i64 @malloc(i32 48)
  %128 = inttoptr i64 %127 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %128, %struct.TYPE_22__** %15, align 8
  %129 = call i64 @malloc(i32 48)
  %130 = inttoptr i64 %129 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %130, %struct.TYPE_22__** %16, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %132 = icmp ne %struct.TYPE_22__* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %135 = icmp ne %struct.TYPE_22__* %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %133, %126
  %137 = load i32, i32* @TAG, align 4
  %138 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %137, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %140 = call i32 @free(%struct.TYPE_22__* %139)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %142 = call i32 @free(%struct.TYPE_22__* %141)
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 1
  %145 = call i32 @mbedtls_aes_free(i32* %144)
  %146 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %146, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %238

147:                                              ; preds = %133
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %149 = call i32 @sec1_payload__init(%struct.TYPE_22__* %148)
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %151 = call i32 @session_resp1__init(%struct.TYPE_22__* %150)
  %152 = load i32, i32* @STATUS__Success, align 4
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %156 = call i64 @malloc(i32 %155)
  %157 = inttoptr i64 %156 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %157, %struct.TYPE_22__** %17, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %159 = icmp ne %struct.TYPE_22__* %158, null
  br i1 %159, label %171, label %160

160:                                              ; preds = %147
  %161 = load i32, i32* @TAG, align 4
  %162 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %161, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %164 = call i32 @free(%struct.TYPE_22__* %163)
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %166 = call i32 @free(%struct.TYPE_22__* %165)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 1
  %169 = call i32 @mbedtls_aes_free(i32* %168)
  %170 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %170, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %238

171:                                              ; preds = %147
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 1
  %174 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %184, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %187 = call i32 @mbedtls_aes_crypt_ctr(i32* %173, i32 %174, i64* %176, i32 %179, i32 %182, %struct.TYPE_22__* %185, %struct.TYPE_22__* %186)
  store i32 %187, i32* %13, align 4
  %188 = load i32, i32* %13, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %205

190:                                              ; preds = %171
  %191 = load i32, i32* @TAG, align 4
  %192 = load i32, i32* %13, align 4
  %193 = sub nsw i32 0, %192
  %194 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %191, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %196 = call i32 @free(%struct.TYPE_22__* %195)
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %198 = call i32 @free(%struct.TYPE_22__* %197)
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %200 = call i32 @free(%struct.TYPE_22__* %199)
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  %203 = call i32 @mbedtls_aes_free(i32* %202)
  %204 = load i32, i32* @ESP_FAIL, align 4
  store i32 %204, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %238

205:                                              ; preds = %171
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 1
  store %struct.TYPE_22__* %206, %struct.TYPE_22__** %209, align 8
  %210 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %215 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %216 = call i32 @hexdump(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_22__* %214, i32 %215)
  %217 = load i32, i32* @SEC1_MSG_TYPE__Session_Response1, align 4
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* @SEC1_PAYLOAD__PAYLOAD_SR1, align 4
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  store %struct.TYPE_22__* %223, %struct.TYPE_22__** %225, align 8
  %226 = load i32, i32* @SESSION_DATA__PROTO_SEC1, align 4
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  store %struct.TYPE_22__* %229, %struct.TYPE_22__** %231, align 8
  %232 = load i64, i64* @SESSION_STATE_DONE, align 8
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load i32, i32* @TAG, align 4
  %236 = call i32 @ESP_LOGD(i32 %235, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %237 = load i32, i32* @ESP_OK, align 4
  store i32 %237, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %238

238:                                              ; preds = %205, %190, %160, %136, %119, %101, %71, %32
  %239 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %239)
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @mbedtls_aes_init(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @hexdump(i8*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @mbedtls_aes_setkey_enc(i32*, i32, i32) #1

declare dso_local i32 @mbedtls_aes_free(i32*) #1

declare dso_local i32 @mbedtls_aes_crypt_ctr(i32*, i32, i64*, i32, i32, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i64 @mbedtls_ssl_safer_memcmp(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

declare dso_local i32 @sec1_payload__init(%struct.TYPE_22__*) #1

declare dso_local i32 @session_resp1__init(%struct.TYPE_22__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
