; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_openssl.c_tls_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_openssl.c_tls_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32*, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SSL_CTX_load_verify_locations %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to load cert file %s: %s\0A\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Unable to load key file %s: %s\0A\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@SSL_VERIFY_FAIL_IF_NO_PEER_CERT = common dso_local global i32 0, align 4
@url_bio_method = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Unable to negotiate TLS/SSL session\0A\00", align 1
@BIO_TYPE_SOURCE_SINK = common dso_local global i32 0, align 4
@url_bio_bputs = common dso_local global i32 0, align 4
@url_bio_bread = common dso_local global i32 0, align 4
@url_bio_bwrite = common dso_local global i32 0, align 4
@url_bio_create = common dso_local global i32 0, align 4
@url_bio_ctrl = common dso_local global i32 0, align 4
@url_bio_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32, i32**)* @tls_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_open(%struct.TYPE_15__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %10, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %11, align 8
  %19 = call i32 (...) @ff_openssl_init()
  store i32 %19, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %236

23:                                               ; preds = %4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32**, i32*** %9, align 8
  %28 = call i32 @ff_tls_open_underlying(%struct.TYPE_16__* %24, %struct.TYPE_15__* %25, i8* %26, i32** %27)
  store i32 %28, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %232

31:                                               ; preds = %23
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @SSLv23_server_method()
  br label %40

38:                                               ; preds = %31
  %39 = call i32 (...) @SSLv23_client_method()
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = call i32 @SSL_CTX_new(i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 (...) @ERR_get_error()
  %53 = call i32 @ERR_error_string(i32 %52, i32* null)
  %54 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %50, i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %13, align 4
  br label %232

57:                                               ; preds = %40
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %62 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @SSL_CTX_set_options(i32 %60, i32 %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %57
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 7
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @SSL_CTX_load_verify_locations(i32 %72, i64 %75, i32* null)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %69
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = call i32 (...) @ERR_get_error()
  %82 = call i32 @ERR_error_string(i32 %81, i32* null)
  %83 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %79, i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %69
  br label %85

85:                                               ; preds = %84, %57
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %85
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @SSL_CTX_use_certificate_chain_file(i32 %93, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %90
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (...) @ERR_get_error()
  %106 = call i32 @ERR_error_string(i32 %105, i32* null)
  %107 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %100, i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %104, i32 %106)
  %108 = load i32, i32* @EIO, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %13, align 4
  br label %232

110:                                              ; preds = %90, %85
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %110
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %123 = call i32 @SSL_CTX_use_PrivateKey_file(i32 %118, i64 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %115
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (...) @ERR_get_error()
  %132 = call i32 @ERR_error_string(i32 %131, i32* null)
  %133 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %126, i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %130, i32 %132)
  %134 = load i32, i32* @EIO, align 4
  %135 = call i32 @AVERROR(i32 %134)
  store i32 %135, i32* %13, align 4
  br label %232

136:                                              ; preds = %115, %110
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %146 = load i32, i32* @SSL_VERIFY_FAIL_IF_NO_PEER_CERT, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @SSL_CTX_set_verify(i32 %144, i32 %147, i32* null)
  br label %149

149:                                              ; preds = %141, %136
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @SSL_new(i32 %152)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %149
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = load i32, i32* @AV_LOG_ERROR, align 4
  %163 = call i32 (...) @ERR_get_error()
  %164 = call i32 @ERR_error_string(i32 %163, i32* null)
  %165 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %161, i32 %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @EIO, align 4
  %167 = call i32 @AVERROR(i32 %166)
  store i32 %167, i32* %13, align 4
  br label %232

168:                                              ; preds = %149
  %169 = call %struct.TYPE_18__* @BIO_new(i32* @url_bio_method)
  store %struct.TYPE_18__* %169, %struct.TYPE_18__** %12, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %180 = call i32 @SSL_set_bio(i32 %177, %struct.TYPE_18__* %178, %struct.TYPE_18__* %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %198, label %185

185:                                              ; preds = %168
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @SSL_set_tlsext_host_name(i32 %193, i32 %196)
  br label %198

198:                                              ; preds = %190, %185, %168
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @SSL_accept(i32 %206)
  br label %213

208:                                              ; preds = %198
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @SSL_connect(i32 %211)
  br label %213

213:                                              ; preds = %208, %203
  %214 = phi i32 [ %207, %203 ], [ %212, %208 ]
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %219 = load i32, i32* @AV_LOG_ERROR, align 4
  %220 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %218, i32 %219, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %221 = load i32, i32* @EIO, align 4
  %222 = call i32 @AVERROR(i32 %221)
  store i32 %222, i32* %13, align 4
  br label %232

223:                                              ; preds = %213
  %224 = load i32, i32* %13, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @print_tls_error(%struct.TYPE_15__* %227, i32 %228)
  store i32 %229, i32* %13, align 4
  br label %232

230:                                              ; preds = %223
  br label %231

231:                                              ; preds = %230
  store i32 0, i32* %5, align 4
  br label %236

232:                                              ; preds = %226, %217, %160, %125, %99, %49, %30
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = call i32 @tls_close(%struct.TYPE_15__* %233)
  %235 = load i32, i32* %13, align 4
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %232, %231, %21
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32 @ff_openssl_init(...) #1

declare dso_local i32 @ff_tls_open_underlying(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i32**) #1

declare dso_local i32 @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_server_method(...) #1

declare dso_local i32 @SSLv23_client_method(...) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @ERR_error_string(i32, i32*) #1

declare dso_local i32 @ERR_get_error(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @SSL_CTX_set_options(i32, i32) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32, i64, i32*) #1

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32, i64) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32, i64, i32) #1

declare dso_local i32 @SSL_CTX_set_verify(i32, i32, i32*) #1

declare dso_local i32 @SSL_new(i32) #1

declare dso_local %struct.TYPE_18__* @BIO_new(i32*) #1

declare dso_local i32 @SSL_set_bio(i32, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @SSL_set_tlsext_host_name(i32, i32) #1

declare dso_local i32 @SSL_accept(i32) #1

declare dso_local i32 @SSL_connect(i32) #1

declare dso_local i32 @print_tls_error(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @tls_close(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
