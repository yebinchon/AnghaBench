; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_NewIkeEngine.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_NewIkeEngine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, i32**, i32**, i32**, i32**, i32**, i8*, i8*, i8* }

@__const.NewIkeEngine.des_key_sizes = private unnamed_addr constant [1 x i32] [i32 8], align 4
@__const.NewIkeEngine.des3_key_sizes = private unnamed_addr constant [1 x i32] [i32 24], align 4
@__const.NewIkeEngine.aes_key_sizes = private unnamed_addr constant [3 x i32] [i32 16, i32 24, i32 32], align 4
@IKE_CRYPTO_DES_ID = common dso_local global i32 0, align 4
@IKE_CRYPTO_DES_STRING = common dso_local global i32 0, align 4
@IKE_CRYPTO_3DES_ID = common dso_local global i32 0, align 4
@IKE_CRYPTO_3DES_STRING = common dso_local global i32 0, align 4
@IKE_CRYPTO_AES_ID = common dso_local global i32 0, align 4
@IKE_CRYPTO_AES_STRING = common dso_local global i32 0, align 4
@IKE_HASH_SHA1_ID = common dso_local global i32 0, align 4
@IKE_HASH_SHA1_STRING = common dso_local global i32 0, align 4
@IKE_HASH_SHA2_256_ID = common dso_local global i32 0, align 4
@IKE_HASH_SHA2_256_STRING = common dso_local global i32 0, align 4
@IKE_HASH_SHA2_384_ID = common dso_local global i32 0, align 4
@IKE_HASH_SHA2_384_STRING = common dso_local global i32 0, align 4
@IKE_HASH_SHA2_512_ID = common dso_local global i32 0, align 4
@IKE_HASH_SHA2_512_STRING = common dso_local global i32 0, align 4
@IKE_HASH_MD5_ID = common dso_local global i32 0, align 4
@IKE_HASH_MD5_STRING = common dso_local global i32 0, align 4
@IKE_DH_1_ID = common dso_local global i32 0, align 4
@IKE_DH_1_STRING = common dso_local global i32 0, align 4
@IKE_DH_2_ID = common dso_local global i32 0, align 4
@IKE_DH_2_STRING = common dso_local global i32 0, align 4
@IKE_DH_5_ID = common dso_local global i32 0, align 4
@IKE_DH_5_STRING = common dso_local global i32 0, align 4
@IKE_DH_2048_ID = common dso_local global i32 0, align 4
@IKE_DH_2048_STRING = common dso_local global i32 0, align 4
@IKE_DH_3072_ID = common dso_local global i32 0, align 4
@IKE_DH_3072_STRING = common dso_local global i32 0, align 4
@IKE_DH_4096_ID = common dso_local global i32 0, align 4
@IKE_DH_4096_STRING = common dso_local global i32 0, align 4
@IKE_P1_CRYPTO_DES_CBC = common dso_local global i64 0, align 8
@IKE_P1_CRYPTO_3DES_CBC = common dso_local global i64 0, align 8
@IKE_P1_CRYPTO_AES_CBC = common dso_local global i64 0, align 8
@IKE_P1_HASH_MD5 = common dso_local global i64 0, align 8
@IKE_P1_HASH_SHA1 = common dso_local global i64 0, align 8
@IKE_P1_HASH_SHA2_256 = common dso_local global i64 0, align 8
@IKE_P1_HASH_SHA2_384 = common dso_local global i64 0, align 8
@IKE_P1_HASH_SHA2_512 = common dso_local global i64 0, align 8
@IKE_TRANSFORM_ID_P2_ESP_DES = common dso_local global i64 0, align 8
@IKE_TRANSFORM_ID_P2_ESP_3DES = common dso_local global i64 0, align 8
@IKE_TRANSFORM_ID_P2_ESP_AES = common dso_local global i64 0, align 8
@IKE_P2_HMAC_MD5_96 = common dso_local global i64 0, align 8
@IKE_P2_HMAC_SHA1_96 = common dso_local global i64 0, align 8
@IKE_P2_DH_GROUP_768_MODP = common dso_local global i64 0, align 8
@IKE_P1_DH_GROUP_768_MODP = common dso_local global i64 0, align 8
@IKE_P2_DH_GROUP_1024_MODP = common dso_local global i64 0, align 8
@IKE_P1_DH_GROUP_1024_MODP = common dso_local global i64 0, align 8
@IKE_P2_DH_GROUP_1536_MODP = common dso_local global i64 0, align 8
@IKE_P1_DH_GROUP_1536_MODP = common dso_local global i64 0, align 8
@IKE_P2_DH_GROUP_2048_MODP = common dso_local global i64 0, align 8
@IKE_P1_DH_GROUP_2048_MODP = common dso_local global i64 0, align 8
@IKE_P2_DH_GROUP_3072_MODP = common dso_local global i64 0, align 8
@IKE_P1_DH_GROUP_3072_MODP = common dso_local global i64 0, align 8
@IKE_P2_DH_GROUP_4096_MODP = common dso_local global i64 0, align 8
@IKE_P1_DH_GROUP_4096_MODP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @NewIkeEngine() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [1 x i32], align 4
  %17 = alloca [1 x i32], align 4
  %18 = alloca [3 x i32], align 4
  %19 = call %struct.TYPE_7__* @ZeroMalloc(i32 72)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %1, align 8
  %20 = bitcast [1 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([1 x i32]* @__const.NewIkeEngine.des_key_sizes to i8*), i64 4, i1 false)
  %21 = bitcast [1 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast ([1 x i32]* @__const.NewIkeEngine.des3_key_sizes to i8*), i64 4, i1 false)
  %22 = bitcast [3 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast ([3 x i32]* @__const.NewIkeEngine.aes_key_sizes to i8*), i64 12, i1 false)
  %23 = call i8* @NewListFast(i32* null)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = call i8* @NewListFast(i32* null)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 8
  %29 = call i8* @NewListFast(i32* null)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %33 = load i32, i32* @IKE_CRYPTO_DES_ID, align 4
  %34 = load i32, i32* @IKE_CRYPTO_DES_STRING, align 4
  %35 = getelementptr inbounds [1 x i32], [1 x i32]* %16, i64 0, i64 0
  %36 = call i32* @NewIkeCrypto(%struct.TYPE_7__* %32, i32 %33, i32 %34, i32* %35, i32 1, i32 8)
  store i32* %36, i32** %2, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %38 = load i32, i32* @IKE_CRYPTO_3DES_ID, align 4
  %39 = load i32, i32* @IKE_CRYPTO_3DES_STRING, align 4
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %17, i64 0, i64 0
  %41 = call i32* @NewIkeCrypto(%struct.TYPE_7__* %37, i32 %38, i32 %39, i32* %40, i32 1, i32 8)
  store i32* %41, i32** %3, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %43 = load i32, i32* @IKE_CRYPTO_AES_ID, align 4
  %44 = load i32, i32* @IKE_CRYPTO_AES_STRING, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %46 = call i32* @NewIkeCrypto(%struct.TYPE_7__* %42, i32 %43, i32 %44, i32* %45, i32 3, i32 16)
  store i32* %46, i32** %4, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %48 = load i32, i32* @IKE_HASH_SHA1_ID, align 4
  %49 = load i32, i32* @IKE_HASH_SHA1_STRING, align 4
  %50 = call i32* @NewIkeHash(%struct.TYPE_7__* %47, i32 %48, i32 %49, i32 20)
  store i32* %50, i32** %5, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %52 = load i32, i32* @IKE_HASH_SHA2_256_ID, align 4
  %53 = load i32, i32* @IKE_HASH_SHA2_256_STRING, align 4
  %54 = call i32* @NewIkeHash(%struct.TYPE_7__* %51, i32 %52, i32 %53, i32 32)
  store i32* %54, i32** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %56 = load i32, i32* @IKE_HASH_SHA2_384_ID, align 4
  %57 = load i32, i32* @IKE_HASH_SHA2_384_STRING, align 4
  %58 = call i32* @NewIkeHash(%struct.TYPE_7__* %55, i32 %56, i32 %57, i32 48)
  store i32* %58, i32** %8, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %60 = load i32, i32* @IKE_HASH_SHA2_512_ID, align 4
  %61 = load i32, i32* @IKE_HASH_SHA2_512_STRING, align 4
  %62 = call i32* @NewIkeHash(%struct.TYPE_7__* %59, i32 %60, i32 %61, i32 64)
  store i32* %62, i32** %9, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %64 = load i32, i32* @IKE_HASH_MD5_ID, align 4
  %65 = load i32, i32* @IKE_HASH_MD5_STRING, align 4
  %66 = call i32* @NewIkeHash(%struct.TYPE_7__* %63, i32 %64, i32 %65, i32 16)
  store i32* %66, i32** %6, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %68 = load i32, i32* @IKE_DH_1_ID, align 4
  %69 = load i32, i32* @IKE_DH_1_STRING, align 4
  %70 = call i32* @NewIkeDh(%struct.TYPE_7__* %67, i32 %68, i32 %69, i32 96)
  store i32* %70, i32** %10, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %72 = load i32, i32* @IKE_DH_2_ID, align 4
  %73 = load i32, i32* @IKE_DH_2_STRING, align 4
  %74 = call i32* @NewIkeDh(%struct.TYPE_7__* %71, i32 %72, i32 %73, i32 128)
  store i32* %74, i32** %11, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %76 = load i32, i32* @IKE_DH_5_ID, align 4
  %77 = load i32, i32* @IKE_DH_5_STRING, align 4
  %78 = call i32* @NewIkeDh(%struct.TYPE_7__* %75, i32 %76, i32 %77, i32 192)
  store i32* %78, i32** %12, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %80 = load i32, i32* @IKE_DH_2048_ID, align 4
  %81 = load i32, i32* @IKE_DH_2048_STRING, align 4
  %82 = call i32* @NewIkeDh(%struct.TYPE_7__* %79, i32 %80, i32 %81, i32 256)
  store i32* %82, i32** %13, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %84 = load i32, i32* @IKE_DH_3072_ID, align 4
  %85 = load i32, i32* @IKE_DH_3072_STRING, align 4
  %86 = call i32* @NewIkeDh(%struct.TYPE_7__* %83, i32 %84, i32 %85, i32 384)
  store i32* %86, i32** %14, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %88 = load i32, i32* @IKE_DH_4096_ID, align 4
  %89 = load i32, i32* @IKE_DH_4096_STRING, align 4
  %90 = call i32* @NewIkeDh(%struct.TYPE_7__* %87, i32 %88, i32 %89, i32 512)
  store i32* %90, i32** %15, align 8
  %91 = load i32*, i32** %2, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  %94 = load i32**, i32*** %93, align 8
  %95 = load i64, i64* @IKE_P1_CRYPTO_DES_CBC, align 8
  %96 = getelementptr inbounds i32*, i32** %94, i64 %95
  store i32* %91, i32** %96, align 8
  %97 = load i32*, i32** %3, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  %100 = load i32**, i32*** %99, align 8
  %101 = load i64, i64* @IKE_P1_CRYPTO_3DES_CBC, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  store i32* %97, i32** %102, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  %106 = load i32**, i32*** %105, align 8
  %107 = load i64, i64* @IKE_P1_CRYPTO_AES_CBC, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  store i32* %103, i32** %108, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  %112 = load i32**, i32*** %111, align 8
  %113 = load i64, i64* @IKE_P1_HASH_MD5, align 8
  %114 = getelementptr inbounds i32*, i32** %112, i64 %113
  store i32* %109, i32** %114, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 4
  %118 = load i32**, i32*** %117, align 8
  %119 = load i64, i64* @IKE_P1_HASH_SHA1, align 8
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  store i32* %115, i32** %120, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 4
  %124 = load i32**, i32*** %123, align 8
  %125 = load i64, i64* @IKE_P1_HASH_SHA2_256, align 8
  %126 = getelementptr inbounds i32*, i32** %124, i64 %125
  store i32* %121, i32** %126, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  %130 = load i32**, i32*** %129, align 8
  %131 = load i64, i64* @IKE_P1_HASH_SHA2_384, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  store i32* %127, i32** %132, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  %136 = load i32**, i32*** %135, align 8
  %137 = load i64, i64* @IKE_P1_HASH_SHA2_512, align 8
  %138 = getelementptr inbounds i32*, i32** %136, i64 %137
  store i32* %133, i32** %138, align 8
  %139 = load i32*, i32** %2, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load i32**, i32*** %141, align 8
  %143 = load i64, i64* @IKE_TRANSFORM_ID_P2_ESP_DES, align 8
  %144 = getelementptr inbounds i32*, i32** %142, i64 %143
  store i32* %139, i32** %144, align 8
  %145 = load i32*, i32** %3, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32**, i32*** %147, align 8
  %149 = load i64, i64* @IKE_TRANSFORM_ID_P2_ESP_3DES, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  store i32* %145, i32** %150, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  %154 = load i32**, i32*** %153, align 8
  %155 = load i64, i64* @IKE_TRANSFORM_ID_P2_ESP_AES, align 8
  %156 = getelementptr inbounds i32*, i32** %154, i64 %155
  store i32* %151, i32** %156, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @IKE_P2_HMAC_MD5_96, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  store i32* %157, i32** %162, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i32**, i32*** %165, align 8
  %167 = load i64, i64* @IKE_P2_HMAC_SHA1_96, align 8
  %168 = getelementptr inbounds i32*, i32** %166, i64 %167
  store i32* %163, i32** %168, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32**, i32*** %171, align 8
  %173 = load i64, i64* @IKE_P2_DH_GROUP_768_MODP, align 8
  %174 = getelementptr inbounds i32*, i32** %172, i64 %173
  store i32* %169, i32** %174, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32**, i32*** %176, align 8
  %178 = load i64, i64* @IKE_P1_DH_GROUP_768_MODP, align 8
  %179 = getelementptr inbounds i32*, i32** %177, i64 %178
  store i32* %169, i32** %179, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32**, i32*** %182, align 8
  %184 = load i64, i64* @IKE_P2_DH_GROUP_1024_MODP, align 8
  %185 = getelementptr inbounds i32*, i32** %183, i64 %184
  store i32* %180, i32** %185, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32**, i32*** %187, align 8
  %189 = load i64, i64* @IKE_P1_DH_GROUP_1024_MODP, align 8
  %190 = getelementptr inbounds i32*, i32** %188, i64 %189
  store i32* %180, i32** %190, align 8
  %191 = load i32*, i32** %12, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32**, i32*** %193, align 8
  %195 = load i64, i64* @IKE_P2_DH_GROUP_1536_MODP, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  store i32* %191, i32** %196, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i32**, i32*** %198, align 8
  %200 = load i64, i64* @IKE_P1_DH_GROUP_1536_MODP, align 8
  %201 = getelementptr inbounds i32*, i32** %199, i64 %200
  store i32* %191, i32** %201, align 8
  %202 = load i32*, i32** %13, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load i32**, i32*** %204, align 8
  %206 = load i64, i64* @IKE_P2_DH_GROUP_2048_MODP, align 8
  %207 = getelementptr inbounds i32*, i32** %205, i64 %206
  store i32* %202, i32** %207, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32**, i32*** %209, align 8
  %211 = load i64, i64* @IKE_P1_DH_GROUP_2048_MODP, align 8
  %212 = getelementptr inbounds i32*, i32** %210, i64 %211
  store i32* %202, i32** %212, align 8
  %213 = load i32*, i32** %14, align 8
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32**, i32*** %215, align 8
  %217 = load i64, i64* @IKE_P2_DH_GROUP_3072_MODP, align 8
  %218 = getelementptr inbounds i32*, i32** %216, i64 %217
  store i32* %213, i32** %218, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32**, i32*** %220, align 8
  %222 = load i64, i64* @IKE_P1_DH_GROUP_3072_MODP, align 8
  %223 = getelementptr inbounds i32*, i32** %221, i64 %222
  store i32* %213, i32** %223, align 8
  %224 = load i32*, i32** %15, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32**, i32*** %226, align 8
  %228 = load i64, i64* @IKE_P2_DH_GROUP_4096_MODP, align 8
  %229 = getelementptr inbounds i32*, i32** %227, i64 %228
  store i32* %224, i32** %229, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32**, i32*** %231, align 8
  %233 = load i64, i64* @IKE_P1_DH_GROUP_4096_MODP, align 8
  %234 = getelementptr inbounds i32*, i32** %232, i64 %233
  store i32* %224, i32** %234, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %235
}

declare dso_local %struct.TYPE_7__* @ZeroMalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @NewListFast(i32*) #1

declare dso_local i32* @NewIkeCrypto(%struct.TYPE_7__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32* @NewIkeHash(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32* @NewIkeDh(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
