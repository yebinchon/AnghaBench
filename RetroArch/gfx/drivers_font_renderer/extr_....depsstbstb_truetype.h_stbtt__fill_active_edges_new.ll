; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__fill_active_edges_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__fill_active_edges_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float, float, float, float, float, i32, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, i32, %struct.TYPE_4__*, float)* @stbtt__fill_active_edges_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__fill_active_edges_new(float* %0, float* %1, i32 %2, %struct.TYPE_4__* %3, float %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store float %4, float* %10, align 4
  %36 = load float, float* %10, align 4
  %37 = fadd float %36, 1.000000e+00
  store float %37, float* %11, align 4
  br label %38

38:                                               ; preds = %522, %5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %526

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 8
  %45 = load float, float* %10, align 4
  %46 = fcmp oge float %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load float, float* %50, align 4
  %52 = fcmp oeq float %51, 0.000000e+00
  br i1 %52, label %53, label %96

53:                                               ; preds = %41
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load float, float* %55, align 8
  store float %56, float* %12, align 4
  %57 = load float, float* %12, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sitofp i32 %58 to float
  %60 = fcmp olt float %57, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %53
  %62 = load float, float* %12, align 4
  %63 = fcmp oge float %62, 0.000000e+00
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = load float*, float** %6, align 8
  %66 = load float, float* %12, align 4
  %67 = fptosi float %66 to i32
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = load float, float* %12, align 4
  %70 = load float, float* %10, align 4
  %71 = load float, float* %12, align 4
  %72 = load float, float* %11, align 4
  %73 = call i32 @stbtt__handle_clipped_edge(float* %65, i32 %67, %struct.TYPE_4__* %68, float %69, float %70, float %71, float %72)
  %74 = load float*, float** %7, align 8
  %75 = getelementptr inbounds float, float* %74, i64 -1
  %76 = load float, float* %12, align 4
  %77 = fptosi float %76 to i32
  %78 = add nsw i32 %77, 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %80 = load float, float* %12, align 4
  %81 = load float, float* %10, align 4
  %82 = load float, float* %12, align 4
  %83 = load float, float* %11, align 4
  %84 = call i32 @stbtt__handle_clipped_edge(float* %75, i32 %78, %struct.TYPE_4__* %79, float %80, float %81, float %82, float %83)
  br label %94

85:                                               ; preds = %61
  %86 = load float*, float** %7, align 8
  %87 = getelementptr inbounds float, float* %86, i64 -1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %89 = load float, float* %12, align 4
  %90 = load float, float* %10, align 4
  %91 = load float, float* %12, align 4
  %92 = load float, float* %11, align 4
  %93 = call i32 @stbtt__handle_clipped_edge(float* %87, i32 0, %struct.TYPE_4__* %88, float %89, float %90, float %91, float %92)
  br label %94

94:                                               ; preds = %85, %64
  br label %95

95:                                               ; preds = %94, %53
  br label %522

96:                                               ; preds = %41
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load float, float* %98, align 8
  store float %99, float* %13, align 4
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load float, float* %101, align 4
  store float %102, float* %14, align 4
  %103 = load float, float* %13, align 4
  %104 = load float, float* %14, align 4
  %105 = fadd float %103, %104
  store float %105, float* %15, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = load float, float* %107, align 4
  store float %108, float* %20, align 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load float, float* %110, align 8
  %112 = load float, float* %11, align 4
  %113 = fcmp ole float %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %96
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load float, float* %116, align 8
  %118 = load float, float* %10, align 4
  %119 = fcmp oge float %117, %118
  br label %120

120:                                              ; preds = %114, %96
  %121 = phi i1 [ false, %96 ], [ %119, %114 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load float, float* %125, align 8
  %127 = load float, float* %10, align 4
  %128 = fcmp ogt float %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %120
  %130 = load float, float* %13, align 4
  %131 = load float, float* %14, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load float, float* %133, align 8
  %135 = load float, float* %10, align 4
  %136 = fsub float %134, %135
  %137 = fmul float %131, %136
  %138 = fadd float %130, %137
  store float %138, float* %16, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  %141 = load float, float* %140, align 8
  store float %141, float* %18, align 4
  br label %145

142:                                              ; preds = %120
  %143 = load float, float* %13, align 4
  store float %143, float* %16, align 4
  %144 = load float, float* %10, align 4
  store float %144, float* %18, align 4
  br label %145

145:                                              ; preds = %142, %129
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load float, float* %147, align 8
  %149 = load float, float* %11, align 4
  %150 = fcmp olt float %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %145
  %152 = load float, float* %13, align 4
  %153 = load float, float* %14, align 4
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load float, float* %155, align 8
  %157 = load float, float* %10, align 4
  %158 = fsub float %156, %157
  %159 = fmul float %153, %158
  %160 = fadd float %152, %159
  store float %160, float* %17, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load float, float* %162, align 8
  store float %163, float* %19, align 4
  br label %167

164:                                              ; preds = %145
  %165 = load float, float* %15, align 4
  store float %165, float* %17, align 4
  %166 = load float, float* %11, align 4
  store float %166, float* %19, align 4
  br label %167

167:                                              ; preds = %164, %151
  %168 = load float, float* %16, align 4
  %169 = fcmp oge float %168, 0.000000e+00
  br i1 %169, label %170, label %390

170:                                              ; preds = %167
  %171 = load float, float* %17, align 4
  %172 = fcmp oge float %171, 0.000000e+00
  br i1 %172, label %173, label %390

173:                                              ; preds = %170
  %174 = load float, float* %16, align 4
  %175 = load i32, i32* %8, align 4
  %176 = sitofp i32 %175 to float
  %177 = fcmp olt float %174, %176
  br i1 %177, label %178, label %390

178:                                              ; preds = %173
  %179 = load float, float* %17, align 4
  %180 = load i32, i32* %8, align 4
  %181 = sitofp i32 %180 to float
  %182 = fcmp olt float %179, %181
  br i1 %182, label %183, label %390

183:                                              ; preds = %178
  %184 = load float, float* %16, align 4
  %185 = fptosi float %184 to i32
  %186 = load float, float* %17, align 4
  %187 = fptosi float %186 to i32
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %241

189:                                              ; preds = %183
  %190 = load float, float* %16, align 4
  %191 = fptosi float %190 to i32
  store i32 %191, i32* %22, align 4
  %192 = load float, float* %19, align 4
  %193 = load float, float* %18, align 4
  %194 = fsub float %192, %193
  store float %194, float* %21, align 4
  %195 = load i32, i32* %22, align 4
  %196 = icmp sge i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load i32, i32* %22, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %198, %199
  br label %201

201:                                              ; preds = %197, %189
  %202 = phi i1 [ false, %189 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = sitofp i32 %207 to float
  %209 = load float, float* %16, align 4
  %210 = load i32, i32* %22, align 4
  %211 = sitofp i32 %210 to float
  %212 = fsub float %209, %211
  %213 = load float, float* %17, align 4
  %214 = load i32, i32* %22, align 4
  %215 = sitofp i32 %214 to float
  %216 = fsub float %213, %215
  %217 = fadd float %212, %216
  %218 = fdiv float %217, 2.000000e+00
  %219 = fsub float 1.000000e+00, %218
  %220 = fmul float %208, %219
  %221 = load float, float* %21, align 4
  %222 = fmul float %220, %221
  %223 = load float*, float** %6, align 8
  %224 = load i32, i32* %22, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  %227 = load float, float* %226, align 4
  %228 = fadd float %227, %222
  store float %228, float* %226, align 4
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = sitofp i32 %231 to float
  %233 = load float, float* %21, align 4
  %234 = fmul float %232, %233
  %235 = load float*, float** %7, align 8
  %236 = load i32, i32* %22, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float, float* %235, i64 %237
  %239 = load float, float* %238, align 4
  %240 = fadd float %239, %234
  store float %240, float* %238, align 4
  br label %389

241:                                              ; preds = %183
  %242 = load float, float* %16, align 4
  %243 = load float, float* %17, align 4
  %244 = fcmp ogt float %242, %243
  br i1 %244, label %245, label %269

245:                                              ; preds = %241
  %246 = load float, float* %11, align 4
  %247 = load float, float* %18, align 4
  %248 = load float, float* %10, align 4
  %249 = fsub float %247, %248
  %250 = fsub float %246, %249
  store float %250, float* %18, align 4
  %251 = load float, float* %11, align 4
  %252 = load float, float* %19, align 4
  %253 = load float, float* %10, align 4
  %254 = fsub float %252, %253
  %255 = fsub float %251, %254
  store float %255, float* %19, align 4
  %256 = load float, float* %18, align 4
  store float %256, float* %30, align 4
  %257 = load float, float* %19, align 4
  store float %257, float* %18, align 4
  %258 = load float, float* %30, align 4
  store float %258, float* %19, align 4
  %259 = load float, float* %17, align 4
  store float %259, float* %30, align 4
  %260 = load float, float* %16, align 4
  store float %260, float* %17, align 4
  %261 = load float, float* %30, align 4
  store float %261, float* %16, align 4
  %262 = load float, float* %14, align 4
  %263 = fneg float %262
  store float %263, float* %14, align 4
  %264 = load float, float* %20, align 4
  %265 = fneg float %264
  store float %265, float* %20, align 4
  %266 = load float, float* %13, align 4
  store float %266, float* %30, align 4
  %267 = load float, float* %15, align 4
  store float %267, float* %13, align 4
  %268 = load float, float* %30, align 4
  store float %268, float* %15, align 4
  br label %269

269:                                              ; preds = %245, %241
  %270 = load float, float* %16, align 4
  %271 = fptosi float %270 to i32
  store i32 %271, i32* %24, align 4
  %272 = load float, float* %17, align 4
  %273 = fptosi float %272 to i32
  store i32 %273, i32* %25, align 4
  %274 = load i32, i32* %24, align 4
  %275 = add nsw i32 %274, 1
  %276 = sitofp i32 %275 to float
  %277 = load float, float* %13, align 4
  %278 = fsub float %276, %277
  %279 = load float, float* %20, align 4
  %280 = fmul float %278, %279
  %281 = load float, float* %10, align 4
  %282 = fadd float %280, %281
  store float %282, float* %26, align 4
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = sitofp i32 %285 to float
  store float %286, float* %28, align 4
  %287 = load float, float* %28, align 4
  %288 = load float, float* %26, align 4
  %289 = load float, float* %18, align 4
  %290 = fsub float %288, %289
  %291 = fmul float %287, %290
  store float %291, float* %29, align 4
  %292 = load float, float* %29, align 4
  %293 = load float, float* %16, align 4
  %294 = load i32, i32* %24, align 4
  %295 = sitofp i32 %294 to float
  %296 = fsub float %293, %295
  %297 = load i32, i32* %24, align 4
  %298 = add nsw i32 %297, 1
  %299 = load i32, i32* %24, align 4
  %300 = sub nsw i32 %298, %299
  %301 = sitofp i32 %300 to float
  %302 = fadd float %296, %301
  %303 = fdiv float %302, 2.000000e+00
  %304 = fsub float 1.000000e+00, %303
  %305 = fmul float %292, %304
  %306 = load float*, float** %6, align 8
  %307 = load i32, i32* %24, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %306, i64 %308
  %310 = load float, float* %309, align 4
  %311 = fadd float %310, %305
  store float %311, float* %309, align 4
  %312 = load float, float* %28, align 4
  %313 = load float, float* %20, align 4
  %314 = fmul float %312, %313
  store float %314, float* %27, align 4
  %315 = load i32, i32* %24, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %23, align 4
  br label %317

317:                                              ; preds = %335, %269
  %318 = load i32, i32* %23, align 4
  %319 = load i32, i32* %25, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %338

321:                                              ; preds = %317
  %322 = load float, float* %29, align 4
  %323 = load float, float* %27, align 4
  %324 = fdiv float %323, 2.000000e+00
  %325 = fadd float %322, %324
  %326 = load float*, float** %6, align 8
  %327 = load i32, i32* %23, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %326, i64 %328
  %330 = load float, float* %329, align 4
  %331 = fadd float %330, %325
  store float %331, float* %329, align 4
  %332 = load float, float* %27, align 4
  %333 = load float, float* %29, align 4
  %334 = fadd float %333, %332
  store float %334, float* %29, align 4
  br label %335

335:                                              ; preds = %321
  %336 = load i32, i32* %23, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %23, align 4
  br label %317

338:                                              ; preds = %317
  %339 = load float, float* %20, align 4
  %340 = load i32, i32* %25, align 4
  %341 = load i32, i32* %24, align 4
  %342 = add nsw i32 %341, 1
  %343 = sub nsw i32 %340, %342
  %344 = sitofp i32 %343 to float
  %345 = fmul float %339, %344
  %346 = load float, float* %26, align 4
  %347 = fadd float %346, %345
  store float %347, float* %26, align 4
  %348 = load float, float* %29, align 4
  %349 = call float @fabs(float %348)
  %350 = fcmp ole float %349, 0x3FF028F5C0000000
  %351 = zext i1 %350 to i32
  %352 = call i32 @assert(i32 %351)
  %353 = load float, float* %29, align 4
  %354 = load float, float* %28, align 4
  %355 = load i32, i32* %25, align 4
  %356 = load i32, i32* %25, align 4
  %357 = sub nsw i32 %355, %356
  %358 = sitofp i32 %357 to float
  %359 = load float, float* %17, align 4
  %360 = load i32, i32* %25, align 4
  %361 = sitofp i32 %360 to float
  %362 = fsub float %359, %361
  %363 = fadd float %358, %362
  %364 = fdiv float %363, 2.000000e+00
  %365 = fsub float 1.000000e+00, %364
  %366 = fmul float %354, %365
  %367 = load float, float* %19, align 4
  %368 = load float, float* %26, align 4
  %369 = fsub float %367, %368
  %370 = fmul float %366, %369
  %371 = fadd float %353, %370
  %372 = load float*, float** %6, align 8
  %373 = load i32, i32* %25, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, float* %372, i64 %374
  %376 = load float, float* %375, align 4
  %377 = fadd float %376, %371
  store float %377, float* %375, align 4
  %378 = load float, float* %28, align 4
  %379 = load float, float* %19, align 4
  %380 = load float, float* %18, align 4
  %381 = fsub float %379, %380
  %382 = fmul float %378, %381
  %383 = load float*, float** %7, align 8
  %384 = load i32, i32* %25, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %383, i64 %385
  %387 = load float, float* %386, align 4
  %388 = fadd float %387, %382
  store float %388, float* %386, align 4
  br label %389

389:                                              ; preds = %338, %201
  br label %521

390:                                              ; preds = %178, %173, %170, %167
  store i32 0, i32* %31, align 4
  br label %391

391:                                              ; preds = %517, %390
  %392 = load i32, i32* %31, align 4
  %393 = load i32, i32* %8, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %520

395:                                              ; preds = %391
  %396 = load float, float* %10, align 4
  store float %396, float* %34, align 4
  %397 = load float, float* %13, align 4
  store float %397, float* %35, align 4
  %398 = load i32, i32* %31, align 4
  %399 = sitofp i32 %398 to float
  %400 = load float, float* %13, align 4
  %401 = fsub float %399, %400
  %402 = load float, float* %14, align 4
  %403 = fdiv float %401, %402
  %404 = load float, float* %10, align 4
  %405 = fadd float %403, %404
  store float %405, float* %32, align 4
  %406 = load i32, i32* %31, align 4
  %407 = add nsw i32 %406, 1
  %408 = sitofp i32 %407 to float
  %409 = load float, float* %13, align 4
  %410 = fsub float %408, %409
  %411 = load float, float* %14, align 4
  %412 = fdiv float %410, %411
  %413 = load float, float* %10, align 4
  %414 = fadd float %412, %413
  store float %414, float* %33, align 4
  %415 = load float, float* %32, align 4
  %416 = load float, float* %33, align 4
  %417 = fcmp olt float %415, %416
  br i1 %417, label %418, label %463

418:                                              ; preds = %395
  %419 = load float, float* %32, align 4
  %420 = load float, float* %10, align 4
  %421 = fcmp ogt float %419, %420
  br i1 %421, label %422, label %439

422:                                              ; preds = %418
  %423 = load float, float* %32, align 4
  %424 = load float, float* %11, align 4
  %425 = fcmp olt float %423, %424
  br i1 %425, label %426, label %439

426:                                              ; preds = %422
  %427 = load float*, float** %6, align 8
  %428 = load i32, i32* %31, align 4
  %429 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %430 = load float, float* %35, align 4
  %431 = load float, float* %34, align 4
  %432 = load i32, i32* %31, align 4
  %433 = sitofp i32 %432 to float
  %434 = load float, float* %32, align 4
  %435 = call i32 @stbtt__handle_clipped_edge(float* %427, i32 %428, %struct.TYPE_4__* %429, float %430, float %431, float %433, float %434)
  %436 = load float, float* %32, align 4
  store float %436, float* %34, align 4
  %437 = load i32, i32* %31, align 4
  %438 = sitofp i32 %437 to float
  store float %438, float* %35, align 4
  br label %439

439:                                              ; preds = %426, %422, %418
  %440 = load float, float* %33, align 4
  %441 = load float, float* %34, align 4
  %442 = fcmp oge float %440, %441
  br i1 %442, label %443, label %462

443:                                              ; preds = %439
  %444 = load float, float* %33, align 4
  %445 = load float, float* %11, align 4
  %446 = fcmp olt float %444, %445
  br i1 %446, label %447, label %462

447:                                              ; preds = %443
  %448 = load float*, float** %6, align 8
  %449 = load i32, i32* %31, align 4
  %450 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %451 = load float, float* %35, align 4
  %452 = load float, float* %34, align 4
  %453 = load i32, i32* %31, align 4
  %454 = sitofp i32 %453 to float
  %455 = fadd float %454, 1.000000e+00
  %456 = load float, float* %33, align 4
  %457 = call i32 @stbtt__handle_clipped_edge(float* %448, i32 %449, %struct.TYPE_4__* %450, float %451, float %452, float %455, float %456)
  %458 = load float, float* %33, align 4
  store float %458, float* %34, align 4
  %459 = load i32, i32* %31, align 4
  %460 = sitofp i32 %459 to float
  %461 = fadd float %460, 1.000000e+00
  store float %461, float* %35, align 4
  br label %462

462:                                              ; preds = %447, %443, %439
  br label %508

463:                                              ; preds = %395
  %464 = load float, float* %33, align 4
  %465 = load float, float* %34, align 4
  %466 = fcmp oge float %464, %465
  br i1 %466, label %467, label %486

467:                                              ; preds = %463
  %468 = load float, float* %33, align 4
  %469 = load float, float* %11, align 4
  %470 = fcmp olt float %468, %469
  br i1 %470, label %471, label %486

471:                                              ; preds = %467
  %472 = load float*, float** %6, align 8
  %473 = load i32, i32* %31, align 4
  %474 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %475 = load float, float* %35, align 4
  %476 = load float, float* %34, align 4
  %477 = load i32, i32* %31, align 4
  %478 = sitofp i32 %477 to float
  %479 = fadd float %478, 1.000000e+00
  %480 = load float, float* %33, align 4
  %481 = call i32 @stbtt__handle_clipped_edge(float* %472, i32 %473, %struct.TYPE_4__* %474, float %475, float %476, float %479, float %480)
  %482 = load float, float* %33, align 4
  store float %482, float* %34, align 4
  %483 = load i32, i32* %31, align 4
  %484 = sitofp i32 %483 to float
  %485 = fadd float %484, 1.000000e+00
  store float %485, float* %35, align 4
  br label %486

486:                                              ; preds = %471, %467, %463
  %487 = load float, float* %32, align 4
  %488 = load float, float* %10, align 4
  %489 = fcmp ogt float %487, %488
  br i1 %489, label %490, label %507

490:                                              ; preds = %486
  %491 = load float, float* %32, align 4
  %492 = load float, float* %11, align 4
  %493 = fcmp olt float %491, %492
  br i1 %493, label %494, label %507

494:                                              ; preds = %490
  %495 = load float*, float** %6, align 8
  %496 = load i32, i32* %31, align 4
  %497 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %498 = load float, float* %35, align 4
  %499 = load float, float* %34, align 4
  %500 = load i32, i32* %31, align 4
  %501 = sitofp i32 %500 to float
  %502 = load float, float* %32, align 4
  %503 = call i32 @stbtt__handle_clipped_edge(float* %495, i32 %496, %struct.TYPE_4__* %497, float %498, float %499, float %501, float %502)
  %504 = load float, float* %32, align 4
  store float %504, float* %34, align 4
  %505 = load i32, i32* %31, align 4
  %506 = sitofp i32 %505 to float
  store float %506, float* %35, align 4
  br label %507

507:                                              ; preds = %494, %490, %486
  br label %508

508:                                              ; preds = %507, %462
  %509 = load float*, float** %6, align 8
  %510 = load i32, i32* %31, align 4
  %511 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %512 = load float, float* %35, align 4
  %513 = load float, float* %34, align 4
  %514 = load float, float* %15, align 4
  %515 = load float, float* %11, align 4
  %516 = call i32 @stbtt__handle_clipped_edge(float* %509, i32 %510, %struct.TYPE_4__* %511, float %512, float %513, float %514, float %515)
  br label %517

517:                                              ; preds = %508
  %518 = load i32, i32* %31, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %31, align 4
  br label %391

520:                                              ; preds = %391
  br label %521

521:                                              ; preds = %520, %389
  br label %522

522:                                              ; preds = %521, %95
  %523 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %524 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %523, i32 0, i32 6
  %525 = load %struct.TYPE_4__*, %struct.TYPE_4__** %524, align 8
  store %struct.TYPE_4__* %525, %struct.TYPE_4__** %9, align 8
  br label %38

526:                                              ; preds = %38
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stbtt__handle_clipped_edge(float*, i32, %struct.TYPE_4__*, float, float, float, float) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
