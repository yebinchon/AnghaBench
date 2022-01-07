; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdsp.c_sbc_enc_process_input_8s.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdsp.c_sbc_enc_process_input_8s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBC_X_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32, i32)* @sbc_enc_process_input_8s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_enc_process_input_8s(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @SBC_X_BUFFER_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %44, %20
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, %16
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* @SBC_X_BUFFER_SIZE, align 4
  %32 = sub nsw i32 %31, 72
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, %16
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @memcpy(i32* %34, i32* %42, i32 288)
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load i32, i32* @SBC_X_BUFFER_SIZE, align 4
  %49 = sub nsw i32 %48, 72
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %5
  %51 = load i32, i32* %6, align 4
  %52 = srem i32 %51, 16
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %177

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 8
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 8
  store i32 %58, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %168, %54
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %171

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, %16
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 14, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 2, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = call i32 @AV_RN16(i32* %80)
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 12, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %11, align 4
  %90 = mul nsw i32 2, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = call i32 @AV_RN16(i32* %92)
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = mul nsw i32 0, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 2, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = call i32 @AV_RN16(i32* %104)
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = mul nsw i32 10, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %11, align 4
  %114 = mul nsw i32 2, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = call i32 @AV_RN16(i32* %116)
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 2, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %11, align 4
  %126 = mul nsw i32 2, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = call i32 @AV_RN16(i32* %128)
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 5
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %10, align 4
  %134 = mul nsw i32 8, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 2, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = call i32 @AV_RN16(i32* %140)
  %142 = load i32*, i32** %12, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 6
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %10, align 4
  %146 = mul nsw i32 4, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %11, align 4
  %150 = mul nsw i32 2, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = call i32 @AV_RN16(i32* %152)
  %154 = load i32*, i32** %12, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 7
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %10, align 4
  %158 = mul nsw i32 6, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %11, align 4
  %162 = mul nsw i32 2, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = call i32 @AV_RN16(i32* %164)
  %166 = load i32*, i32** %12, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 8
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %63
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %59

171:                                              ; preds = %59
  %172 = load i32, i32* %10, align 4
  %173 = mul nsw i32 16, %172
  %174 = load i32*, i32** %7, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %7, align 8
  br label %177

177:                                              ; preds = %171, %50
  br label %178

178:                                              ; preds = %393, %177
  %179 = load i32, i32* %9, align 4
  %180 = icmp sge i32 %179, 16
  br i1 %180, label %181, label %401

181:                                              ; preds = %178
  %182 = load i32, i32* %6, align 4
  %183 = sub nsw i32 %182, 16
  store i32 %183, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %184

184:                                              ; preds = %389, %181
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %392

188:                                              ; preds = %184
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %191, %16
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32* %196, i32** %13, align 8
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* %10, align 4
  %199 = mul nsw i32 30, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %11, align 4
  %203 = mul nsw i32 2, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = call i32 @AV_RN16(i32* %205)
  %207 = load i32*, i32** %13, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %206, i32* %208, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* %10, align 4
  %211 = mul nsw i32 14, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %11, align 4
  %215 = mul nsw i32 2, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = call i32 @AV_RN16(i32* %217)
  %219 = load i32*, i32** %13, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 %218, i32* %220, align 4
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* %10, align 4
  %223 = mul nsw i32 28, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %11, align 4
  %227 = mul nsw i32 2, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = call i32 @AV_RN16(i32* %229)
  %231 = load i32*, i32** %13, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  store i32 %230, i32* %232, align 4
  %233 = load i32*, i32** %7, align 8
  %234 = load i32, i32* %10, align 4
  %235 = mul nsw i32 16, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  %238 = load i32, i32* %11, align 4
  %239 = mul nsw i32 2, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = call i32 @AV_RN16(i32* %241)
  %243 = load i32*, i32** %13, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 3
  store i32 %242, i32* %244, align 4
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %10, align 4
  %247 = mul nsw i32 26, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %11, align 4
  %251 = mul nsw i32 2, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  %254 = call i32 @AV_RN16(i32* %253)
  %255 = load i32*, i32** %13, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 4
  store i32 %254, i32* %256, align 4
  %257 = load i32*, i32** %7, align 8
  %258 = load i32, i32* %10, align 4
  %259 = mul nsw i32 18, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32, i32* %11, align 4
  %263 = mul nsw i32 2, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = call i32 @AV_RN16(i32* %265)
  %267 = load i32*, i32** %13, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 5
  store i32 %266, i32* %268, align 4
  %269 = load i32*, i32** %7, align 8
  %270 = load i32, i32* %10, align 4
  %271 = mul nsw i32 24, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %11, align 4
  %275 = mul nsw i32 2, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %273, i64 %276
  %278 = call i32 @AV_RN16(i32* %277)
  %279 = load i32*, i32** %13, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 6
  store i32 %278, i32* %280, align 4
  %281 = load i32*, i32** %7, align 8
  %282 = load i32, i32* %10, align 4
  %283 = mul nsw i32 20, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32, i32* %11, align 4
  %287 = mul nsw i32 2, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %285, i64 %288
  %290 = call i32 @AV_RN16(i32* %289)
  %291 = load i32*, i32** %13, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 7
  store i32 %290, i32* %292, align 4
  %293 = load i32*, i32** %7, align 8
  %294 = load i32, i32* %10, align 4
  %295 = mul nsw i32 22, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %11, align 4
  %299 = mul nsw i32 2, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = call i32 @AV_RN16(i32* %301)
  %303 = load i32*, i32** %13, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 8
  store i32 %302, i32* %304, align 4
  %305 = load i32*, i32** %7, align 8
  %306 = load i32, i32* %10, align 4
  %307 = mul nsw i32 6, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  %310 = load i32, i32* %11, align 4
  %311 = mul nsw i32 2, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  %314 = call i32 @AV_RN16(i32* %313)
  %315 = load i32*, i32** %13, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 9
  store i32 %314, i32* %316, align 4
  %317 = load i32*, i32** %7, align 8
  %318 = load i32, i32* %10, align 4
  %319 = mul nsw i32 12, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  %322 = load i32, i32* %11, align 4
  %323 = mul nsw i32 2, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  %326 = call i32 @AV_RN16(i32* %325)
  %327 = load i32*, i32** %13, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 10
  store i32 %326, i32* %328, align 4
  %329 = load i32*, i32** %7, align 8
  %330 = load i32, i32* %10, align 4
  %331 = mul nsw i32 0, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %329, i64 %332
  %334 = load i32, i32* %11, align 4
  %335 = mul nsw i32 2, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = call i32 @AV_RN16(i32* %337)
  %339 = load i32*, i32** %13, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 11
  store i32 %338, i32* %340, align 4
  %341 = load i32*, i32** %7, align 8
  %342 = load i32, i32* %10, align 4
  %343 = mul nsw i32 10, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  %346 = load i32, i32* %11, align 4
  %347 = mul nsw i32 2, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  %350 = call i32 @AV_RN16(i32* %349)
  %351 = load i32*, i32** %13, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 12
  store i32 %350, i32* %352, align 4
  %353 = load i32*, i32** %7, align 8
  %354 = load i32, i32* %10, align 4
  %355 = mul nsw i32 2, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %353, i64 %356
  %358 = load i32, i32* %11, align 4
  %359 = mul nsw i32 2, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %357, i64 %360
  %362 = call i32 @AV_RN16(i32* %361)
  %363 = load i32*, i32** %13, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 13
  store i32 %362, i32* %364, align 4
  %365 = load i32*, i32** %7, align 8
  %366 = load i32, i32* %10, align 4
  %367 = mul nsw i32 8, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = load i32, i32* %11, align 4
  %371 = mul nsw i32 2, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  %374 = call i32 @AV_RN16(i32* %373)
  %375 = load i32*, i32** %13, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 14
  store i32 %374, i32* %376, align 4
  %377 = load i32*, i32** %7, align 8
  %378 = load i32, i32* %10, align 4
  %379 = mul nsw i32 4, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  %382 = load i32, i32* %11, align 4
  %383 = mul nsw i32 2, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %381, i64 %384
  %386 = call i32 @AV_RN16(i32* %385)
  %387 = load i32*, i32** %13, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 15
  store i32 %386, i32* %388, align 4
  br label %389

389:                                              ; preds = %188
  %390 = load i32, i32* %11, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %11, align 4
  br label %184

392:                                              ; preds = %184
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %9, align 4
  %395 = sub nsw i32 %394, 16
  store i32 %395, i32* %9, align 4
  %396 = load i32, i32* %10, align 4
  %397 = mul nsw i32 32, %396
  %398 = load i32*, i32** %7, align 8
  %399 = sext i32 %397 to i64
  %400 = getelementptr inbounds i32, i32* %398, i64 %399
  store i32* %400, i32** %7, align 8
  br label %178

401:                                              ; preds = %178
  %402 = load i32, i32* %9, align 4
  %403 = icmp eq i32 %402, 8
  br i1 %403, label %404, label %520

404:                                              ; preds = %401
  %405 = load i32, i32* %6, align 4
  %406 = sub nsw i32 %405, 8
  store i32 %406, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %407

407:                                              ; preds = %516, %404
  %408 = load i32, i32* %11, align 4
  %409 = load i32, i32* %10, align 4
  %410 = icmp slt i32 %408, %409
  br i1 %410, label %411, label %519

411:                                              ; preds = %407
  %412 = load i32*, i32** %8, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = mul nsw i64 %414, %16
  %416 = getelementptr inbounds i32, i32* %412, i64 %415
  %417 = load i32, i32* %6, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  store i32* %419, i32** %14, align 8
  %420 = load i32*, i32** %7, align 8
  %421 = load i32, i32* %10, align 4
  %422 = mul nsw i32 14, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %420, i64 %423
  %425 = load i32, i32* %11, align 4
  %426 = mul nsw i32 2, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %424, i64 %427
  %429 = call i32 @AV_RN16(i32* %428)
  %430 = load i32*, i32** %14, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 -7
  store i32 %429, i32* %431, align 4
  %432 = load i32*, i32** %7, align 8
  %433 = load i32, i32* %10, align 4
  %434 = mul nsw i32 6, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i32, i32* %432, i64 %435
  %437 = load i32, i32* %11, align 4
  %438 = mul nsw i32 2, %437
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %436, i64 %439
  %441 = call i32 @AV_RN16(i32* %440)
  %442 = load i32*, i32** %14, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 1
  store i32 %441, i32* %443, align 4
  %444 = load i32*, i32** %7, align 8
  %445 = load i32, i32* %10, align 4
  %446 = mul nsw i32 12, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %444, i64 %447
  %449 = load i32, i32* %11, align 4
  %450 = mul nsw i32 2, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %448, i64 %451
  %453 = call i32 @AV_RN16(i32* %452)
  %454 = load i32*, i32** %14, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 2
  store i32 %453, i32* %455, align 4
  %456 = load i32*, i32** %7, align 8
  %457 = load i32, i32* %10, align 4
  %458 = mul nsw i32 0, %457
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %456, i64 %459
  %461 = load i32, i32* %11, align 4
  %462 = mul nsw i32 2, %461
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %460, i64 %463
  %465 = call i32 @AV_RN16(i32* %464)
  %466 = load i32*, i32** %14, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 3
  store i32 %465, i32* %467, align 4
  %468 = load i32*, i32** %7, align 8
  %469 = load i32, i32* %10, align 4
  %470 = mul nsw i32 10, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %468, i64 %471
  %473 = load i32, i32* %11, align 4
  %474 = mul nsw i32 2, %473
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i32, i32* %472, i64 %475
  %477 = call i32 @AV_RN16(i32* %476)
  %478 = load i32*, i32** %14, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 4
  store i32 %477, i32* %479, align 4
  %480 = load i32*, i32** %7, align 8
  %481 = load i32, i32* %10, align 4
  %482 = mul nsw i32 2, %481
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %480, i64 %483
  %485 = load i32, i32* %11, align 4
  %486 = mul nsw i32 2, %485
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %484, i64 %487
  %489 = call i32 @AV_RN16(i32* %488)
  %490 = load i32*, i32** %14, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 5
  store i32 %489, i32* %491, align 4
  %492 = load i32*, i32** %7, align 8
  %493 = load i32, i32* %10, align 4
  %494 = mul nsw i32 8, %493
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %492, i64 %495
  %497 = load i32, i32* %11, align 4
  %498 = mul nsw i32 2, %497
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %496, i64 %499
  %501 = call i32 @AV_RN16(i32* %500)
  %502 = load i32*, i32** %14, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 6
  store i32 %501, i32* %503, align 4
  %504 = load i32*, i32** %7, align 8
  %505 = load i32, i32* %10, align 4
  %506 = mul nsw i32 4, %505
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %504, i64 %507
  %509 = load i32, i32* %11, align 4
  %510 = mul nsw i32 2, %509
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %508, i64 %511
  %513 = call i32 @AV_RN16(i32* %512)
  %514 = load i32*, i32** %14, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 7
  store i32 %513, i32* %515, align 4
  br label %516

516:                                              ; preds = %411
  %517 = load i32, i32* %11, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %11, align 4
  br label %407

519:                                              ; preds = %407
  br label %520

520:                                              ; preds = %519, %401
  %521 = load i32, i32* %6, align 4
  ret i32 %521
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_RN16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
