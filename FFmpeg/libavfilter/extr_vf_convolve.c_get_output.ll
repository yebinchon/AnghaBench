; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolve.c_get_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolve.c_get_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { float }
%struct.TYPE_9__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_9__*, i32, i32, i32, i32, float)* @get_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_output(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, %struct.TYPE_9__* %2, i32 %3, i32 %4, i32 %5, i32 %6, float %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float %7, float* %16, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %19, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %282

43:                                               ; preds = %8
  store i32 0, i32* %20, align 4
  br label %44

44:                                               ; preds = %98, %43
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %18, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %101

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %58, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %55, i64 %67
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %22, align 8
  store i32 0, i32* %21, align 4
  br label %72

72:                                               ; preds = %94, %48
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %14, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %21, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load float, float* %85, align 4
  %87 = load float, float* %16, align 4
  %88 = fmul float %86, %87
  %89 = call i32 @av_clip_uint8(float %88)
  %90 = load i32*, i32** %22, align 8
  %91 = load i32, i32* %21, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %76
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %21, align 4
  br label %72

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %20, align 4
  br label %44

101:                                              ; preds = %44
  store i32 0, i32* %20, align 4
  br label %102

102:                                              ; preds = %157, %101
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %160

106:                                              ; preds = %102
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %116, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %113, i64 %125
  store i32* %126, i32** %23, align 8
  store i32 0, i32* %21, align 4
  br label %127

127:                                              ; preds = %153, %106
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %19, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %127
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %14, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %19, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %21, align 4
  %141 = add nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load float, float* %144, align 4
  %146 = load float, float* %16, align 4
  %147 = fmul float %145, %146
  %148 = call i32 @av_clip_uint8(float %147)
  %149 = load i32*, i32** %23, align 8
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  br label %153

153:                                              ; preds = %131
  %154 = load i32, i32* %21, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %21, align 4
  br label %127

156:                                              ; preds = %127
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %20, align 4
  br label %102

160:                                              ; preds = %102
  store i32 0, i32* %20, align 4
  br label %161

161:                                              ; preds = %217, %160
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %220

165:                                              ; preds = %161
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32**, i32*** %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32*, i32** %168, i64 %170
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %20, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %15, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %173, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %172, i64 %182
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32* %186, i32** %24, align 8
  store i32 0, i32* %21, align 4
  br label %187

187:                                              ; preds = %213, %165
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %216

191:                                              ; preds = %187
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %18, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32, i32* %14, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load i32, i32* %21, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = load float, float* %204, align 4
  %206 = load float, float* %16, align 4
  %207 = fmul float %205, %206
  %208 = call i32 @av_clip_uint8(float %207)
  %209 = load i32*, i32** %24, align 8
  %210 = load i32, i32* %21, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %208, i32* %212, align 4
  br label %213

213:                                              ; preds = %191
  %214 = load i32, i32* %21, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %21, align 4
  br label %187

216:                                              ; preds = %187
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %20, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %20, align 4
  br label %161

220:                                              ; preds = %161
  store i32 0, i32* %20, align 4
  br label %221

221:                                              ; preds = %278, %220
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* %18, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %281

225:                                              ; preds = %221
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32**, i32*** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %20, align 4
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 %233, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %232, i64 %242
  store i32* %243, i32** %25, align 8
  store i32 0, i32* %21, align 4
  br label %244

244:                                              ; preds = %274, %225
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* %19, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %277

248:                                              ; preds = %244
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %18, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load i32, i32* %20, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32, i32* %14, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i32, i32* %19, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load i32, i32* %21, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load float, float* %265, align 4
  %267 = load float, float* %16, align 4
  %268 = fmul float %266, %267
  %269 = call i32 @av_clip_uint8(float %268)
  %270 = load i32*, i32** %25, align 8
  %271 = load i32, i32* %21, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  store i32 %269, i32* %273, align 4
  br label %274

274:                                              ; preds = %248
  %275 = load i32, i32* %21, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %21, align 4
  br label %244

277:                                              ; preds = %244
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %20, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %20, align 4
  br label %221

281:                                              ; preds = %221
  br label %527

282:                                              ; preds = %8
  store i32 0, i32* %20, align 4
  br label %283

283:                                              ; preds = %339, %282
  %284 = load i32, i32* %20, align 4
  %285 = load i32, i32* %18, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %342

287:                                              ; preds = %283
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 1
  %290 = load i32**, i32*** %289, align 8
  %291 = load i32, i32* %15, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %20, align 4
  %296 = load i32, i32* %18, align 4
  %297 = add nsw i32 %295, %296
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = mul nsw i32 %297, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %294, i64 %306
  %308 = load i32, i32* %19, align 4
  %309 = mul nsw i32 %308, 2
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32* %311, i32** %26, align 8
  store i32 0, i32* %21, align 4
  br label %312

312:                                              ; preds = %335, %287
  %313 = load i32, i32* %21, align 4
  %314 = load i32, i32* %19, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %338

316:                                              ; preds = %312
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %318 = load i32, i32* %20, align 4
  %319 = load i32, i32* %14, align 4
  %320 = mul nsw i32 %318, %319
  %321 = load i32, i32* %21, align 4
  %322 = add nsw i32 %320, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 0
  %326 = load float, float* %325, align 4
  %327 = load float, float* %16, align 4
  %328 = fmul float %326, %327
  %329 = load i32, i32* %17, align 4
  %330 = call i32 @av_clip(float %328, i32 0, i32 %329)
  %331 = load i32*, i32** %26, align 8
  %332 = load i32, i32* %21, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %330, i32* %334, align 4
  br label %335

335:                                              ; preds = %316
  %336 = load i32, i32* %21, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %21, align 4
  br label %312

338:                                              ; preds = %312
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %20, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %20, align 4
  br label %283

342:                                              ; preds = %283
  store i32 0, i32* %20, align 4
  br label %343

343:                                              ; preds = %399, %342
  %344 = load i32, i32* %20, align 4
  %345 = load i32, i32* %18, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %402

347:                                              ; preds = %343
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 1
  %350 = load i32**, i32*** %349, align 8
  %351 = load i32, i32* %15, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32*, i32** %350, i64 %352
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %20, align 4
  %356 = load i32, i32* %18, align 4
  %357 = add nsw i32 %355, %356
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %15, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = mul nsw i32 %357, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %354, i64 %366
  store i32* %367, i32** %27, align 8
  store i32 0, i32* %21, align 4
  br label %368

368:                                              ; preds = %395, %347
  %369 = load i32, i32* %21, align 4
  %370 = load i32, i32* %19, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %398

372:                                              ; preds = %368
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %374 = load i32, i32* %20, align 4
  %375 = load i32, i32* %14, align 4
  %376 = mul nsw i32 %374, %375
  %377 = load i32, i32* %14, align 4
  %378 = add nsw i32 %376, %377
  %379 = load i32, i32* %19, align 4
  %380 = sub nsw i32 %378, %379
  %381 = load i32, i32* %21, align 4
  %382 = add nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 0
  %386 = load float, float* %385, align 4
  %387 = load float, float* %16, align 4
  %388 = fmul float %386, %387
  %389 = load i32, i32* %17, align 4
  %390 = call i32 @av_clip(float %388, i32 0, i32 %389)
  %391 = load i32*, i32** %27, align 8
  %392 = load i32, i32* %21, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  store i32 %390, i32* %394, align 4
  br label %395

395:                                              ; preds = %372
  %396 = load i32, i32* %21, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %21, align 4
  br label %368

398:                                              ; preds = %368
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %20, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %20, align 4
  br label %343

402:                                              ; preds = %343
  store i32 0, i32* %20, align 4
  br label %403

403:                                              ; preds = %461, %402
  %404 = load i32, i32* %20, align 4
  %405 = load i32, i32* %18, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %464

407:                                              ; preds = %403
  %408 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 1
  %410 = load i32**, i32*** %409, align 8
  %411 = load i32, i32* %15, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32*, i32** %410, i64 %412
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %20, align 4
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 0
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %15, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = mul nsw i32 %415, %422
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %414, i64 %424
  %426 = load i32, i32* %19, align 4
  %427 = mul nsw i32 %426, 2
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %425, i64 %428
  store i32* %429, i32** %28, align 8
  store i32 0, i32* %21, align 4
  br label %430

430:                                              ; preds = %457, %407
  %431 = load i32, i32* %21, align 4
  %432 = load i32, i32* %19, align 4
  %433 = icmp slt i32 %431, %432
  br i1 %433, label %434, label %460

434:                                              ; preds = %430
  %435 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %436 = load i32, i32* %14, align 4
  %437 = load i32, i32* %18, align 4
  %438 = sub nsw i32 %436, %437
  %439 = load i32, i32* %20, align 4
  %440 = add nsw i32 %438, %439
  %441 = load i32, i32* %14, align 4
  %442 = mul nsw i32 %440, %441
  %443 = load i32, i32* %21, align 4
  %444 = add nsw i32 %442, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  %448 = load float, float* %447, align 4
  %449 = load float, float* %16, align 4
  %450 = fmul float %448, %449
  %451 = load i32, i32* %17, align 4
  %452 = call i32 @av_clip(float %450, i32 0, i32 %451)
  %453 = load i32*, i32** %28, align 8
  %454 = load i32, i32* %21, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %453, i64 %455
  store i32 %452, i32* %456, align 4
  br label %457

457:                                              ; preds = %434
  %458 = load i32, i32* %21, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %21, align 4
  br label %430

460:                                              ; preds = %430
  br label %461

461:                                              ; preds = %460
  %462 = load i32, i32* %20, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %20, align 4
  br label %403

464:                                              ; preds = %403
  store i32 0, i32* %20, align 4
  br label %465

465:                                              ; preds = %523, %464
  %466 = load i32, i32* %20, align 4
  %467 = load i32, i32* %18, align 4
  %468 = icmp slt i32 %466, %467
  br i1 %468, label %469, label %526

469:                                              ; preds = %465
  %470 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %471 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %470, i32 0, i32 1
  %472 = load i32**, i32*** %471, align 8
  %473 = load i32, i32* %15, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32*, i32** %472, i64 %474
  %476 = load i32*, i32** %475, align 8
  %477 = load i32, i32* %20, align 4
  %478 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 0
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %15, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = mul nsw i32 %477, %484
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %476, i64 %486
  store i32* %487, i32** %29, align 8
  store i32 0, i32* %21, align 4
  br label %488

488:                                              ; preds = %519, %469
  %489 = load i32, i32* %21, align 4
  %490 = load i32, i32* %19, align 4
  %491 = icmp slt i32 %489, %490
  br i1 %491, label %492, label %522

492:                                              ; preds = %488
  %493 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %494 = load i32, i32* %14, align 4
  %495 = load i32, i32* %18, align 4
  %496 = sub nsw i32 %494, %495
  %497 = load i32, i32* %20, align 4
  %498 = add nsw i32 %496, %497
  %499 = load i32, i32* %14, align 4
  %500 = mul nsw i32 %498, %499
  %501 = load i32, i32* %14, align 4
  %502 = add nsw i32 %500, %501
  %503 = load i32, i32* %19, align 4
  %504 = sub nsw i32 %502, %503
  %505 = load i32, i32* %21, align 4
  %506 = add nsw i32 %504, %505
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %493, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %508, i32 0, i32 0
  %510 = load float, float* %509, align 4
  %511 = load float, float* %16, align 4
  %512 = fmul float %510, %511
  %513 = load i32, i32* %17, align 4
  %514 = call i32 @av_clip(float %512, i32 0, i32 %513)
  %515 = load i32*, i32** %29, align 8
  %516 = load i32, i32* %21, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i32, i32* %515, i64 %517
  store i32 %514, i32* %518, align 4
  br label %519

519:                                              ; preds = %492
  %520 = load i32, i32* %21, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %21, align 4
  br label %488

522:                                              ; preds = %488
  br label %523

523:                                              ; preds = %522
  %524 = load i32, i32* %20, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %20, align 4
  br label %465

526:                                              ; preds = %465
  br label %527

527:                                              ; preds = %526, %281
  ret void
}

declare dso_local i32 @av_clip_uint8(float) #1

declare dso_local i32 @av_clip(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
