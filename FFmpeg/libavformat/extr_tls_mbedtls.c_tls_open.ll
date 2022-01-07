; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_mbedtls.c_tls_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_mbedtls.c_tls_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i64, i64, i64, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"mbedtls_x509_crt_parse_file for CA cert returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"mbedtls_x509_crt_parse_file for own cert returned %d\0A\00", align 1
@mbedtls_entropy_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"mbedtls_ctr_drbg_seed returned %d\0A\00", align 1
@MBEDTLS_SSL_IS_SERVER = common dso_local global i32 0, align 4
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i32 0, align 4
@MBEDTLS_SSL_TRANSPORT_STREAM = common dso_local global i32 0, align 4
@MBEDTLS_SSL_PRESET_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"mbedtls_ssl_config_defaults returned %d\0A\00", align 1
@MBEDTLS_SSL_VERIFY_REQUIRED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_VERIFY_NONE = common dso_local global i32 0, align 4
@mbedtls_ctr_drbg_random = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"mbedtls_ssl_conf_own_cert returned %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"mbedtls_ssl_setup returned %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"mbedtls_ssl_set_hostname returned %d\0A\00", align 1
@mbedtls_send = common dso_local global i32 0, align 4
@mbedtls_recv = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [103 x i8] c"mbedtls_ssl_get_verify_result reported problems with the certificate verification, returned flags: %u\0A\00", align 1
@MBEDTLS_X509_BADCERT_NOT_TRUSTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [60 x i8] c"The certificate is not correctly signed by the trusted CA.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32, i32**)* @tls_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_open(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %10, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %11, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @parse_options(%struct.TYPE_14__* %19, i8* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32**, i32*** %9, align 8
  %26 = call i32 @ff_tls_open_underlying(%struct.TYPE_13__* %22, %struct.TYPE_12__* %23, i8* %24, i32** %25)
  store i32 %26, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %268

29:                                               ; preds = %4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = call i32 @mbedtls_ssl_init(i32* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = call i32 @mbedtls_ssl_config_init(i32* %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 6
  %38 = call i32 @mbedtls_entropy_init(i32* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 5
  %41 = call i32 @mbedtls_ctr_drbg_init(i32* %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 4
  %44 = call i32 @mbedtls_x509_crt_init(i32* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = call i32 @mbedtls_pk_init(i32* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %29
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @mbedtls_x509_crt_parse_file(i32* %54, i64 %57)
  store i32 %58, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %61, i32 %62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %268

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %29
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @mbedtls_x509_crt_parse_file(i32* %73, i64 %76)
  store i32 %77, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %80, i32 %81, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %268

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %66
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %85
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mbedtls_pk_parse_keyfile(i32* %92, i64 %95, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @handle_pk_parse_error(%struct.TYPE_12__* %102, i32 %103)
  br label %268

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %85
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 5
  %109 = load i32, i32* @mbedtls_entropy_func, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 6
  %112 = call i32 @mbedtls_ctr_drbg_seed(i32* %108, i32 %109, i32* %111, i32* null, i32 0)
  store i32 %112, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = load i32, i32* @AV_LOG_ERROR, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %115, i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %268

119:                                              ; preds = %106
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @MBEDTLS_SSL_IS_SERVER, align 4
  br label %130

128:                                              ; preds = %119
  %129 = load i32, i32* @MBEDTLS_SSL_IS_CLIENT, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = load i32, i32* @MBEDTLS_SSL_TRANSPORT_STREAM, align 4
  %133 = load i32, i32* @MBEDTLS_SSL_PRESET_DEFAULT, align 4
  %134 = call i32 @mbedtls_ssl_config_defaults(i32* %121, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = load i32, i32* @AV_LOG_ERROR, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %137, i32 %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  br label %268

141:                                              ; preds = %130
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @MBEDTLS_SSL_VERIFY_REQUIRED, align 4
  br label %152

150:                                              ; preds = %141
  %151 = load i32, i32* @MBEDTLS_SSL_VERIFY_NONE, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = call i32 @mbedtls_ssl_conf_authmode(i32* %143, i32 %153)
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32, i32* @mbedtls_ctr_drbg_random, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 5
  %160 = call i32 @mbedtls_ssl_conf_rng(i32* %156, i32 %157, i32* %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 4
  %165 = call i32 @mbedtls_ssl_conf_ca_chain(i32* %162, i32* %164, i32* null)
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = call i32 @mbedtls_ssl_conf_own_cert(i32* %167, i32* %169, i32* %171)
  store i32 %172, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %152
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %176 = load i32, i32* @AV_LOG_ERROR, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %175, i32 %176, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  br label %268

179:                                              ; preds = %152
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 1
  %184 = call i32 @mbedtls_ssl_setup(i32* %181, i32* %183)
  store i32 %184, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %179
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %188 = load i32, i32* @AV_LOG_ERROR, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %187, i32 %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %189)
  br label %268

191:                                              ; preds = %179
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %215, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %215, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @mbedtls_ssl_set_hostname(i32* %203, i32 %206)
  store i32 %207, i32* %13, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %201
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %211 = load i32, i32* @AV_LOG_ERROR, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %210, i32 %211, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  br label %268

214:                                              ; preds = %201
  br label %215

215:                                              ; preds = %214, %196, %191
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @mbedtls_send, align 4
  %222 = load i32, i32* @mbedtls_recv, align 4
  %223 = call i32 @mbedtls_ssl_set_bio(i32* %217, i32 %220, i32 %221, i32 %222, i32* null)
  br label %224

224:                                              ; preds = %241, %215
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = call i32 @mbedtls_ssl_handshake(i32* %226)
  store i32 %227, i32* %13, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %224
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %229
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @handle_handshake_error(%struct.TYPE_12__* %238, i32 %239)
  br label %268

241:                                              ; preds = %233, %229
  br label %224

242:                                              ; preds = %224
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %267

247:                                              ; preds = %242
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = call i32 @mbedtls_ssl_get_verify_result(i32* %249)
  store i32 %250, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %247
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %254 = load i32, i32* @AV_LOG_ERROR, align 4
  %255 = load i32, i32* %12, align 4
  %256 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %253, i32 %254, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* @MBEDTLS_X509_BADCERT_NOT_TRUSTED, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %252
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %263 = load i32, i32* @AV_LOG_ERROR, align 4
  %264 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %262, i32 %263, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  br label %265

265:                                              ; preds = %261, %252
  br label %268

266:                                              ; preds = %247
  br label %267

267:                                              ; preds = %266, %242
  store i32 0, i32* %5, align 4
  br label %273

268:                                              ; preds = %265, %237, %209, %186, %174, %136, %114, %101, %79, %60, %28
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %270 = call i32 @tls_close(%struct.TYPE_12__* %269)
  %271 = load i32, i32* @EIO, align 4
  %272 = call i32 @AVERROR(i32 %271)
  store i32 %272, i32* %5, align 4
  br label %273

273:                                              ; preds = %268, %267
  %274 = load i32, i32* %5, align 4
  ret i32 %274
}

declare dso_local i32 @parse_options(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @ff_tls_open_underlying(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32**) #1

declare dso_local i32 @mbedtls_ssl_init(i32*) #1

declare dso_local i32 @mbedtls_ssl_config_init(i32*) #1

declare dso_local i32 @mbedtls_entropy_init(i32*) #1

declare dso_local i32 @mbedtls_ctr_drbg_init(i32*) #1

declare dso_local i32 @mbedtls_x509_crt_init(i32*) #1

declare dso_local i32 @mbedtls_pk_init(i32*) #1

declare dso_local i32 @mbedtls_x509_crt_parse_file(i32*, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @mbedtls_pk_parse_keyfile(i32*, i64, i32) #1

declare dso_local i32 @handle_pk_parse_error(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mbedtls_ctr_drbg_seed(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_config_defaults(i32*, i32, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_authmode(i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_rng(i32*, i32, i32*) #1

declare dso_local i32 @mbedtls_ssl_conf_ca_chain(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_ssl_conf_own_cert(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_ssl_setup(i32*, i32*) #1

declare dso_local i32 @mbedtls_ssl_set_hostname(i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_set_bio(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mbedtls_ssl_handshake(i32*) #1

declare dso_local i32 @handle_handshake_error(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mbedtls_ssl_get_verify_result(i32*) #1

declare dso_local i32 @tls_close(%struct.TYPE_12__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
