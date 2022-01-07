; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_write_client_hello.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_write_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i64, i8*, i32, %struct.TYPE_25__*, i32, i32, %struct.TYPE_24__*, %struct.TYPE_23__*, i32 }
%struct.TYPE_25__ = type { i32 (i32, i32*, i32)*, i64, i64, i64, i64, i32**, i64, i64, i32, i32 }
%struct.TYPE_24__ = type { i8*, i64, i8*, i64, i32 }
%struct.TYPE_23__ = type { i64, i64, i32*, i32* }
%struct.TYPE_27__ = type { i64, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"=> write client hello\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no RNG provided\00", align 1
@MBEDTLS_ERR_SSL_NO_RNG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"configured max major version is invalid, consider using mbedtls_ssl_config_defaults()\00", align 1
@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"client hello, max version: [%d:%d]\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ssl_generate_random\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"client hello, random bytes\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"client hello, session id len.: %d\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"client hello, session id\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"client hello, add ciphersuite: %04x\00", align 1
@MBEDTLS_SSL_EMPTY_RENEGOTIATION_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"client hello, got %d ciphersuites\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"client hello, compress len.: %d\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"client hello, compress alg.: %d %d\00", align 1
@MBEDTLS_SSL_COMPRESS_DEFLATE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_COMPRESS_NULL = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"client hello, compress alg.: %d\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"client hello, total extension length: %d\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_CLIENT_HELLO = common dso_local global i8 0, align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"mbedtls_ssl_write_record\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"<= write client hello\00", align 1
@MBEDTLS_CIPHERSUITE_NODTLS = common dso_local global i32 0, align 4
@MBEDTLS_CIPHER_ARC4_128 = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECJPAKE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_ARC4_DISABLED = common dso_local global i64 0, align 8
@MBEDTLS_SSL_FALLBACK_SCSV_VALUE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_INITIAL_HANDSHAKE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_IS_FALLBACK = common dso_local global i64 0, align 8
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @ssl_write_client_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_client_hello(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i64 0, i64* %8, align 8
  %15 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %19, align 8
  %21 = icmp eq i32 (i32, i32*, i32)* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @MBEDTLS_ERR_SSL_NO_RNG, align 4
  store i32 %24, i32* %2, align 4
  br label %333

25:                                               ; preds = %1
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %48, i32* %2, align 4
  br label %333

49:                                               ; preds = %25
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %54, i8** %10, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @mbedtls_ssl_write_version(i64 %59, i64 %64, i64 %69, i8* %70)
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 5
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %81)
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %84 = call i32 @ssl_generate_random(%struct.TYPE_26__* %83)
  store i32 %84, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %49
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %333

90:                                               ; preds = %49
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 7
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @memcpy(i8* %91, i8* %96, i32 32)
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %98, i64 32)
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 32
  store i8* %101, i8** %10, align 8
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp ult i64 %107, 16
  br i1 %108, label %119, label %109

109:                                              ; preds = %90
  %110 = load i64, i64* %6, align 8
  %111 = icmp ugt i64 %110, 32
  br i1 %111, label %119, label %112

112:                                              ; preds = %109
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 7
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112, %109, %90
  store i64 0, i64* %6, align 8
  br label %120

120:                                              ; preds = %119, %112
  %121 = load i64, i64* %6, align 8
  %122 = trunc i64 %121 to i8
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  store i8 %122, i8* %123, align 1
  store i64 0, i64* %5, align 8
  br label %125

125:                                              ; preds = %141, %120
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %125
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %5, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %10, align 8
  store i8 %138, i8* %139, align 1
  br label %141

141:                                              ; preds = %129
  %142 = load i64, i64* %5, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %5, align 8
  br label %125

144:                                              ; preds = %125
  %145 = load i64, i64* %6, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %146)
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 39
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %149, i64 %150)
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 5
  %156 = load i32**, i32*** %155, align 8
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i32*, i32** %156, i64 %159
  %161 = load i32*, i32** %160, align 8
  store i32* %161, i32** %13, align 8
  store i64 0, i64* %6, align 8
  %162 = load i8*, i8** %10, align 8
  store i8* %162, i8** %11, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  store i8* %164, i8** %10, align 8
  store i64 0, i64* %5, align 8
  br label %165

165:                                              ; preds = %226, %144
  %166 = load i32*, i32** %13, align 8
  %167 = load i64, i64* %5, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %229

171:                                              ; preds = %165
  %172 = load i32*, i32** %13, align 8
  %173 = load i64, i64* %5, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.TYPE_27__* @mbedtls_ssl_ciphersuite_from_id(i32 %175)
  store %struct.TYPE_27__* %176, %struct.TYPE_27__** %14, align 8
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %178 = icmp eq %struct.TYPE_27__* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %226

180:                                              ; preds = %171
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 4
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %183, %188
  br i1 %189, label %200, label %190

190:                                              ; preds = %180
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ult i64 %193, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %190, %180
  br label %226

201:                                              ; preds = %190
  %202 = load i32*, i32** %13, align 8
  %203 = load i64, i64* %5, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %207)
  %209 = load i64, i64* %6, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %6, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = load i64, i64* %5, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 8
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %10, align 8
  store i8 %216, i8* %217, align 1
  %219 = load i32*, i32** %13, align 8
  %220 = load i64, i64* %5, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = trunc i32 %222 to i8
  %224 = load i8*, i8** %10, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %10, align 8
  store i8 %223, i8* %224, align 1
  br label %226

226:                                              ; preds = %201, %200, %179
  %227 = load i64, i64* %5, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %5, align 8
  br label %165

229:                                              ; preds = %165
  %230 = load i32, i32* @MBEDTLS_SSL_EMPTY_RENEGOTIATION_INFO, align 4
  %231 = ashr i32 %230, 8
  %232 = trunc i32 %231 to i8
  %233 = load i8*, i8** %10, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %10, align 8
  store i8 %232, i8* %233, align 1
  %235 = load i32, i32* @MBEDTLS_SSL_EMPTY_RENEGOTIATION_INFO, align 4
  %236 = trunc i32 %235 to i8
  %237 = load i8*, i8** %10, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %10, align 8
  store i8 %236, i8* %237, align 1
  %239 = load i64, i64* %6, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %6, align 8
  %241 = load i64, i64* %6, align 8
  %242 = lshr i64 %241, 7
  %243 = trunc i64 %242 to i8
  %244 = load i8*, i8** %11, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %11, align 8
  store i8 %243, i8* %244, align 1
  %246 = load i64, i64* %6, align 8
  %247 = shl i64 %246, 1
  %248 = trunc i64 %247 to i8
  %249 = load i8*, i8** %11, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %11, align 8
  store i8 %248, i8* %249, align 1
  %251 = load i64, i64* %6, align 8
  %252 = inttoptr i64 %251 to i8*
  %253 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %252)
  store i8 0, i8* %12, align 1
  %254 = load i8, i8* %12, align 1
  %255 = icmp ne i8 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %229
  %257 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* inttoptr (i64 2 to i8*))
  %258 = load i32, i32* @MBEDTLS_SSL_COMPRESS_DEFLATE, align 4
  %259 = load i8*, i8** @MBEDTLS_SSL_COMPRESS_NULL, align 8
  %260 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %259)
  %261 = load i8*, i8** %10, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %10, align 8
  store i8 2, i8* %261, align 1
  %263 = load i32, i32* @MBEDTLS_SSL_COMPRESS_DEFLATE, align 4
  %264 = trunc i32 %263 to i8
  %265 = load i8*, i8** %10, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %10, align 8
  store i8 %264, i8* %265, align 1
  %267 = load i8*, i8** @MBEDTLS_SSL_COMPRESS_NULL, align 8
  %268 = ptrtoint i8* %267 to i8
  %269 = load i8*, i8** %10, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %10, align 8
  store i8 %268, i8* %269, align 1
  br label %281

271:                                              ; preds = %229
  %272 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* inttoptr (i64 1 to i8*))
  %273 = load i8*, i8** @MBEDTLS_SSL_COMPRESS_NULL, align 8
  %274 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %273)
  %275 = load i8*, i8** %10, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %10, align 8
  store i8 1, i8* %275, align 1
  %277 = load i8*, i8** @MBEDTLS_SSL_COMPRESS_NULL, align 8
  %278 = ptrtoint i8* %277 to i8
  %279 = load i8*, i8** %10, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %10, align 8
  store i8 %278, i8* %279, align 1
  br label %281

281:                                              ; preds = %271, %256
  %282 = load i64, i64* %7, align 8
  %283 = load i64, i64* %8, align 8
  %284 = inttoptr i64 %283 to i8*
  %285 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %284)
  %286 = load i64, i64* %8, align 8
  %287 = icmp ugt i64 %286, 0
  br i1 %287, label %288, label %303

288:                                              ; preds = %281
  %289 = load i64, i64* %8, align 8
  %290 = lshr i64 %289, 8
  %291 = and i64 %290, 255
  %292 = trunc i64 %291 to i8
  %293 = load i8*, i8** %10, align 8
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %10, align 8
  store i8 %292, i8* %293, align 1
  %295 = load i64, i64* %8, align 8
  %296 = and i64 %295, 255
  %297 = trunc i64 %296 to i8
  %298 = load i8*, i8** %10, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %10, align 8
  store i8 %297, i8* %298, align 1
  %300 = load i64, i64* %8, align 8
  %301 = load i8*, i8** %10, align 8
  %302 = getelementptr inbounds i8, i8* %301, i64 %300
  store i8* %302, i8** %10, align 8
  br label %303

303:                                              ; preds = %288, %281
  %304 = load i8*, i8** %10, align 8
  %305 = load i8*, i8** %9, align 8
  %306 = ptrtoint i8* %304 to i64
  %307 = ptrtoint i8* %305 to i64
  %308 = sub i64 %306, %307
  %309 = trunc i64 %308 to i32
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 3
  store i32 %309, i32* %311, align 8
  %312 = load i32, i32* @MBEDTLS_SSL_MSG_HANDSHAKE, align 4
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 6
  store i32 %312, i32* %314, align 4
  %315 = load i8, i8* @MBEDTLS_SSL_HS_CLIENT_HELLO, align 1
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 2
  %318 = load i8*, i8** %317, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 0
  store i8 %315, i8* %319, align 1
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 5
  %322 = load i32, i32* %321, align 8
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %321, align 8
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %325 = call i32 @mbedtls_ssl_write_record(%struct.TYPE_26__* %324)
  store i32 %325, i32* %4, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %303
  %328 = load i32, i32* %4, align 4
  %329 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* %4, align 4
  store i32 %330, i32* %2, align 4
  br label %333

331:                                              ; preds = %303
  %332 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %333

333:                                              ; preds = %331, %327, %86, %46, %22
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_write_version(i64, i64, i64, i8*) #1

declare dso_local i32 @ssl_generate_random(%struct.TYPE_26__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i64) #1

declare dso_local %struct.TYPE_27__* @mbedtls_ssl_ciphersuite_from_id(i32) #1

declare dso_local i32 @mbedtls_ssl_write_record(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
