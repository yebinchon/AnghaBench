; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_spp.c_store_slice16_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_spp.c_store_slice16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32, [8 x i32]*, i32)* @store_slice16_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_slice16_c(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, [8 x i32]* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i32]*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store [8 x i32]* %7, [8 x i32]** %17, align 8
  store i32 %8, i32* %18, align 4
  %24 = load i32, i32* %18, align 4
  %25 = shl i32 -1, %24
  store i32 %25, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %26

26:                                               ; preds = %357, %9
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %360

30:                                               ; preds = %26
  %31 = load [8 x i32]*, [8 x i32]** %17, align 8
  %32 = load i32, i32* %19, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %31, i64 %33
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 0, i64 0
  store i32* %35, i32** %22, align 8
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %353, %30
  %37 = load i32, i32* %20, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %356

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %13, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  %48 = add nsw i32 %47, 0
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = shl i32 %51, %52
  %54 = load i32*, i32** %22, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 1
  %58 = add nsw i32 %53, %57
  %59 = ashr i32 %58, 5
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %21, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %41
  %65 = load i32, i32* %23, align 4
  %66 = ashr i32 %65, 31
  %67 = xor i32 %66, -1
  store i32 %67, i32* %23, align 4
  br label %68

68:                                               ; preds = %64, %41
  %69 = load i32, i32* %23, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  %76 = add nsw i32 %75, 0
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %70, i64 %77
  store i32 %69, i32* %78, align 4
  br label %79

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 %82, %85
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %81, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %16, align 4
  %92 = shl i32 %90, %91
  %93 = load i32*, i32** %22, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 1
  %97 = add nsw i32 %92, %96
  %98 = ashr i32 %97, 5
  store i32 %98, i32* %23, align 4
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* %21, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %80
  %104 = load i32, i32* %23, align 4
  %105 = ashr i32 %104, 31
  %106 = xor i32 %105, -1
  store i32 %106, i32* %23, align 4
  br label %107

107:                                              ; preds = %103, %80
  %108 = load i32, i32* %23, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %12, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %110, %113
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %109, i64 %116
  store i32 %108, i32* %117, align 4
  br label %118

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %13, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %121, %124
  %126 = add nsw i32 %125, 2
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %120, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %16, align 4
  %131 = shl i32 %129, %130
  %132 = load i32*, i32** %22, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 1
  %136 = add nsw i32 %131, %135
  %137 = ashr i32 %136, 5
  store i32 %137, i32* %23, align 4
  %138 = load i32, i32* %23, align 4
  %139 = load i32, i32* %21, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %119
  %143 = load i32, i32* %23, align 4
  %144 = ashr i32 %143, 31
  %145 = xor i32 %144, -1
  store i32 %145, i32* %23, align 4
  br label %146

146:                                              ; preds = %142, %119
  %147 = load i32, i32* %23, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %12, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 %149, %152
  %154 = add nsw i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %148, i64 %155
  store i32 %147, i32* %156, align 4
  br label %157

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %13, align 4
  %163 = mul nsw i32 %161, %162
  %164 = add nsw i32 %160, %163
  %165 = add nsw i32 %164, 3
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %159, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %16, align 4
  %170 = shl i32 %168, %169
  %171 = load i32*, i32** %22, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 3
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 1
  %175 = add nsw i32 %170, %174
  %176 = ashr i32 %175, 5
  store i32 %176, i32* %23, align 4
  %177 = load i32, i32* %23, align 4
  %178 = load i32, i32* %21, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %158
  %182 = load i32, i32* %23, align 4
  %183 = ashr i32 %182, 31
  %184 = xor i32 %183, -1
  store i32 %184, i32* %23, align 4
  br label %185

185:                                              ; preds = %181, %158
  %186 = load i32, i32* %23, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %12, align 4
  %191 = mul nsw i32 %189, %190
  %192 = add nsw i32 %188, %191
  %193 = add nsw i32 %192, 3
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %187, i64 %194
  store i32 %186, i32* %195, align 4
  br label %196

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196
  %198 = load i32*, i32** %11, align 8
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %13, align 4
  %202 = mul nsw i32 %200, %201
  %203 = add nsw i32 %199, %202
  %204 = add nsw i32 %203, 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %198, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %16, align 4
  %209 = shl i32 %207, %208
  %210 = load i32*, i32** %22, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  %212 = load i32, i32* %211, align 4
  %213 = ashr i32 %212, 1
  %214 = add nsw i32 %209, %213
  %215 = ashr i32 %214, 5
  store i32 %215, i32* %23, align 4
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* %21, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %197
  %221 = load i32, i32* %23, align 4
  %222 = ashr i32 %221, 31
  %223 = xor i32 %222, -1
  store i32 %223, i32* %23, align 4
  br label %224

224:                                              ; preds = %220, %197
  %225 = load i32, i32* %23, align 4
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* %12, align 4
  %230 = mul nsw i32 %228, %229
  %231 = add nsw i32 %227, %230
  %232 = add nsw i32 %231, 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %226, i64 %233
  store i32 %225, i32* %234, align 4
  br label %235

235:                                              ; preds = %224
  br label %236

236:                                              ; preds = %235
  %237 = load i32*, i32** %11, align 8
  %238 = load i32, i32* %20, align 4
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %13, align 4
  %241 = mul nsw i32 %239, %240
  %242 = add nsw i32 %238, %241
  %243 = add nsw i32 %242, 5
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %237, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %16, align 4
  %248 = shl i32 %246, %247
  %249 = load i32*, i32** %22, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 5
  %251 = load i32, i32* %250, align 4
  %252 = ashr i32 %251, 1
  %253 = add nsw i32 %248, %252
  %254 = ashr i32 %253, 5
  store i32 %254, i32* %23, align 4
  %255 = load i32, i32* %23, align 4
  %256 = load i32, i32* %21, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %236
  %260 = load i32, i32* %23, align 4
  %261 = ashr i32 %260, 31
  %262 = xor i32 %261, -1
  store i32 %262, i32* %23, align 4
  br label %263

263:                                              ; preds = %259, %236
  %264 = load i32, i32* %23, align 4
  %265 = load i32*, i32** %10, align 8
  %266 = load i32, i32* %20, align 4
  %267 = load i32, i32* %19, align 4
  %268 = load i32, i32* %12, align 4
  %269 = mul nsw i32 %267, %268
  %270 = add nsw i32 %266, %269
  %271 = add nsw i32 %270, 5
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %265, i64 %272
  store i32 %264, i32* %273, align 4
  br label %274

274:                                              ; preds = %263
  br label %275

275:                                              ; preds = %274
  %276 = load i32*, i32** %11, align 8
  %277 = load i32, i32* %20, align 4
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %13, align 4
  %280 = mul nsw i32 %278, %279
  %281 = add nsw i32 %277, %280
  %282 = add nsw i32 %281, 6
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %276, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %16, align 4
  %287 = shl i32 %285, %286
  %288 = load i32*, i32** %22, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 6
  %290 = load i32, i32* %289, align 4
  %291 = ashr i32 %290, 1
  %292 = add nsw i32 %287, %291
  %293 = ashr i32 %292, 5
  store i32 %293, i32* %23, align 4
  %294 = load i32, i32* %23, align 4
  %295 = load i32, i32* %21, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %275
  %299 = load i32, i32* %23, align 4
  %300 = ashr i32 %299, 31
  %301 = xor i32 %300, -1
  store i32 %301, i32* %23, align 4
  br label %302

302:                                              ; preds = %298, %275
  %303 = load i32, i32* %23, align 4
  %304 = load i32*, i32** %10, align 8
  %305 = load i32, i32* %20, align 4
  %306 = load i32, i32* %19, align 4
  %307 = load i32, i32* %12, align 4
  %308 = mul nsw i32 %306, %307
  %309 = add nsw i32 %305, %308
  %310 = add nsw i32 %309, 6
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %304, i64 %311
  store i32 %303, i32* %312, align 4
  br label %313

313:                                              ; preds = %302
  br label %314

314:                                              ; preds = %313
  %315 = load i32*, i32** %11, align 8
  %316 = load i32, i32* %20, align 4
  %317 = load i32, i32* %19, align 4
  %318 = load i32, i32* %13, align 4
  %319 = mul nsw i32 %317, %318
  %320 = add nsw i32 %316, %319
  %321 = add nsw i32 %320, 7
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %315, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %16, align 4
  %326 = shl i32 %324, %325
  %327 = load i32*, i32** %22, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 7
  %329 = load i32, i32* %328, align 4
  %330 = ashr i32 %329, 1
  %331 = add nsw i32 %326, %330
  %332 = ashr i32 %331, 5
  store i32 %332, i32* %23, align 4
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* %21, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %314
  %338 = load i32, i32* %23, align 4
  %339 = ashr i32 %338, 31
  %340 = xor i32 %339, -1
  store i32 %340, i32* %23, align 4
  br label %341

341:                                              ; preds = %337, %314
  %342 = load i32, i32* %23, align 4
  %343 = load i32*, i32** %10, align 8
  %344 = load i32, i32* %20, align 4
  %345 = load i32, i32* %19, align 4
  %346 = load i32, i32* %12, align 4
  %347 = mul nsw i32 %345, %346
  %348 = add nsw i32 %344, %347
  %349 = add nsw i32 %348, 7
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %343, i64 %350
  store i32 %342, i32* %351, align 4
  br label %352

352:                                              ; preds = %341
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %20, align 4
  %355 = add nsw i32 %354, 8
  store i32 %355, i32* %20, align 4
  br label %36

356:                                              ; preds = %36
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %19, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %19, align 4
  br label %26

360:                                              ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
