; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_floor0.c_vorbis_lsp_to_curve.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_floor0.c_vorbis_lsp_to_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COS_LOOKUP_I_SHIFT = common dso_local global i32 0, align 4
@COS_LOOKUP_I_SZ = common dso_local global i32 0, align 4
@MLOOP_1 = common dso_local global i32* null, align 8
@MLOOP_2 = common dso_local global i32* null, align 8
@MLOOP_3 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vorbis_lsp_to_curve(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %31 = load i32, i32* %17, align 4
  %32 = mul nsw i32 %31, 4096
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i64 @alloca(i32 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %22, align 8
  store i32 0, i32* %19, align 4
  br label %40

40:                                               ; preds = %73, %9
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %40
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MULT32(i32 %49, i32 5340354)
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* %23, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %23, align 4
  %55 = load i32, i32* @COS_LOOKUP_I_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load i32, i32* @COS_LOOKUP_I_SZ, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53, %44
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 4, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memset(i32* %60, i32 0, i32 %64)
  br label %401

66:                                               ; preds = %53
  %67 = load i32, i32* %23, align 4
  %68 = call i32 @vorbis_coslook_i(i32 %67)
  %69 = load i32*, i32** %22, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %19, align 4
  br label %40

76:                                               ; preds = %40
  store i32 0, i32* %19, align 4
  br label %77

77:                                               ; preds = %400, %76
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %401

81:                                               ; preds = %77
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %25, align 4
  store i32 46341, i32* %26, align 4
  store i32 46341, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %87 = load i32*, i32** %18, align 8
  %88 = load i32, i32* %25, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %30, align 4
  %92 = load i32*, i32** %22, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %30, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @labs(i32 %96)
  %98 = load i32, i32* %27, align 4
  %99 = mul nsw i32 %98, %97
  store i32 %99, i32* %27, align 4
  %100 = load i32*, i32** %22, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %30, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 @labs(i32 %104)
  %106 = load i32, i32* %26, align 4
  %107 = mul nsw i32 %106, %105
  store i32 %107, i32* %26, align 4
  store i32 3, i32* %24, align 4
  br label %108

108:                                              ; preds = %171, %81
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %174

112:                                              ; preds = %108
  %113 = load i32*, i32** @MLOOP_1, align 8
  %114 = load i32, i32* %26, align 4
  %115 = load i32, i32* %27, align 4
  %116 = or i32 %114, %115
  %117 = ashr i32 %116, 25
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %113, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %29, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %142, label %122

122:                                              ; preds = %112
  %123 = load i32*, i32** @MLOOP_2, align 8
  %124 = load i32, i32* %26, align 4
  %125 = load i32, i32* %27, align 4
  %126 = or i32 %124, %125
  %127 = ashr i32 %126, 19
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %29, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %122
  %133 = load i32*, i32** @MLOOP_3, align 8
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %27, align 4
  %136 = or i32 %134, %135
  %137 = ashr i32 %136, 16
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %29, align 4
  br label %141

141:                                              ; preds = %132, %122
  br label %142

142:                                              ; preds = %141, %112
  %143 = load i32, i32* %27, align 4
  %144 = load i32, i32* %29, align 4
  %145 = ashr i32 %143, %144
  %146 = load i32*, i32** %22, align 8
  %147 = load i32, i32* %24, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %30, align 4
  %153 = sub nsw i32 %151, %152
  %154 = call i32 @labs(i32 %153)
  %155 = mul nsw i32 %145, %154
  store i32 %155, i32* %27, align 4
  %156 = load i32, i32* %26, align 4
  %157 = load i32, i32* %29, align 4
  %158 = ashr i32 %156, %157
  %159 = load i32*, i32** %22, align 8
  %160 = load i32, i32* %24, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %30, align 4
  %165 = sub nsw i32 %163, %164
  %166 = call i32 @labs(i32 %165)
  %167 = mul nsw i32 %158, %166
  store i32 %167, i32* %26, align 4
  %168 = load i32, i32* %29, align 4
  %169 = load i32, i32* %28, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %28, align 4
  br label %171

171:                                              ; preds = %142
  %172 = load i32, i32* %24, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %24, align 4
  br label %108

174:                                              ; preds = %108
  %175 = load i32*, i32** @MLOOP_1, align 8
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* %27, align 4
  %178 = or i32 %176, %177
  %179 = ashr i32 %178, 25
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %29, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %204, label %184

184:                                              ; preds = %174
  %185 = load i32*, i32** @MLOOP_2, align 8
  %186 = load i32, i32* %26, align 4
  %187 = load i32, i32* %27, align 4
  %188 = or i32 %186, %187
  %189 = ashr i32 %188, 19
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %185, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %29, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %184
  %195 = load i32*, i32** @MLOOP_3, align 8
  %196 = load i32, i32* %26, align 4
  %197 = load i32, i32* %27, align 4
  %198 = or i32 %196, %197
  %199 = ashr i32 %198, 16
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %195, i64 %200
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %29, align 4
  br label %203

203:                                              ; preds = %194, %184
  br label %204

204:                                              ; preds = %203, %174
  %205 = load i32, i32* %15, align 4
  %206 = and i32 %205, 1
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %296

208:                                              ; preds = %204
  %209 = load i32, i32* %27, align 4
  %210 = load i32, i32* %29, align 4
  %211 = ashr i32 %209, %210
  %212 = load i32*, i32** %22, align 8
  %213 = load i32, i32* %24, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %30, align 4
  %219 = sub nsw i32 %217, %218
  %220 = call i32 @labs(i32 %219)
  %221 = mul nsw i32 %211, %220
  store i32 %221, i32* %27, align 4
  %222 = load i32, i32* %26, align 4
  %223 = load i32, i32* %29, align 4
  %224 = ashr i32 %222, %223
  %225 = shl i32 %224, 14
  store i32 %225, i32* %26, align 4
  %226 = load i32, i32* %29, align 4
  %227 = load i32, i32* %28, align 4
  %228 = add nsw i32 %227, %226
  store i32 %228, i32* %28, align 4
  %229 = load i32*, i32** @MLOOP_1, align 8
  %230 = load i32, i32* %26, align 4
  %231 = load i32, i32* %27, align 4
  %232 = or i32 %230, %231
  %233 = ashr i32 %232, 25
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %229, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %29, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %258, label %238

238:                                              ; preds = %208
  %239 = load i32*, i32** @MLOOP_2, align 8
  %240 = load i32, i32* %26, align 4
  %241 = load i32, i32* %27, align 4
  %242 = or i32 %240, %241
  %243 = ashr i32 %242, 19
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %239, i64 %244
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %29, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %257, label %248

248:                                              ; preds = %238
  %249 = load i32*, i32** @MLOOP_3, align 8
  %250 = load i32, i32* %26, align 4
  %251 = load i32, i32* %27, align 4
  %252 = or i32 %250, %251
  %253 = ashr i32 %252, 16
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %249, i64 %254
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %29, align 4
  br label %257

257:                                              ; preds = %248, %238
  br label %258

258:                                              ; preds = %257, %208
  %259 = load i32, i32* %29, align 4
  %260 = load i32, i32* %26, align 4
  %261 = ashr i32 %260, %259
  store i32 %261, i32* %26, align 4
  %262 = load i32, i32* %29, align 4
  %263 = load i32, i32* %27, align 4
  %264 = ashr i32 %263, %262
  store i32 %264, i32* %27, align 4
  %265 = load i32, i32* %29, align 4
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  %268 = ashr i32 %267, 1
  %269 = mul nsw i32 14, %268
  %270 = sub nsw i32 %265, %269
  %271 = load i32, i32* %28, align 4
  %272 = add nsw i32 %271, %270
  store i32 %272, i32* %28, align 4
  %273 = load i32, i32* %26, align 4
  %274 = load i32, i32* %26, align 4
  %275 = mul nsw i32 %273, %274
  %276 = ashr i32 %275, 16
  store i32 %276, i32* %26, align 4
  %277 = load i32, i32* %27, align 4
  %278 = load i32, i32* %27, align 4
  %279 = mul nsw i32 %277, %278
  %280 = ashr i32 %279, 16
  store i32 %280, i32* %27, align 4
  %281 = load i32, i32* %28, align 4
  %282 = mul nsw i32 %281, 2
  %283 = load i32, i32* %15, align 4
  %284 = add nsw i32 %282, %283
  store i32 %284, i32* %28, align 4
  %285 = load i32, i32* %30, align 4
  %286 = load i32, i32* %30, align 4
  %287 = mul nsw i32 %285, %286
  %288 = ashr i32 %287, 14
  %289 = sub nsw i32 16384, %288
  %290 = load i32, i32* %26, align 4
  %291 = mul nsw i32 %290, %289
  store i32 %291, i32* %26, align 4
  %292 = load i32, i32* %26, align 4
  %293 = ashr i32 %292, 14
  %294 = load i32, i32* %27, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %27, align 4
  br label %333

296:                                              ; preds = %204
  %297 = load i32, i32* %29, align 4
  %298 = load i32, i32* %26, align 4
  %299 = ashr i32 %298, %297
  store i32 %299, i32* %26, align 4
  %300 = load i32, i32* %29, align 4
  %301 = load i32, i32* %27, align 4
  %302 = ashr i32 %301, %300
  store i32 %302, i32* %27, align 4
  %303 = load i32, i32* %29, align 4
  %304 = load i32, i32* %15, align 4
  %305 = mul nsw i32 7, %304
  %306 = sub nsw i32 %303, %305
  %307 = load i32, i32* %28, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %28, align 4
  %309 = load i32, i32* %26, align 4
  %310 = load i32, i32* %26, align 4
  %311 = mul nsw i32 %309, %310
  %312 = ashr i32 %311, 16
  store i32 %312, i32* %26, align 4
  %313 = load i32, i32* %27, align 4
  %314 = load i32, i32* %27, align 4
  %315 = mul nsw i32 %313, %314
  %316 = ashr i32 %315, 16
  store i32 %316, i32* %27, align 4
  %317 = load i32, i32* %28, align 4
  %318 = mul nsw i32 %317, 2
  %319 = load i32, i32* %15, align 4
  %320 = add nsw i32 %318, %319
  store i32 %320, i32* %28, align 4
  %321 = load i32, i32* %30, align 4
  %322 = sub nsw i32 16384, %321
  %323 = load i32, i32* %26, align 4
  %324 = mul nsw i32 %323, %322
  store i32 %324, i32* %26, align 4
  %325 = load i32, i32* %30, align 4
  %326 = add nsw i32 16384, %325
  %327 = load i32, i32* %27, align 4
  %328 = mul nsw i32 %327, %326
  store i32 %328, i32* %27, align 4
  %329 = load i32, i32* %27, align 4
  %330 = load i32, i32* %26, align 4
  %331 = add nsw i32 %329, %330
  %332 = ashr i32 %331, 14
  store i32 %332, i32* %27, align 4
  br label %333

333:                                              ; preds = %296, %258
  %334 = load i32, i32* %27, align 4
  %335 = and i32 %334, -65536
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %333
  %338 = load i32, i32* %27, align 4
  %339 = ashr i32 %338, 1
  store i32 %339, i32* %27, align 4
  %340 = load i32, i32* %28, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %28, align 4
  br label %359

342:                                              ; preds = %333
  br label %343

343:                                              ; preds = %353, %342
  %344 = load i32, i32* %27, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %351

346:                                              ; preds = %343
  %347 = load i32, i32* %27, align 4
  %348 = and i32 %347, 32768
  %349 = icmp ne i32 %348, 0
  %350 = xor i1 %349, true
  br label %351

351:                                              ; preds = %346, %343
  %352 = phi i1 [ false, %343 ], [ %350, %346 ]
  br i1 %352, label %353, label %358

353:                                              ; preds = %351
  %354 = load i32, i32* %27, align 4
  %355 = shl i32 %354, 1
  store i32 %355, i32* %27, align 4
  %356 = load i32, i32* %28, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %28, align 4
  br label %343

358:                                              ; preds = %351
  br label %359

359:                                              ; preds = %358, %337
  %360 = load i32, i32* %21, align 4
  %361 = load i32, i32* %27, align 4
  %362 = load i32, i32* %28, align 4
  %363 = call i32 @vorbis_invsqlook_i(i32 %361, i32 %362)
  %364 = mul nsw i32 %360, %363
  %365 = load i32, i32* %20, align 4
  %366 = sub nsw i32 %364, %365
  %367 = call i32 @vorbis_fromdBlook_i(i32 %366)
  store i32 %367, i32* %16, align 4
  %368 = load i32*, i32** %10, align 8
  %369 = load i32, i32* %19, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %16, align 4
  %374 = call i32 @MULT31_SHIFT15(i32 %372, i32 %373)
  %375 = load i32*, i32** %10, align 8
  %376 = load i32, i32* %19, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  store i32 %374, i32* %378, align 4
  br label %379

379:                                              ; preds = %388, %359
  %380 = load i32*, i32** %11, align 8
  %381 = load i32, i32* %19, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %19, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %380, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %25, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %400

388:                                              ; preds = %379
  %389 = load i32*, i32** %10, align 8
  %390 = load i32, i32* %19, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %16, align 4
  %395 = call i32 @MULT31_SHIFT15(i32 %393, i32 %394)
  %396 = load i32*, i32** %10, align 8
  %397 = load i32, i32* %19, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  store i32 %395, i32* %399, align 4
  br label %379

400:                                              ; preds = %379
  br label %77

401:                                              ; preds = %59, %77
  ret void
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @MULT32(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vorbis_coslook_i(i32) #1

declare dso_local i32 @labs(i32) #1

declare dso_local i32 @vorbis_fromdBlook_i(i32) #1

declare dso_local i32 @vorbis_invsqlook_i(i32, i32) #1

declare dso_local i32 @MULT31_SHIFT15(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
