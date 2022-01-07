; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_version_info_ccsid.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_version_info_ccsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@CURLVERSION_NOW = common dso_local global i64 0, align 8
@MAX_CONV_EXPANSION = common dso_local global i32 0, align 4
@LK_VERSION_INFO_DATA = common dso_local global i32 0, align 4
@LK_VERSION_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @curl_version_info_ccsid(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @CURLVERSION_NOW, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = call %struct.TYPE_4__* @curl_version_info(i64 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %3, align 8
  br label %298

23:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %38, %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %53
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %23
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = add nsw i64 %66, 1
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %62, %57
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @strlen(i8* %80)
  %82 = add nsw i64 %81, 1
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %77, %72
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = add nsw i64 %96, 1
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %92, %87
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @strlen(i8* %110)
  %112 = add nsw i64 %111, 1
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %107, %102
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 5
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @strlen(i8* %125)
  %127 = add nsw i64 %126, 1
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %122, %117
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 6
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 6
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @strlen(i8* %140)
  %142 = add nsw i64 %141, 1
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %137, %132
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 7
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 7
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @strlen(i8* %155)
  %157 = add nsw i64 %156, 1
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %152, %147
  %163 = load i32, i32* @MAX_CONV_EXPANSION, align 4
  %164 = load i32, i32* %8, align 4
  %165 = mul nsw i32 %164, %163
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %168, %162
  %177 = load i32, i32* @LK_VERSION_INFO_DATA, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i8* @Curl_thread_buffer(i32 %177, i32 %178)
  store i8* %179, i8** %7, align 8
  %180 = load i32, i32* @LK_VERSION_INFO, align 4
  %181 = call i8* @Curl_thread_buffer(i32 %180, i32 64)
  %182 = bitcast i8* %181 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %182, %struct.TYPE_4__** %10, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %184 = icmp ne %struct.TYPE_4__* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load i8*, i8** %7, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %185, %176
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

189:                                              ; preds = %185
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %191 = bitcast %struct.TYPE_4__* %190 to i8*
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %193 = bitcast %struct.TYPE_4__* %192 to i8*
  %194 = call i32 @memcpy(i8* %191, i8* %193, i32 64)
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i8**, i8*** %196, align 8
  %198 = icmp ne i8** %197, null
  br i1 %198, label %199, label %247

199:                                              ; preds = %189
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = mul i64 %201, 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %11, align 4
  %204 = load i8*, i8** %7, align 8
  %205 = bitcast i8* %204 to i8**
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  store i8** %205, i8*** %207, align 8
  %208 = load i8*, i8** %7, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i8**, i8*** %210, align 8
  %212 = bitcast i8** %211 to i8*
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @memcpy(i8* %208, i8* %212, i32 %213)
  %215 = load i32, i32* %11, align 4
  %216 = load i8*, i8** %7, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  store i8* %218, i8** %7, align 8
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %8, align 4
  %221 = sub nsw i32 %220, %219
  store i32 %221, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %222

222:                                              ; preds = %243, %199
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i8**, i8*** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %225, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %246

231:                                              ; preds = %222
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i8**, i8*** %233, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i32, i32* %5, align 4
  %239 = call i64 @convert_version_info_string(i8** %237, i8** %7, i32* %8, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %231
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

242:                                              ; preds = %231
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %11, align 4
  br label %222

246:                                              ; preds = %222
  br label %247

247:                                              ; preds = %246, %189
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  %250 = load i32, i32* %5, align 4
  %251 = call i64 @convert_version_info_string(i8** %249, i8** %7, i32* %8, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %247
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

254:                                              ; preds = %247
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 2
  %257 = load i32, i32* %5, align 4
  %258 = call i64 @convert_version_info_string(i8** %256, i8** %7, i32* %8, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

261:                                              ; preds = %254
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 3
  %264 = load i32, i32* %5, align 4
  %265 = call i64 @convert_version_info_string(i8** %263, i8** %7, i32* %8, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

268:                                              ; preds = %261
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 4
  %271 = load i32, i32* %5, align 4
  %272 = call i64 @convert_version_info_string(i8** %270, i8** %7, i32* %8, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

275:                                              ; preds = %268
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 5
  %278 = load i32, i32* %5, align 4
  %279 = call i64 @convert_version_info_string(i8** %277, i8** %7, i32* %8, i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %275
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

282:                                              ; preds = %275
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 6
  %285 = load i32, i32* %5, align 4
  %286 = call i64 @convert_version_info_string(i8** %284, i8** %7, i32* %8, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

289:                                              ; preds = %282
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 7
  %292 = load i32, i32* %5, align 4
  %293 = call i64 @convert_version_info_string(i8** %291, i8** %7, i32* %8, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %298

296:                                              ; preds = %289
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %297, %struct.TYPE_4__** %3, align 8
  br label %298

298:                                              ; preds = %296, %295, %288, %281, %274, %267, %260, %253, %241, %188, %21, %15
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %299
}

declare dso_local %struct.TYPE_4__* @curl_version_info(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @Curl_thread_buffer(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @convert_version_info_string(i8**, i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
