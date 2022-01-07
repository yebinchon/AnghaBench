; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_basic_block_filtering.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_basic_block_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32, float, float, i32 (i32*, i32, i32, i32, i32, float*)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, float*, float*, float*, float*, float*, float*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32, i32, i32, i32)* @basic_block_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @basic_block_filtering(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca [4 x float], align 16
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca float, align 4
  %40 = alloca float*, align 8
  %41 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %19, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  store i32 %54, i32* %20, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %21, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %22, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %23, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %24, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %25, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load float*, float** %75, align 8
  store float* %76, float** %26, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load float*, float** %78, align 8
  store float* %79, float** %27, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load float*, float** %81, align 8
  store float* %82, float** %28, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load float*, float** %84, align 8
  store float* %85, float** %29, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %36, align 4
  br label %86

86:                                               ; preds = %217, %9
  %87 = load i32, i32* %36, align 4
  %88 = load i32, i32* %21, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %220

90:                                               ; preds = %86
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 11
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %36, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %37, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 11
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %36, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %38, align 4
  store i32 0, i32* %34, align 4
  br label %107

107:                                              ; preds = %139, %90
  %108 = load i32, i32* %34, align 4
  %109 = load i32, i32* %22, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %142

111:                                              ; preds = %107
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 6
  %114 = load i32 (i32*, i32, i32, i32, i32, float*)*, i32 (i32*, i32, i32, i32, i32, float*)** %113, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %37, align 4
  %118 = load i32, i32* %34, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %38, align 4
  %121 = load i32, i32* %22, align 4
  %122 = load float*, float** %27, align 8
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* %34, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %122, i64 %126
  %128 = call i32 %114(i32* %115, i32 %116, i32 %119, i32 %120, i32 %121, float* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 10
  %131 = load i32, i32* %130, align 4
  %132 = load float*, float** %27, align 8
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %34, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %132, i64 %136
  %138 = call i32 @av_dct_calc(i32 %131, float* %137)
  br label %139

139:                                              ; preds = %111
  %140 = load i32, i32* %34, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %34, align 4
  br label %107

142:                                              ; preds = %107
  store i32 0, i32* %34, align 4
  br label %143

143:                                              ; preds = %184, %142
  %144 = load i32, i32* %34, align 4
  %145 = load i32, i32* %22, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %187

147:                                              ; preds = %143
  store i32 0, i32* %35, align 4
  br label %148

148:                                              ; preds = %170, %147
  %149 = load i32, i32* %35, align 4
  %150 = load i32, i32* %22, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %173

152:                                              ; preds = %148
  %153 = load float*, float** %27, align 8
  %154 = load i32, i32* %35, align 4
  %155 = load i32, i32* %22, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %34, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %153, i64 %159
  %161 = load float, float* %160, align 4
  %162 = load float*, float** %28, align 8
  %163 = load i32, i32* %34, align 4
  %164 = load i32, i32* %22, align 4
  %165 = mul nsw i32 %163, %164
  %166 = load i32, i32* %35, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %162, i64 %168
  store float %161, float* %169, align 4
  br label %170

170:                                              ; preds = %152
  %171 = load i32, i32* %35, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %35, align 4
  br label %148

173:                                              ; preds = %148
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 10
  %176 = load i32, i32* %175, align 4
  %177 = load float*, float** %28, align 8
  %178 = load i32, i32* %34, align 4
  %179 = load i32, i32* %22, align 4
  %180 = mul nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %177, i64 %181
  %183 = call i32 @av_dct_calc(i32 %176, float* %182)
  br label %184

184:                                              ; preds = %173
  %185 = load i32, i32* %34, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %34, align 4
  br label %143

187:                                              ; preds = %143
  store i32 0, i32* %34, align 4
  br label %188

188:                                              ; preds = %213, %187
  %189 = load i32, i32* %34, align 4
  %190 = load i32, i32* %22, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %216

192:                                              ; preds = %188
  %193 = load float*, float** %26, align 8
  %194 = load i32, i32* %36, align 4
  %195 = load i32, i32* %20, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %193, i64 %197
  %199 = load i32, i32* %34, align 4
  %200 = load i32, i32* %22, align 4
  %201 = mul nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %198, i64 %202
  %204 = load float*, float** %28, align 8
  %205 = load i32, i32* %34, align 4
  %206 = load i32, i32* %22, align 4
  %207 = mul nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %204, i64 %208
  %210 = load i32, i32* %22, align 4
  %211 = mul nsw i32 %210, 4
  %212 = call i32 @memcpy(float* %203, float* %209, i32 %211)
  br label %213

213:                                              ; preds = %192
  %214 = load i32, i32* %34, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %34, align 4
  br label %188

216:                                              ; preds = %188
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %36, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %36, align 4
  br label %86

220:                                              ; preds = %86
  store i32 0, i32* %34, align 4
  br label %221

221:                                              ; preds = %274, %220
  %222 = load i32, i32* %34, align 4
  %223 = load i32, i32* %22, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %277

225:                                              ; preds = %221
  store i32 0, i32* %35, align 4
  br label %226

226:                                              ; preds = %270, %225
  %227 = load i32, i32* %35, align 4
  %228 = load i32, i32* %22, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %273

230:                                              ; preds = %226
  store i32 0, i32* %36, align 4
  br label %231

231:                                              ; preds = %253, %230
  %232 = load i32, i32* %36, align 4
  %233 = load i32, i32* %21, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %256

235:                                              ; preds = %231
  %236 = load float*, float** %26, align 8
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* %36, align 4
  %239 = mul nsw i32 %237, %238
  %240 = load i32, i32* %34, align 4
  %241 = load i32, i32* %22, align 4
  %242 = mul nsw i32 %240, %241
  %243 = add nsw i32 %239, %242
  %244 = load i32, i32* %35, align 4
  %245 = add nsw i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %236, i64 %246
  %248 = load float, float* %247, align 4
  %249 = load float*, float** %29, align 8
  %250 = load i32, i32* %36, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %249, i64 %251
  store float %248, float* %252, align 4
  br label %253

253:                                              ; preds = %235
  %254 = load i32, i32* %36, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %36, align 4
  br label %231

256:                                              ; preds = %231
  %257 = load i32, i32* %25, align 4
  %258 = icmp sgt i32 %257, 1
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 8
  %263 = load float*, float** %29, align 8
  %264 = call i32 @av_dct_calc(i32 %262, float* %263)
  br label %265

265:                                              ; preds = %259, %256
  %266 = load i32, i32* %24, align 4
  %267 = load float*, float** %29, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds float, float* %267, i64 %268
  store float* %269, float** %29, align 8
  br label %270

270:                                              ; preds = %265
  %271 = load i32, i32* %35, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %35, align 4
  br label %226

273:                                              ; preds = %226
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %34, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %34, align 4
  br label %221

277:                                              ; preds = %221
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 4
  %280 = load float, float* %279, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 5
  %283 = load float, float* %282, align 4
  %284 = fmul float %280, %283
  %285 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 0
  store float %284, float* %285, align 16
  %286 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 0
  %287 = load float, float* %286, align 16
  %288 = call float @sqrtf(float 2.000000e+00) #3
  %289 = fmul float %287, %288
  %290 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 1
  store float %289, float* %290, align 4
  %291 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 0
  %292 = load float, float* %291, align 16
  %293 = fmul float %292, 2.000000e+00
  %294 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 2
  store float %293, float* %294, align 8
  %295 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 0
  %296 = load float, float* %295, align 16
  %297 = call float @sqrtf(float 8.000000e+00) #3
  %298 = fmul float %296, %297
  %299 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 3
  store float %298, float* %299, align 4
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 4
  %302 = load float*, float** %301, align 8
  store float* %302, float** %29, align 8
  store i32 0, i32* %34, align 4
  br label %303

303:                                              ; preds = %369, %277
  %304 = load i32, i32* %34, align 4
  %305 = load i32, i32* %22, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %372

307:                                              ; preds = %303
  store i32 0, i32* %35, align 4
  br label %308

308:                                              ; preds = %365, %307
  %309 = load i32, i32* %35, align 4
  %310 = load i32, i32* %22, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %368

312:                                              ; preds = %308
  store i32 0, i32* %36, align 4
  br label %313

313:                                              ; preds = %357, %312
  %314 = load i32, i32* %36, align 4
  %315 = load i32, i32* %21, align 4
  %316 = icmp slt i32 %314, %315
  br i1 %316, label %317, label %360

317:                                              ; preds = %313
  %318 = load i32, i32* %35, align 4
  %319 = icmp eq i32 %318, 0
  %320 = zext i1 %319 to i32
  %321 = load i32, i32* %34, align 4
  %322 = icmp eq i32 %321, 0
  %323 = zext i1 %322 to i32
  %324 = add nsw i32 %320, %323
  %325 = load i32, i32* %36, align 4
  %326 = icmp eq i32 %325, 0
  %327 = zext i1 %326 to i32
  %328 = add nsw i32 %324, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [4 x float], [4 x float]* %30, i64 0, i64 %329
  %331 = load float, float* %330, align 4
  store float %331, float* %39, align 4
  %332 = load float*, float** %29, align 8
  %333 = load i32, i32* %36, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float* %332, i64 %334
  %336 = load float, float* %335, align 4
  %337 = load float, float* %39, align 4
  %338 = fcmp ogt float %336, %337
  br i1 %338, label %348, label %339

339:                                              ; preds = %317
  %340 = load float*, float** %29, align 8
  %341 = load i32, i32* %36, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds float, float* %340, i64 %342
  %344 = load float, float* %343, align 4
  %345 = load float, float* %39, align 4
  %346 = fneg float %345
  %347 = fcmp olt float %344, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %339, %317
  %349 = load i32, i32* %33, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %33, align 4
  br label %356

351:                                              ; preds = %339
  %352 = load float*, float** %29, align 8
  %353 = load i32, i32* %36, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %352, i64 %354
  store float 0.000000e+00, float* %355, align 4
  br label %356

356:                                              ; preds = %351, %348
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %36, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %36, align 4
  br label %313

360:                                              ; preds = %313
  %361 = load i32, i32* %24, align 4
  %362 = load float*, float** %29, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds float, float* %362, i64 %363
  store float* %364, float** %29, align 8
  br label %365

365:                                              ; preds = %360
  %366 = load i32, i32* %35, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %35, align 4
  br label %308

368:                                              ; preds = %308
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %34, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %34, align 4
  br label %303

372:                                              ; preds = %303
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 4
  %375 = load float*, float** %374, align 8
  store float* %375, float** %29, align 8
  %376 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 1
  %378 = load float*, float** %377, align 8
  store float* %378, float** %26, align 8
  store i32 0, i32* %34, align 4
  br label %379

379:                                              ; preds = %432, %372
  %380 = load i32, i32* %34, align 4
  %381 = load i32, i32* %22, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %383, label %435

383:                                              ; preds = %379
  store i32 0, i32* %35, align 4
  br label %384

384:                                              ; preds = %428, %383
  %385 = load i32, i32* %35, align 4
  %386 = load i32, i32* %22, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %431

388:                                              ; preds = %384
  %389 = load i32, i32* %25, align 4
  %390 = icmp sgt i32 %389, 1
  br i1 %390, label %391, label %397

391:                                              ; preds = %388
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 8
  %394 = load i32, i32* %393, align 4
  %395 = load float*, float** %29, align 8
  %396 = call i32 @av_dct_calc(i32 %394, float* %395)
  br label %397

397:                                              ; preds = %391, %388
  store i32 0, i32* %36, align 4
  br label %398

398:                                              ; preds = %420, %397
  %399 = load i32, i32* %36, align 4
  %400 = load i32, i32* %21, align 4
  %401 = icmp slt i32 %399, %400
  br i1 %401, label %402, label %423

402:                                              ; preds = %398
  %403 = load float*, float** %29, align 8
  %404 = load i32, i32* %36, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds float, float* %403, i64 %405
  %407 = load float, float* %406, align 4
  %408 = load float*, float** %26, align 8
  %409 = load i32, i32* %20, align 4
  %410 = load i32, i32* %36, align 4
  %411 = mul nsw i32 %409, %410
  %412 = load i32, i32* %34, align 4
  %413 = load i32, i32* %22, align 4
  %414 = mul nsw i32 %412, %413
  %415 = add nsw i32 %411, %414
  %416 = load i32, i32* %35, align 4
  %417 = add nsw i32 %415, %416
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds float, float* %408, i64 %418
  store float %407, float* %419, align 4
  br label %420

420:                                              ; preds = %402
  %421 = load i32, i32* %36, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %36, align 4
  br label %398

423:                                              ; preds = %398
  %424 = load i32, i32* %24, align 4
  %425 = load float*, float** %29, align 8
  %426 = sext i32 %424 to i64
  %427 = getelementptr inbounds float, float* %425, i64 %426
  store float* %427, float** %29, align 8
  br label %428

428:                                              ; preds = %423
  %429 = load i32, i32* %35, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %35, align 4
  br label %384

431:                                              ; preds = %384
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %34, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %34, align 4
  br label %379

435:                                              ; preds = %379
  %436 = load i32, i32* %33, align 4
  %437 = icmp slt i32 %436, 1
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  br label %443

439:                                              ; preds = %435
  %440 = load i32, i32* %33, align 4
  %441 = sitofp i32 %440 to float
  %442 = fdiv float 1.000000e+00, %441
  br label %443

443:                                              ; preds = %439, %438
  %444 = phi float [ 1.000000e+00, %438 ], [ %442, %439 ]
  store float %444, float* %31, align 4
  %445 = load float, float* %31, align 4
  store float %445, float* %32, align 4
  %446 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 1
  %448 = load float*, float** %447, align 8
  store float* %448, float** %26, align 8
  store i32 0, i32* %36, align 4
  br label %449

449:                                              ; preds = %610, %443
  %450 = load i32, i32* %36, align 4
  %451 = load i32, i32* %21, align 4
  %452 = icmp slt i32 %450, %451
  br i1 %452, label %453, label %613

453:                                              ; preds = %449
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 5
  %456 = load float*, float** %455, align 8
  %457 = load i32, i32* %15, align 4
  %458 = load i32, i32* %23, align 4
  %459 = mul nsw i32 %457, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds float, float* %456, i64 %460
  %462 = load i32, i32* %16, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds float, float* %461, i64 %463
  store float* %464, float** %40, align 8
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 6
  %467 = load float*, float** %466, align 8
  %468 = load i32, i32* %15, align 4
  %469 = load i32, i32* %23, align 4
  %470 = mul nsw i32 %468, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds float, float* %467, i64 %471
  %473 = load i32, i32* %16, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds float, float* %472, i64 %474
  store float* %475, float** %41, align 8
  store i32 0, i32* %34, align 4
  br label %476

476:                                              ; preds = %501, %453
  %477 = load i32, i32* %34, align 4
  %478 = load i32, i32* %22, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %504

480:                                              ; preds = %476
  %481 = load float*, float** %28, align 8
  %482 = load i32, i32* %34, align 4
  %483 = load i32, i32* %22, align 4
  %484 = mul nsw i32 %482, %483
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds float, float* %481, i64 %485
  %487 = load float*, float** %26, align 8
  %488 = load i32, i32* %36, align 4
  %489 = load i32, i32* %20, align 4
  %490 = mul nsw i32 %488, %489
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, float* %487, i64 %491
  %493 = load i32, i32* %34, align 4
  %494 = load i32, i32* %22, align 4
  %495 = mul nsw i32 %493, %494
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds float, float* %492, i64 %496
  %498 = load i32, i32* %22, align 4
  %499 = mul nsw i32 %498, 4
  %500 = call i32 @memcpy(float* %486, float* %497, i32 %499)
  br label %501

501:                                              ; preds = %480
  %502 = load i32, i32* %34, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %34, align 4
  br label %476

504:                                              ; preds = %476
  store i32 0, i32* %34, align 4
  br label %505

505:                                              ; preds = %546, %504
  %506 = load i32, i32* %34, align 4
  %507 = load i32, i32* %22, align 4
  %508 = icmp slt i32 %506, %507
  br i1 %508, label %509, label %549

509:                                              ; preds = %505
  %510 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %510, i32 0, i32 7
  %512 = load i32, i32* %511, align 8
  %513 = load float*, float** %28, align 8
  %514 = load i32, i32* %22, align 4
  %515 = load i32, i32* %34, align 4
  %516 = mul nsw i32 %514, %515
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds float, float* %513, i64 %517
  %519 = call i32 @av_dct_calc(i32 %512, float* %518)
  store i32 0, i32* %35, align 4
  br label %520

520:                                              ; preds = %542, %509
  %521 = load i32, i32* %35, align 4
  %522 = load i32, i32* %22, align 4
  %523 = icmp slt i32 %521, %522
  br i1 %523, label %524, label %545

524:                                              ; preds = %520
  %525 = load float*, float** %28, align 8
  %526 = load i32, i32* %34, align 4
  %527 = load i32, i32* %22, align 4
  %528 = mul nsw i32 %526, %527
  %529 = load i32, i32* %35, align 4
  %530 = add nsw i32 %528, %529
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds float, float* %525, i64 %531
  %533 = load float, float* %532, align 4
  %534 = load float*, float** %27, align 8
  %535 = load i32, i32* %35, align 4
  %536 = load i32, i32* %22, align 4
  %537 = mul nsw i32 %535, %536
  %538 = load i32, i32* %34, align 4
  %539 = add nsw i32 %537, %538
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds float, float* %534, i64 %540
  store float %533, float* %541, align 4
  br label %542

542:                                              ; preds = %524
  %543 = load i32, i32* %35, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %35, align 4
  br label %520

545:                                              ; preds = %520
  br label %546

546:                                              ; preds = %545
  %547 = load i32, i32* %34, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %34, align 4
  br label %505

549:                                              ; preds = %505
  store i32 0, i32* %34, align 4
  br label %550

550:                                              ; preds = %606, %549
  %551 = load i32, i32* %34, align 4
  %552 = load i32, i32* %22, align 4
  %553 = icmp slt i32 %551, %552
  br i1 %553, label %554, label %609

554:                                              ; preds = %550
  %555 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %556 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %555, i32 0, i32 7
  %557 = load i32, i32* %556, align 8
  %558 = load float*, float** %27, align 8
  %559 = load i32, i32* %22, align 4
  %560 = load i32, i32* %34, align 4
  %561 = mul nsw i32 %559, %560
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds float, float* %558, i64 %562
  %564 = call i32 @av_dct_calc(i32 %557, float* %563)
  store i32 0, i32* %35, align 4
  br label %565

565:                                              ; preds = %594, %554
  %566 = load i32, i32* %35, align 4
  %567 = load i32, i32* %22, align 4
  %568 = icmp slt i32 %566, %567
  br i1 %568, label %569, label %597

569:                                              ; preds = %565
  %570 = load float*, float** %27, align 8
  %571 = load i32, i32* %34, align 4
  %572 = load i32, i32* %22, align 4
  %573 = mul nsw i32 %571, %572
  %574 = load i32, i32* %35, align 4
  %575 = add nsw i32 %573, %574
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds float, float* %570, i64 %576
  %578 = load float, float* %577, align 4
  %579 = load float, float* %32, align 4
  %580 = fmul float %578, %579
  %581 = load float*, float** %40, align 8
  %582 = load i32, i32* %35, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds float, float* %581, i64 %583
  %585 = load float, float* %584, align 4
  %586 = fadd float %585, %580
  store float %586, float* %584, align 4
  %587 = load float, float* %31, align 4
  %588 = load float*, float** %41, align 8
  %589 = load i32, i32* %35, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds float, float* %588, i64 %590
  %592 = load float, float* %591, align 4
  %593 = fadd float %592, %587
  store float %593, float* %591, align 4
  br label %594

594:                                              ; preds = %569
  %595 = load i32, i32* %35, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %35, align 4
  br label %565

597:                                              ; preds = %565
  %598 = load i32, i32* %23, align 4
  %599 = load float*, float** %40, align 8
  %600 = sext i32 %598 to i64
  %601 = getelementptr inbounds float, float* %599, i64 %600
  store float* %601, float** %40, align 8
  %602 = load i32, i32* %23, align 4
  %603 = load float*, float** %41, align 8
  %604 = sext i32 %602 to i64
  %605 = getelementptr inbounds float, float* %603, i64 %604
  store float* %605, float** %41, align 8
  br label %606

606:                                              ; preds = %597
  %607 = load i32, i32* %34, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %34, align 4
  br label %550

609:                                              ; preds = %550
  br label %610

610:                                              ; preds = %609
  %611 = load i32, i32* %36, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %36, align 4
  br label %449

613:                                              ; preds = %449
  ret void
}

declare dso_local i32 @av_dct_calc(i32, float*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
