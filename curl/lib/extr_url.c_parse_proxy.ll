; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_parse_proxy.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_parse_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.connectdata = type { i64, %struct.proxy_info, %struct.TYPE_5__, %struct.proxy_info }
%struct.TYPE_5__ = type { i32 }
%struct.proxy_info = type { i8*, i8*, i64, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i8*, i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@CURLUPART_URL = common dso_local global i32 0, align 4
@CURLU_NON_SUPPORT_SCHEME = common dso_local global i32 0, align 4
@CURLU_GUESS_SCHEME = common dso_local global i32 0, align 4
@CURLUPART_SCHEME = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"https\00", align 1
@CURLPROXY_HTTPS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"socks5h\00", align 1
@CURLPROXY_SOCKS5_HOSTNAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"socks5\00", align 1
@CURLPROXY_SOCKS5 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"socks4a\00", align 1
@CURLPROXY_SOCKS4A = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"socks4\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"socks\00", align 1
@CURLPROXY_SOCKS4 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Unsupported proxy scheme for '%s'\00", align 1
@CURLE_COULDNT_CONNECT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Unsupported proxy syntax in '%s'\00", align 1
@CURLE_COULDNT_RESOLVE_PROXY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [74 x i8] c"Unsupported proxy '%s', libcurl is built without the HTTPS-proxy support.\00", align 1
@CURLE_NOT_BUILT_IN = common dso_local global i32 0, align 4
@CURLUPART_USER = common dso_local global i32 0, align 4
@CURLU_URLDECODE = common dso_local global i32 0, align 4
@CURLUPART_PASSWORD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@CURLUPART_PORT = common dso_local global i32 0, align 4
@CURL_DEFAULT_HTTPS_PROXY_PORT = common dso_local global i64 0, align 8
@CURL_DEFAULT_PROXY_PORT = common dso_local global i64 0, align 8
@CURLUPART_HOST = common dso_local global i32 0, align 4
@Curl_ssl = common dso_local global %struct.TYPE_8__* null, align 8
@SSLSUPP_HTTPS_PROXY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*, i8*, i64)* @parse_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_proxy(%struct.Curl_easy* %0, %struct.connectdata* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.proxy_info*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store %struct.connectdata* %1, %struct.connectdata** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i64 -1, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %21 = call i32* (...) @curl_url()
  store i32* %21, i32** %17, align 8
  %22 = load i32, i32* @CURLE_OK, align 4
  store i32 %22, i32* %18, align 4
  store i8* null, i8** %19, align 8
  %23 = load i32*, i32** %17, align 8
  %24 = load i32, i32* @CURLUPART_URL, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @CURLU_NON_SUPPORT_SCHEME, align 4
  %27 = load i32, i32* @CURLU_GUESS_SCHEME, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @curl_url_set(i32* %23, i32 %24, i8* %25, i32 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %90, label %32

32:                                               ; preds = %4
  %33 = load i32*, i32** %17, align 8
  %34 = load i32, i32* @CURLUPART_SCHEME, align 4
  %35 = call i64 @curl_url_get(i32* %33, i32 %34, i8** %19, i32 0)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %39, i32* %18, align 4
  br label %277

40:                                               ; preds = %32
  %41 = load i8*, i8** %19, align 8
  %42 = call i64 @strcasecompare(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @CURLPROXY_HTTPS, align 8
  store i64 %45, i64* %8, align 8
  br label %89

46:                                               ; preds = %40
  %47 = load i8*, i8** %19, align 8
  %48 = call i64 @strcasecompare(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @CURLPROXY_SOCKS5_HOSTNAME, align 8
  store i64 %51, i64* %8, align 8
  br label %88

52:                                               ; preds = %46
  %53 = load i8*, i8** %19, align 8
  %54 = call i64 @strcasecompare(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @CURLPROXY_SOCKS5, align 8
  store i64 %57, i64* %8, align 8
  br label %87

58:                                               ; preds = %52
  %59 = load i8*, i8** %19, align 8
  %60 = call i64 @strcasecompare(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* @CURLPROXY_SOCKS4A, align 8
  store i64 %63, i64* %8, align 8
  br label %86

64:                                               ; preds = %58
  %65 = load i8*, i8** %19, align 8
  %66 = call i64 @strcasecompare(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %19, align 8
  %70 = call i64 @strcasecompare(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68, %64
  %73 = load i64, i64* @CURLPROXY_SOCKS4, align 8
  store i64 %73, i64* %8, align 8
  br label %85

74:                                               ; preds = %68
  %75 = load i8*, i8** %19, align 8
  %76 = call i64 @strcasecompare(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %84

79:                                               ; preds = %74
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @failf(%struct.Curl_easy* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @CURLE_COULDNT_CONNECT, align 4
  store i32 %83, i32* %18, align 4
  br label %277

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %56
  br label %88

88:                                               ; preds = %87, %50
  br label %89

89:                                               ; preds = %88, %44
  br label %95

90:                                               ; preds = %4
  %91 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @failf(%struct.Curl_easy* %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @CURLE_COULDNT_RESOLVE_PROXY, align 4
  store i32 %94, i32* %18, align 4
  br label %277

95:                                               ; preds = %89
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @CURLPROXY_HTTPS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @failf(%struct.Curl_easy* %100, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* @CURLE_NOT_BUILT_IN, align 4
  store i32 %103, i32* %18, align 4
  br label %277

104:                                              ; preds = %95
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @CURLPROXY_SOCKS5_HOSTNAME, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @CURLPROXY_SOCKS5, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* @CURLPROXY_SOCKS4A, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @CURLPROXY_SOCKS4, align 8
  %119 = icmp eq i64 %117, %118
  br label %120

120:                                              ; preds = %116, %112, %108, %104
  %121 = phi i1 [ true, %112 ], [ true, %108 ], [ true, %104 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %127 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %126, i32 0, i32 1
  br label %131

128:                                              ; preds = %120
  %129 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %130 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %129, i32 0, i32 3
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi %struct.proxy_info* [ %127, %125 ], [ %130, %128 ]
  store %struct.proxy_info* %132, %struct.proxy_info** %16, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load %struct.proxy_info*, %struct.proxy_info** %16, align 8
  %135 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %134, i32 0, i32 4
  store i64 %133, i64* %135, align 8
  %136 = load i32*, i32** %17, align 8
  %137 = load i32, i32* @CURLUPART_USER, align 4
  %138 = load i32, i32* @CURLU_URLDECODE, align 4
  %139 = call i64 @curl_url_get(i32* %136, i32 %137, i8** %11, i32 %138)
  %140 = load i32*, i32** %17, align 8
  %141 = load i32, i32* @CURLUPART_PASSWORD, align 4
  %142 = load i32, i32* @CURLU_URLDECODE, align 4
  %143 = call i64 @curl_url_get(i32* %140, i32 %141, i8** %12, i32 %142)
  %144 = load i8*, i8** %11, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %131
  %147 = load i8*, i8** %12, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %178

149:                                              ; preds = %146, %131
  %150 = load %struct.proxy_info*, %struct.proxy_info** %16, align 8
  %151 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @Curl_safefree(i8* %152)
  %154 = load i8*, i8** %11, align 8
  %155 = load %struct.proxy_info*, %struct.proxy_info** %16, align 8
  %156 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load %struct.proxy_info*, %struct.proxy_info** %16, align 8
  %158 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @Curl_safefree(i8* %159)
  %161 = load i8*, i8** %12, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %170, label %163

163:                                              ; preds = %149
  %164 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  store i8* %164, i8** %12, align 8
  %165 = load i8*, i8** %12, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %168, i32* %18, align 4
  br label %277

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %169, %149
  %171 = load i8*, i8** %12, align 8
  %172 = load %struct.proxy_info*, %struct.proxy_info** %16, align 8
  %173 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* @TRUE, align 4
  %175 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %176 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  br label %178

178:                                              ; preds = %170, %146
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* @CURLUPART_PORT, align 4
  %181 = call i64 @curl_url_get(i32* %179, i32 %180, i8** %9, i32 0)
  %182 = load i8*, i8** %9, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i8*, i8** %9, align 8
  %186 = call i64 @strtol(i8* %185, i32* null, i32 10)
  store i64 %186, i64* %10, align 8
  %187 = load i8*, i8** %9, align 8
  %188 = call i32 @free(i8* %187)
  br label %210

189:                                              ; preds = %178
  %190 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %191 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %197 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %10, align 8
  br label %209

200:                                              ; preds = %189
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* @CURLPROXY_HTTPS, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i64, i64* @CURL_DEFAULT_HTTPS_PROXY_PORT, align 8
  store i64 %205, i64* %10, align 8
  br label %208

206:                                              ; preds = %200
  %207 = load i64, i64* @CURL_DEFAULT_PROXY_PORT, align 8
  store i64 %207, i64* %10, align 8
  br label %208

208:                                              ; preds = %206, %204
  br label %209

209:                                              ; preds = %208, %195
  br label %210

210:                                              ; preds = %209, %184
  %211 = load i64, i64* %10, align 8
  %212 = icmp sge i64 %211, 0
  br i1 %212, label %213, label %236

213:                                              ; preds = %210
  %214 = load i64, i64* %10, align 8
  %215 = load %struct.proxy_info*, %struct.proxy_info** %16, align 8
  %216 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %215, i32 0, i32 2
  store i64 %214, i64* %216, align 8
  %217 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %218 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp slt i64 %219, 0
  br i1 %220, label %231, label %221

221:                                              ; preds = %213
  %222 = load i32, i32* %14, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %231, label %224

224:                                              ; preds = %221
  %225 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %226 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %235, label %231

231:                                              ; preds = %224, %221, %213
  %232 = load i64, i64* %10, align 8
  %233 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %234 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %231, %224
  br label %236

236:                                              ; preds = %235, %210
  %237 = load i32*, i32** %17, align 8
  %238 = load i32, i32* @CURLUPART_HOST, align 4
  %239 = load i32, i32* @CURLU_URLDECODE, align 4
  %240 = call i64 @curl_url_get(i32* %237, i32 %238, i8** %13, i32 %239)
  store i64 %240, i64* %15, align 8
  %241 = load i64, i64* %15, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %236
  %244 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %244, i32* %18, align 4
  br label %277

245:                                              ; preds = %236
  %246 = load %struct.proxy_info*, %struct.proxy_info** %16, align 8
  %247 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @Curl_safefree(i8* %249)
  %251 = load i8*, i8** %13, align 8
  %252 = load %struct.proxy_info*, %struct.proxy_info** %16, align 8
  %253 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  store i8* %251, i8** %254, align 8
  %255 = load i8*, i8** %13, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 0
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 91
  br i1 %259, label %260, label %272

260:                                              ; preds = %245
  %261 = load i8*, i8** %13, align 8
  %262 = call i64 @strlen(i8* %261)
  store i64 %262, i64* %20, align 8
  %263 = load i8*, i8** %13, align 8
  %264 = load i64, i64* %20, align 8
  %265 = sub i64 %264, 1
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  store i8 0, i8* %266, align 1
  %267 = load i8*, i8** %13, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %13, align 8
  %269 = load i32*, i32** %17, align 8
  %270 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %271 = call i32 @zonefrom_url(i32* %269, %struct.connectdata* %270)
  br label %272

272:                                              ; preds = %260, %245
  %273 = load i8*, i8** %13, align 8
  %274 = load %struct.proxy_info*, %struct.proxy_info** %16, align 8
  %275 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  store i8* %273, i8** %276, align 8
  br label %277

277:                                              ; preds = %272, %243, %167, %99, %90, %79, %38
  %278 = load i8*, i8** %19, align 8
  %279 = call i32 @free(i8* %278)
  %280 = load i32*, i32** %17, align 8
  %281 = call i32 @curl_url_cleanup(i32* %280)
  %282 = load i32, i32* %18, align 4
  ret i32 %282
}

declare dso_local i32* @curl_url(...) #1

declare dso_local i64 @curl_url_set(i32*, i32, i8*, i32) #1

declare dso_local i64 @curl_url_get(i32*, i32, i8**, i32) #1

declare dso_local i64 @strcasecompare(i8*, i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i8*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @zonefrom_url(i32*, %struct.connectdata*) #1

declare dso_local i32 @curl_url_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
