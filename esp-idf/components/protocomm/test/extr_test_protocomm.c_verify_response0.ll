; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_verify_response0.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_verify_response0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i32*, %struct.TYPE_20__*, %struct.TYPE_16__, i32, i32*, i32* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@SESSION_DATA__PROTO_SEC1 = common dso_local global i64 0, align 8
@SEC1_MSG_TYPE__Session_Response0 = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid response type\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@PUBLIC_KEY_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Device public key length as not as expected\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@SZ_RANDOM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Device random data length is not as expected\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Device pubkey\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Client pubkey\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed at mbedtls_mpi_lset with error code : %d\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Failed at mbedtls_mpi_read_binary with error code : %d\00", align 1
@mbedtls_ctr_drbg_random = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"Failed at mbedtls_ecdh_compute_shared with error code : %d\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Failed at mbedtls_mpi_write_binary with error code : %d\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Adding proof of possession\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Failed at mbedtls_sha256_ret with error code : %d\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Shared key\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Dev random\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_21__*)* @verify_response0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_response0(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SESSION_DATA__PROTO_SEC1, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SEC1_MSG_TYPE__Session_Response0, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20, %2
  %29 = load i32, i32* @TAG, align 4
  %30 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %31, i32* %3, align 4
  br label %265

32:                                               ; preds = %20
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = bitcast %struct.TYPE_14__* %35 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %36, %struct.TYPE_22__** %7, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* @TAG, align 4
  %47 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ESP_FAIL, align 4
  store i32 %48, i32* %3, align 4
  br label %265

49:                                               ; preds = %32
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SZ_RANDOM, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @TAG, align 4
  %60 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @ESP_FAIL, align 4
  store i32 %61, i32* %3, align 4
  br label %265

62:                                               ; preds = %49
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %8, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %9, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memcpy(i32* %71, i32 %77, i32 %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %87 = call i32 @hexdump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %85, i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %90 = call i32 @hexdump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %88, i32 %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = call i32 @mbedtls_mpi_lset(i32* %94, i32 1)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %62
  %99 = load i32, i32* @TAG, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %99, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @ESP_FAIL, align 4
  store i32 %102, i32* %3, align 4
  br label %265

103:                                              ; preds = %62
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %108 = call i32 @flip_endian(i32* %106, i32 %107)
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %115 = call i32 @mbedtls_mpi_read_binary(i32* %112, i32* %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 5
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %120 = call i32 @flip_endian(i32* %118, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %103
  %124 = load i32, i32* @TAG, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %124, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @ESP_FAIL, align 4
  store i32 %127, i32* %3, align 4
  br label %265

128:                                              ; preds = %103
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i32, i32* @mbedtls_ctr_drbg_random, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 4
  %144 = call i32 @mbedtls_ecdh_compute_shared(i32* %131, i32* %134, %struct.TYPE_13__* %137, i32* %140, i32 %141, i32* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %128
  %148 = load i32, i32* @TAG, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %148, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @ESP_FAIL, align 4
  store i32 %151, i32* %3, align 4
  br label %265

152:                                              ; preds = %128
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %160 = call i32 @mbedtls_mpi_write_binary(i32* %155, i32* %158, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %152
  %164 = load i32, i32* @TAG, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %164, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @ESP_FAIL, align 4
  store i32 %167, i32* %3, align 4
  br label %265

168:                                              ; preds = %152
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %173 = call i32 @flip_endian(i32* %171, i32 %172)
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  store %struct.TYPE_20__* %176, %struct.TYPE_20__** %10, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %178 = icmp ne %struct.TYPE_20__* %177, null
  br i1 %178, label %179, label %237

179:                                              ; preds = %168
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %237

184:                                              ; preds = %179
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %237

189:                                              ; preds = %184
  %190 = load i32, i32* @TAG, align 4
  %191 = call i32 @ESP_LOGD(i32 %190, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %192 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %193 = zext i32 %192 to i64
  %194 = call i8* @llvm.stacksave()
  store i8* %194, i8** %11, align 8
  %195 = alloca i32, i64 %193, align 16
  store i64 %193, i64* %12, align 8
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = bitcast i32* %198 to i8*
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @mbedtls_sha256_ret(i8* %199, i64 %202, i32* %195, i32 0)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %189
  %207 = load i32, i32* @TAG, align 4
  %208 = load i32, i32* %6, align 4
  %209 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %207, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @ESP_FAIL, align 4
  store i32 %210, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %233

211:                                              ; preds = %189
  store i32 0, i32* %14, align 4
  br label %212

212:                                              ; preds = %229, %211
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %232

216:                                              ; preds = %212
  %217 = load i32, i32* %14, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %195, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = xor i32 %227, %220
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %216
  %230 = load i32, i32* %14, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %14, align 4
  br label %212

232:                                              ; preds = %212
  store i32 0, i32* %13, align 4
  br label %233

233:                                              ; preds = %232, %206
  %234 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %13, align 4
  switch i32 %235, label %267 [
    i32 0, label %236
    i32 1, label %265
  ]

236:                                              ; preds = %233
  br label %237

237:                                              ; preds = %236, %184, %179, %168
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %242 = call i32 @hexdump(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* %240, i32 %241)
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i32 @memcpy(i32* %245, i32 %251, i32 %258)
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = call i32 @hexdump(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32* %262, i32 8)
  %264 = load i32, i32* @ESP_OK, align 4
  store i32 %264, i32* %3, align 4
  br label %265

265:                                              ; preds = %237, %233, %163, %147, %123, %98, %58, %45, %28
  %266 = load i32, i32* %3, align 4
  ret i32 %266

267:                                              ; preds = %233
  unreachable
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @hexdump(i8*, i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_lset(i32*, i32) #1

declare dso_local i32 @flip_endian(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_read_binary(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_ecdh_compute_shared(i32*, i32*, %struct.TYPE_13__*, i32*, i32, i32*) #1

declare dso_local i32 @mbedtls_mpi_write_binary(i32*, i32*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mbedtls_sha256_ret(i8*, i64, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
