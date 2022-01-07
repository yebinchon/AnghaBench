; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_auth_act.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_auth_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_7__, %struct.Curl_easy*, i64 }
%struct.TYPE_7__ = type { i64, i32, i64, i64 }
%struct.Curl_easy = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_12__, i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@CURLAUTH_BEARER = common dso_local global i64 0, align 8
@CURLE_HTTP_RETURNED_ERROR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@CURLAUTH_NTLM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Forcing HTTP/1.1 for NTLM\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Force HTTP/1.1 connection\00", align 1
@CURL_HTTP_VERSION_1_1 = common dso_local global i32 0, align 4
@HTTPREQ_GET = common dso_local global i64 0, align 8
@HTTPREQ_HEAD = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"The requested URL returned error: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_http_auth_act(%struct.connectdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 2
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %4, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @CURLE_OK, align 8
  store i64 %14, i64* %7, align 8
  store i64 -1, i64* %8, align 8
  %15 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* @CURLAUTH_BEARER, align 8
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %8, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 100, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 199, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @CURLE_OK, align 8
  store i64 %37, i64* %2, align 8
  br label %291

38:                                               ; preds = %30, %24
  %39 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %40 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %46 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i64, i64* @CURLE_HTTP_RETURNED_ERROR, align 8
  br label %54

52:                                               ; preds = %44
  %53 = load i64, i64* @CURLE_OK, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, i64* %2, align 8
  br label %291

56:                                               ; preds = %38
  %57 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %58 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %64 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %123

67:                                               ; preds = %62, %56
  %68 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %69 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 401
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %75 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %73
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %81 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %83, 300
  br i1 %84, label %85, label %123

85:                                               ; preds = %79, %67
  %86 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %87 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @pickoneauth(%struct.TYPE_12__* %88, i64 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %85
  %94 = load i8*, i8** @TRUE, align 8
  %95 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %96 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  store i8* %94, i8** %97, align 8
  br label %98

98:                                               ; preds = %93, %85
  %99 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %100 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CURLAUTH_NTLM, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %98
  %107 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %108 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 11
  br i1 %110, label %111, label %122

111:                                              ; preds = %106
  %112 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %113 = call i32 @infof(%struct.Curl_easy* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %114 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %115 = call i32 @connclose(%struct.connectdata* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @CURL_HTTP_VERSION_1_1, align 4
  %117 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %118 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %117, i32 0, i32 2
  %119 = load %struct.Curl_easy*, %struct.Curl_easy** %118, align 8
  %120 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32 %116, i32* %121, align 8
  br label %122

122:                                              ; preds = %111, %106, %98
  br label %123

123:                                              ; preds = %122, %79, %73, %62
  %124 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %125 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %164

129:                                              ; preds = %123
  %130 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %131 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 407
  br i1 %134, label %147, label %135

135:                                              ; preds = %129
  %136 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %137 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %135
  %142 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %143 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %145, 300
  br i1 %146, label %147, label %164

147:                                              ; preds = %141, %129
  %148 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %149 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* @CURLAUTH_BEARER, align 8
  %153 = xor i64 %152, -1
  %154 = and i64 %151, %153
  %155 = call i32 @pickoneauth(%struct.TYPE_12__* %150, i64 %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %147
  %159 = load i8*, i8** @TRUE, align 8
  %160 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %161 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  br label %163

163:                                              ; preds = %158, %147
  br label %164

164:                                              ; preds = %163, %141, %135, %123
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %220

170:                                              ; preds = %167, %164
  %171 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %172 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @HTTPREQ_GET, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %198

177:                                              ; preds = %170
  %178 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %179 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @HTTPREQ_HEAD, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %177
  %185 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %186 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %184
  %191 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %192 = call i64 @http_perhapsrewind(%struct.connectdata* %191)
  store i64 %192, i64* %7, align 8
  %193 = load i64, i64* %7, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i64, i64* %7, align 8
  store i64 %196, i64* %2, align 8
  br label %291

197:                                              ; preds = %190
  br label %198

198:                                              ; preds = %197, %184, %177, %170
  %199 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %200 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @Curl_safefree(i8* %202)
  %204 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %205 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i8* @strdup(i32 %207)
  %209 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %210 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  store i8* %208, i8** %211, align 8
  %212 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %213 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %198
  %218 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %218, i64* %2, align 8
  br label %291

219:                                              ; preds = %198
  br label %277

220:                                              ; preds = %167
  %221 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %222 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %224, 300
  br i1 %225, label %226, label %276

226:                                              ; preds = %220
  %227 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %228 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %276, label %233

233:                                              ; preds = %226
  %234 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %235 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %276

239:                                              ; preds = %233
  %240 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %241 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @HTTPREQ_GET, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %275

246:                                              ; preds = %239
  %247 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %248 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @HTTPREQ_HEAD, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %275

253:                                              ; preds = %246
  %254 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %255 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i8* @strdup(i32 %257)
  %259 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %260 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  store i8* %258, i8** %261, align 8
  %262 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %263 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i8*, i8** %264, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %253
  %268 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %268, i64* %2, align 8
  br label %291

269:                                              ; preds = %253
  %270 = load i8*, i8** @TRUE, align 8
  %271 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %272 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  store i8* %270, i8** %274, align 8
  br label %275

275:                                              ; preds = %269, %246, %239
  br label %276

276:                                              ; preds = %275, %233, %226, %220
  br label %277

277:                                              ; preds = %276, %219
  %278 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %279 = call i64 @http_should_fail(%struct.connectdata* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %277
  %282 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %283 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %284 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @failf(%struct.Curl_easy* %282, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %286)
  %288 = load i64, i64* @CURLE_HTTP_RETURNED_ERROR, align 8
  store i64 %288, i64* %7, align 8
  br label %289

289:                                              ; preds = %281, %277
  %290 = load i64, i64* %7, align 8
  store i64 %290, i64* %2, align 8
  br label %291

291:                                              ; preds = %289, %267, %217, %195, %54, %36
  %292 = load i64, i64* %2, align 8
  ret i64 %292
}

declare dso_local i32 @pickoneauth(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @connclose(%struct.connectdata*, i8*) #1

declare dso_local i64 @http_perhapsrewind(%struct.connectdata*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i64 @http_should_fail(%struct.connectdata*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
