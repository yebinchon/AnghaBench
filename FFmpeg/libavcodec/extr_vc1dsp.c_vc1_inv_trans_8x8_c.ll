; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1dsp.c_vc1_inv_trans_8x8_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1dsp.c_vc1_inv_trans_8x8_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vc1_inv_trans_8x8_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc1_inv_trans_8x8_c(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [64 x i32], align 16
  store i32* %0, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  store i32* %15, i32** %12, align 8
  %16 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  store i32* %16, i32** %13, align 8
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %197, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %200

20:                                               ; preds = %17
  %21 = load i32*, i32** %12, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 32
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = mul nsw i32 12, %27
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %4, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 32
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = mul nsw i32 12, %36
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %5, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 16
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 16, %41
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 48
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 6, %45
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %6, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 16
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 6, %50
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 48
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 16, %54
  %56 = sub nsw i32 %51, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %11, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 16, %71
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 24
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 15, %75
  %77 = add nsw i32 %72, %76
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 40
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 9, %80
  %82 = add nsw i32 %77, %81
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 56
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 4, %85
  %87 = add nsw i32 %82, %86
  store i32 %87, i32* %4, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 15, %90
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 24
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 4, %94
  %96 = sub nsw i32 %91, %95
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 40
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 16, %99
  %101 = sub nsw i32 %96, %100
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 56
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 9, %104
  %106 = sub nsw i32 %101, %105
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 8
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 9, %109
  %111 = load i32*, i32** %12, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 24
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 16, %113
  %115 = sub nsw i32 %110, %114
  %116 = load i32*, i32** %12, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 40
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 4, %118
  %120 = add nsw i32 %115, %119
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 56
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 15, %123
  %125 = add nsw i32 %120, %124
  store i32 %125, i32* %6, align 4
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 8
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 4, %128
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 24
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 9, %132
  %134 = sub nsw i32 %129, %133
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 40
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 15, %137
  %139 = add nsw i32 %134, %138
  %140 = load i32*, i32** %12, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 56
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 16, %142
  %144 = sub nsw i32 %139, %143
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %145, %146
  %148 = ashr i32 %147, 3
  %149 = load i32*, i32** %13, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %151, %152
  %154 = ashr i32 %153, 3
  %155 = load i32*, i32** %13, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %157, %158
  %160 = ashr i32 %159, 3
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %163, %164
  %166 = ashr i32 %165, 3
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 3
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %7, align 4
  %171 = sub nsw i32 %169, %170
  %172 = ashr i32 %171, 3
  %173 = load i32*, i32** %13, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %6, align 4
  %177 = sub nsw i32 %175, %176
  %178 = ashr i32 %177, 3
  %179 = load i32*, i32** %13, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 5
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %5, align 4
  %183 = sub nsw i32 %181, %182
  %184 = ashr i32 %183, 3
  %185 = load i32*, i32** %13, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %4, align 4
  %189 = sub nsw i32 %187, %188
  %190 = ashr i32 %189, 3
  %191 = load i32*, i32** %13, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 7
  store i32 %190, i32* %192, align 4
  %193 = load i32*, i32** %12, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  store i32* %194, i32** %12, align 8
  %195 = load i32*, i32** %13, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 8
  store i32* %196, i32** %13, align 8
  br label %197

197:                                              ; preds = %20
  %198 = load i32, i32* %3, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %3, align 4
  br label %17

200:                                              ; preds = %17
  %201 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  store i32* %201, i32** %12, align 8
  %202 = load i32*, i32** %2, align 8
  store i32* %202, i32** %13, align 8
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %387, %200
  %204 = load i32, i32* %3, align 4
  %205 = icmp slt i32 %204, 8
  br i1 %205, label %206, label %390

206:                                              ; preds = %203
  %207 = load i32*, i32** %12, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 32
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %209, %212
  %214 = mul nsw i32 12, %213
  %215 = add nsw i32 %214, 64
  store i32 %215, i32* %4, align 4
  %216 = load i32*, i32** %12, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %12, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 32
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %218, %221
  %223 = mul nsw i32 12, %222
  %224 = add nsw i32 %223, 64
  store i32 %224, i32* %5, align 4
  %225 = load i32*, i32** %12, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 16
  %227 = load i32, i32* %226, align 4
  %228 = mul nsw i32 16, %227
  %229 = load i32*, i32** %12, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 48
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 6, %231
  %233 = add nsw i32 %228, %232
  store i32 %233, i32* %6, align 4
  %234 = load i32*, i32** %12, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 16
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 6, %236
  %238 = load i32*, i32** %12, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 48
  %240 = load i32, i32* %239, align 4
  %241 = mul nsw i32 16, %240
  %242 = sub nsw i32 %237, %241
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %243, %244
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %246, %247
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* %7, align 4
  %251 = sub nsw i32 %249, %250
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* %6, align 4
  %254 = sub nsw i32 %252, %253
  store i32 %254, i32* %11, align 4
  %255 = load i32*, i32** %12, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 8
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 16, %257
  %259 = load i32*, i32** %12, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 24
  %261 = load i32, i32* %260, align 4
  %262 = mul nsw i32 15, %261
  %263 = add nsw i32 %258, %262
  %264 = load i32*, i32** %12, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 40
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 9, %266
  %268 = add nsw i32 %263, %267
  %269 = load i32*, i32** %12, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 56
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 4, %271
  %273 = add nsw i32 %268, %272
  store i32 %273, i32* %4, align 4
  %274 = load i32*, i32** %12, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 8
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 15, %276
  %278 = load i32*, i32** %12, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 24
  %280 = load i32, i32* %279, align 4
  %281 = mul nsw i32 4, %280
  %282 = sub nsw i32 %277, %281
  %283 = load i32*, i32** %12, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 40
  %285 = load i32, i32* %284, align 4
  %286 = mul nsw i32 16, %285
  %287 = sub nsw i32 %282, %286
  %288 = load i32*, i32** %12, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 56
  %290 = load i32, i32* %289, align 4
  %291 = mul nsw i32 9, %290
  %292 = sub nsw i32 %287, %291
  store i32 %292, i32* %5, align 4
  %293 = load i32*, i32** %12, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 8
  %295 = load i32, i32* %294, align 4
  %296 = mul nsw i32 9, %295
  %297 = load i32*, i32** %12, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 24
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 16, %299
  %301 = sub nsw i32 %296, %300
  %302 = load i32*, i32** %12, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 40
  %304 = load i32, i32* %303, align 4
  %305 = mul nsw i32 4, %304
  %306 = add nsw i32 %301, %305
  %307 = load i32*, i32** %12, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 56
  %309 = load i32, i32* %308, align 4
  %310 = mul nsw i32 15, %309
  %311 = add nsw i32 %306, %310
  store i32 %311, i32* %6, align 4
  %312 = load i32*, i32** %12, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 8
  %314 = load i32, i32* %313, align 4
  %315 = mul nsw i32 4, %314
  %316 = load i32*, i32** %12, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 24
  %318 = load i32, i32* %317, align 4
  %319 = mul nsw i32 9, %318
  %320 = sub nsw i32 %315, %319
  %321 = load i32*, i32** %12, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 40
  %323 = load i32, i32* %322, align 4
  %324 = mul nsw i32 15, %323
  %325 = add nsw i32 %320, %324
  %326 = load i32*, i32** %12, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 56
  %328 = load i32, i32* %327, align 4
  %329 = mul nsw i32 16, %328
  %330 = sub nsw i32 %325, %329
  store i32 %330, i32* %7, align 4
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* %4, align 4
  %333 = add nsw i32 %331, %332
  %334 = ashr i32 %333, 7
  %335 = load i32*, i32** %13, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 0
  store i32 %334, i32* %336, align 4
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* %5, align 4
  %339 = add nsw i32 %337, %338
  %340 = ashr i32 %339, 7
  %341 = load i32*, i32** %13, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 8
  store i32 %340, i32* %342, align 4
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* %6, align 4
  %345 = add nsw i32 %343, %344
  %346 = ashr i32 %345, 7
  %347 = load i32*, i32** %13, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 16
  store i32 %346, i32* %348, align 4
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* %7, align 4
  %351 = add nsw i32 %349, %350
  %352 = ashr i32 %351, 7
  %353 = load i32*, i32** %13, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 24
  store i32 %352, i32* %354, align 4
  %355 = load i32, i32* %11, align 4
  %356 = load i32, i32* %7, align 4
  %357 = sub nsw i32 %355, %356
  %358 = add nsw i32 %357, 1
  %359 = ashr i32 %358, 7
  %360 = load i32*, i32** %13, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 32
  store i32 %359, i32* %361, align 4
  %362 = load i32, i32* %10, align 4
  %363 = load i32, i32* %6, align 4
  %364 = sub nsw i32 %362, %363
  %365 = add nsw i32 %364, 1
  %366 = ashr i32 %365, 7
  %367 = load i32*, i32** %13, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 40
  store i32 %366, i32* %368, align 4
  %369 = load i32, i32* %9, align 4
  %370 = load i32, i32* %5, align 4
  %371 = sub nsw i32 %369, %370
  %372 = add nsw i32 %371, 1
  %373 = ashr i32 %372, 7
  %374 = load i32*, i32** %13, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 48
  store i32 %373, i32* %375, align 4
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* %4, align 4
  %378 = sub nsw i32 %376, %377
  %379 = add nsw i32 %378, 1
  %380 = ashr i32 %379, 7
  %381 = load i32*, i32** %13, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 56
  store i32 %380, i32* %382, align 4
  %383 = load i32*, i32** %12, align 8
  %384 = getelementptr inbounds i32, i32* %383, i32 1
  store i32* %384, i32** %12, align 8
  %385 = load i32*, i32** %13, align 8
  %386 = getelementptr inbounds i32, i32* %385, i32 1
  store i32* %386, i32** %13, align 8
  br label %387

387:                                              ; preds = %206
  %388 = load i32, i32* %3, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %3, align 4
  br label %203

390:                                              ; preds = %203
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
