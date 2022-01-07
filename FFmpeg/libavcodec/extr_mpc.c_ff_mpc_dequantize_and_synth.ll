; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpc.c_ff_mpc_dequantize_and_synth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpc.c_ff_mpc_dequantize_and_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float***, float**, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32**, i64 }

@mpc_CC = common dso_local global float* null, align 8
@mpc_SCF = common dso_local global float* null, align 8
@SAMPLES_PER_BAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mpc_dequantize_and_synth(%struct.TYPE_5__* %0, i32 %1, i32** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %12, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load float***, float**** %21, align 8
  %23 = call i32 @memset(float*** %22, i32 0, i32 8)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %338, %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %344

28:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %256, %28
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %259

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %255

44:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  %45 = load float*, float** @mpc_CC, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %46, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load float*, float** @mpc_SCF, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %60, i64 %74
  %76 = load float, float* %75, align 4
  %77 = fmul float %59, %76
  store float %77, float* %14, align 4
  br label %78

78:                                               ; preds = %111, %44
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 12
  br i1 %80, label %81, label %114

81:                                               ; preds = %78
  %82 = load float, float* %14, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load float**, float*** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float*, float** %85, i64 %87
  %89 = load float*, float** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %89, i64 %93
  %95 = load float, float* %94, align 4
  %96 = fmul float %82, %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load float***, float**** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float**, float*** %99, i64 %101
  %103 = load float**, float*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float*, float** %103, i64 %105
  %107 = load float*, float** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  store float %96, float* %110, align 4
  br label %111

111:                                              ; preds = %81
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %78

114:                                              ; preds = %78
  %115 = load float*, float** @mpc_CC, align 8
  %116 = getelementptr inbounds float, float* %115, i64 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %116, i64 %127
  %129 = load float, float* %128, align 4
  %130 = load float*, float** @mpc_SCF, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 255
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %130, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fmul float %129, %146
  store float %147, float* %14, align 4
  br label %148

148:                                              ; preds = %181, %114
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 24
  br i1 %150, label %151, label %184

151:                                              ; preds = %148
  %152 = load float, float* %14, align 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load float**, float*** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float*, float** %155, i64 %157
  %159 = load float*, float** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %159, i64 %163
  %165 = load float, float* %164, align 4
  %166 = fmul float %152, %165
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load float***, float**** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float**, float*** %169, i64 %171
  %173 = load float**, float*** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float*, float** %173, i64 %175
  %177 = load float*, float** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  store float %166, float* %180, align 4
  br label %181

181:                                              ; preds = %151
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %148

184:                                              ; preds = %148
  %185 = load float*, float** @mpc_CC, align 8
  %186 = getelementptr inbounds float, float* %185, i64 1
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %186, i64 %197
  %199 = load float, float* %198, align 4
  %200 = load float*, float** @mpc_SCF, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load i32**, i32*** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 2
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 255
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %200, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fmul float %199, %216
  store float %217, float* %14, align 4
  br label %218

218:                                              ; preds = %251, %184
  %219 = load i32, i32* %10, align 4
  %220 = icmp slt i32 %219, 36
  br i1 %220, label %221, label %254

221:                                              ; preds = %218
  %222 = load float, float* %14, align 4
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load float**, float*** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float*, float** %225, i64 %227
  %229 = load float*, float** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %229, i64 %233
  %235 = load float, float* %234, align 4
  %236 = fmul float %222, %235
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load float***, float**** %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float**, float*** %239, i64 %241
  %243 = load float**, float*** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float*, float** %243, i64 %245
  %247 = load float*, float** %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %247, i64 %249
  store float %236, float* %250, align 4
  br label %251

251:                                              ; preds = %221
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  br label %218

254:                                              ; preds = %218
  br label %255

255:                                              ; preds = %254, %32
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %11, align 4
  br label %29

259:                                              ; preds = %29
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %337

267:                                              ; preds = %259
  store i32 0, i32* %10, align 4
  br label %268

268:                                              ; preds = %333, %267
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* @SAMPLES_PER_BAND, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %336

272:                                              ; preds = %268
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load float***, float**** %274, align 8
  %276 = getelementptr inbounds float**, float*** %275, i64 0
  %277 = load float**, float*** %276, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float*, float** %277, i64 %279
  %281 = load float*, float** %280, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %281, i64 %283
  %285 = load float, float* %284, align 4
  %286 = fptosi float %285 to i32
  store i32 %286, i32* %15, align 4
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 0
  %289 = load float***, float**** %288, align 8
  %290 = getelementptr inbounds float**, float*** %289, i64 1
  %291 = load float**, float*** %290, align 8
  %292 = load i32, i32* %10, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float*, float** %291, i64 %293
  %295 = load float*, float** %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %295, i64 %297
  %299 = load float, float* %298, align 4
  %300 = fptosi float %299 to i32
  store i32 %300, i32* %16, align 4
  %301 = load i32, i32* %15, align 4
  %302 = load i32, i32* %16, align 4
  %303 = add nsw i32 %301, %302
  %304 = sitofp i32 %303 to float
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 0
  %307 = load float***, float**** %306, align 8
  %308 = getelementptr inbounds float**, float*** %307, i64 0
  %309 = load float**, float*** %308, align 8
  %310 = load i32, i32* %10, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds float*, float** %309, i64 %311
  %313 = load float*, float** %312, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %313, i64 %315
  store float %304, float* %316, align 4
  %317 = load i32, i32* %15, align 4
  %318 = load i32, i32* %16, align 4
  %319 = sub nsw i32 %317, %318
  %320 = sitofp i32 %319 to float
  %321 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 0
  %323 = load float***, float**** %322, align 8
  %324 = getelementptr inbounds float**, float*** %323, i64 1
  %325 = load float**, float*** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float*, float** %325, i64 %327
  %329 = load float*, float** %328, align 8
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %329, i64 %331
  store float %320, float* %332, align 4
  br label %333

333:                                              ; preds = %272
  %334 = load i32, i32* %10, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %10, align 4
  br label %268

336:                                              ; preds = %268
  br label %337

337:                                              ; preds = %336, %259
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %9, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %9, align 4
  %341 = load i32, i32* @SAMPLES_PER_BAND, align 4
  %342 = load i32, i32* %13, align 4
  %343 = add nsw i32 %342, %341
  store i32 %343, i32* %13, align 4
  br label %24

344:                                              ; preds = %24
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %346 = load i32**, i32*** %7, align 8
  %347 = load i32, i32* %8, align 4
  %348 = call i32 @mpc_synth(%struct.TYPE_5__* %345, i32** %346, i32 %347)
  ret void
}

declare dso_local i32 @memset(float***, i32, i32) #1

declare dso_local i32 @mpc_synth(%struct.TYPE_5__*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
