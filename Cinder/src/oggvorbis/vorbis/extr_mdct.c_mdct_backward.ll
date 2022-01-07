; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mdct.c_mdct_backward.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mdct.c_mdct_backward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdct_backward(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 2
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = getelementptr inbounds i32, i32* %26, i64 -7
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %11, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %12, align 8
  br label %41

41:                                               ; preds = %122, %3
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -4
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = sub nsw i32 %51, %58
  %60 = call i32 @MULT_NORM(i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %72, %75
  %77 = sub nsw i32 %69, %76
  %78 = call i32 @MULT_NORM(i32 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 0, %83
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = sub nsw i32 %88, %95
  %97 = call i32 @MULT_NORM(i32 %96)
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %97, i32* %99, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 6
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %109, %112
  %114 = sub nsw i32 %106, %113
  %115 = call i32 @MULT_NORM(i32 %114)
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 -8
  store i32* %119, i32** %10, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32* %121, i32** %12, align 8
  br label %122

122:                                              ; preds = %41
  %123 = load i32*, i32** %10, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = icmp uge i32* %123, %124
  br i1 %125, label %41, label %126

126:                                              ; preds = %122
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = getelementptr inbounds i32, i32* %130, i64 -8
  store i32* %131, i32** %10, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32* %138, i32** %11, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32* %144, i32** %12, align 8
  br label %145

145:                                              ; preds = %224, %126
  %146 = load i32*, i32** %12, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 -4
  store i32* %147, i32** %12, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %12, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 %150, %153
  %155 = load i32*, i32** %10, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 6
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  %162 = add nsw i32 %154, %161
  %163 = call i32 @MULT_NORM(i32 %162)
  %164 = load i32*, i32** %11, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %12, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %168, %171
  %173 = load i32*, i32** %10, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 6
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 3
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %175, %178
  %180 = sub nsw i32 %172, %179
  %181 = call i32 @MULT_NORM(i32 %180)
  %182 = load i32*, i32** %11, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  store i32 %181, i32* %183, align 4
  %184 = load i32*, i32** %10, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %12, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %186, %189
  %191 = load i32*, i32** %10, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %12, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %193, %196
  %198 = add nsw i32 %190, %197
  %199 = call i32 @MULT_NORM(i32 %198)
  %200 = load i32*, i32** %11, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %10, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %12, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %204, %207
  %209 = load i32*, i32** %10, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 2
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %12, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %211, %214
  %216 = sub nsw i32 %208, %215
  %217 = call i32 @MULT_NORM(i32 %216)
  %218 = load i32*, i32** %11, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 3
  store i32 %217, i32* %219, align 4
  %220 = load i32*, i32** %10, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 -8
  store i32* %221, i32** %10, align 8
  %222 = load i32*, i32** %11, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 4
  store i32* %223, i32** %11, align 8
  br label %224

224:                                              ; preds = %145
  %225 = load i32*, i32** %10, align 8
  %226 = load i32*, i32** %5, align 8
  %227 = icmp uge i32* %225, %226
  br i1 %227, label %145, label %228

228:                                              ; preds = %224
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @mdct_butterflies(%struct.TYPE_5__* %229, i32* %233, i32 %234)
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @mdct_bitreverse(%struct.TYPE_5__* %236, i32* %237)
  %239 = load i32*, i32** %6, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32* %245, i32** %13, align 8
  %246 = load i32*, i32** %6, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32* %252, i32** %14, align 8
  %253 = load i32*, i32** %6, align 8
  store i32* %253, i32** %15, align 8
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32* %259, i32** %12, align 8
  br label %260

260:                                              ; preds = %417, %228
  %261 = load i32*, i32** %13, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 -4
  store i32* %262, i32** %13, align 8
  %263 = load i32*, i32** %15, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %12, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = mul nsw i32 %265, %268
  %270 = load i32*, i32** %15, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %12, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %272, %275
  %277 = sub nsw i32 %269, %276
  %278 = call i32 @MULT_NORM(i32 %277)
  %279 = load i32*, i32** %13, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 3
  store i32 %278, i32* %280, align 4
  %281 = load i32*, i32** %15, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32*, i32** %12, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = mul nsw i32 %283, %286
  %288 = load i32*, i32** %15, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %12, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  %293 = load i32, i32* %292, align 4
  %294 = mul nsw i32 %290, %293
  %295 = add nsw i32 %287, %294
  %296 = call i32 @MULT_NORM(i32 %295)
  %297 = sub nsw i32 0, %296
  %298 = load i32*, i32** %14, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  store i32 %297, i32* %299, align 4
  %300 = load i32*, i32** %15, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  %302 = load i32, i32* %301, align 4
  %303 = load i32*, i32** %12, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 3
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 %302, %305
  %307 = load i32*, i32** %15, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 3
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** %12, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 2
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %309, %312
  %314 = sub nsw i32 %306, %313
  %315 = call i32 @MULT_NORM(i32 %314)
  %316 = load i32*, i32** %13, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 2
  store i32 %315, i32* %317, align 4
  %318 = load i32*, i32** %15, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 2
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %12, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 2
  %323 = load i32, i32* %322, align 4
  %324 = mul nsw i32 %320, %323
  %325 = load i32*, i32** %15, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 3
  %327 = load i32, i32* %326, align 4
  %328 = load i32*, i32** %12, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 3
  %330 = load i32, i32* %329, align 4
  %331 = mul nsw i32 %327, %330
  %332 = add nsw i32 %324, %331
  %333 = call i32 @MULT_NORM(i32 %332)
  %334 = sub nsw i32 0, %333
  %335 = load i32*, i32** %14, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  store i32 %334, i32* %336, align 4
  %337 = load i32*, i32** %15, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 4
  %339 = load i32, i32* %338, align 4
  %340 = load i32*, i32** %12, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 5
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 %339, %342
  %344 = load i32*, i32** %15, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 5
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %12, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 4
  %349 = load i32, i32* %348, align 4
  %350 = mul nsw i32 %346, %349
  %351 = sub nsw i32 %343, %350
  %352 = call i32 @MULT_NORM(i32 %351)
  %353 = load i32*, i32** %13, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 1
  store i32 %352, i32* %354, align 4
  %355 = load i32*, i32** %15, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 4
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** %12, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 4
  %360 = load i32, i32* %359, align 4
  %361 = mul nsw i32 %357, %360
  %362 = load i32*, i32** %15, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 5
  %364 = load i32, i32* %363, align 4
  %365 = load i32*, i32** %12, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 5
  %367 = load i32, i32* %366, align 4
  %368 = mul nsw i32 %364, %367
  %369 = add nsw i32 %361, %368
  %370 = call i32 @MULT_NORM(i32 %369)
  %371 = sub nsw i32 0, %370
  %372 = load i32*, i32** %14, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 2
  store i32 %371, i32* %373, align 4
  %374 = load i32*, i32** %15, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 6
  %376 = load i32, i32* %375, align 4
  %377 = load i32*, i32** %12, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 7
  %379 = load i32, i32* %378, align 4
  %380 = mul nsw i32 %376, %379
  %381 = load i32*, i32** %15, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 7
  %383 = load i32, i32* %382, align 4
  %384 = load i32*, i32** %12, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 6
  %386 = load i32, i32* %385, align 4
  %387 = mul nsw i32 %383, %386
  %388 = sub nsw i32 %380, %387
  %389 = call i32 @MULT_NORM(i32 %388)
  %390 = load i32*, i32** %13, align 8
  %391 = getelementptr inbounds i32, i32* %390, i64 0
  store i32 %389, i32* %391, align 4
  %392 = load i32*, i32** %15, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 6
  %394 = load i32, i32* %393, align 4
  %395 = load i32*, i32** %12, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 6
  %397 = load i32, i32* %396, align 4
  %398 = mul nsw i32 %394, %397
  %399 = load i32*, i32** %15, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 7
  %401 = load i32, i32* %400, align 4
  %402 = load i32*, i32** %12, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 7
  %404 = load i32, i32* %403, align 4
  %405 = mul nsw i32 %401, %404
  %406 = add nsw i32 %398, %405
  %407 = call i32 @MULT_NORM(i32 %406)
  %408 = sub nsw i32 0, %407
  %409 = load i32*, i32** %14, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 3
  store i32 %408, i32* %410, align 4
  %411 = load i32*, i32** %14, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 4
  store i32* %412, i32** %14, align 8
  %413 = load i32*, i32** %15, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 8
  store i32* %414, i32** %15, align 8
  %415 = load i32*, i32** %12, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 8
  store i32* %416, i32** %12, align 8
  br label %417

417:                                              ; preds = %260
  %418 = load i32*, i32** %15, align 8
  %419 = load i32*, i32** %13, align 8
  %420 = icmp ult i32* %418, %419
  br i1 %420, label %260, label %421

421:                                              ; preds = %417
  %422 = load i32*, i32** %6, align 8
  %423 = load i32, i32* %8, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32* %428, i32** %15, align 8
  %429 = load i32*, i32** %6, align 8
  %430 = load i32, i32* %9, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  store i32* %432, i32** %13, align 8
  %433 = load i32*, i32** %13, align 8
  store i32* %433, i32** %14, align 8
  br label %434

434:                                              ; preds = %473, %421
  %435 = load i32*, i32** %13, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 -4
  store i32* %436, i32** %13, align 8
  %437 = load i32*, i32** %15, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 -4
  store i32* %438, i32** %15, align 8
  %439 = load i32*, i32** %15, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 3
  %441 = load i32, i32* %440, align 4
  %442 = load i32*, i32** %13, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 3
  store i32 %441, i32* %443, align 4
  %444 = sub nsw i32 0, %441
  %445 = load i32*, i32** %14, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  store i32 %444, i32* %446, align 4
  %447 = load i32*, i32** %15, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 2
  %449 = load i32, i32* %448, align 4
  %450 = load i32*, i32** %13, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 2
  store i32 %449, i32* %451, align 4
  %452 = sub nsw i32 0, %449
  %453 = load i32*, i32** %14, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 1
  store i32 %452, i32* %454, align 4
  %455 = load i32*, i32** %15, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 1
  %457 = load i32, i32* %456, align 4
  %458 = load i32*, i32** %13, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  store i32 %457, i32* %459, align 4
  %460 = sub nsw i32 0, %457
  %461 = load i32*, i32** %14, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 2
  store i32 %460, i32* %462, align 4
  %463 = load i32*, i32** %15, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 0
  %465 = load i32, i32* %464, align 4
  %466 = load i32*, i32** %13, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 0
  store i32 %465, i32* %467, align 4
  %468 = sub nsw i32 0, %465
  %469 = load i32*, i32** %14, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 3
  store i32 %468, i32* %470, align 4
  %471 = load i32*, i32** %14, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 4
  store i32* %472, i32** %14, align 8
  br label %473

473:                                              ; preds = %434
  %474 = load i32*, i32** %14, align 8
  %475 = load i32*, i32** %15, align 8
  %476 = icmp ult i32* %474, %475
  br i1 %476, label %434, label %477

477:                                              ; preds = %473
  %478 = load i32*, i32** %6, align 8
  %479 = load i32, i32* %8, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %478, i64 %480
  %482 = load i32, i32* %9, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  store i32* %484, i32** %15, align 8
  %485 = load i32*, i32** %6, align 8
  %486 = load i32, i32* %8, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %485, i64 %487
  %489 = load i32, i32* %9, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %488, i64 %490
  store i32* %491, i32** %13, align 8
  %492 = load i32*, i32** %6, align 8
  %493 = load i32, i32* %8, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  store i32* %495, i32** %14, align 8
  br label %496

496:                                              ; preds = %521, %477
  %497 = load i32*, i32** %13, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 -4
  store i32* %498, i32** %13, align 8
  %499 = load i32*, i32** %15, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 3
  %501 = load i32, i32* %500, align 4
  %502 = load i32*, i32** %13, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 0
  store i32 %501, i32* %503, align 4
  %504 = load i32*, i32** %15, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 2
  %506 = load i32, i32* %505, align 4
  %507 = load i32*, i32** %13, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 1
  store i32 %506, i32* %508, align 4
  %509 = load i32*, i32** %15, align 8
  %510 = getelementptr inbounds i32, i32* %509, i64 1
  %511 = load i32, i32* %510, align 4
  %512 = load i32*, i32** %13, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 2
  store i32 %511, i32* %513, align 4
  %514 = load i32*, i32** %15, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 0
  %516 = load i32, i32* %515, align 4
  %517 = load i32*, i32** %13, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 3
  store i32 %516, i32* %518, align 4
  %519 = load i32*, i32** %15, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 4
  store i32* %520, i32** %15, align 8
  br label %521

521:                                              ; preds = %496
  %522 = load i32*, i32** %13, align 8
  %523 = load i32*, i32** %14, align 8
  %524 = icmp ugt i32* %522, %523
  br i1 %524, label %496, label %525

525:                                              ; preds = %521
  ret void
}

declare dso_local i32 @MULT_NORM(i32) #1

declare dso_local i32 @mdct_butterflies(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @mdct_bitreverse(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
