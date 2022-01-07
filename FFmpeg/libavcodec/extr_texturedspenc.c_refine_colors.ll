; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedspenc.c_refine_colors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_texturedspenc.c_refine_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@refine_colors.w1tab = internal constant [4 x i32] [i32 3, i32 0, i32 2, i32 1], align 16
@refine_colors.prods = internal constant [4 x i32] [i32 589824, i32 2304, i32 262402, i32 66562], align 16
@match5 = common dso_local global i32** null, align 8
@match6 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*, i32)* @refine_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refine_colors(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
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
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %45, 2
  %47 = xor i32 %44, %46
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %161

49:                                               ; preds = %5
  store i32 8, i32* %18, align 4
  store i32 8, i32* %19, align 4
  store i32 8, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %101, %49
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %104

53:                                               ; preds = %50
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %97, %53
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %100

57:                                               ; preds = %54
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %16, align 4
  %60 = mul nsw i32 %59, 4
  %61 = add nsw i32 0, %60
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %18, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %16, align 4
  %73 = mul nsw i32 %72, 4
  %74 = add nsw i32 1, %73
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %71, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %19, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %16, align 4
  %86 = mul nsw i32 %85, 4
  %87 = add nsw i32 2, %86
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %87, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %84, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %20, align 4
  br label %97

97:                                               ; preds = %57
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %54

100:                                              ; preds = %54
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %17, align 4
  br label %50

104:                                              ; preds = %50
  %105 = load i32, i32* %18, align 4
  %106 = ashr i32 %105, 4
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %19, align 4
  %108 = ashr i32 %107, 4
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %20, align 4
  %110 = ashr i32 %109, 4
  store i32 %110, i32* %20, align 4
  %111 = load i32**, i32*** @match5, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 11
  %119 = load i32**, i32*** @match6, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 5
  %127 = or i32 %118, %126
  %128 = load i32**, i32*** @match5, align 8
  %129 = load i32, i32* %20, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %127, %134
  store i32 %135, i32* %15, align 4
  %136 = load i32**, i32*** @match5, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 11
  %144 = load i32**, i32*** @match6, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 5
  %152 = or i32 %143, %151
  %153 = load i32**, i32*** @match5, align 8
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %152, %159
  store i32 %160, i32* %14, align 4
  br label %374

161:                                              ; preds = %5
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %17, align 4
  br label %162

162:                                              ; preds = %245, %161
  %163 = load i32, i32* %17, align 4
  %164 = icmp slt i32 %163, 4
  br i1 %164, label %165, label %248

165:                                              ; preds = %162
  store i32 0, i32* %16, align 4
  br label %166

166:                                              ; preds = %241, %165
  %167 = load i32, i32* %16, align 4
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %244

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = and i32 %170, 3
  store i32 %171, i32* %34, align 4
  %172 = load i32, i32* %34, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* @refine_colors.w1tab, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %35, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %16, align 4
  %178 = mul nsw i32 %177, 4
  %179 = add nsw i32 0, %178
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %7, align 4
  %182 = mul nsw i32 %180, %181
  %183 = add nsw i32 %179, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %176, i64 %184
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %36, align 4
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %16, align 4
  %189 = mul nsw i32 %188, 4
  %190 = add nsw i32 1, %189
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %7, align 4
  %193 = mul nsw i32 %191, %192
  %194 = add nsw i32 %190, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %187, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %37, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %16, align 4
  %200 = mul nsw i32 %199, 4
  %201 = add nsw i32 2, %200
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %7, align 4
  %204 = mul nsw i32 %202, %203
  %205 = add nsw i32 %201, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %198, i64 %206
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %38, align 4
  %209 = load i32, i32* %34, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* @refine_colors.prods, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %30, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %30, align 4
  %215 = load i32, i32* %35, align 4
  %216 = load i32, i32* %36, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load i32, i32* %24, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %24, align 4
  %220 = load i32, i32* %35, align 4
  %221 = load i32, i32* %37, align 4
  %222 = mul nsw i32 %220, %221
  %223 = load i32, i32* %25, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %25, align 4
  %225 = load i32, i32* %35, align 4
  %226 = load i32, i32* %38, align 4
  %227 = mul nsw i32 %225, %226
  %228 = load i32, i32* %26, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %26, align 4
  %230 = load i32, i32* %36, align 4
  %231 = load i32, i32* %27, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %27, align 4
  %233 = load i32, i32* %37, align 4
  %234 = load i32, i32* %28, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %28, align 4
  %236 = load i32, i32* %38, align 4
  %237 = load i32, i32* %29, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %29, align 4
  %239 = load i32, i32* %11, align 4
  %240 = ashr i32 %239, 2
  store i32 %240, i32* %11, align 4
  br label %241

241:                                              ; preds = %169
  %242 = load i32, i32* %16, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %16, align 4
  br label %166

244:                                              ; preds = %166
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %17, align 4
  br label %162

248:                                              ; preds = %162
  %249 = load i32, i32* %27, align 4
  %250 = mul nsw i32 3, %249
  %251 = load i32, i32* %24, align 4
  %252 = sub nsw i32 %250, %251
  store i32 %252, i32* %27, align 4
  %253 = load i32, i32* %28, align 4
  %254 = mul nsw i32 3, %253
  %255 = load i32, i32* %25, align 4
  %256 = sub nsw i32 %254, %255
  store i32 %256, i32* %28, align 4
  %257 = load i32, i32* %29, align 4
  %258 = mul nsw i32 3, %257
  %259 = load i32, i32* %26, align 4
  %260 = sub nsw i32 %258, %259
  store i32 %260, i32* %29, align 4
  %261 = load i32, i32* %30, align 4
  %262 = ashr i32 %261, 16
  store i32 %262, i32* %31, align 4
  %263 = load i32, i32* %30, align 4
  %264 = ashr i32 %263, 8
  %265 = and i32 %264, 255
  store i32 %265, i32* %33, align 4
  %266 = load i32, i32* %30, align 4
  %267 = ashr i32 %266, 0
  %268 = and i32 %267, 255
  store i32 %268, i32* %32, align 4
  %269 = load i32, i32* %31, align 4
  %270 = load i32, i32* %33, align 4
  %271 = mul nsw i32 %269, %270
  %272 = load i32, i32* %32, align 4
  %273 = load i32, i32* %32, align 4
  %274 = mul nsw i32 %272, %273
  %275 = sub nsw i32 %271, %274
  %276 = sitofp i32 %275 to float
  %277 = fdiv float 0x3FD7575760000000, %276
  store float %277, float* %21, align 4
  %278 = load float, float* %21, align 4
  %279 = fmul float %278, 6.300000e+01
  %280 = fdiv float %279, 3.100000e+01
  store float %280, float* %22, align 4
  %281 = load float, float* %21, align 4
  store float %281, float* %23, align 4
  %282 = load i32, i32* %24, align 4
  %283 = load i32, i32* %33, align 4
  %284 = mul nsw i32 %282, %283
  %285 = load i32, i32* %27, align 4
  %286 = load i32, i32* %32, align 4
  %287 = mul nsw i32 %285, %286
  %288 = sub nsw i32 %284, %287
  %289 = sitofp i32 %288 to float
  %290 = load float, float* %21, align 4
  %291 = fmul float %289, %290
  %292 = fadd float %291, 5.000000e-01
  %293 = fptosi float %292 to i32
  %294 = call i32 @av_clip_uintp2(i32 %293, i32 5)
  %295 = shl i32 %294, 11
  store i32 %295, i32* %15, align 4
  %296 = load i32, i32* %25, align 4
  %297 = load i32, i32* %33, align 4
  %298 = mul nsw i32 %296, %297
  %299 = load i32, i32* %28, align 4
  %300 = load i32, i32* %32, align 4
  %301 = mul nsw i32 %299, %300
  %302 = sub nsw i32 %298, %301
  %303 = sitofp i32 %302 to float
  %304 = load float, float* %22, align 4
  %305 = fmul float %303, %304
  %306 = fadd float %305, 5.000000e-01
  %307 = fptosi float %306 to i32
  %308 = call i32 @av_clip_uintp2(i32 %307, i32 6)
  %309 = shl i32 %308, 5
  %310 = load i32, i32* %15, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %15, align 4
  %312 = load i32, i32* %26, align 4
  %313 = load i32, i32* %33, align 4
  %314 = mul nsw i32 %312, %313
  %315 = load i32, i32* %29, align 4
  %316 = load i32, i32* %32, align 4
  %317 = mul nsw i32 %315, %316
  %318 = sub nsw i32 %314, %317
  %319 = sitofp i32 %318 to float
  %320 = load float, float* %23, align 4
  %321 = fmul float %319, %320
  %322 = fadd float %321, 5.000000e-01
  %323 = fptosi float %322 to i32
  %324 = call i32 @av_clip_uintp2(i32 %323, i32 5)
  %325 = shl i32 %324, 0
  %326 = load i32, i32* %15, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %15, align 4
  %328 = load i32, i32* %27, align 4
  %329 = load i32, i32* %31, align 4
  %330 = mul nsw i32 %328, %329
  %331 = load i32, i32* %24, align 4
  %332 = load i32, i32* %32, align 4
  %333 = mul nsw i32 %331, %332
  %334 = sub nsw i32 %330, %333
  %335 = sitofp i32 %334 to float
  %336 = load float, float* %21, align 4
  %337 = fmul float %335, %336
  %338 = fadd float %337, 5.000000e-01
  %339 = fptosi float %338 to i32
  %340 = call i32 @av_clip_uintp2(i32 %339, i32 5)
  %341 = shl i32 %340, 11
  store i32 %341, i32* %14, align 4
  %342 = load i32, i32* %28, align 4
  %343 = load i32, i32* %31, align 4
  %344 = mul nsw i32 %342, %343
  %345 = load i32, i32* %25, align 4
  %346 = load i32, i32* %32, align 4
  %347 = mul nsw i32 %345, %346
  %348 = sub nsw i32 %344, %347
  %349 = sitofp i32 %348 to float
  %350 = load float, float* %22, align 4
  %351 = fmul float %349, %350
  %352 = fadd float %351, 5.000000e-01
  %353 = fptosi float %352 to i32
  %354 = call i32 @av_clip_uintp2(i32 %353, i32 6)
  %355 = shl i32 %354, 5
  %356 = load i32, i32* %14, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %14, align 4
  %358 = load i32, i32* %29, align 4
  %359 = load i32, i32* %31, align 4
  %360 = mul nsw i32 %358, %359
  %361 = load i32, i32* %26, align 4
  %362 = load i32, i32* %32, align 4
  %363 = mul nsw i32 %361, %362
  %364 = sub nsw i32 %360, %363
  %365 = sitofp i32 %364 to float
  %366 = load float, float* %23, align 4
  %367 = fmul float %365, %366
  %368 = fadd float %367, 5.000000e-01
  %369 = fptosi float %368 to i32
  %370 = call i32 @av_clip_uintp2(i32 %369, i32 5)
  %371 = shl i32 %370, 0
  %372 = load i32, i32* %14, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %14, align 4
  br label %374

374:                                              ; preds = %248, %104
  %375 = load i32, i32* %14, align 4
  %376 = load i32*, i32** %9, align 8
  store i32 %375, i32* %376, align 4
  %377 = load i32, i32* %15, align 4
  %378 = load i32*, i32** %8, align 8
  store i32 %377, i32* %378, align 4
  %379 = load i32, i32* %12, align 4
  %380 = load i32, i32* %14, align 4
  %381 = icmp ne i32 %379, %380
  br i1 %381, label %386, label %382

382:                                              ; preds = %374
  %383 = load i32, i32* %13, align 4
  %384 = load i32, i32* %15, align 4
  %385 = icmp ne i32 %383, %384
  br label %386

386:                                              ; preds = %382, %374
  %387 = phi i1 [ true, %374 ], [ %385, %382 ]
  %388 = zext i1 %387 to i32
  ret i32 %388
}

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
