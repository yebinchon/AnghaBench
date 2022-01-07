; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_final_block_filtering.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_final_block_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32, i32, float, i32 (i32*, i32, i32, i32, i32, float*)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i32*, i32, i32, i32, i32, i32)* @final_block_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @final_block_filtering(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %26 = alloca float, align 4
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  %33 = alloca float*, align 8
  %34 = alloca float*, align 8
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float*, align 8
  %46 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %19, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %55, %58
  store i32 %59, i32* %20, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %21, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %22, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %23, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %24, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %25, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = load float, float* %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %84 = load float, float* %83, align 8
  %85 = fmul float %81, %84
  store float %85, float* %26, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load float*, float** %87, align 8
  store float* %88, float** %27, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load float*, float** %90, align 8
  store float* %91, float** %28, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load float*, float** %93, align 8
  store float* %94, float** %29, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 4
  %97 = load float*, float** %96, align 8
  store float* %97, float** %30, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  %100 = load float*, float** %99, align 8
  store float* %100, float** %31, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  %103 = load float*, float** %102, align 8
  store float* %103, float** %32, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 7
  %106 = load float*, float** %105, align 8
  store float* %106, float** %33, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 8
  %109 = load float*, float** %108, align 8
  store float* %109, float** %34, align 8
  store float 0.000000e+00, float* %37, align 4
  store i32 0, i32* %40, align 4
  br label %110

110:                                              ; preds = %315, %9
  %111 = load i32, i32* %40, align 4
  %112 = load i32, i32* %21, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %318

114:                                              ; preds = %110
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 15
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %40, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %41, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 15
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i32, i32* %40, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %42, align 4
  store i32 0, i32* %38, align 4
  br label %131

131:                                              ; preds = %190, %114
  %132 = load i32, i32* %38, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %193

135:                                              ; preds = %131
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 5
  %138 = load i32 (i32*, i32, i32, i32, i32, float*)*, i32 (i32*, i32, i32, i32, i32, float*)** %137, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %41, align 4
  %142 = load i32, i32* %38, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* %42, align 4
  %145 = load i32, i32* %22, align 4
  %146 = load float*, float** %28, align 8
  %147 = load i32, i32* %22, align 4
  %148 = load i32, i32* %38, align 4
  %149 = mul nsw i32 %147, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %146, i64 %150
  %152 = call i32 %138(i32* %139, i32 %140, i32 %143, i32 %144, i32 %145, float* %151)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 5
  %155 = load i32 (i32*, i32, i32, i32, i32, float*)*, i32 (i32*, i32, i32, i32, i32, float*)** %154, align 8
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %41, align 4
  %159 = load i32, i32* %38, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* %42, align 4
  %162 = load i32, i32* %22, align 4
  %163 = load float*, float** %32, align 8
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* %38, align 4
  %166 = mul nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %163, i64 %167
  %169 = call i32 %155(i32* %156, i32 %157, i32 %160, i32 %161, i32 %162, float* %168)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 14
  %172 = load i32, i32* %171, align 4
  %173 = load float*, float** %28, align 8
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* %38, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %173, i64 %177
  %179 = call i32 @av_dct_calc(i32 %172, float* %178)
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 14
  %182 = load i32, i32* %181, align 4
  %183 = load float*, float** %32, align 8
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* %38, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %183, i64 %187
  %189 = call i32 @av_dct_calc(i32 %182, float* %188)
  br label %190

190:                                              ; preds = %135
  %191 = load i32, i32* %38, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %38, align 4
  br label %131

193:                                              ; preds = %131
  store i32 0, i32* %38, align 4
  br label %194

194:                                              ; preds = %262, %193
  %195 = load i32, i32* %38, align 4
  %196 = load i32, i32* %22, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %265

198:                                              ; preds = %194
  store i32 0, i32* %39, align 4
  br label %199

199:                                              ; preds = %238, %198
  %200 = load i32, i32* %39, align 4
  %201 = load i32, i32* %22, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %241

203:                                              ; preds = %199
  %204 = load float*, float** %28, align 8
  %205 = load i32, i32* %39, align 4
  %206 = load i32, i32* %22, align 4
  %207 = mul nsw i32 %205, %206
  %208 = load i32, i32* %38, align 4
  %209 = add nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %204, i64 %210
  %212 = load float, float* %211, align 4
  %213 = load float*, float** %29, align 8
  %214 = load i32, i32* %38, align 4
  %215 = load i32, i32* %22, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %39, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %213, i64 %219
  store float %212, float* %220, align 4
  %221 = load float*, float** %32, align 8
  %222 = load i32, i32* %39, align 4
  %223 = load i32, i32* %22, align 4
  %224 = mul nsw i32 %222, %223
  %225 = load i32, i32* %38, align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %221, i64 %227
  %229 = load float, float* %228, align 4
  %230 = load float*, float** %33, align 8
  %231 = load i32, i32* %38, align 4
  %232 = load i32, i32* %22, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load i32, i32* %39, align 4
  %235 = add nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %230, i64 %236
  store float %229, float* %237, align 4
  br label %238

238:                                              ; preds = %203
  %239 = load i32, i32* %39, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %39, align 4
  br label %199

241:                                              ; preds = %199
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 14
  %244 = load i32, i32* %243, align 4
  %245 = load float*, float** %29, align 8
  %246 = load i32, i32* %38, align 4
  %247 = load i32, i32* %22, align 4
  %248 = mul nsw i32 %246, %247
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %245, i64 %249
  %251 = call i32 @av_dct_calc(i32 %244, float* %250)
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 14
  %254 = load i32, i32* %253, align 4
  %255 = load float*, float** %33, align 8
  %256 = load i32, i32* %38, align 4
  %257 = load i32, i32* %22, align 4
  %258 = mul nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %255, i64 %259
  %261 = call i32 @av_dct_calc(i32 %254, float* %260)
  br label %262

262:                                              ; preds = %241
  %263 = load i32, i32* %38, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %38, align 4
  br label %194

265:                                              ; preds = %194
  store i32 0, i32* %38, align 4
  br label %266

266:                                              ; preds = %311, %265
  %267 = load i32, i32* %38, align 4
  %268 = load i32, i32* %22, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %314

270:                                              ; preds = %266
  %271 = load float*, float** %27, align 8
  %272 = load i32, i32* %40, align 4
  %273 = load i32, i32* %20, align 4
  %274 = mul nsw i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %271, i64 %275
  %277 = load i32, i32* %38, align 4
  %278 = load i32, i32* %22, align 4
  %279 = mul nsw i32 %277, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %276, i64 %280
  %282 = load float*, float** %29, align 8
  %283 = load i32, i32* %38, align 4
  %284 = load i32, i32* %22, align 4
  %285 = mul nsw i32 %283, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %282, i64 %286
  %288 = load i32, i32* %22, align 4
  %289 = mul nsw i32 %288, 4
  %290 = call i32 @memcpy(float* %281, float* %287, i32 %289)
  %291 = load float*, float** %31, align 8
  %292 = load i32, i32* %40, align 4
  %293 = load i32, i32* %20, align 4
  %294 = mul nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %291, i64 %295
  %297 = load i32, i32* %38, align 4
  %298 = load i32, i32* %22, align 4
  %299 = mul nsw i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %296, i64 %300
  %302 = load float*, float** %33, align 8
  %303 = load i32, i32* %38, align 4
  %304 = load i32, i32* %22, align 4
  %305 = mul nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %302, i64 %306
  %308 = load i32, i32* %22, align 4
  %309 = mul nsw i32 %308, 4
  %310 = call i32 @memcpy(float* %301, float* %307, i32 %309)
  br label %311

311:                                              ; preds = %270
  %312 = load i32, i32* %38, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %38, align 4
  br label %266

314:                                              ; preds = %266
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %40, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %40, align 4
  br label %110

318:                                              ; preds = %110
  store i32 0, i32* %38, align 4
  br label %319

319:                                              ; preds = %398, %318
  %320 = load i32, i32* %38, align 4
  %321 = load i32, i32* %22, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %401

323:                                              ; preds = %319
  store i32 0, i32* %39, align 4
  br label %324

324:                                              ; preds = %394, %323
  %325 = load i32, i32* %39, align 4
  %326 = load i32, i32* %22, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %397

328:                                              ; preds = %324
  store i32 0, i32* %40, align 4
  br label %329

329:                                              ; preds = %368, %328
  %330 = load i32, i32* %40, align 4
  %331 = load i32, i32* %21, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %371

333:                                              ; preds = %329
  %334 = load float*, float** %27, align 8
  %335 = load i32, i32* %20, align 4
  %336 = load i32, i32* %40, align 4
  %337 = mul nsw i32 %335, %336
  %338 = load i32, i32* %38, align 4
  %339 = load i32, i32* %22, align 4
  %340 = mul nsw i32 %338, %339
  %341 = add nsw i32 %337, %340
  %342 = load i32, i32* %39, align 4
  %343 = add nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %334, i64 %344
  %346 = load float, float* %345, align 4
  %347 = load float*, float** %30, align 8
  %348 = load i32, i32* %40, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %347, i64 %349
  store float %346, float* %350, align 4
  %351 = load float*, float** %31, align 8
  %352 = load i32, i32* %20, align 4
  %353 = load i32, i32* %40, align 4
  %354 = mul nsw i32 %352, %353
  %355 = load i32, i32* %38, align 4
  %356 = load i32, i32* %22, align 4
  %357 = mul nsw i32 %355, %356
  %358 = add nsw i32 %354, %357
  %359 = load i32, i32* %39, align 4
  %360 = add nsw i32 %358, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %351, i64 %361
  %363 = load float, float* %362, align 4
  %364 = load float*, float** %34, align 8
  %365 = load i32, i32* %40, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, float* %364, i64 %366
  store float %363, float* %367, align 4
  br label %368

368:                                              ; preds = %333
  %369 = load i32, i32* %40, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %40, align 4
  br label %329

371:                                              ; preds = %329
  %372 = load i32, i32* %25, align 4
  %373 = icmp sgt i32 %372, 1
  br i1 %373, label %374, label %385

374:                                              ; preds = %371
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 13
  %377 = load i32, i32* %376, align 8
  %378 = load float*, float** %30, align 8
  %379 = call i32 @av_dct_calc(i32 %377, float* %378)
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 13
  %382 = load i32, i32* %381, align 8
  %383 = load float*, float** %34, align 8
  %384 = call i32 @av_dct_calc(i32 %382, float* %383)
  br label %385

385:                                              ; preds = %374, %371
  %386 = load i32, i32* %24, align 4
  %387 = load float*, float** %30, align 8
  %388 = sext i32 %386 to i64
  %389 = getelementptr inbounds float, float* %387, i64 %388
  store float* %389, float** %30, align 8
  %390 = load i32, i32* %24, align 4
  %391 = load float*, float** %34, align 8
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds float, float* %391, i64 %392
  store float* %393, float** %34, align 8
  br label %394

394:                                              ; preds = %385
  %395 = load i32, i32* %39, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %39, align 4
  br label %324

397:                                              ; preds = %324
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %38, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %38, align 4
  br label %319

401:                                              ; preds = %319
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 4
  %404 = load float*, float** %403, align 8
  store float* %404, float** %30, align 8
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 8
  %407 = load float*, float** %406, align 8
  store float* %407, float** %34, align 8
  store i32 0, i32* %38, align 4
  br label %408

408:                                              ; preds = %472, %401
  %409 = load i32, i32* %38, align 4
  %410 = load i32, i32* %22, align 4
  %411 = icmp slt i32 %409, %410
  br i1 %411, label %412, label %475

412:                                              ; preds = %408
  store i32 0, i32* %39, align 4
  br label %413

413:                                              ; preds = %468, %412
  %414 = load i32, i32* %39, align 4
  %415 = load i32, i32* %22, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %471

417:                                              ; preds = %413
  store i32 0, i32* %40, align 4
  br label %418

418:                                              ; preds = %456, %417
  %419 = load i32, i32* %40, align 4
  %420 = load i32, i32* %21, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %459

422:                                              ; preds = %418
  %423 = load float*, float** %34, align 8
  %424 = load i32, i32* %40, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds float, float* %423, i64 %425
  %427 = load float, float* %426, align 4
  %428 = load float*, float** %34, align 8
  %429 = load i32, i32* %40, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float, float* %428, i64 %430
  %432 = load float, float* %431, align 4
  %433 = fmul float %427, %432
  store float %433, float* %43, align 4
  %434 = load float, float* %43, align 4
  %435 = load float, float* %43, align 4
  %436 = load float, float* %26, align 4
  %437 = fadd float %435, %436
  %438 = fdiv float %434, %437
  store float %438, float* %44, align 4
  %439 = load float, float* %44, align 4
  %440 = call i64 @isnan(float %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %422
  store float 1.000000e+00, float* %44, align 4
  br label %443

443:                                              ; preds = %442, %422
  %444 = load float, float* %44, align 4
  %445 = load float*, float** %30, align 8
  %446 = load i32, i32* %40, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds float, float* %445, i64 %447
  %449 = load float, float* %448, align 4
  %450 = fmul float %449, %444
  store float %450, float* %448, align 4
  %451 = load float, float* %44, align 4
  %452 = load float, float* %44, align 4
  %453 = fmul float %451, %452
  %454 = load float, float* %37, align 4
  %455 = fadd float %454, %453
  store float %455, float* %37, align 4
  br label %456

456:                                              ; preds = %443
  %457 = load i32, i32* %40, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %40, align 4
  br label %418

459:                                              ; preds = %418
  %460 = load i32, i32* %24, align 4
  %461 = load float*, float** %30, align 8
  %462 = sext i32 %460 to i64
  %463 = getelementptr inbounds float, float* %461, i64 %462
  store float* %463, float** %30, align 8
  %464 = load i32, i32* %24, align 4
  %465 = load float*, float** %34, align 8
  %466 = sext i32 %464 to i64
  %467 = getelementptr inbounds float, float* %465, i64 %466
  store float* %467, float** %34, align 8
  br label %468

468:                                              ; preds = %459
  %469 = load i32, i32* %39, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %39, align 4
  br label %413

471:                                              ; preds = %413
  br label %472

472:                                              ; preds = %471
  %473 = load i32, i32* %38, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %38, align 4
  br label %408

475:                                              ; preds = %408
  %476 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %477 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %476, i32 0, i32 4
  %478 = load float*, float** %477, align 8
  store float* %478, float** %30, align 8
  %479 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %480 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i32 0, i32 1
  %481 = load float*, float** %480, align 8
  store float* %481, float** %27, align 8
  store i32 0, i32* %38, align 4
  br label %482

482:                                              ; preds = %535, %475
  %483 = load i32, i32* %38, align 4
  %484 = load i32, i32* %22, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %538

486:                                              ; preds = %482
  store i32 0, i32* %39, align 4
  br label %487

487:                                              ; preds = %531, %486
  %488 = load i32, i32* %39, align 4
  %489 = load i32, i32* %22, align 4
  %490 = icmp slt i32 %488, %489
  br i1 %490, label %491, label %534

491:                                              ; preds = %487
  %492 = load i32, i32* %25, align 4
  %493 = icmp sgt i32 %492, 1
  br i1 %493, label %494, label %500

494:                                              ; preds = %491
  %495 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 12
  %497 = load i32, i32* %496, align 4
  %498 = load float*, float** %30, align 8
  %499 = call i32 @av_dct_calc(i32 %497, float* %498)
  br label %500

500:                                              ; preds = %494, %491
  store i32 0, i32* %40, align 4
  br label %501

501:                                              ; preds = %523, %500
  %502 = load i32, i32* %40, align 4
  %503 = load i32, i32* %21, align 4
  %504 = icmp slt i32 %502, %503
  br i1 %504, label %505, label %526

505:                                              ; preds = %501
  %506 = load float*, float** %30, align 8
  %507 = load i32, i32* %40, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %506, i64 %508
  %510 = load float, float* %509, align 4
  %511 = load float*, float** %27, align 8
  %512 = load i32, i32* %20, align 4
  %513 = load i32, i32* %40, align 4
  %514 = mul nsw i32 %512, %513
  %515 = load i32, i32* %38, align 4
  %516 = load i32, i32* %22, align 4
  %517 = mul nsw i32 %515, %516
  %518 = add nsw i32 %514, %517
  %519 = load i32, i32* %39, align 4
  %520 = add nsw i32 %518, %519
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds float, float* %511, i64 %521
  store float %510, float* %522, align 4
  br label %523

523:                                              ; preds = %505
  %524 = load i32, i32* %40, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %40, align 4
  br label %501

526:                                              ; preds = %501
  %527 = load i32, i32* %24, align 4
  %528 = load float*, float** %30, align 8
  %529 = sext i32 %527 to i64
  %530 = getelementptr inbounds float, float* %528, i64 %529
  store float* %530, float** %30, align 8
  br label %531

531:                                              ; preds = %526
  %532 = load i32, i32* %39, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %39, align 4
  br label %487

534:                                              ; preds = %487
  br label %535

535:                                              ; preds = %534
  %536 = load i32, i32* %38, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %38, align 4
  br label %482

538:                                              ; preds = %482
  %539 = load float, float* %37, align 4
  %540 = call float @FFMAX(float %539, float 0x3CD203AFA0000000)
  store float %540, float* %37, align 4
  %541 = load float, float* %37, align 4
  %542 = fdiv float 1.000000e+00, %541
  store float %542, float* %35, align 4
  %543 = load float, float* %35, align 4
  store float %543, float* %36, align 4
  store i32 0, i32* %40, align 4
  br label %544

544:                                              ; preds = %705, %538
  %545 = load i32, i32* %40, align 4
  %546 = load i32, i32* %21, align 4
  %547 = icmp slt i32 %545, %546
  br i1 %547, label %548, label %708

548:                                              ; preds = %544
  %549 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %550 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %549, i32 0, i32 9
  %551 = load float*, float** %550, align 8
  %552 = load i32, i32* %15, align 4
  %553 = load i32, i32* %23, align 4
  %554 = mul nsw i32 %552, %553
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds float, float* %551, i64 %555
  %557 = load i32, i32* %16, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds float, float* %556, i64 %558
  store float* %559, float** %45, align 8
  %560 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %561 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %560, i32 0, i32 10
  %562 = load float*, float** %561, align 8
  %563 = load i32, i32* %15, align 4
  %564 = load i32, i32* %23, align 4
  %565 = mul nsw i32 %563, %564
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds float, float* %562, i64 %566
  %568 = load i32, i32* %16, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds float, float* %567, i64 %569
  store float* %570, float** %46, align 8
  store i32 0, i32* %38, align 4
  br label %571

571:                                              ; preds = %596, %548
  %572 = load i32, i32* %38, align 4
  %573 = load i32, i32* %22, align 4
  %574 = icmp slt i32 %572, %573
  br i1 %574, label %575, label %599

575:                                              ; preds = %571
  %576 = load float*, float** %29, align 8
  %577 = load i32, i32* %38, align 4
  %578 = load i32, i32* %22, align 4
  %579 = mul nsw i32 %577, %578
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds float, float* %576, i64 %580
  %582 = load float*, float** %27, align 8
  %583 = load i32, i32* %40, align 4
  %584 = load i32, i32* %20, align 4
  %585 = mul nsw i32 %583, %584
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds float, float* %582, i64 %586
  %588 = load i32, i32* %38, align 4
  %589 = load i32, i32* %22, align 4
  %590 = mul nsw i32 %588, %589
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds float, float* %587, i64 %591
  %593 = load i32, i32* %22, align 4
  %594 = mul nsw i32 %593, 4
  %595 = call i32 @memcpy(float* %581, float* %592, i32 %594)
  br label %596

596:                                              ; preds = %575
  %597 = load i32, i32* %38, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %38, align 4
  br label %571

599:                                              ; preds = %571
  store i32 0, i32* %38, align 4
  br label %600

600:                                              ; preds = %641, %599
  %601 = load i32, i32* %38, align 4
  %602 = load i32, i32* %22, align 4
  %603 = icmp slt i32 %601, %602
  br i1 %603, label %604, label %644

604:                                              ; preds = %600
  %605 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %606 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %605, i32 0, i32 11
  %607 = load i32, i32* %606, align 8
  %608 = load float*, float** %29, align 8
  %609 = load i32, i32* %22, align 4
  %610 = load i32, i32* %38, align 4
  %611 = mul nsw i32 %609, %610
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds float, float* %608, i64 %612
  %614 = call i32 @av_dct_calc(i32 %607, float* %613)
  store i32 0, i32* %39, align 4
  br label %615

615:                                              ; preds = %637, %604
  %616 = load i32, i32* %39, align 4
  %617 = load i32, i32* %22, align 4
  %618 = icmp slt i32 %616, %617
  br i1 %618, label %619, label %640

619:                                              ; preds = %615
  %620 = load float*, float** %29, align 8
  %621 = load i32, i32* %38, align 4
  %622 = load i32, i32* %22, align 4
  %623 = mul nsw i32 %621, %622
  %624 = load i32, i32* %39, align 4
  %625 = add nsw i32 %623, %624
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds float, float* %620, i64 %626
  %628 = load float, float* %627, align 4
  %629 = load float*, float** %28, align 8
  %630 = load i32, i32* %39, align 4
  %631 = load i32, i32* %22, align 4
  %632 = mul nsw i32 %630, %631
  %633 = load i32, i32* %38, align 4
  %634 = add nsw i32 %632, %633
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds float, float* %629, i64 %635
  store float %628, float* %636, align 4
  br label %637

637:                                              ; preds = %619
  %638 = load i32, i32* %39, align 4
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* %39, align 4
  br label %615

640:                                              ; preds = %615
  br label %641

641:                                              ; preds = %640
  %642 = load i32, i32* %38, align 4
  %643 = add nsw i32 %642, 1
  store i32 %643, i32* %38, align 4
  br label %600

644:                                              ; preds = %600
  store i32 0, i32* %38, align 4
  br label %645

645:                                              ; preds = %701, %644
  %646 = load i32, i32* %38, align 4
  %647 = load i32, i32* %22, align 4
  %648 = icmp slt i32 %646, %647
  br i1 %648, label %649, label %704

649:                                              ; preds = %645
  %650 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %651 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %650, i32 0, i32 11
  %652 = load i32, i32* %651, align 8
  %653 = load float*, float** %28, align 8
  %654 = load i32, i32* %22, align 4
  %655 = load i32, i32* %38, align 4
  %656 = mul nsw i32 %654, %655
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds float, float* %653, i64 %657
  %659 = call i32 @av_dct_calc(i32 %652, float* %658)
  store i32 0, i32* %39, align 4
  br label %660

660:                                              ; preds = %689, %649
  %661 = load i32, i32* %39, align 4
  %662 = load i32, i32* %22, align 4
  %663 = icmp slt i32 %661, %662
  br i1 %663, label %664, label %692

664:                                              ; preds = %660
  %665 = load float*, float** %28, align 8
  %666 = load i32, i32* %38, align 4
  %667 = load i32, i32* %22, align 4
  %668 = mul nsw i32 %666, %667
  %669 = load i32, i32* %39, align 4
  %670 = add nsw i32 %668, %669
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds float, float* %665, i64 %671
  %673 = load float, float* %672, align 4
  %674 = load float, float* %36, align 4
  %675 = fmul float %673, %674
  %676 = load float*, float** %45, align 8
  %677 = load i32, i32* %39, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds float, float* %676, i64 %678
  %680 = load float, float* %679, align 4
  %681 = fadd float %680, %675
  store float %681, float* %679, align 4
  %682 = load float, float* %35, align 4
  %683 = load float*, float** %46, align 8
  %684 = load i32, i32* %39, align 4
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds float, float* %683, i64 %685
  %687 = load float, float* %686, align 4
  %688 = fadd float %687, %682
  store float %688, float* %686, align 4
  br label %689

689:                                              ; preds = %664
  %690 = load i32, i32* %39, align 4
  %691 = add nsw i32 %690, 1
  store i32 %691, i32* %39, align 4
  br label %660

692:                                              ; preds = %660
  %693 = load i32, i32* %23, align 4
  %694 = load float*, float** %45, align 8
  %695 = sext i32 %693 to i64
  %696 = getelementptr inbounds float, float* %694, i64 %695
  store float* %696, float** %45, align 8
  %697 = load i32, i32* %23, align 4
  %698 = load float*, float** %46, align 8
  %699 = sext i32 %697 to i64
  %700 = getelementptr inbounds float, float* %698, i64 %699
  store float* %700, float** %46, align 8
  br label %701

701:                                              ; preds = %692
  %702 = load i32, i32* %38, align 4
  %703 = add nsw i32 %702, 1
  store i32 %703, i32* %38, align 4
  br label %645

704:                                              ; preds = %645
  br label %705

705:                                              ; preds = %704
  %706 = load i32, i32* %40, align 4
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %40, align 4
  br label %544

708:                                              ; preds = %544
  ret void
}

declare dso_local i32 @av_dct_calc(i32, float*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i64 @isnan(float) #1

declare dso_local float @FFMAX(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
