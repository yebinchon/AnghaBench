; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs16_xy2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_abs16_xy2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64*, i32, i32)* @pix_abs16_xy2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_abs16_xy2_c(i32* %0, i64* %1, i64* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i64*, i64** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  store i64* %17, i64** %13, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %387, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %390

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %13, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %13, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @avg4(i64 %28, i64 %31, i64 %34, i64 %37)
  %39 = sub nsw i64 %25, %38
  %40 = call i64 @abs(i64 %39)
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %13, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** %13, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @avg4(i64 %50, i64 %53, i64 %56, i64 %59)
  %61 = sub nsw i64 %47, %60
  %62 = call i64 @abs(i64 %61)
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %13, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 3
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @avg4(i64 %72, i64 %75, i64 %78, i64 %81)
  %83 = sub nsw i64 %69, %82
  %84 = call i64 @abs(i64 %83)
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load i64*, i64** %7, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 3
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %8, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 4
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %13, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 4
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @avg4(i64 %94, i64 %97, i64 %100, i64 %103)
  %105 = sub nsw i64 %91, %104
  %106 = call i64 @abs(i64 %105)
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load i64*, i64** %7, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %8, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 5
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %13, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 5
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @avg4(i64 %116, i64 %119, i64 %122, i64 %125)
  %127 = sub nsw i64 %113, %126
  %128 = call i64 @abs(i64 %127)
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %11, align 4
  %133 = load i64*, i64** %7, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 5
  %135 = load i64, i64* %134, align 8
  %136 = load i64*, i64** %8, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 5
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %8, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 6
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %13, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 5
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %13, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 6
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @avg4(i64 %138, i64 %141, i64 %144, i64 %147)
  %149 = sub nsw i64 %135, %148
  %150 = call i64 @abs(i64 %149)
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %11, align 4
  %155 = load i64*, i64** %7, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 6
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %8, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 6
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %8, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 7
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %13, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 6
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %13, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 7
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @avg4(i64 %160, i64 %163, i64 %166, i64 %169)
  %171 = sub nsw i64 %157, %170
  %172 = call i64 @abs(i64 %171)
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %11, align 4
  %177 = load i64*, i64** %7, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 7
  %179 = load i64, i64* %178, align 8
  %180 = load i64*, i64** %8, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 7
  %182 = load i64, i64* %181, align 8
  %183 = load i64*, i64** %8, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 8
  %185 = load i64, i64* %184, align 8
  %186 = load i64*, i64** %13, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 7
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %13, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 8
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @avg4(i64 %182, i64 %185, i64 %188, i64 %191)
  %193 = sub nsw i64 %179, %192
  %194 = call i64 @abs(i64 %193)
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %11, align 4
  %199 = load i64*, i64** %7, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 8
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %8, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 8
  %204 = load i64, i64* %203, align 8
  %205 = load i64*, i64** %8, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 9
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** %13, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 8
  %210 = load i64, i64* %209, align 8
  %211 = load i64*, i64** %13, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 9
  %213 = load i64, i64* %212, align 8
  %214 = call i64 @avg4(i64 %204, i64 %207, i64 %210, i64 %213)
  %215 = sub nsw i64 %201, %214
  %216 = call i64 @abs(i64 %215)
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %11, align 4
  %221 = load i64*, i64** %7, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 9
  %223 = load i64, i64* %222, align 8
  %224 = load i64*, i64** %8, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 9
  %226 = load i64, i64* %225, align 8
  %227 = load i64*, i64** %8, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 10
  %229 = load i64, i64* %228, align 8
  %230 = load i64*, i64** %13, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 9
  %232 = load i64, i64* %231, align 8
  %233 = load i64*, i64** %13, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 10
  %235 = load i64, i64* %234, align 8
  %236 = call i64 @avg4(i64 %226, i64 %229, i64 %232, i64 %235)
  %237 = sub nsw i64 %223, %236
  %238 = call i64 @abs(i64 %237)
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %238
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %11, align 4
  %243 = load i64*, i64** %7, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 10
  %245 = load i64, i64* %244, align 8
  %246 = load i64*, i64** %8, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 10
  %248 = load i64, i64* %247, align 8
  %249 = load i64*, i64** %8, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 11
  %251 = load i64, i64* %250, align 8
  %252 = load i64*, i64** %13, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 10
  %254 = load i64, i64* %253, align 8
  %255 = load i64*, i64** %13, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 11
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @avg4(i64 %248, i64 %251, i64 %254, i64 %257)
  %259 = sub nsw i64 %245, %258
  %260 = call i64 @abs(i64 %259)
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %11, align 4
  %265 = load i64*, i64** %7, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 11
  %267 = load i64, i64* %266, align 8
  %268 = load i64*, i64** %8, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 11
  %270 = load i64, i64* %269, align 8
  %271 = load i64*, i64** %8, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 12
  %273 = load i64, i64* %272, align 8
  %274 = load i64*, i64** %13, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 11
  %276 = load i64, i64* %275, align 8
  %277 = load i64*, i64** %13, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 12
  %279 = load i64, i64* %278, align 8
  %280 = call i64 @avg4(i64 %270, i64 %273, i64 %276, i64 %279)
  %281 = sub nsw i64 %267, %280
  %282 = call i64 @abs(i64 %281)
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = add nsw i64 %284, %282
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %11, align 4
  %287 = load i64*, i64** %7, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 12
  %289 = load i64, i64* %288, align 8
  %290 = load i64*, i64** %8, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 12
  %292 = load i64, i64* %291, align 8
  %293 = load i64*, i64** %8, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 13
  %295 = load i64, i64* %294, align 8
  %296 = load i64*, i64** %13, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 12
  %298 = load i64, i64* %297, align 8
  %299 = load i64*, i64** %13, align 8
  %300 = getelementptr inbounds i64, i64* %299, i64 13
  %301 = load i64, i64* %300, align 8
  %302 = call i64 @avg4(i64 %292, i64 %295, i64 %298, i64 %301)
  %303 = sub nsw i64 %289, %302
  %304 = call i64 @abs(i64 %303)
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %306, %304
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %11, align 4
  %309 = load i64*, i64** %7, align 8
  %310 = getelementptr inbounds i64, i64* %309, i64 13
  %311 = load i64, i64* %310, align 8
  %312 = load i64*, i64** %8, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 13
  %314 = load i64, i64* %313, align 8
  %315 = load i64*, i64** %8, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 14
  %317 = load i64, i64* %316, align 8
  %318 = load i64*, i64** %13, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 13
  %320 = load i64, i64* %319, align 8
  %321 = load i64*, i64** %13, align 8
  %322 = getelementptr inbounds i64, i64* %321, i64 14
  %323 = load i64, i64* %322, align 8
  %324 = call i64 @avg4(i64 %314, i64 %317, i64 %320, i64 %323)
  %325 = sub nsw i64 %311, %324
  %326 = call i64 @abs(i64 %325)
  %327 = load i32, i32* %11, align 4
  %328 = sext i32 %327 to i64
  %329 = add nsw i64 %328, %326
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %11, align 4
  %331 = load i64*, i64** %7, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 14
  %333 = load i64, i64* %332, align 8
  %334 = load i64*, i64** %8, align 8
  %335 = getelementptr inbounds i64, i64* %334, i64 14
  %336 = load i64, i64* %335, align 8
  %337 = load i64*, i64** %8, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 15
  %339 = load i64, i64* %338, align 8
  %340 = load i64*, i64** %13, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 14
  %342 = load i64, i64* %341, align 8
  %343 = load i64*, i64** %13, align 8
  %344 = getelementptr inbounds i64, i64* %343, i64 15
  %345 = load i64, i64* %344, align 8
  %346 = call i64 @avg4(i64 %336, i64 %339, i64 %342, i64 %345)
  %347 = sub nsw i64 %333, %346
  %348 = call i64 @abs(i64 %347)
  %349 = load i32, i32* %11, align 4
  %350 = sext i32 %349 to i64
  %351 = add nsw i64 %350, %348
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %11, align 4
  %353 = load i64*, i64** %7, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 15
  %355 = load i64, i64* %354, align 8
  %356 = load i64*, i64** %8, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 15
  %358 = load i64, i64* %357, align 8
  %359 = load i64*, i64** %8, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 16
  %361 = load i64, i64* %360, align 8
  %362 = load i64*, i64** %13, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 15
  %364 = load i64, i64* %363, align 8
  %365 = load i64*, i64** %13, align 8
  %366 = getelementptr inbounds i64, i64* %365, i64 16
  %367 = load i64, i64* %366, align 8
  %368 = call i64 @avg4(i64 %358, i64 %361, i64 %364, i64 %367)
  %369 = sub nsw i64 %355, %368
  %370 = call i64 @abs(i64 %369)
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = add nsw i64 %372, %370
  %374 = trunc i64 %373 to i32
  store i32 %374, i32* %11, align 4
  %375 = load i32, i32* %9, align 4
  %376 = load i64*, i64** %7, align 8
  %377 = sext i32 %375 to i64
  %378 = getelementptr inbounds i64, i64* %376, i64 %377
  store i64* %378, i64** %7, align 8
  %379 = load i32, i32* %9, align 4
  %380 = load i64*, i64** %8, align 8
  %381 = sext i32 %379 to i64
  %382 = getelementptr inbounds i64, i64* %380, i64 %381
  store i64* %382, i64** %8, align 8
  %383 = load i32, i32* %9, align 4
  %384 = load i64*, i64** %13, align 8
  %385 = sext i32 %383 to i64
  %386 = getelementptr inbounds i64, i64* %384, i64 %385
  store i64* %386, i64** %13, align 8
  br label %387

387:                                              ; preds = %22
  %388 = load i32, i32* %12, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %12, align 4
  br label %18

390:                                              ; preds = %18
  %391 = load i32, i32* %11, align 4
  ret i32 %391
}

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @avg4(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
