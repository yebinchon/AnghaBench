; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_gnutls.c_tls_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_gnutls.c_tls_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i32, i64, i64, i64, i32, i64 }

@GNUTLS_SERVER = common dso_local global i32 0, align 4
@GNUTLS_CLIENT = common dso_local global i32 0, align 4
@GNUTLS_NAME_DNS = common dso_local global i32 0, align 4
@GNUTLS_X509_FMT_PEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to set cert/key files %s and %s: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"cert and key required\0A\00", align 1
@GNUTLS_CRD_CERTIFICATE = common dso_local global i32 0, align 4
@gnutls_url_pull = common dso_local global i32 0, align 4
@gnutls_url_push = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unable to verify peer certificate: %s\0A\00", align 1
@GNUTLS_CERT_INVALID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Peer certificate failed verification\0A\00", align 1
@GNUTLS_CRT_X509 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Unsupported certificate type\0A\00", align 1
@GNUTLS_X509_FMT_DER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [52 x i8] c"The certificate's owner does not match hostname %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32, i32**)* @tls_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_open(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %10, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %11, align 8
  %22 = call i32 (...) @ff_gnutls_init()
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32**, i32*** %9, align 8
  %27 = call i32 @ff_tls_open_underlying(%struct.TYPE_11__* %23, %struct.TYPE_10__* %24, i8* %25, i32** %26)
  store i32 %27, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %280

30:                                               ; preds = %4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @GNUTLS_SERVER, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @GNUTLS_CLIENT, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @gnutls_init(i32* %32, i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GNUTLS_NAME_DNS, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @strlen(i32 %63)
  %65 = call i32 @gnutls_server_name_set(i32 %56, i32 %57, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %53, %48, %41
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = call i32 @gnutls_certificate_allocate_credentials(i32* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %66
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @GNUTLS_X509_FMT_PEM, align 4
  %82 = call i32 @gnutls_certificate_set_x509_trust_file(i32 %77, i64 %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @gnutls_strerror(i32 %88)
  %90 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %86, i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %74
  br label %92

92:                                               ; preds = %91, %66
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i32, i32* @GNUTLS_VERIFY_ALLOW_X509_V1_CA_CRT, align 4
  br label %103

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = call i32 @gnutls_certificate_set_verify_flags(i32 %95, i32 %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %103
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %110
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* @GNUTLS_X509_FMT_PEM, align 4
  %126 = call i32 @gnutls_certificate_set_x509_key_file(i32 %118, i64 %121, i64 %124, i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %115
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %131 = load i32, i32* @AV_LOG_ERROR, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @gnutls_strerror(i32 %138)
  %140 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %130, i32 %131, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %134, i64 %137, i32 %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = call i32 @AVERROR(i32 %141)
  store i32 %142, i32* %12, align 4
  br label %280

143:                                              ; preds = %115
  br label %159

144:                                              ; preds = %110, %103
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149, %144
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %156 = load i32, i32* @AV_LOG_ERROR, align 4
  %157 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %155, i32 %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %149
  br label %159

159:                                              ; preds = %158, %143
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @GNUTLS_CRD_CERTIFICATE, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @gnutls_credentials_set(i32 %162, i32 %163, i32 %166)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @gnutls_url_pull, align 4
  %172 = call i32 @gnutls_transport_set_pull_function(i32 %170, i32 %171)
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @gnutls_url_push, align 4
  %177 = call i32 @gnutls_transport_set_push_function(i32 %175, i32 %176)
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @gnutls_transport_set_ptr(i32 %180, i32 %183)
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @gnutls_priority_set_direct(i32 %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null)
  br label %189

189:                                              ; preds = %202, %159
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @gnutls_handshake(i32 %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i64 @gnutls_error_is_fatal(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @print_tls_error(%struct.TYPE_10__* %198, i32 %199)
  store i32 %200, i32* %12, align 4
  br label %280

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %189, label %205

205:                                              ; preds = %202
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %279

212:                                              ; preds = %205
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @gnutls_certificate_verify_peers2(i32 %215, i32* %13)
  store i32 %216, i32* %12, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %212
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %220 = load i32, i32* @AV_LOG_ERROR, align 4
  %221 = load i32, i32* %12, align 4
  %222 = call i32 @gnutls_strerror(i32 %221)
  %223 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %219, i32 %220, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* @EIO, align 4
  %225 = call i32 @AVERROR(i32 %224)
  store i32 %225, i32* %12, align 4
  br label %280

226:                                              ; preds = %212
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* @GNUTLS_CERT_INVALID, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %233 = load i32, i32* @AV_LOG_ERROR, align 4
  %234 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %232, i32 %233, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %235 = load i32, i32* @EIO, align 4
  %236 = call i32 @AVERROR(i32 %235)
  store i32 %236, i32* %12, align 4
  br label %280

237:                                              ; preds = %226
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @gnutls_certificate_type_get(i32 %240)
  %242 = load i64, i64* @GNUTLS_CRT_X509, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %237
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %246 = load i32, i32* @AV_LOG_ERROR, align 4
  %247 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %245, i32 %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %248 = load i32, i32* @EIO, align 4
  %249 = call i32 @AVERROR(i32 %248)
  store i32 %249, i32* %12, align 4
  br label %280

250:                                              ; preds = %237
  %251 = call i32 @gnutls_x509_crt_init(i32* %15)
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = call i32* @gnutls_certificate_get_peers(i32 %254, i32* %14)
  store i32* %255, i32** %16, align 8
  %256 = load i32, i32* %15, align 4
  %257 = load i32*, i32** %16, align 8
  %258 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %259 = call i32 @gnutls_x509_crt_import(i32 %256, i32* %257, i32 %258)
  %260 = load i32, i32* %15, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @gnutls_x509_crt_check_hostname(i32 %260, i32 %263)
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %15, align 4
  %266 = call i32 @gnutls_x509_crt_deinit(i32 %265)
  %267 = load i32, i32* %12, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %278, label %269

269:                                              ; preds = %250
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %271 = load i32, i32* @AV_LOG_ERROR, align 4
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %270, i32 %271, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* @EIO, align 4
  %277 = call i32 @AVERROR(i32 %276)
  store i32 %277, i32* %12, align 4
  br label %280

278:                                              ; preds = %250
  br label %279

279:                                              ; preds = %278, %205
  store i32 0, i32* %5, align 4
  br label %284

280:                                              ; preds = %269, %244, %231, %218, %197, %129, %29
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %282 = call i32 @tls_close(%struct.TYPE_10__* %281)
  %283 = load i32, i32* %12, align 4
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %280, %279
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local i32 @ff_gnutls_init(...) #1

declare dso_local i32 @ff_tls_open_underlying(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*, i32**) #1

declare dso_local i32 @gnutls_init(i32*, i32) #1

declare dso_local i32 @gnutls_server_name_set(i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @gnutls_certificate_allocate_credentials(i32*) #1

declare dso_local i32 @gnutls_certificate_set_x509_trust_file(i32, i64, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @gnutls_strerror(i32) #1

declare dso_local i32 @gnutls_certificate_set_verify_flags(i32, i32) #1

declare dso_local i32 @gnutls_certificate_set_x509_key_file(i32, i64, i64, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @gnutls_credentials_set(i32, i32, i32) #1

declare dso_local i32 @gnutls_transport_set_pull_function(i32, i32) #1

declare dso_local i32 @gnutls_transport_set_push_function(i32, i32) #1

declare dso_local i32 @gnutls_transport_set_ptr(i32, i32) #1

declare dso_local i32 @gnutls_priority_set_direct(i32, i8*, i32*) #1

declare dso_local i32 @gnutls_handshake(i32) #1

declare dso_local i64 @gnutls_error_is_fatal(i32) #1

declare dso_local i32 @print_tls_error(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gnutls_certificate_verify_peers2(i32, i32*) #1

declare dso_local i64 @gnutls_certificate_type_get(i32) #1

declare dso_local i32 @gnutls_x509_crt_init(i32*) #1

declare dso_local i32* @gnutls_certificate_get_peers(i32, i32*) #1

declare dso_local i32 @gnutls_x509_crt_import(i32, i32*, i32) #1

declare dso_local i32 @gnutls_x509_crt_check_hostname(i32, i32) #1

declare dso_local i32 @gnutls_x509_crt_deinit(i32) #1

declare dso_local i32 @tls_close(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
