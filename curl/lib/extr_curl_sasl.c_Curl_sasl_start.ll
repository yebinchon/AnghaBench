; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_curl_sasl.c_Curl_sasl_start.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_curl_sasl.c_Curl_sasl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SASL = type { i32, i32, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i8*, i64, i64 (%struct.connectdata*, i8*, i8*)* }
%struct.connectdata = type { i64, i64, i32, i32*, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.Curl_easy* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.Curl_easy = type { %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i8**, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@SASL_STOP = common dso_local global i32 0, align 4
@SASL_FINAL = common dso_local global i32 0, align 4
@SASL_IDLE = common dso_local global i32 0, align 4
@SASL_MECH_EXTERNAL = common dso_local global i32 0, align 4
@SASL_MECH_STRING_EXTERNAL = common dso_local global i8* null, align 8
@SASL_EXTERNAL = common dso_local global i32 0, align 4
@SASL_MECH_DIGEST_MD5 = common dso_local global i32 0, align 4
@SASL_MECH_STRING_DIGEST_MD5 = common dso_local global i8* null, align 8
@SASL_DIGESTMD5 = common dso_local global i32 0, align 4
@SASL_MECH_CRAM_MD5 = common dso_local global i32 0, align 4
@SASL_MECH_STRING_CRAM_MD5 = common dso_local global i8* null, align 8
@SASL_CRAMMD5 = common dso_local global i32 0, align 4
@SASL_MECH_OAUTHBEARER = common dso_local global i32 0, align 4
@SASL_MECH_STRING_OAUTHBEARER = common dso_local global i8* null, align 8
@SASL_OAUTH2 = common dso_local global i32 0, align 4
@SASL_OAUTH2_RESP = common dso_local global i32 0, align 4
@SASL_MECH_XOAUTH2 = common dso_local global i32 0, align 4
@SASL_MECH_STRING_XOAUTH2 = common dso_local global i8* null, align 8
@SASL_MECH_PLAIN = common dso_local global i32 0, align 4
@SASL_MECH_STRING_PLAIN = common dso_local global i8* null, align 8
@SASL_PLAIN = common dso_local global i32 0, align 4
@SASL_MECH_LOGIN = common dso_local global i32 0, align 4
@SASL_MECH_STRING_LOGIN = common dso_local global i8* null, align 8
@SASL_LOGIN = common dso_local global i32 0, align 4
@SASL_LOGIN_PASSWD = common dso_local global i32 0, align 4
@SASL_INPROGRESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SASL_GSSAPI = common dso_local global i32 0, align 4
@SASL_GSSAPI_TOKEN = common dso_local global i32 0, align 4
@SASL_MECH_GSSAPI = common dso_local global i32 0, align 4
@SASL_MECH_NTLM = common dso_local global i32 0, align 4
@SASL_MECH_STRING_GSSAPI = common dso_local global i8* null, align 8
@SASL_MECH_STRING_NTLM = common dso_local global i8* null, align 8
@SASL_NTLM = common dso_local global i32 0, align 4
@SASL_NTLM_TYPE2MSG = common dso_local global i32 0, align 4
@STRING_SERVICE_NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_sasl_start(%struct.SASL* %0, %struct.connectdata* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.SASL*, align 8
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Curl_easy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.SASL* %0, %struct.SASL** %5, align 8
  store %struct.connectdata* %1, %struct.connectdata** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %19 = load i64, i64* @CURLE_OK, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %21 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %20, i32 0, i32 11
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %21, align 8
  store %struct.Curl_easy* %22, %struct.Curl_easy** %10, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i64 0, i64* %14, align 8
  %23 = load i32, i32* @SASL_STOP, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @SASL_FINAL, align 4
  store i32 %24, i32* %16, align 4
  %25 = call i64 (...) @SSL_IS_PROXY()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %29 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %28, i32 0, i32 10
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %38

33:                                               ; preds = %4
  %34 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %35 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i8* [ %32, %27 ], [ %37, %33 ]
  store i8* %39, i8** %17, align 8
  %40 = call i64 (...) @SSL_IS_PROXY()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %48 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i64 [ %45, %42 ], [ %49, %46 ]
  store i64 %51, i64* %18, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.SASL*, %struct.SASL** %5, align 8
  %54 = getelementptr inbounds %struct.SASL, %struct.SASL* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.SASL*, %struct.SASL** %5, align 8
  %56 = getelementptr inbounds %struct.SASL, %struct.SASL* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.SASL*, %struct.SASL** %5, align 8
  %58 = getelementptr inbounds %struct.SASL, %struct.SASL* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.SASL*, %struct.SASL** %5, align 8
  %61 = getelementptr inbounds %struct.SASL, %struct.SASL* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @SASL_IDLE, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @SASL_MECH_EXTERNAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %50
  %71 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %72 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %98, label %77

77:                                               ; preds = %70
  %78 = load i8*, i8** @SASL_MECH_STRING_EXTERNAL, align 8
  store i8* %78, i8** %12, align 8
  %79 = load i32, i32* @SASL_EXTERNAL, align 4
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* @SASL_MECH_EXTERNAL, align 4
  %81 = load %struct.SASL*, %struct.SASL** %5, align 8
  %82 = getelementptr inbounds %struct.SASL, %struct.SASL* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %77
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85, %77
  %92 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %93 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %94 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @Curl_auth_create_external_message(%struct.Curl_easy* %92, i32 %95, i8** %13, i64* %14)
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %91, %85
  br label %266

98:                                               ; preds = %70, %50
  %99 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %100 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %265

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @SASL_MECH_DIGEST_MD5, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = call i64 (...) @Curl_auth_is_digest_supported()
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i8*, i8** @SASL_MECH_STRING_DIGEST_MD5, align 8
  store i8* %113, i8** %12, align 8
  %114 = load i32, i32* @SASL_DIGESTMD5, align 4
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* @SASL_MECH_DIGEST_MD5, align 4
  %116 = load %struct.SASL*, %struct.SASL** %5, align 8
  %117 = getelementptr inbounds %struct.SASL, %struct.SASL* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %264

118:                                              ; preds = %109, %104
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @SASL_MECH_CRAM_MD5, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i8*, i8** @SASL_MECH_STRING_CRAM_MD5, align 8
  store i8* %124, i8** %12, align 8
  %125 = load i32, i32* @SASL_CRAMMD5, align 4
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* @SASL_MECH_CRAM_MD5, align 4
  %127 = load %struct.SASL*, %struct.SASL** %5, align 8
  %128 = getelementptr inbounds %struct.SASL, %struct.SASL* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %263

129:                                              ; preds = %118
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @SASL_MECH_OAUTHBEARER, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %129
  %135 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %136 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %166

139:                                              ; preds = %134
  %140 = load i8*, i8** @SASL_MECH_STRING_OAUTHBEARER, align 8
  store i8* %140, i8** %12, align 8
  %141 = load i32, i32* @SASL_OAUTH2, align 4
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* @SASL_OAUTH2_RESP, align 4
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* @SASL_MECH_OAUTHBEARER, align 4
  %144 = load %struct.SASL*, %struct.SASL** %5, align 8
  %145 = getelementptr inbounds %struct.SASL, %struct.SASL* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %139
  %149 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %150 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %148, %139
  %155 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %156 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %157 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i8*, i8** %17, align 8
  %160 = load i64, i64* %18, align 8
  %161 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %162 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @Curl_auth_create_oauth_bearer_message(%struct.Curl_easy* %155, i32 %158, i8* %159, i64 %160, i32 %163, i8** %13, i64* %14)
  store i64 %164, i64* %9, align 8
  br label %165

165:                                              ; preds = %154, %148
  br label %262

166:                                              ; preds = %134, %129
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* @SASL_MECH_XOAUTH2, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %200

171:                                              ; preds = %166
  %172 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %173 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %200

176:                                              ; preds = %171
  %177 = load i8*, i8** @SASL_MECH_STRING_XOAUTH2, align 8
  store i8* %177, i8** %12, align 8
  %178 = load i32, i32* @SASL_OAUTH2, align 4
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* @SASL_MECH_XOAUTH2, align 4
  %180 = load %struct.SASL*, %struct.SASL** %5, align 8
  %181 = getelementptr inbounds %struct.SASL, %struct.SASL* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %176
  %185 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %186 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %184, %176
  %191 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %192 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %193 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %196 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @Curl_auth_create_xoauth_bearer_message(%struct.Curl_easy* %191, i32 %194, i32 %197, i8** %13, i64* %14)
  store i64 %198, i64* %9, align 8
  br label %199

199:                                              ; preds = %190, %184
  br label %261

200:                                              ; preds = %171, %166
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @SASL_MECH_PLAIN, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %232

205:                                              ; preds = %200
  %206 = load i8*, i8** @SASL_MECH_STRING_PLAIN, align 8
  store i8* %206, i8** %12, align 8
  %207 = load i32, i32* @SASL_PLAIN, align 4
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* @SASL_MECH_PLAIN, align 4
  %209 = load %struct.SASL*, %struct.SASL** %5, align 8
  %210 = getelementptr inbounds %struct.SASL, %struct.SASL* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %205
  %214 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %215 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %213, %205
  %220 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %221 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %222 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %225 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %228 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = call i64 @Curl_auth_create_plain_message(%struct.Curl_easy* %220, i32 %223, i32 %226, i32* %229, i8** %13, i64* %14)
  store i64 %230, i64* %9, align 8
  br label %231

231:                                              ; preds = %219, %213
  br label %260

232:                                              ; preds = %200
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* @SASL_MECH_LOGIN, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %259

237:                                              ; preds = %232
  %238 = load i8*, i8** @SASL_MECH_STRING_LOGIN, align 8
  store i8* %238, i8** %12, align 8
  %239 = load i32, i32* @SASL_LOGIN, align 4
  store i32 %239, i32* %15, align 4
  %240 = load i32, i32* @SASL_LOGIN_PASSWD, align 4
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* @SASL_MECH_LOGIN, align 4
  %242 = load %struct.SASL*, %struct.SASL** %5, align 8
  %243 = getelementptr inbounds %struct.SASL, %struct.SASL* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %252, label %246

246:                                              ; preds = %237
  %247 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %248 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %246, %237
  %253 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  %254 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %255 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = call i64 @Curl_auth_create_login_message(%struct.Curl_easy* %253, i32 %256, i8** %13, i64* %14)
  store i64 %257, i64* %9, align 8
  br label %258

258:                                              ; preds = %252, %246
  br label %259

259:                                              ; preds = %258, %232
  br label %260

260:                                              ; preds = %259, %231
  br label %261

261:                                              ; preds = %260, %199
  br label %262

262:                                              ; preds = %261, %165
  br label %263

263:                                              ; preds = %262, %123
  br label %264

264:                                              ; preds = %263, %112
  br label %265

265:                                              ; preds = %264, %98
  br label %266

266:                                              ; preds = %265, %97
  %267 = load i64, i64* %9, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %323, label %269

269:                                              ; preds = %266
  %270 = load i8*, i8** %12, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %323

272:                                              ; preds = %269
  %273 = load i8*, i8** %13, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %275, label %296

275:                                              ; preds = %272
  %276 = load %struct.SASL*, %struct.SASL** %5, align 8
  %277 = getelementptr inbounds %struct.SASL, %struct.SASL* %276, i32 0, i32 4
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %296

282:                                              ; preds = %275
  %283 = load i8*, i8** %12, align 8
  %284 = call i64 @strlen(i8* %283)
  %285 = load i64, i64* %14, align 8
  %286 = add i64 %284, %285
  %287 = load %struct.SASL*, %struct.SASL** %5, align 8
  %288 = getelementptr inbounds %struct.SASL, %struct.SASL* %287, i32 0, i32 4
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = icmp ugt i64 %286, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %282
  %294 = load i8*, i8** %13, align 8
  %295 = call i32 @free(i8* %294)
  store i8* null, i8** %13, align 8
  br label %296

296:                                              ; preds = %293, %282, %275, %272
  %297 = load %struct.SASL*, %struct.SASL** %5, align 8
  %298 = getelementptr inbounds %struct.SASL, %struct.SASL* %297, i32 0, i32 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 2
  %301 = load i64 (%struct.connectdata*, i8*, i8*)*, i64 (%struct.connectdata*, i8*, i8*)** %300, align 8
  %302 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %303 = load i8*, i8** %12, align 8
  %304 = load i8*, i8** %13, align 8
  %305 = call i64 %301(%struct.connectdata* %302, i8* %303, i8* %304)
  store i64 %305, i64* %9, align 8
  %306 = load i64, i64* %9, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %322, label %308

308:                                              ; preds = %296
  %309 = load i32, i32* @SASL_INPROGRESS, align 4
  %310 = load i32*, i32** %8, align 8
  store i32 %309, i32* %310, align 4
  %311 = load %struct.SASL*, %struct.SASL** %5, align 8
  %312 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %313 = load i8*, i8** %13, align 8
  %314 = icmp ne i8* %313, null
  br i1 %314, label %315, label %317

315:                                              ; preds = %308
  %316 = load i32, i32* %16, align 4
  br label %319

317:                                              ; preds = %308
  %318 = load i32, i32* %15, align 4
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i32 [ %316, %315 ], [ %318, %317 ]
  %321 = call i32 @state(%struct.SASL* %311, %struct.connectdata* %312, i32 %320)
  br label %322

322:                                              ; preds = %319, %296
  br label %323

323:                                              ; preds = %322, %269, %266
  %324 = load i8*, i8** %13, align 8
  %325 = call i32 @free(i8* %324)
  %326 = load i64, i64* %9, align 8
  ret i64 %326
}

declare dso_local i64 @SSL_IS_PROXY(...) #1

declare dso_local i64 @Curl_auth_create_external_message(%struct.Curl_easy*, i32, i8**, i64*) #1

declare dso_local i64 @Curl_auth_is_digest_supported(...) #1

declare dso_local i64 @Curl_auth_create_oauth_bearer_message(%struct.Curl_easy*, i32, i8*, i64, i32, i8**, i64*) #1

declare dso_local i64 @Curl_auth_create_xoauth_bearer_message(%struct.Curl_easy*, i32, i32, i8**, i64*) #1

declare dso_local i64 @Curl_auth_create_plain_message(%struct.Curl_easy*, i32, i32, i32*, i8**, i64*) #1

declare dso_local i64 @Curl_auth_create_login_message(%struct.Curl_easy*, i32, i8**, i64*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @state(%struct.SASL*, %struct.connectdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
