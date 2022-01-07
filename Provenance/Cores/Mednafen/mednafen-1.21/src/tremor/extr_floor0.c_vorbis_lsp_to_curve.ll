; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_floor0.c_vorbis_lsp_to_curve.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_floor0.c_vorbis_lsp_to_curve.c"
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
  br label %407

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

77:                                               ; preds = %406, %76
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %407

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
  store i32 1, i32* %24, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %180

94:                                               ; preds = %81
  %95 = load i32*, i32** %22, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %30, align 4
  %99 = sub nsw i32 %97, %98
  %100 = call i32 @labs(i32 %99)
  %101 = load i32, i32* %27, align 4
  %102 = mul nsw i32 %101, %100
  store i32 %102, i32* %27, align 4
  %103 = load i32*, i32** %22, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %30, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @labs(i32 %107)
  %109 = load i32, i32* %26, align 4
  %110 = mul nsw i32 %109, %108
  store i32 %110, i32* %26, align 4
  %111 = load i32, i32* %24, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %24, align 4
  br label %113

113:                                              ; preds = %176, %94
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %179

117:                                              ; preds = %113
  %118 = load i32*, i32** @MLOOP_1, align 8
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %27, align 4
  %121 = or i32 %119, %120
  %122 = ashr i32 %121, 25
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %118, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %29, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %147, label %127

127:                                              ; preds = %117
  %128 = load i32*, i32** @MLOOP_2, align 8
  %129 = load i32, i32* %26, align 4
  %130 = load i32, i32* %27, align 4
  %131 = or i32 %129, %130
  %132 = ashr i32 %131, 19
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %128, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %29, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %127
  %138 = load i32*, i32** @MLOOP_3, align 8
  %139 = load i32, i32* %26, align 4
  %140 = load i32, i32* %27, align 4
  %141 = or i32 %139, %140
  %142 = ashr i32 %141, 16
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %29, align 4
  br label %146

146:                                              ; preds = %137, %127
  br label %147

147:                                              ; preds = %146, %117
  %148 = load i32, i32* %27, align 4
  %149 = load i32, i32* %29, align 4
  %150 = ashr i32 %148, %149
  %151 = load i32*, i32** %22, align 8
  %152 = load i32, i32* %24, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %30, align 4
  %158 = sub nsw i32 %156, %157
  %159 = call i32 @labs(i32 %158)
  %160 = mul nsw i32 %150, %159
  store i32 %160, i32* %27, align 4
  %161 = load i32, i32* %26, align 4
  %162 = load i32, i32* %29, align 4
  %163 = ashr i32 %161, %162
  %164 = load i32*, i32** %22, align 8
  %165 = load i32, i32* %24, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %30, align 4
  %170 = sub nsw i32 %168, %169
  %171 = call i32 @labs(i32 %170)
  %172 = mul nsw i32 %163, %171
  store i32 %172, i32* %26, align 4
  %173 = load i32, i32* %29, align 4
  %174 = load i32, i32* %28, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %28, align 4
  br label %176

176:                                              ; preds = %147
  %177 = load i32, i32* %24, align 4
  %178 = add nsw i32 %177, 2
  store i32 %178, i32* %24, align 4
  br label %113

179:                                              ; preds = %113
  br label %180

180:                                              ; preds = %179, %81
  %181 = load i32*, i32** @MLOOP_1, align 8
  %182 = load i32, i32* %26, align 4
  %183 = load i32, i32* %27, align 4
  %184 = or i32 %182, %183
  %185 = ashr i32 %184, 25
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %181, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %29, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %210, label %190

190:                                              ; preds = %180
  %191 = load i32*, i32** @MLOOP_2, align 8
  %192 = load i32, i32* %26, align 4
  %193 = load i32, i32* %27, align 4
  %194 = or i32 %192, %193
  %195 = ashr i32 %194, 19
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %191, i64 %196
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %29, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %190
  %201 = load i32*, i32** @MLOOP_3, align 8
  %202 = load i32, i32* %26, align 4
  %203 = load i32, i32* %27, align 4
  %204 = or i32 %202, %203
  %205 = ashr i32 %204, 16
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %201, i64 %206
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %29, align 4
  br label %209

209:                                              ; preds = %200, %190
  br label %210

210:                                              ; preds = %209, %180
  %211 = load i32, i32* %15, align 4
  %212 = and i32 %211, 1
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %302

214:                                              ; preds = %210
  %215 = load i32, i32* %27, align 4
  %216 = load i32, i32* %29, align 4
  %217 = ashr i32 %215, %216
  %218 = load i32*, i32** %22, align 8
  %219 = load i32, i32* %24, align 4
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %30, align 4
  %225 = sub nsw i32 %223, %224
  %226 = call i32 @labs(i32 %225)
  %227 = mul nsw i32 %217, %226
  store i32 %227, i32* %27, align 4
  %228 = load i32, i32* %26, align 4
  %229 = load i32, i32* %29, align 4
  %230 = ashr i32 %228, %229
  %231 = shl i32 %230, 14
  store i32 %231, i32* %26, align 4
  %232 = load i32, i32* %29, align 4
  %233 = load i32, i32* %28, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %28, align 4
  %235 = load i32*, i32** @MLOOP_1, align 8
  %236 = load i32, i32* %26, align 4
  %237 = load i32, i32* %27, align 4
  %238 = or i32 %236, %237
  %239 = ashr i32 %238, 25
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %235, i64 %240
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %29, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %264, label %244

244:                                              ; preds = %214
  %245 = load i32*, i32** @MLOOP_2, align 8
  %246 = load i32, i32* %26, align 4
  %247 = load i32, i32* %27, align 4
  %248 = or i32 %246, %247
  %249 = ashr i32 %248, 19
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %245, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %29, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %263, label %254

254:                                              ; preds = %244
  %255 = load i32*, i32** @MLOOP_3, align 8
  %256 = load i32, i32* %26, align 4
  %257 = load i32, i32* %27, align 4
  %258 = or i32 %256, %257
  %259 = ashr i32 %258, 16
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %255, i64 %260
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %29, align 4
  br label %263

263:                                              ; preds = %254, %244
  br label %264

264:                                              ; preds = %263, %214
  %265 = load i32, i32* %29, align 4
  %266 = load i32, i32* %26, align 4
  %267 = ashr i32 %266, %265
  store i32 %267, i32* %26, align 4
  %268 = load i32, i32* %29, align 4
  %269 = load i32, i32* %27, align 4
  %270 = ashr i32 %269, %268
  store i32 %270, i32* %27, align 4
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %15, align 4
  %273 = add nsw i32 %272, 1
  %274 = ashr i32 %273, 1
  %275 = mul nsw i32 14, %274
  %276 = sub nsw i32 %271, %275
  %277 = load i32, i32* %28, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %28, align 4
  %279 = load i32, i32* %26, align 4
  %280 = load i32, i32* %26, align 4
  %281 = mul nsw i32 %279, %280
  %282 = ashr i32 %281, 16
  store i32 %282, i32* %26, align 4
  %283 = load i32, i32* %27, align 4
  %284 = load i32, i32* %27, align 4
  %285 = mul nsw i32 %283, %284
  %286 = ashr i32 %285, 16
  store i32 %286, i32* %27, align 4
  %287 = load i32, i32* %28, align 4
  %288 = mul nsw i32 %287, 2
  %289 = load i32, i32* %15, align 4
  %290 = add nsw i32 %288, %289
  store i32 %290, i32* %28, align 4
  %291 = load i32, i32* %30, align 4
  %292 = load i32, i32* %30, align 4
  %293 = mul nsw i32 %291, %292
  %294 = ashr i32 %293, 14
  %295 = sub nsw i32 16384, %294
  %296 = load i32, i32* %26, align 4
  %297 = mul nsw i32 %296, %295
  store i32 %297, i32* %26, align 4
  %298 = load i32, i32* %26, align 4
  %299 = ashr i32 %298, 14
  %300 = load i32, i32* %27, align 4
  %301 = add nsw i32 %300, %299
  store i32 %301, i32* %27, align 4
  br label %339

302:                                              ; preds = %210
  %303 = load i32, i32* %29, align 4
  %304 = load i32, i32* %26, align 4
  %305 = ashr i32 %304, %303
  store i32 %305, i32* %26, align 4
  %306 = load i32, i32* %29, align 4
  %307 = load i32, i32* %27, align 4
  %308 = ashr i32 %307, %306
  store i32 %308, i32* %27, align 4
  %309 = load i32, i32* %29, align 4
  %310 = load i32, i32* %15, align 4
  %311 = mul nsw i32 7, %310
  %312 = sub nsw i32 %309, %311
  %313 = load i32, i32* %28, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* %28, align 4
  %315 = load i32, i32* %26, align 4
  %316 = load i32, i32* %26, align 4
  %317 = mul nsw i32 %315, %316
  %318 = ashr i32 %317, 16
  store i32 %318, i32* %26, align 4
  %319 = load i32, i32* %27, align 4
  %320 = load i32, i32* %27, align 4
  %321 = mul nsw i32 %319, %320
  %322 = ashr i32 %321, 16
  store i32 %322, i32* %27, align 4
  %323 = load i32, i32* %28, align 4
  %324 = mul nsw i32 %323, 2
  %325 = load i32, i32* %15, align 4
  %326 = add nsw i32 %324, %325
  store i32 %326, i32* %28, align 4
  %327 = load i32, i32* %30, align 4
  %328 = sub nsw i32 16384, %327
  %329 = load i32, i32* %26, align 4
  %330 = mul nsw i32 %329, %328
  store i32 %330, i32* %26, align 4
  %331 = load i32, i32* %30, align 4
  %332 = add nsw i32 16384, %331
  %333 = load i32, i32* %27, align 4
  %334 = mul nsw i32 %333, %332
  store i32 %334, i32* %27, align 4
  %335 = load i32, i32* %27, align 4
  %336 = load i32, i32* %26, align 4
  %337 = add nsw i32 %335, %336
  %338 = ashr i32 %337, 14
  store i32 %338, i32* %27, align 4
  br label %339

339:                                              ; preds = %302, %264
  %340 = load i32, i32* %27, align 4
  %341 = and i32 %340, -65536
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  %344 = load i32, i32* %27, align 4
  %345 = ashr i32 %344, 1
  store i32 %345, i32* %27, align 4
  %346 = load i32, i32* %28, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %28, align 4
  br label %365

348:                                              ; preds = %339
  br label %349

349:                                              ; preds = %359, %348
  %350 = load i32, i32* %27, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %349
  %353 = load i32, i32* %27, align 4
  %354 = and i32 %353, 32768
  %355 = icmp ne i32 %354, 0
  %356 = xor i1 %355, true
  br label %357

357:                                              ; preds = %352, %349
  %358 = phi i1 [ false, %349 ], [ %356, %352 ]
  br i1 %358, label %359, label %364

359:                                              ; preds = %357
  %360 = load i32, i32* %27, align 4
  %361 = shl i32 %360, 1
  store i32 %361, i32* %27, align 4
  %362 = load i32, i32* %28, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %28, align 4
  br label %349

364:                                              ; preds = %357
  br label %365

365:                                              ; preds = %364, %343
  %366 = load i32, i32* %21, align 4
  %367 = load i32, i32* %27, align 4
  %368 = load i32, i32* %28, align 4
  %369 = call i32 @vorbis_invsqlook_i(i32 %367, i32 %368)
  %370 = mul nsw i32 %366, %369
  %371 = load i32, i32* %20, align 4
  %372 = sub nsw i32 %370, %371
  %373 = call i32 @vorbis_fromdBlook_i(i32 %372)
  store i32 %373, i32* %16, align 4
  %374 = load i32*, i32** %10, align 8
  %375 = load i32, i32* %19, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %16, align 4
  %380 = call i32 @MULT31_SHIFT15(i32 %378, i32 %379)
  %381 = load i32*, i32** %10, align 8
  %382 = load i32, i32* %19, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 %380, i32* %384, align 4
  br label %385

385:                                              ; preds = %394, %365
  %386 = load i32*, i32** %11, align 8
  %387 = load i32, i32* %19, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %19, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %386, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %25, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %406

394:                                              ; preds = %385
  %395 = load i32*, i32** %10, align 8
  %396 = load i32, i32* %19, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %16, align 4
  %401 = call i32 @MULT31_SHIFT15(i32 %399, i32 %400)
  %402 = load i32*, i32** %10, align 8
  %403 = load i32, i32* %19, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  store i32 %401, i32* %405, align 4
  br label %385

406:                                              ; preds = %385
  br label %77

407:                                              ; preds = %59, %77
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
