; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_encodeLZ77.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_encodeLZ77.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16*, i16*, i16*, i32* }

@MAX_SUPPORTED_DEFLATE_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i8*, i64, i64, i32, i32, i32, i32)* @encodeLZ77 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encodeLZ77(i32* %0, %struct.TYPE_4__* %1, i8* %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i16, align 2
  %38 = alloca i16, align 2
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i16, align 2
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i16 0, i16* %19, align 2
  %42 = load i32, i32* %15, align 4
  %43 = icmp uge i32 %42, 8192
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp uge i32 %45, 8192
  br i1 %46, label %47, label %49

47:                                               ; preds = %9
  %48 = load i32, i32* %15, align 4
  br label %52

49:                                               ; preds = %9
  %50 = load i32, i32* %15, align 4
  %51 = udiv i32 %50, 8
  br label %52

52:                                               ; preds = %49, %47
  %53 = phi i32 [ %48, %47 ], [ %51, %49 ]
  store i32 %53, i32* %24, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp uge i32 %54, 8192
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @MAX_SUPPORTED_DEFLATE_LENGTH, align 4
  br label %59

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 64, %58 ]
  store i32 %60, i32* %25, align 4
  %61 = load i32, i32* %23, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %482, label %63

63:                                               ; preds = %59
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %64 = load i64, i64* %13, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %21, align 4
  br label %66

66:                                               ; preds = %478, %63
  %67 = load i32, i32* %21, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* %14, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %481

71:                                               ; preds = %66
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %15, align 4
  %74 = urem i32 %72, %73
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %39, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i32, i32* %21, align 4
  %79 = call i32 @getHash(i8* %76, i64 %77, i32 %78)
  store i32 %79, i32* %31, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %31, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @updateHashChain(%struct.TYPE_4__* %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %20, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %71
  %88 = load i32, i32* %31, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i8*, i8** %12, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i32, i32* %21, align 4
  %94 = call i8* @countZeros(i8* %91, i64 %92, i32 %93)
  %95 = ptrtoint i8* %94 to i16
  store i16 %95, i16* %19, align 2
  %96 = load i16, i16* %19, align 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i16*, i16** %98, align 8
  %100 = load i64, i64* %39, align 8
  %101 = getelementptr inbounds i16, i16* %99, i64 %100
  store i16 %96, i16* %101, align 2
  br label %102

102:                                              ; preds = %90, %87, %71
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i16*, i16** %104, align 8
  %106 = load i32, i32* %31, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i16, i16* %105, i64 %107
  %109 = load i16, i16* %108, align 2
  store i16 %109, i16* %38, align 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i16*, i16** %111, align 8
  %113 = load i16, i16* %38, align 2
  %114 = zext i16 %113 to i64
  %115 = getelementptr inbounds i16, i16* %112, i64 %114
  %116 = load i16, i16* %115, align 2
  store i16 %116, i16* %37, align 2
  %117 = load i8*, i8** %12, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* @MAX_SUPPORTED_DEFLATE_LENGTH, align 4
  %121 = add i32 %119, %120
  %122 = zext i32 %121 to i64
  %123 = icmp ult i64 %118, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %102
  %125 = load i64, i64* %14, align 8
  br label %131

126:                                              ; preds = %102
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* @MAX_SUPPORTED_DEFLATE_LENGTH, align 4
  %129 = add i32 %127, %128
  %130 = zext i32 %129 to i64
  br label %131

131:                                              ; preds = %126, %124
  %132 = phi i64 [ %125, %124 ], [ %130, %126 ]
  %133 = getelementptr inbounds i8, i8* %117, i64 %132
  store i8* %133, i8** %34, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %39, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %31, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %326

142:                                              ; preds = %131
  store i32 0, i32* %40, align 4
  br label %143

143:                                              ; preds = %316, %142
  %144 = load i16, i16* %38, align 2
  %145 = zext i16 %144 to i64
  %146 = load i64, i64* %39, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %143
  %149 = load i16, i16* %37, align 2
  %150 = zext i16 %149 to i32
  %151 = load i16, i16* %38, align 2
  %152 = zext i16 %151 to i32
  %153 = icmp sgt i32 %150, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load i16, i16* %37, align 2
  %156 = zext i16 %155 to i64
  %157 = load i64, i64* %39, align 8
  %158 = icmp ule i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %325

160:                                              ; preds = %154, %148, %143
  %161 = load i16, i16* %38, align 2
  %162 = zext i16 %161 to i64
  %163 = load i64, i64* %39, align 8
  %164 = icmp ugt i64 %162, %163
  br i1 %164, label %165, label %177

165:                                              ; preds = %160
  %166 = load i16, i16* %37, align 2
  %167 = zext i16 %166 to i64
  %168 = load i64, i64* %39, align 8
  %169 = icmp ule i64 %167, %168
  br i1 %169, label %176, label %170

170:                                              ; preds = %165
  %171 = load i16, i16* %37, align 2
  %172 = zext i16 %171 to i32
  %173 = load i16, i16* %38, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp sgt i32 %172, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170, %165
  br label %325

177:                                              ; preds = %170, %160
  %178 = load i32, i32* %40, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %40, align 4
  %180 = load i32, i32* %24, align 4
  %181 = icmp uge i32 %178, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %325

183:                                              ; preds = %177
  %184 = load i16, i16* %37, align 2
  %185 = zext i16 %184 to i64
  %186 = load i64, i64* %39, align 8
  %187 = icmp ule i64 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i64, i64* %39, align 8
  %190 = load i16, i16* %37, align 2
  %191 = zext i16 %190 to i64
  %192 = sub i64 %189, %191
  br label %201

193:                                              ; preds = %183
  %194 = load i64, i64* %39, align 8
  %195 = load i16, i16* %37, align 2
  %196 = zext i16 %195 to i64
  %197 = sub i64 %194, %196
  %198 = load i32, i32* %15, align 4
  %199 = zext i32 %198 to i64
  %200 = add i64 %197, %199
  br label %201

201:                                              ; preds = %193, %188
  %202 = phi i64 [ %192, %188 ], [ %200, %193 ]
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %32, align 4
  %204 = load i32, i32* %32, align 4
  %205 = icmp ugt i32 %204, 0
  br i1 %205, label %206, label %303

206:                                              ; preds = %201
  %207 = load i8*, i8** %12, align 8
  %208 = load i32, i32* %21, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  store i8* %210, i8** %35, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* %32, align 4
  %214 = sub i32 %212, %213
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %211, i64 %215
  store i8* %216, i8** %36, align 8
  %217 = load i32, i32* %20, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %257

219:                                              ; preds = %206
  %220 = load i32, i32* %31, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %257

222:                                              ; preds = %219
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = load i16, i16* %37, align 2
  %227 = zext i16 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %257

231:                                              ; preds = %222
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i16*, i16** %233, align 8
  %235 = load i16, i16* %37, align 2
  %236 = zext i16 %235 to i64
  %237 = getelementptr inbounds i16, i16* %234, i64 %236
  %238 = load i16, i16* %237, align 2
  store i16 %238, i16* %41, align 2
  %239 = load i16, i16* %41, align 2
  %240 = zext i16 %239 to i32
  %241 = load i16, i16* %19, align 2
  %242 = zext i16 %241 to i32
  %243 = icmp sgt i32 %240, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %231
  %245 = load i16, i16* %19, align 2
  store i16 %245, i16* %41, align 2
  br label %246

246:                                              ; preds = %244, %231
  %247 = load i16, i16* %41, align 2
  %248 = zext i16 %247 to i32
  %249 = load i8*, i8** %36, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8* %251, i8** %36, align 8
  %252 = load i16, i16* %41, align 2
  %253 = zext i16 %252 to i32
  %254 = load i8*, i8** %35, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8* %256, i8** %35, align 8
  br label %257

257:                                              ; preds = %246, %222, %219, %206
  br label %258

258:                                              ; preds = %272, %257
  %259 = load i8*, i8** %35, align 8
  %260 = load i8*, i8** %34, align 8
  %261 = icmp ne i8* %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %258
  %263 = load i8*, i8** %36, align 8
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = load i8*, i8** %35, align 8
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp eq i32 %265, %268
  br label %270

270:                                              ; preds = %262, %258
  %271 = phi i1 [ false, %258 ], [ %269, %262 ]
  br i1 %271, label %272, label %277

272:                                              ; preds = %270
  %273 = load i8*, i8** %36, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %36, align 8
  %275 = load i8*, i8** %35, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %35, align 8
  br label %258

277:                                              ; preds = %270
  %278 = load i8*, i8** %35, align 8
  %279 = load i8*, i8** %12, align 8
  %280 = load i32, i32* %21, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = ptrtoint i8* %278 to i64
  %284 = ptrtoint i8* %282 to i64
  %285 = sub i64 %283, %284
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %33, align 4
  %287 = load i32, i32* %33, align 4
  %288 = load i32, i32* %27, align 4
  %289 = icmp ugt i32 %287, %288
  br i1 %289, label %290, label %302

290:                                              ; preds = %277
  %291 = load i32, i32* %33, align 4
  store i32 %291, i32* %27, align 4
  %292 = load i32, i32* %32, align 4
  store i32 %292, i32* %26, align 4
  %293 = load i32, i32* %33, align 4
  %294 = load i32, i32* %17, align 4
  %295 = icmp uge i32 %293, %294
  br i1 %295, label %300, label %296

296:                                              ; preds = %290
  %297 = load i32, i32* %33, align 4
  %298 = load i32, i32* @MAX_SUPPORTED_DEFLATE_LENGTH, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %296, %290
  br label %325

301:                                              ; preds = %296
  br label %302

302:                                              ; preds = %301, %277
  br label %303

303:                                              ; preds = %302, %201
  %304 = load i16, i16* %37, align 2
  %305 = zext i16 %304 to i32
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 2
  %308 = load i16*, i16** %307, align 8
  %309 = load i16, i16* %37, align 2
  %310 = zext i16 %309 to i64
  %311 = getelementptr inbounds i16, i16* %308, i64 %310
  %312 = load i16, i16* %311, align 2
  %313 = zext i16 %312 to i32
  %314 = icmp eq i32 %305, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %303
  br label %325

316:                                              ; preds = %303
  %317 = load i16, i16* %37, align 2
  store i16 %317, i16* %38, align 2
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 2
  %320 = load i16*, i16** %319, align 8
  %321 = load i16, i16* %37, align 2
  %322 = zext i16 %321 to i64
  %323 = getelementptr inbounds i16, i16* %320, i64 %322
  %324 = load i16, i16* %323, align 2
  store i16 %324, i16* %37, align 2
  br label %143

325:                                              ; preds = %315, %300, %182, %176, %159
  br label %326

326:                                              ; preds = %325, %131
  %327 = load i32, i32* %18, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %385

329:                                              ; preds = %326
  %330 = load i32, i32* %28, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %346, label %332

332:                                              ; preds = %329
  %333 = load i32, i32* %27, align 4
  %334 = icmp uge i32 %333, 3
  br i1 %334, label %335, label %346

335:                                              ; preds = %332
  %336 = load i32, i32* %27, align 4
  %337 = load i32, i32* %25, align 4
  %338 = icmp ule i32 %336, %337
  br i1 %338, label %339, label %346

339:                                              ; preds = %335
  %340 = load i32, i32* %27, align 4
  %341 = load i32, i32* @MAX_SUPPORTED_DEFLATE_LENGTH, align 4
  %342 = icmp ult i32 %340, %341
  br i1 %342, label %343, label %346

343:                                              ; preds = %339
  store i32 1, i32* %28, align 4
  %344 = load i32, i32* %27, align 4
  store i32 %344, i32* %29, align 4
  %345 = load i32, i32* %26, align 4
  store i32 %345, i32* %30, align 4
  br label %478

346:                                              ; preds = %339, %335, %332, %329
  %347 = load i32, i32* %28, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %384

349:                                              ; preds = %346
  store i32 0, i32* %28, align 4
  %350 = load i32, i32* %21, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %349
  %353 = call i32 @ERROR_BREAK(i32 81)
  br label %354

354:                                              ; preds = %352, %349
  %355 = load i32, i32* %27, align 4
  %356 = load i32, i32* %29, align 4
  %357 = add i32 %356, 1
  %358 = icmp ugt i32 %355, %357
  br i1 %358, label %359, label %372

359:                                              ; preds = %354
  %360 = load i32*, i32** %10, align 8
  %361 = load i8*, i8** %12, align 8
  %362 = load i32, i32* %21, align 4
  %363 = sub i32 %362, 1
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %361, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = call i32 @uivector_push_back(i32* %360, i8 zeroext %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %371, label %369

369:                                              ; preds = %359
  %370 = call i32 @ERROR_BREAK(i32 83)
  br label %371

371:                                              ; preds = %369, %359
  br label %383

372:                                              ; preds = %354
  %373 = load i32, i32* %29, align 4
  store i32 %373, i32* %27, align 4
  %374 = load i32, i32* %30, align 4
  store i32 %374, i32* %26, align 4
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 1
  %377 = load i16*, i16** %376, align 8
  %378 = load i32, i32* %31, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i16, i16* %377, i64 %379
  store i16 -1, i16* %380, align 2
  %381 = load i32, i32* %21, align 4
  %382 = add i32 %381, -1
  store i32 %382, i32* %21, align 4
  br label %383

383:                                              ; preds = %372, %371
  br label %384

384:                                              ; preds = %383, %346
  br label %385

385:                                              ; preds = %384, %326
  %386 = load i32, i32* %27, align 4
  %387 = icmp uge i32 %386, 3
  br i1 %387, label %388, label %394

388:                                              ; preds = %385
  %389 = load i32, i32* %26, align 4
  %390 = load i32, i32* %15, align 4
  %391 = icmp ugt i32 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %388
  %393 = call i32 @ERROR_BREAK(i32 86)
  br label %394

394:                                              ; preds = %392, %388, %385
  %395 = load i32, i32* %27, align 4
  %396 = icmp ult i32 %395, 3
  br i1 %396, label %397, label %409

397:                                              ; preds = %394
  %398 = load i32*, i32** %10, align 8
  %399 = load i8*, i8** %12, align 8
  %400 = load i32, i32* %21, align 4
  %401 = zext i32 %400 to i64
  %402 = getelementptr inbounds i8, i8* %399, i64 %401
  %403 = load i8, i8* %402, align 1
  %404 = call i32 @uivector_push_back(i32* %398, i8 zeroext %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %408, label %406

406:                                              ; preds = %397
  %407 = call i32 @ERROR_BREAK(i32 83)
  br label %408

408:                                              ; preds = %406, %397
  br label %477

409:                                              ; preds = %394
  %410 = load i32, i32* %27, align 4
  %411 = load i32, i32* %16, align 4
  %412 = icmp ult i32 %410, %411
  br i1 %412, label %419, label %413

413:                                              ; preds = %409
  %414 = load i32, i32* %27, align 4
  %415 = icmp eq i32 %414, 3
  br i1 %415, label %416, label %431

416:                                              ; preds = %413
  %417 = load i32, i32* %26, align 4
  %418 = icmp ugt i32 %417, 4096
  br i1 %418, label %419, label %431

419:                                              ; preds = %416, %409
  %420 = load i32*, i32** %10, align 8
  %421 = load i8*, i8** %12, align 8
  %422 = load i32, i32* %21, align 4
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds i8, i8* %421, i64 %423
  %425 = load i8, i8* %424, align 1
  %426 = call i32 @uivector_push_back(i32* %420, i8 zeroext %425)
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %430, label %428

428:                                              ; preds = %419
  %429 = call i32 @ERROR_BREAK(i32 83)
  br label %430

430:                                              ; preds = %428, %419
  br label %476

431:                                              ; preds = %416, %413
  %432 = load i32*, i32** %10, align 8
  %433 = load i32, i32* %27, align 4
  %434 = load i32, i32* %26, align 4
  %435 = call i32 @addLengthDistance(i32* %432, i32 %433, i32 %434)
  store i32 1, i32* %22, align 4
  br label %436

436:                                              ; preds = %472, %431
  %437 = load i32, i32* %22, align 4
  %438 = load i32, i32* %27, align 4
  %439 = icmp ult i32 %437, %438
  br i1 %439, label %440, label %475

440:                                              ; preds = %436
  %441 = load i32, i32* %21, align 4
  %442 = add i32 %441, 1
  store i32 %442, i32* %21, align 4
  %443 = load i8*, i8** %12, align 8
  %444 = load i64, i64* %14, align 8
  %445 = load i32, i32* %21, align 4
  %446 = call i32 @getHash(i8* %443, i64 %444, i32 %445)
  store i32 %446, i32* %31, align 4
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %448 = load i32, i32* %21, align 4
  %449 = load i32, i32* %31, align 4
  %450 = load i32, i32* %15, align 4
  %451 = call i32 @updateHashChain(%struct.TYPE_4__* %447, i32 %448, i32 %449, i32 %450)
  %452 = load i32, i32* %20, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %471

454:                                              ; preds = %440
  %455 = load i32, i32* %31, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %471

457:                                              ; preds = %454
  %458 = load i8*, i8** %12, align 8
  %459 = load i64, i64* %14, align 8
  %460 = load i32, i32* %21, align 4
  %461 = call i8* @countZeros(i8* %458, i64 %459, i32 %460)
  %462 = ptrtoint i8* %461 to i16
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 0
  %465 = load i16*, i16** %464, align 8
  %466 = load i32, i32* %21, align 4
  %467 = load i32, i32* %15, align 4
  %468 = urem i32 %466, %467
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds i16, i16* %465, i64 %469
  store i16 %462, i16* %470, align 2
  br label %471

471:                                              ; preds = %457, %454, %440
  br label %472

472:                                              ; preds = %471
  %473 = load i32, i32* %22, align 4
  %474 = add i32 %473, 1
  store i32 %474, i32* %22, align 4
  br label %436

475:                                              ; preds = %436
  br label %476

476:                                              ; preds = %475, %430
  br label %477

477:                                              ; preds = %476, %408
  br label %478

478:                                              ; preds = %477, %343
  %479 = load i32, i32* %21, align 4
  %480 = add i32 %479, 1
  store i32 %480, i32* %21, align 4
  br label %66

481:                                              ; preds = %66
  br label %482

482:                                              ; preds = %481, %59
  %483 = load i32, i32* %23, align 4
  ret i32 %483
}

declare dso_local i32 @getHash(i8*, i64, i32) #1

declare dso_local i32 @updateHashChain(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i8* @countZeros(i8*, i64, i32) #1

declare dso_local i32 @ERROR_BREAK(i32) #1

declare dso_local i32 @uivector_push_back(i32*, i8 zeroext) #1

declare dso_local i32 @addLengthDistance(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
