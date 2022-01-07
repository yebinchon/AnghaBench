; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_override_login.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_override_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64* }
%struct.connectdata = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@CURL_NETRC_REQUIRED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@STRING_USERNAME = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@STRING_PASSWORD = common dso_local global i64 0, align 8
@STRING_OPTIONS = common dso_local global i64 0, align 8
@CURL_NETRC_IGNORED = common dso_local global i64 0, align 8
@STRING_NETRC_FILE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Couldn't find host %s in the .netrc file; using defaults\0A\00", align 1
@CURLUPART_USER = common dso_local global i32 0, align 4
@CURLUPART_PASSWORD = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, %struct.connectdata*, i8**, i8**, i8**)* @override_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @override_login(%struct.Curl_easy* %0, %struct.connectdata* %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca %struct.connectdata*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %7, align 8
  store %struct.connectdata* %1, %struct.connectdata** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %18 = load i8*, i8** @FALSE, align 8
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** @FALSE, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CURL_NETRC_REQUIRED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %5
  %29 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %30 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load i8**, i8*** %9, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i8**, i8*** %9, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @Curl_safefree(i8* %40)
  %42 = load i8*, i8** @TRUE, align 8
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i8**, i8*** %10, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8**, i8*** %10, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @Curl_safefree(i8* %50)
  %52 = load i8*, i8** @TRUE, align 8
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i8*, i8** @FALSE, align 8
  %56 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %57 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  br label %59

59:                                               ; preds = %54, %28, %5
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @STRING_USERNAME, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %59
  %69 = load i8**, i8*** %9, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %73 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* @STRING_USERNAME, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @strdup(i64 %78)
  %80 = load i8**, i8*** %9, align 8
  store i8* %79, i8** %80, align 8
  %81 = load i8**, i8*** %9, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %68
  %85 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %85, i32* %6, align 4
  br label %278

86:                                               ; preds = %68
  %87 = load i8*, i8** @TRUE, align 8
  %88 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %89 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = load i8*, i8** @TRUE, align 8
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %86, %59
  %94 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %95 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @STRING_PASSWORD, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %127

102:                                              ; preds = %93
  %103 = load i8**, i8*** %10, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %107 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @STRING_PASSWORD, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @strdup(i64 %112)
  %114 = load i8**, i8*** %10, align 8
  store i8* %113, i8** %114, align 8
  %115 = load i8**, i8*** %10, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %102
  %119 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %119, i32* %6, align 4
  br label %278

120:                                              ; preds = %102
  %121 = load i8*, i8** @TRUE, align 8
  %122 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %123 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  %125 = load i8*, i8** @TRUE, align 8
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %120, %93
  %128 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %129 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* @STRING_OPTIONS, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %127
  %137 = load i8**, i8*** %11, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @free(i8* %138)
  %140 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %141 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @STRING_OPTIONS, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i8* @strdup(i64 %146)
  %148 = load i8**, i8*** %11, align 8
  store i8* %147, i8** %148, align 8
  %149 = load i8**, i8*** %11, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %136
  %153 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %153, i32* %6, align 4
  br label %278

154:                                              ; preds = %136
  br label %155

155:                                              ; preds = %154, %127
  %156 = load i8*, i8** @FALSE, align 8
  %157 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %158 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  store i8* %156, i8** %159, align 8
  %160 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %161 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @CURL_NETRC_IGNORED, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %240

166:                                              ; preds = %155
  %167 = load i8**, i8*** %9, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %184

170:                                              ; preds = %166
  %171 = load i8**, i8*** %9, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = load i8, i8* %172, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load i8**, i8*** %10, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load i8**, i8*** %10, align 8
  %181 = load i8*, i8** %180, align 8
  %182 = load i8, i8* %181, align 1
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %240, label %184

184:                                              ; preds = %179, %175, %170, %166
  %185 = load i8*, i8** @FALSE, align 8
  %186 = ptrtoint i8* %185 to i32
  store i32 %186, i32* %15, align 4
  %187 = load i8*, i8** @FALSE, align 8
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* %16, align 4
  %189 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %190 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i8**, i8*** %9, align 8
  %194 = load i8**, i8*** %10, align 8
  %195 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %196 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* @STRING_NETRC_FILE, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @Curl_parsenetrc(i32 %192, i8** %193, i8** %194, i32* %15, i32* %16, i64 %201)
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %17, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %184
  %206 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %207 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %208 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @infof(%struct.Curl_easy* %206, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %210)
  br label %239

212:                                              ; preds = %184
  %213 = load i32, i32* %17, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %216, i32* %6, align 4
  br label %278

217:                                              ; preds = %212
  %218 = load i8*, i8** @TRUE, align 8
  %219 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %220 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  store i8* %218, i8** %221, align 8
  %222 = load i8*, i8** @TRUE, align 8
  %223 = load %struct.connectdata*, %struct.connectdata** %8, align 8
  %224 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  store i8* %222, i8** %225, align 8
  %226 = load i32, i32* %15, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %217
  %229 = load i8*, i8** @TRUE, align 8
  %230 = ptrtoint i8* %229 to i32
  store i32 %230, i32* %12, align 4
  br label %231

231:                                              ; preds = %228, %217
  %232 = load i32, i32* %16, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i8*, i8** @TRUE, align 8
  %236 = ptrtoint i8* %235 to i32
  store i32 %236, i32* %13, align 4
  br label %237

237:                                              ; preds = %234, %231
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238, %205
  br label %240

240:                                              ; preds = %239, %179, %155
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %258

243:                                              ; preds = %240
  %244 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %245 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @CURLUPART_USER, align 4
  %249 = load i8**, i8*** %9, align 8
  %250 = load i8*, i8** %249, align 8
  %251 = call i64 @curl_url_set(i32 %247, i32 %248, i8* %250, i32 0)
  store i64 %251, i64* %14, align 8
  %252 = load i64, i64* %14, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %243
  %255 = load i64, i64* %14, align 8
  %256 = call i32 @Curl_uc_to_curlcode(i64 %255)
  store i32 %256, i32* %6, align 4
  br label %278

257:                                              ; preds = %243
  br label %258

258:                                              ; preds = %257, %240
  %259 = load i32, i32* %13, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %276

261:                                              ; preds = %258
  %262 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %263 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @CURLUPART_PASSWORD, align 4
  %267 = load i8**, i8*** %10, align 8
  %268 = load i8*, i8** %267, align 8
  %269 = call i64 @curl_url_set(i32 %265, i32 %266, i8* %268, i32 0)
  store i64 %269, i64* %14, align 8
  %270 = load i64, i64* %14, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %261
  %273 = load i64, i64* %14, align 8
  %274 = call i32 @Curl_uc_to_curlcode(i64 %273)
  store i32 %274, i32* %6, align 4
  br label %278

275:                                              ; preds = %261
  br label %276

276:                                              ; preds = %275, %258
  %277 = load i32, i32* @CURLE_OK, align 4
  store i32 %277, i32* %6, align 4
  br label %278

278:                                              ; preds = %276, %272, %254, %215, %152, %118, %84
  %279 = load i32, i32* %6, align 4
  ret i32 %279
}

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i32 @Curl_parsenetrc(i32, i8**, i8**, i32*, i32*, i64) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i64 @curl_url_set(i32, i32, i8*, i32) #1

declare dso_local i32 @Curl_uc_to_curlcode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
