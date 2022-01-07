; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_sec_endpoint.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/test/extr_test_protocomm.c_test_sec_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_11__, i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@mbedtls_entropy_func = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Failed at mbedtls_ctr_drbg_seed with error code : %d\00", align 1
@MBEDTLS_ECP_DP_CURVE25519 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Failed at mbedtls_ecp_group_load with error code : %d\00", align 1
@mbedtls_ctr_drbg_random = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Failed at mbedtls_ecdh_gen_public with error code : %d\00", align 1
@PUBLIC_KEY_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed at mbedtls_mpi_read_binary with error code : %d\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Failed at mbedtls_mpi_write_binary with error code : %d\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed in prepare_command0\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to allocate inbuf\00", align 1
@test_pc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"test-sec\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"test-sec handler failed\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Unable to unpack SessionResp0\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Invalid response 0\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Failed in prepare_command1\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Invalid response 1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @test_sec_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_sec_endpoint(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ESP_OK, align 4
  store i32 %17, i32* %2, align 4
  br label %265

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @ESP_FAIL, align 4
  store i32 %22, i32* %5, align 4
  store i64 0, i64* %8, align 8
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = call i32 @mbedtls_ecdh_init(%struct.TYPE_11__* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = call i32 @mbedtls_ctr_drbg_init(i32* %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = call i32 @mbedtls_entropy_init(i32* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* @mbedtls_entropy_func, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = call i32 @mbedtls_ctr_drbg_seed(i32* %33, i32 %34, i32* %36, i32* null, i32 0)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %18
  %41 = load i32, i32* @TAG, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %254

44:                                               ; preds = %18
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32, i32* @MBEDTLS_ECP_DP_CURVE25519, align 4
  %49 = call i32 @mbedtls_ecp_group_load(i32* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @TAG, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %53, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %254

56:                                               ; preds = %44
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* @mbedtls_ctr_drbg_random, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = call i32 @mbedtls_ecdh_gen_public(i32* %59, i32* %62, %struct.TYPE_12__* %65, i32 %66, i32* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = load i32, i32* @TAG, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %254

76:                                               ; preds = %56
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %90 = call i32 @mbedtls_mpi_read_binary(i32* %85, i32 %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load i32, i32* @TAG, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %94, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %254

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %107 = call i32 @mbedtls_mpi_write_binary(i32* %102, i32 %105, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load i32, i32* @TAG, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %111, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %254

114:                                              ; preds = %98
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %119 = call i32 @flip_endian(i32 %117, i32 %118)
  %120 = call i32 @session_data__init(i32* %6)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = call i32 @prepare_command0(%struct.TYPE_10__* %121, i32* %6)
  %123 = load i32, i32* @ESP_OK, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load i32, i32* @TAG, align 4
  %127 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %254

128:                                              ; preds = %114
  %129 = call i64 @session_data__get_packed_size(i32* %6)
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i64 @malloc(i64 %130)
  %132 = inttoptr i64 %131 to i32*
  store i32* %132, i32** %9, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @TAG, align 4
  %137 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %254

138:                                              ; preds = %128
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @session_data__pack(i32* %6, i32* %139)
  %141 = call i32 @cleanup_command0(i32* %6)
  store i64 0, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %142 = load i32, i32* @test_pc, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i32*, i32** %9, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @protocomm_req_handle(i32 %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %143, i32* %144, i64 %145, i32** %11, i64* %10)
  store i32 %146, i32* %5, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @free(i32* %147)
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @ESP_OK, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %138
  %153 = load i32, i32* @TAG, align 4
  %154 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @free(i32* %155)
  br label %254

157:                                              ; preds = %138
  %158 = load i64, i64* %10, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = call i32* @session_data__unpack(i32* null, i64 %158, i32* %159)
  store i32* %160, i32** %7, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = call i32 @free(i32* %161)
  %163 = load i32*, i32** %7, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %157
  %166 = load i32, i32* @TAG, align 4
  %167 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %254

168:                                              ; preds = %157
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = call i32 @verify_response0(%struct.TYPE_10__* %169, i32* %170)
  %172 = load i32, i32* @ESP_OK, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load i32, i32* @TAG, align 4
  %176 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %177 = load i32*, i32** %7, align 8
  %178 = call i32 @session_data__free_unpacked(i32* %177, i32* null)
  br label %254

179:                                              ; preds = %168
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @session_data__free_unpacked(i32* %180, i32* null)
  %182 = call i32 @session_data__init(i32* %6)
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %184 = call i32 @prepare_command1(%struct.TYPE_10__* %183, i32* %6)
  %185 = load i32, i32* @ESP_OK, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load i32, i32* @TAG, align 4
  %189 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %254

190:                                              ; preds = %179
  %191 = call i64 @session_data__get_packed_size(i32* %6)
  store i64 %191, i64* %8, align 8
  %192 = load i64, i64* %8, align 8
  %193 = call i64 @malloc(i64 %192)
  %194 = inttoptr i64 %193 to i32*
  store i32* %194, i32** %9, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %190
  %198 = load i32, i32* @TAG, align 4
  %199 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %254

200:                                              ; preds = %190
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @session_data__pack(i32* %6, i32* %201)
  %203 = call i32 @cleanup_command1(i32* %6)
  store i64 0, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %204 = load i32, i32* @test_pc, align 4
  %205 = load i32, i32* %4, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = load i64, i64* %8, align 8
  %208 = call i32 @protocomm_req_handle(i32 %204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %205, i32* %206, i64 %207, i32** %11, i64* %10)
  store i32 %208, i32* %5, align 4
  %209 = load i32*, i32** %9, align 8
  %210 = call i32 @free(i32* %209)
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* @ESP_OK, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %200
  %215 = load i32, i32* @TAG, align 4
  %216 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %215, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %217 = load i32*, i32** %11, align 8
  %218 = call i32 @free(i32* %217)
  br label %254

219:                                              ; preds = %200
  %220 = load i64, i64* %10, align 8
  %221 = load i32*, i32** %11, align 8
  %222 = call i32* @session_data__unpack(i32* null, i64 %220, i32* %221)
  store i32* %222, i32** %7, align 8
  %223 = load i32*, i32** %11, align 8
  %224 = call i32 @free(i32* %223)
  %225 = load i32*, i32** %7, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %219
  %228 = load i32, i32* @TAG, align 4
  %229 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %228, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %254

230:                                              ; preds = %219
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @verify_response1(%struct.TYPE_10__* %231, i32* %232)
  %234 = load i32, i32* @ESP_OK, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %230
  %237 = load i32, i32* @TAG, align 4
  %238 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %237, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %239 = load i32*, i32** %7, align 8
  %240 = call i32 @session_data__free_unpacked(i32* %239, i32* null)
  br label %254

241:                                              ; preds = %230
  %242 = load i32*, i32** %7, align 8
  %243 = call i32 @session_data__free_unpacked(i32* %242, i32* null)
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 3
  %246 = call i32 @mbedtls_ecdh_free(%struct.TYPE_11__* %245)
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  %249 = call i32 @mbedtls_ctr_drbg_free(i32* %248)
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 1
  %252 = call i32 @mbedtls_entropy_free(i32* %251)
  %253 = load i32, i32* @ESP_OK, align 4
  store i32 %253, i32* %2, align 4
  br label %265

254:                                              ; preds = %236, %227, %214, %197, %187, %174, %165, %152, %135, %125, %110, %93, %72, %52, %40
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 3
  %257 = call i32 @mbedtls_ecdh_free(%struct.TYPE_11__* %256)
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 2
  %260 = call i32 @mbedtls_ctr_drbg_free(i32* %259)
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 1
  %263 = call i32 @mbedtls_entropy_free(i32* %262)
  %264 = load i32, i32* @ESP_FAIL, align 4
  store i32 %264, i32* %2, align 4
  br label %265

265:                                              ; preds = %254, %241, %16
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local i32 @mbedtls_ecdh_init(%struct.TYPE_11__*) #1

declare dso_local i32 @mbedtls_ctr_drbg_init(i32*) #1

declare dso_local i32 @mbedtls_entropy_init(i32*) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @mbedtls_ecp_group_load(i32*, i32) #1

declare dso_local i32 @mbedtls_ecdh_gen_public(i32*, i32*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @mbedtls_mpi_read_binary(i32*, i32, i32) #1

declare dso_local i32 @mbedtls_mpi_write_binary(i32*, i32, i32) #1

declare dso_local i32 @flip_endian(i32, i32) #1

declare dso_local i32 @session_data__init(i32*) #1

declare dso_local i32 @prepare_command0(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @session_data__get_packed_size(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @session_data__pack(i32*, i32*) #1

declare dso_local i32 @cleanup_command0(i32*) #1

declare dso_local i32 @protocomm_req_handle(i32, i8*, i32, i32*, i64, i32**, i64*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @session_data__unpack(i32*, i64, i32*) #1

declare dso_local i32 @verify_response0(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @session_data__free_unpacked(i32*, i32*) #1

declare dso_local i32 @prepare_command1(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @cleanup_command1(i32*) #1

declare dso_local i32 @verify_response1(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @mbedtls_ecdh_free(%struct.TYPE_11__*) #1

declare dso_local i32 @mbedtls_ctr_drbg_free(i32*) #1

declare dso_local i32 @mbedtls_entropy_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
