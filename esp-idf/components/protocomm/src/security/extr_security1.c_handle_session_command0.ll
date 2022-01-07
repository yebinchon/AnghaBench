; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_handle_session_command0.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_handle_session_command0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { i64, i32*, i32*, i32*, i32* }
%struct.TYPE_36__ = type { %struct.TYPE_45__*, i32 }
%struct.TYPE_45__ = type { %struct.TYPE_45__*, i32, i32, %struct.TYPE_40__, %struct.TYPE_38__, i32, i32, i32, %struct.TYPE_39__, i32, %struct.TYPE_42__*, %struct.TYPE_37__ }
%struct.TYPE_40__ = type { i32, i32* }
%struct.TYPE_38__ = type { i32, i32* }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_44__ = type { i64, i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Request to handle setup0_command\00", align 1
@SESSION_STATE_CMD0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid state of session %d (expected %d)\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@PUBLIC_KEY_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid public key length\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to allocate memory for mbedtls context\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@mbedtls_entropy_func = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Failed at mbedtls_ctr_drbg_seed with error code : -0x%x\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@MBEDTLS_ECP_DP_CURVE25519 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"Failed at mbedtls_ecp_group_load with error code : -0x%x\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Failed at mbedtls_ecdh_gen_public with error code : -0x%x\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Failed at mbedtls_mpi_write_binary with error code : -0x%x\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Device pubkey\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Client pubkey\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Failed at mbedtls_mpi_lset with error code : -0x%x\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"Failed at mbedtls_mpi_read_binary with error code : -0x%x\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"Failed at mbedtls_ecdh_compute_shared with error code : -0x%x\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Adding proof of possession\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"Failed at mbedtls_sha256_ret with error code : -0x%x\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Shared key\00", align 1
@SZ_RANDOM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [58 x i8] c"Failed at mbedtls_ctr_drbg_random with error code : -0x%x\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Device random\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Error allocating memory for response0\00", align 1
@STATUS__Success = common dso_local global i32 0, align 4
@SEC1_MSG_TYPE__Session_Response0 = common dso_local global i32 0, align 4
@SEC1_PAYLOAD__PAYLOAD_SR0 = common dso_local global i32 0, align 4
@SESSION_DATA__PROTO_SEC1 = common dso_local global i32 0, align 4
@SESSION_STATE_CMD1 = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"Session setup phase1 done\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_43__*, i32, %struct.TYPE_36__*, %struct.TYPE_36__*, %struct.TYPE_44__*)* @handle_session_command0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_session_command0(%struct.TYPE_43__* %0, i32 %1, %struct.TYPE_36__* %2, %struct.TYPE_36__* %3, %struct.TYPE_44__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_43__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_44__*, align 8
  %12 = alloca %struct.TYPE_45__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_45__*, align 8
  %16 = alloca %struct.TYPE_45__*, align 8
  %17 = alloca %struct.TYPE_45__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_45__*, align 8
  %25 = alloca %struct.TYPE_45__*, align 8
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %9, align 8
  store %struct.TYPE_36__* %3, %struct.TYPE_36__** %10, align 8
  store %struct.TYPE_44__* %4, %struct.TYPE_44__** %11, align 8
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 @ESP_LOGD(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  store %struct.TYPE_45__* %30, %struct.TYPE_45__** %12, align 8
  %31 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SESSION_STATE_CMD0, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %5
  %37 = load i32, i32* @TAG, align 4
  %38 = load i64, i64* @SESSION_STATE_CMD0, align 8
  %39 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %41)
  %43 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %43, i32* %6, align 4
  br label %415

44:                                               ; preds = %5
  %45 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_42__*, %struct.TYPE_42__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @TAG, align 4
  %55 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %56, i32* %6, align 4
  br label %415

57:                                               ; preds = %44
  %58 = call %struct.TYPE_45__* @malloc(i32 88)
  store %struct.TYPE_45__* %58, %struct.TYPE_45__** %15, align 8
  %59 = call %struct.TYPE_45__* @malloc(i32 88)
  store %struct.TYPE_45__* %59, %struct.TYPE_45__** %16, align 8
  %60 = call %struct.TYPE_45__* @malloc(i32 88)
  store %struct.TYPE_45__* %60, %struct.TYPE_45__** %17, align 8
  %61 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %62 = icmp ne %struct.TYPE_45__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %65 = icmp ne %struct.TYPE_45__* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %68 = icmp ne %struct.TYPE_45__* %67, null
  br i1 %68, label %79, label %69

69:                                               ; preds = %66, %63, %57
  %70 = load i32, i32* @TAG, align 4
  %71 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %73 = call i32 @free(%struct.TYPE_45__* %72)
  %74 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %75 = call i32 @free(%struct.TYPE_45__* %74)
  %76 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %77 = call i32 @free(%struct.TYPE_45__* %76)
  %78 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %78, i32* %6, align 4
  br label %415

79:                                               ; preds = %66
  %80 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %81 = call i32 @mbedtls_ecdh_init(%struct.TYPE_45__* %80)
  %82 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %83 = call i32 @mbedtls_ctr_drbg_init(%struct.TYPE_45__* %82)
  %84 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %85 = call i32 @mbedtls_entropy_init(%struct.TYPE_45__* %84)
  %86 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %87 = load i32, i32* @mbedtls_entropy_func, align 4
  %88 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %89 = call i32 @mbedtls_ctr_drbg_seed(%struct.TYPE_45__* %86, i32 %87, %struct.TYPE_45__* %88, i32* null, i32 0)
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %79
  %93 = load i32, i32* @TAG, align 4
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 0, %94
  %96 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %93, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @ESP_FAIL, align 4
  store i32 %97, i32* %13, align 4
  br label %401

98:                                               ; preds = %79
  %99 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %99, i32 0, i32 9
  %101 = load i32, i32* @MBEDTLS_ECP_DP_CURVE25519, align 4
  %102 = call i32 @mbedtls_ecp_group_load(i32* %100, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @TAG, align 4
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 0, %107
  %109 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %106, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @ESP_FAIL, align 4
  store i32 %110, i32* %13, align 4
  br label %401

111:                                              ; preds = %98
  %112 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %112, i32 0, i32 9
  %114 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %114, i32 0, i32 7
  %116 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %116, i32 0, i32 11
  %118 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %119 = call i32 @mbedtls_ecdh_gen_public(i32* %113, i32* %115, %struct.TYPE_37__* %117, i32 (%struct.TYPE_45__*, i32*, i32)* @mbedtls_ctr_drbg_random, %struct.TYPE_45__* %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %111
  %123 = load i32, i32* @TAG, align 4
  %124 = load i32, i32* %14, align 4
  %125 = sub nsw i32 0, %124
  %126 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %123, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @ESP_FAIL, align 4
  store i32 %127, i32* %13, align 4
  br label %401

128:                                              ; preds = %111
  %129 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %129, i32 0, i32 11
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %136 = call i32 @mbedtls_mpi_write_binary(i32* %131, i32* %134, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %128
  %140 = load i32, i32* @TAG, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sub nsw i32 0, %141
  %143 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %140, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @ESP_FAIL, align 4
  store i32 %144, i32* %13, align 4
  br label %401

145:                                              ; preds = %128
  %146 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %150 = call i32 @flip_endian(i32* %148, i32 %149)
  %151 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_45__*, %struct.TYPE_45__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %154, i32 0, i32 10
  %156 = load %struct.TYPE_42__*, %struct.TYPE_42__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %161 = call i32 @memcpy(i32* %153, i32 %159, i32 %160)
  %162 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  store i32* %164, i32** %18, align 8
  %165 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %19, align 8
  %168 = load i32*, i32** %18, align 8
  %169 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %170 = call i32 @hexdump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* %168, i32 %169)
  %171 = load i32*, i32** %19, align 8
  %172 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %173 = call i32 @hexdump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* %171, i32 %172)
  %174 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %174, i32 0, i32 8
  %176 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %175, i32 0, i32 1
  %177 = call i32 @mbedtls_mpi_lset(i32* %176, i32 1)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %145
  %181 = load i32, i32* @TAG, align 4
  %182 = load i32, i32* %14, align 4
  %183 = sub nsw i32 0, %182
  %184 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %181, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @ESP_FAIL, align 4
  store i32 %185, i32* %13, align 4
  br label %401

186:                                              ; preds = %145
  %187 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %191 = call i32 @flip_endian(i32* %189, i32 %190)
  %192 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %192, i32 0, i32 8
  %194 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %193, i32 0, i32 0
  %195 = load i32*, i32** %19, align 8
  %196 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %197 = call i32 @mbedtls_mpi_read_binary(i32* %194, i32* %195, i32 %196)
  store i32 %197, i32* %14, align 4
  %198 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %202 = call i32 @flip_endian(i32* %200, i32 %201)
  %203 = load i32, i32* %14, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %186
  %206 = load i32, i32* @TAG, align 4
  %207 = load i32, i32* %14, align 4
  %208 = sub nsw i32 0, %207
  %209 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %206, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @ESP_FAIL, align 4
  store i32 %210, i32* %13, align 4
  br label %401

211:                                              ; preds = %186
  %212 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %212, i32 0, i32 9
  %214 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %214, i32 0, i32 6
  %216 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %216, i32 0, i32 8
  %218 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %218, i32 0, i32 7
  %220 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %221 = call i32 @mbedtls_ecdh_compute_shared(i32* %213, i32* %215, %struct.TYPE_39__* %217, i32* %219, i32 (%struct.TYPE_45__*, i32*, i32)* @mbedtls_ctr_drbg_random, %struct.TYPE_45__* %220)
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %211
  %225 = load i32, i32* @TAG, align 4
  %226 = load i32, i32* %14, align 4
  %227 = sub nsw i32 0, %226
  %228 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %225, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @ESP_FAIL, align 4
  store i32 %229, i32* %13, align 4
  br label %401

230:                                              ; preds = %211
  %231 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %232 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %231, i32 0, i32 6
  %233 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %237 = call i32 @mbedtls_mpi_write_binary(i32* %232, i32* %235, i32 %236)
  store i32 %237, i32* %14, align 4
  %238 = load i32, i32* %14, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %230
  %241 = load i32, i32* @TAG, align 4
  %242 = load i32, i32* %14, align 4
  %243 = sub nsw i32 0, %242
  %244 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %241, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %243)
  %245 = load i32, i32* @ESP_FAIL, align 4
  store i32 %245, i32* %13, align 4
  br label %401

246:                                              ; preds = %230
  %247 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %251 = call i32 @flip_endian(i32* %249, i32 %250)
  %252 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %253 = icmp ne %struct.TYPE_44__* %252, null
  br i1 %253, label %254, label %313

254:                                              ; preds = %246
  %255 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %313

259:                                              ; preds = %254
  %260 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %313

264:                                              ; preds = %259
  %265 = load i32, i32* @TAG, align 4
  %266 = call i32 @ESP_LOGD(i32 %265, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %267 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %268 = zext i32 %267 to i64
  %269 = call i8* @llvm.stacksave()
  store i8* %269, i8** %20, align 8
  %270 = alloca i32, i64 %268, align 16
  store i64 %268, i64* %21, align 8
  %271 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = bitcast i32* %273 to i8*
  %275 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @mbedtls_sha256_ret(i8* %274, i64 %277, i32* %270, i32 0)
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %264
  %282 = load i32, i32* @TAG, align 4
  %283 = load i32, i32* %14, align 4
  %284 = sub nsw i32 0, %283
  %285 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %282, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* @ESP_FAIL, align 4
  store i32 %286, i32* %13, align 4
  store i32 2, i32* %23, align 4
  br label %309

287:                                              ; preds = %264
  store i32 0, i32* %22, align 4
  br label %288

288:                                              ; preds = %305, %287
  %289 = load i32, i32* %22, align 4
  %290 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %308

292:                                              ; preds = %288
  %293 = load i32, i32* %22, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %270, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %297, i32 0, i32 2
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %22, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = xor i32 %303, %296
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %292
  %306 = load i32, i32* %22, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %22, align 4
  br label %288

308:                                              ; preds = %288
  store i32 0, i32* %23, align 4
  br label %309

309:                                              ; preds = %281, %308
  %310 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %310)
  %311 = load i32, i32* %23, align 4
  switch i32 %311, label %417 [
    i32 0, label %312
    i32 2, label %401
  ]

312:                                              ; preds = %309
  br label %313

313:                                              ; preds = %312, %259, %254, %246
  %314 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %318 = call i32 @hexdump(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32* %316, i32 %317)
  %319 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %320 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* @SZ_RANDOM, align 4
  %324 = call i32 @mbedtls_ctr_drbg_random(%struct.TYPE_45__* %319, i32* %322, i32 %323)
  store i32 %324, i32* %14, align 4
  %325 = load i32, i32* %14, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %313
  %328 = load i32, i32* @TAG, align 4
  %329 = load i32, i32* %14, align 4
  %330 = sub nsw i32 0, %329
  %331 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %328, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.16, i64 0, i64 0), i32 %330)
  %332 = load i32, i32* @ESP_FAIL, align 4
  store i32 %332, i32* %13, align 4
  br label %401

333:                                              ; preds = %313
  %334 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* @SZ_RANDOM, align 4
  %338 = call i32 @hexdump(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32* %336, i32 %337)
  %339 = call %struct.TYPE_45__* @malloc(i32 88)
  store %struct.TYPE_45__* %339, %struct.TYPE_45__** %24, align 8
  %340 = call %struct.TYPE_45__* @malloc(i32 88)
  store %struct.TYPE_45__* %340, %struct.TYPE_45__** %25, align 8
  %341 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %342 = icmp ne %struct.TYPE_45__* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %333
  %344 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %345 = icmp ne %struct.TYPE_45__* %344, null
  br i1 %345, label %354, label %346

346:                                              ; preds = %343, %333
  %347 = load i32, i32* @TAG, align 4
  %348 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %347, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  %349 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %349, i32* %13, align 4
  %350 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %351 = call i32 @free(%struct.TYPE_45__* %350)
  %352 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %353 = call i32 @free(%struct.TYPE_45__* %352)
  br label %401

354:                                              ; preds = %343
  %355 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %356 = call i32 @sec1_payload__init(%struct.TYPE_45__* %355)
  %357 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %358 = call i32 @session_resp0__init(%struct.TYPE_45__* %357)
  %359 = load i32, i32* @STATUS__Success, align 4
  %360 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %361 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %360, i32 0, i32 5
  store i32 %359, i32* %361, align 8
  %362 = load i32*, i32** %18, align 8
  %363 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %364 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %363, i32 0, i32 4
  %365 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %364, i32 0, i32 1
  store i32* %362, i32** %365, align 8
  %366 = load i32, i32* @PUBLIC_KEY_LEN, align 4
  %367 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %368 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %368, i32 0, i32 0
  store i32 %366, i32* %369, align 8
  %370 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %374 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %374, i32 0, i32 1
  store i32* %372, i32** %375, align 8
  %376 = load i32, i32* @SZ_RANDOM, align 4
  %377 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %378 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %377, i32 0, i32 3
  %379 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %378, i32 0, i32 0
  store i32 %376, i32* %379, align 8
  %380 = load i32, i32* @SEC1_MSG_TYPE__Session_Response0, align 4
  %381 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %382 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %381, i32 0, i32 2
  store i32 %380, i32* %382, align 4
  %383 = load i32, i32* @SEC1_PAYLOAD__PAYLOAD_SR0, align 4
  %384 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %385 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %384, i32 0, i32 1
  store i32 %383, i32* %385, align 8
  %386 = load %struct.TYPE_45__*, %struct.TYPE_45__** %25, align 8
  %387 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %388 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %387, i32 0, i32 0
  store %struct.TYPE_45__* %386, %struct.TYPE_45__** %388, align 8
  %389 = load i32, i32* @SESSION_DATA__PROTO_SEC1, align 4
  %390 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %391 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %390, i32 0, i32 1
  store i32 %389, i32* %391, align 8
  %392 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %393 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %393, i32 0, i32 0
  store %struct.TYPE_45__* %392, %struct.TYPE_45__** %394, align 8
  %395 = load i64, i64* @SESSION_STATE_CMD1, align 8
  %396 = load %struct.TYPE_43__*, %struct.TYPE_43__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %396, i32 0, i32 0
  store i64 %395, i64* %397, align 8
  %398 = load i32, i32* @TAG, align 4
  %399 = call i32 @ESP_LOGD(i32 %398, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %400 = load i32, i32* @ESP_OK, align 4
  store i32 %400, i32* %13, align 4
  br label %401

401:                                              ; preds = %354, %346, %327, %309, %240, %224, %205, %180, %139, %122, %105, %92
  %402 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %403 = call i32 @mbedtls_ecdh_free(%struct.TYPE_45__* %402)
  %404 = load %struct.TYPE_45__*, %struct.TYPE_45__** %15, align 8
  %405 = call i32 @free(%struct.TYPE_45__* %404)
  %406 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %407 = call i32 @mbedtls_ctr_drbg_free(%struct.TYPE_45__* %406)
  %408 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %409 = call i32 @free(%struct.TYPE_45__* %408)
  %410 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %411 = call i32 @mbedtls_entropy_free(%struct.TYPE_45__* %410)
  %412 = load %struct.TYPE_45__*, %struct.TYPE_45__** %16, align 8
  %413 = call i32 @free(%struct.TYPE_45__* %412)
  %414 = load i32, i32* %13, align 4
  store i32 %414, i32* %6, align 4
  br label %415

415:                                              ; preds = %401, %69, %53, %36
  %416 = load i32, i32* %6, align 4
  ret i32 %416

417:                                              ; preds = %309
  unreachable
}

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local %struct.TYPE_45__* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_45__*) #1

declare dso_local i32 @mbedtls_ecdh_init(%struct.TYPE_45__*) #1

declare dso_local i32 @mbedtls_ctr_drbg_init(%struct.TYPE_45__*) #1

declare dso_local i32 @mbedtls_entropy_init(%struct.TYPE_45__*) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(%struct.TYPE_45__*, i32, %struct.TYPE_45__*, i32*, i32) #1

declare dso_local i32 @mbedtls_ecp_group_load(i32*, i32) #1

declare dso_local i32 @mbedtls_ecdh_gen_public(i32*, i32*, %struct.TYPE_37__*, i32 (%struct.TYPE_45__*, i32*, i32)*, %struct.TYPE_45__*) #1

declare dso_local i32 @mbedtls_ctr_drbg_random(%struct.TYPE_45__*, i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_write_binary(i32*, i32*, i32) #1

declare dso_local i32 @flip_endian(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @hexdump(i8*, i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_lset(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_read_binary(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_ecdh_compute_shared(i32*, i32*, %struct.TYPE_39__*, i32*, i32 (%struct.TYPE_45__*, i32*, i32)*, %struct.TYPE_45__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mbedtls_sha256_ret(i8*, i64, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @sec1_payload__init(%struct.TYPE_45__*) #1

declare dso_local i32 @session_resp0__init(%struct.TYPE_45__*) #1

declare dso_local i32 @mbedtls_ecdh_free(%struct.TYPE_45__*) #1

declare dso_local i32 @mbedtls_ctr_drbg_free(%struct.TYPE_45__*) #1

declare dso_local i32 @mbedtls_entropy_free(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
