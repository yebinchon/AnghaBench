; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vc1dsp_msa.c_ff_vc1_inv_trans_4x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vc1dsp_msa.c_ff_vc1_inv_trans_4x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vc1_inv_trans_4x8_msa(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
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
  %39 = alloca %struct.TYPE_14__, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %51 = bitcast %struct.TYPE_14__* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %51, i8 0, i64 4, i1 false)
  store i32 17, i32* %40, align 4
  store i32 22, i32* %41, align 4
  store i32 10, i32* %42, align 4
  store i32 12, i32* %43, align 4
  store i32 64, i32* %44, align 4
  store i32 16, i32* %45, align 4
  store i32 15, i32* %46, align 4
  store i32 4, i32* %47, align 4
  store i32 6, i32* %48, align 4
  store i32 9, i32* %49, align 4
  store i32 1, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @LD_SH8(i32* %52, i32 8, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @UNPCK_R_SH_SW(i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @UNPCK_R_SH_SW(i32 %65, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @UNPCK_R_SH_SW(i32 %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @UNPCK_R_SH_SW(i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @UNPCK_R_SH_SW(i32 %74, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @UNPCK_R_SH_SW(i32 %77, i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %21, align 4
  %82 = call i32 @UNPCK_R_SH_SW(i32 %80, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %22, align 4
  %85 = call i32 @UNPCK_R_SH_SW(i32 %83, i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @TRANSPOSE4x4_SW_SW(i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %22, align 4
  %103 = call i32 @TRANSPOSE4x4_SW_SW(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %40, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %105, %106
  %108 = mul nsw i32 %104, %107
  %109 = load i32, i32* %47, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %23, align 4
  %111 = load i32, i32* %40, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %21, align 4
  %114 = add nsw i32 %112, %113
  %115 = mul nsw i32 %111, %114
  %116 = load i32, i32* %47, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %27, align 4
  %118 = load i32, i32* %40, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %17, align 4
  %121 = sub nsw i32 %119, %120
  %122 = mul nsw i32 %118, %121
  %123 = load i32, i32* %47, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %24, align 4
  %125 = load i32, i32* %40, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %21, align 4
  %128 = sub nsw i32 %126, %127
  %129 = mul nsw i32 %125, %128
  %130 = load i32, i32* %47, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %28, align 4
  %132 = load i32, i32* %41, align 4
  %133 = load i32, i32* %16, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %42, align 4
  %136 = load i32, i32* %18, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %134, %137
  store i32 %138, i32* %25, align 4
  %139 = load i32, i32* %41, align 4
  %140 = load i32, i32* %20, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %42, align 4
  %143 = load i32, i32* %22, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  store i32 %145, i32* %29, align 4
  %146 = load i32, i32* %41, align 4
  %147 = load i32, i32* %18, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* %42, align 4
  %150 = load i32, i32* %16, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sub nsw i32 %148, %151
  store i32 %152, i32* %26, align 4
  %153 = load i32, i32* %41, align 4
  %154 = load i32, i32* %22, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %42, align 4
  %157 = load i32, i32* %20, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sub nsw i32 %155, %158
  store i32 %159, i32* %30, align 4
  %160 = load i32, i32* %23, align 4
  %161 = load i32, i32* %25, align 4
  %162 = add nsw i32 %160, %161
  %163 = ashr i32 %162, 3
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %27, align 4
  %165 = load i32, i32* %29, align 4
  %166 = add nsw i32 %164, %165
  %167 = ashr i32 %166, 3
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %26, align 4
  %170 = sub nsw i32 %168, %169
  %171 = ashr i32 %170, 3
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %28, align 4
  %173 = load i32, i32* %30, align 4
  %174 = sub nsw i32 %172, %173
  %175 = ashr i32 %174, 3
  store i32 %175, i32* %20, align 4
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* %26, align 4
  %178 = add nsw i32 %176, %177
  %179 = ashr i32 %178, 3
  store i32 %179, i32* %17, align 4
  %180 = load i32, i32* %28, align 4
  %181 = load i32, i32* %30, align 4
  %182 = add nsw i32 %180, %181
  %183 = ashr i32 %182, 3
  store i32 %183, i32* %21, align 4
  %184 = load i32, i32* %23, align 4
  %185 = load i32, i32* %25, align 4
  %186 = sub nsw i32 %184, %185
  %187 = ashr i32 %186, 3
  store i32 %187, i32* %18, align 4
  %188 = load i32, i32* %27, align 4
  %189 = load i32, i32* %29, align 4
  %190 = sub nsw i32 %188, %189
  %191 = ashr i32 %190, 3
  store i32 %191, i32* %22, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %18, align 4
  %200 = call i32 @TRANSPOSE4x4_SW_SW(i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199)
  %201 = load i32, i32* %19, align 4
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %20, align 4
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* %22, align 4
  %209 = call i32 @TRANSPOSE4x4_SW_SW(i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %20, align 4
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* %21, align 4
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @PCKEV_H4_SH(i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32*, i32** %6, align 8
  %228 = call i32 @ST_D8(i32 %223, i32 %224, i32 %225, i32 %226, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %227, i32 8)
  %229 = load i32, i32* %43, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* %19, align 4
  %232 = add nsw i32 %230, %231
  %233 = mul nsw i32 %229, %232
  %234 = load i32, i32* %44, align 4
  %235 = add nsw i32 %233, %234
  store i32 %235, i32* %23, align 4
  %236 = load i32, i32* %43, align 4
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %19, align 4
  %239 = sub nsw i32 %237, %238
  %240 = mul nsw i32 %236, %239
  %241 = load i32, i32* %44, align 4
  %242 = add nsw i32 %240, %241
  store i32 %242, i32* %24, align 4
  %243 = load i32, i32* %45, align 4
  %244 = load i32, i32* %17, align 4
  %245 = mul nsw i32 %243, %244
  %246 = load i32, i32* %48, align 4
  %247 = load i32, i32* %21, align 4
  %248 = mul nsw i32 %246, %247
  %249 = add nsw i32 %245, %248
  store i32 %249, i32* %25, align 4
  %250 = load i32, i32* %48, align 4
  %251 = load i32, i32* %17, align 4
  %252 = mul nsw i32 %250, %251
  %253 = load i32, i32* %45, align 4
  %254 = load i32, i32* %21, align 4
  %255 = mul nsw i32 %253, %254
  %256 = sub nsw i32 %252, %255
  store i32 %256, i32* %26, align 4
  %257 = load i32, i32* %23, align 4
  %258 = load i32, i32* %25, align 4
  %259 = add nsw i32 %257, %258
  store i32 %259, i32* %27, align 4
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* %26, align 4
  %262 = add nsw i32 %260, %261
  store i32 %262, i32* %28, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load i32, i32* %26, align 4
  %265 = sub nsw i32 %263, %264
  store i32 %265, i32* %29, align 4
  %266 = load i32, i32* %23, align 4
  %267 = load i32, i32* %25, align 4
  %268 = sub nsw i32 %266, %267
  store i32 %268, i32* %30, align 4
  %269 = load i32, i32* %45, align 4
  %270 = load i32, i32* %16, align 4
  %271 = mul nsw i32 %269, %270
  %272 = load i32, i32* %46, align 4
  %273 = load i32, i32* %18, align 4
  %274 = mul nsw i32 %272, %273
  %275 = add nsw i32 %271, %274
  %276 = load i32, i32* %49, align 4
  %277 = load i32, i32* %20, align 4
  %278 = mul nsw i32 %276, %277
  %279 = add nsw i32 %275, %278
  %280 = load i32, i32* %47, align 4
  %281 = load i32, i32* %22, align 4
  %282 = mul nsw i32 %280, %281
  %283 = add nsw i32 %279, %282
  store i32 %283, i32* %23, align 4
  %284 = load i32, i32* %46, align 4
  %285 = load i32, i32* %16, align 4
  %286 = mul nsw i32 %284, %285
  %287 = load i32, i32* %47, align 4
  %288 = load i32, i32* %18, align 4
  %289 = mul nsw i32 %287, %288
  %290 = sub nsw i32 %286, %289
  %291 = load i32, i32* %45, align 4
  %292 = load i32, i32* %20, align 4
  %293 = mul nsw i32 %291, %292
  %294 = sub nsw i32 %290, %293
  %295 = load i32, i32* %49, align 4
  %296 = load i32, i32* %22, align 4
  %297 = mul nsw i32 %295, %296
  %298 = sub nsw i32 %294, %297
  store i32 %298, i32* %24, align 4
  %299 = load i32, i32* %49, align 4
  %300 = load i32, i32* %16, align 4
  %301 = mul nsw i32 %299, %300
  %302 = load i32, i32* %45, align 4
  %303 = load i32, i32* %18, align 4
  %304 = mul nsw i32 %302, %303
  %305 = sub nsw i32 %301, %304
  %306 = load i32, i32* %47, align 4
  %307 = load i32, i32* %20, align 4
  %308 = mul nsw i32 %306, %307
  %309 = add nsw i32 %305, %308
  %310 = load i32, i32* %46, align 4
  %311 = load i32, i32* %22, align 4
  %312 = mul nsw i32 %310, %311
  %313 = add nsw i32 %309, %312
  store i32 %313, i32* %25, align 4
  %314 = load i32, i32* %47, align 4
  %315 = load i32, i32* %16, align 4
  %316 = mul nsw i32 %314, %315
  %317 = load i32, i32* %49, align 4
  %318 = load i32, i32* %18, align 4
  %319 = mul nsw i32 %317, %318
  %320 = sub nsw i32 %316, %319
  %321 = load i32, i32* %46, align 4
  %322 = load i32, i32* %20, align 4
  %323 = mul nsw i32 %321, %322
  %324 = add nsw i32 %320, %323
  %325 = load i32, i32* %45, align 4
  %326 = load i32, i32* %22, align 4
  %327 = mul nsw i32 %325, %326
  %328 = sub nsw i32 %324, %327
  store i32 %328, i32* %26, align 4
  %329 = load i32*, i32** %4, align 8
  %330 = load i32, i32* %5, align 4
  %331 = load i32, i32* %31, align 4
  %332 = load i32, i32* %32, align 4
  %333 = load i32, i32* %33, align 4
  %334 = load i32, i32* %34, align 4
  %335 = load i32, i32* %35, align 4
  %336 = load i32, i32* %36, align 4
  %337 = load i32, i32* %37, align 4
  %338 = load i32, i32* %38, align 4
  %339 = call i32 @LD_SW8(i32* %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338)
  %340 = load i32, i32* %31, align 4
  %341 = load i32, i32* %32, align 4
  %342 = load i32, i32* %33, align 4
  %343 = load i32, i32* %34, align 4
  %344 = load i32, i32* %35, align 4
  %345 = load i32, i32* %36, align 4
  %346 = load i32, i32* %37, align 4
  %347 = load i32, i32* %38, align 4
  %348 = load i32, i32* %31, align 4
  %349 = load i32, i32* %32, align 4
  %350 = load i32, i32* %33, align 4
  %351 = load i32, i32* %34, align 4
  %352 = load i32, i32* %35, align 4
  %353 = load i32, i32* %36, align 4
  %354 = load i32, i32* %37, align 4
  %355 = load i32, i32* %38, align 4
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @ILVR_B8_SW(i32 %357, i32 %340, i32 %359, i32 %341, i32 %361, i32 %342, i32 %363, i32 %343, i32 %365, i32 %344, i32 %367, i32 %345, i32 %369, i32 %346, i32 %371, i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355)
  %373 = load i32, i32* %31, align 4
  %374 = load i32, i32* %32, align 4
  %375 = load i32, i32* %33, align 4
  %376 = load i32, i32* %34, align 4
  %377 = load i32, i32* %31, align 4
  %378 = load i32, i32* %32, align 4
  %379 = load i32, i32* %33, align 4
  %380 = load i32, i32* %34, align 4
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @ILVR_H4_SW(i32 %382, i32 %373, i32 %384, i32 %374, i32 %386, i32 %375, i32 %388, i32 %376, i32 %377, i32 %378, i32 %379, i32 %380)
  %390 = load i32, i32* %35, align 4
  %391 = load i32, i32* %36, align 4
  %392 = load i32, i32* %37, align 4
  %393 = load i32, i32* %38, align 4
  %394 = load i32, i32* %35, align 4
  %395 = load i32, i32* %36, align 4
  %396 = load i32, i32* %37, align 4
  %397 = load i32, i32* %38, align 4
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @ILVR_H4_SW(i32 %399, i32 %390, i32 %401, i32 %391, i32 %403, i32 %392, i32 %405, i32 %393, i32 %394, i32 %395, i32 %396, i32 %397)
  %407 = load i32, i32* %27, align 4
  %408 = load i32, i32* %23, align 4
  %409 = add nsw i32 %407, %408
  %410 = ashr i32 %409, 7
  store i32 %410, i32* %15, align 4
  %411 = load i32, i32* %28, align 4
  %412 = load i32, i32* %24, align 4
  %413 = add nsw i32 %411, %412
  %414 = ashr i32 %413, 7
  store i32 %414, i32* %16, align 4
  %415 = load i32, i32* %29, align 4
  %416 = load i32, i32* %25, align 4
  %417 = add nsw i32 %415, %416
  %418 = ashr i32 %417, 7
  store i32 %418, i32* %17, align 4
  %419 = load i32, i32* %30, align 4
  %420 = load i32, i32* %26, align 4
  %421 = add nsw i32 %419, %420
  %422 = ashr i32 %421, 7
  store i32 %422, i32* %18, align 4
  %423 = load i32, i32* %30, align 4
  %424 = load i32, i32* %26, align 4
  %425 = sub nsw i32 %423, %424
  %426 = load i32, i32* %50, align 4
  %427 = add nsw i32 %425, %426
  %428 = ashr i32 %427, 7
  store i32 %428, i32* %19, align 4
  %429 = load i32, i32* %29, align 4
  %430 = load i32, i32* %25, align 4
  %431 = sub nsw i32 %429, %430
  %432 = load i32, i32* %50, align 4
  %433 = add nsw i32 %431, %432
  %434 = ashr i32 %433, 7
  store i32 %434, i32* %20, align 4
  %435 = load i32, i32* %28, align 4
  %436 = load i32, i32* %24, align 4
  %437 = sub nsw i32 %435, %436
  %438 = load i32, i32* %50, align 4
  %439 = add nsw i32 %437, %438
  %440 = ashr i32 %439, 7
  store i32 %440, i32* %21, align 4
  %441 = load i32, i32* %27, align 4
  %442 = load i32, i32* %23, align 4
  %443 = sub nsw i32 %441, %442
  %444 = load i32, i32* %50, align 4
  %445 = add nsw i32 %443, %444
  %446 = ashr i32 %445, 7
  store i32 %446, i32* %22, align 4
  %447 = load i32, i32* %15, align 4
  %448 = load i32, i32* %31, align 4
  %449 = load i32, i32* %16, align 4
  %450 = load i32, i32* %32, align 4
  %451 = load i32, i32* %17, align 4
  %452 = load i32, i32* %33, align 4
  %453 = load i32, i32* %18, align 4
  %454 = load i32, i32* %34, align 4
  %455 = load i32, i32* %15, align 4
  %456 = load i32, i32* %16, align 4
  %457 = load i32, i32* %17, align 4
  %458 = load i32, i32* %18, align 4
  %459 = call i32 @ADD4(i32 %447, i32 %448, i32 %449, i32 %450, i32 %451, i32 %452, i32 %453, i32 %454, i32 %455, i32 %456, i32 %457, i32 %458)
  %460 = load i32, i32* %19, align 4
  %461 = load i32, i32* %35, align 4
  %462 = load i32, i32* %20, align 4
  %463 = load i32, i32* %36, align 4
  %464 = load i32, i32* %21, align 4
  %465 = load i32, i32* %37, align 4
  %466 = load i32, i32* %22, align 4
  %467 = load i32, i32* %38, align 4
  %468 = load i32, i32* %19, align 4
  %469 = load i32, i32* %20, align 4
  %470 = load i32, i32* %21, align 4
  %471 = load i32, i32* %22, align 4
  %472 = call i32 @ADD4(i32 %460, i32 %461, i32 %462, i32 %463, i32 %464, i32 %465, i32 %466, i32 %467, i32 %468, i32 %469, i32 %470, i32 %471)
  %473 = load i32, i32* %15, align 4
  %474 = load i32, i32* %16, align 4
  %475 = load i32, i32* %17, align 4
  %476 = load i32, i32* %18, align 4
  %477 = load i32, i32* %19, align 4
  %478 = load i32, i32* %20, align 4
  %479 = load i32, i32* %21, align 4
  %480 = load i32, i32* %22, align 4
  %481 = call i32 @CLIP_SW8_0_255(i32 %473, i32 %474, i32 %475, i32 %476, i32 %477, i32 %478, i32 %479, i32 %480)
  %482 = load i32, i32* %16, align 4
  %483 = load i32, i32* %15, align 4
  %484 = load i32, i32* %18, align 4
  %485 = load i32, i32* %17, align 4
  %486 = load i32, i32* %20, align 4
  %487 = load i32, i32* %19, align 4
  %488 = load i32, i32* %22, align 4
  %489 = load i32, i32* %21, align 4
  %490 = load i32, i32* %7, align 4
  %491 = load i32, i32* %8, align 4
  %492 = load i32, i32* %9, align 4
  %493 = load i32, i32* %10, align 4
  %494 = call i32 @PCKEV_H4_SH(i32 %482, i32 %483, i32 %484, i32 %485, i32 %486, i32 %487, i32 %488, i32 %489, i32 %490, i32 %491, i32 %492, i32 %493)
  %495 = load i32, i32* %8, align 4
  %496 = load i32, i32* %7, align 4
  %497 = load i32, i32* %10, align 4
  %498 = load i32, i32* %9, align 4
  %499 = load i32, i32* %7, align 4
  %500 = load i32, i32* %8, align 4
  %501 = call i32 @PCKEV_B2_SH(i32 %495, i32 %496, i32 %497, i32 %498, i32 %499, i32 %500)
  %502 = load i32, i32* %7, align 4
  %503 = load i32, i32* %8, align 4
  %504 = load i32*, i32** %4, align 8
  %505 = load i32, i32* %5, align 4
  %506 = call i32 @ST_W8(i32 %502, i32 %503, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %504, i32 %505)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @UNPCK_R_SH_SW(i32, i32) #2

declare dso_local i32 @TRANSPOSE4x4_SW_SW(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @LD_SW8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_B8_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ILVR_H4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ADD4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @CLIP_SW8_0_255(i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
