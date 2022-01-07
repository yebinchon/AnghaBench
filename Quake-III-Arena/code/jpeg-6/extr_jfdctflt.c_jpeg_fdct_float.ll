; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jfdctflt.c_jpeg_fdct_float.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jfdctflt.c_jpeg_fdct_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCTSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jpeg_fdct_float(i32* %0) #0 {
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
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  store i32* %24, i32** %22, align 8
  %25 = load i32, i32* @DCTSIZE, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %23, align 4
  br label %27

27:                                               ; preds = %176, %1
  %28 = load i32, i32* %23, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %179

30:                                               ; preds = %27
  %31 = load i32*, i32** %22, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %22, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 7
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32*, i32** %22, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %22, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %22, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %22, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32*, i32** %22, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %22, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  store i32 %58, i32* %9, align 4
  %59 = load i32*, i32** %22, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %22, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %5, align 4
  %66 = load i32*, i32** %22, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %22, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32*, i32** %22, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %22, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  store i32 %79, i32* %6, align 4
  %80 = load i32*, i32** %22, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %22, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32*, i32** %22, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32*, i32** %22, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %109, %110
  %112 = mul nsw i32 %111, 0
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32*, i32** %22, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32*, i32** %22, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 6
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %123, %124
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %129, %130
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 %132, %133
  %135 = mul nsw i32 %134, 0
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 0, %136
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %13, align 4
  %141 = mul nsw i32 1, %140
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %141, %142
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %12, align 4
  %145 = mul nsw i32 %144, 0
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %17, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32*, i32** %22, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %16, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32*, i32** %22, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %18, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32*, i32** %22, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %18, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32*, i32** %22, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 7
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @DCTSIZE, align 4
  %173 = load i32*, i32** %22, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %22, align 8
  br label %176

176:                                              ; preds = %30
  %177 = load i32, i32* %23, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %23, align 4
  br label %27

179:                                              ; preds = %27
  %180 = load i32*, i32** %2, align 8
  store i32* %180, i32** %22, align 8
  %181 = load i32, i32* @DCTSIZE, align 4
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %23, align 4
  br label %183

183:                                              ; preds = %402, %179
  %184 = load i32, i32* %23, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %405

186:                                              ; preds = %183
  %187 = load i32*, i32** %22, align 8
  %188 = load i32, i32* @DCTSIZE, align 4
  %189 = mul nsw i32 %188, 0
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %22, align 8
  %194 = load i32, i32* @DCTSIZE, align 4
  %195 = mul nsw i32 %194, 7
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %192, %198
  store i32 %199, i32* %3, align 4
  %200 = load i32*, i32** %22, align 8
  %201 = load i32, i32* @DCTSIZE, align 4
  %202 = mul nsw i32 %201, 0
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %22, align 8
  %207 = load i32, i32* @DCTSIZE, align 4
  %208 = mul nsw i32 %207, 7
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %205, %211
  store i32 %212, i32* %10, align 4
  %213 = load i32*, i32** %22, align 8
  %214 = load i32, i32* @DCTSIZE, align 4
  %215 = mul nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %22, align 8
  %220 = load i32, i32* @DCTSIZE, align 4
  %221 = mul nsw i32 %220, 6
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %218, %224
  store i32 %225, i32* %4, align 4
  %226 = load i32*, i32** %22, align 8
  %227 = load i32, i32* @DCTSIZE, align 4
  %228 = mul nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %22, align 8
  %233 = load i32, i32* @DCTSIZE, align 4
  %234 = mul nsw i32 %233, 6
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %231, %237
  store i32 %238, i32* %9, align 4
  %239 = load i32*, i32** %22, align 8
  %240 = load i32, i32* @DCTSIZE, align 4
  %241 = mul nsw i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %22, align 8
  %246 = load i32, i32* @DCTSIZE, align 4
  %247 = mul nsw i32 %246, 5
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %244, %250
  store i32 %251, i32* %5, align 4
  %252 = load i32*, i32** %22, align 8
  %253 = load i32, i32* @DCTSIZE, align 4
  %254 = mul nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %22, align 8
  %259 = load i32, i32* @DCTSIZE, align 4
  %260 = mul nsw i32 %259, 5
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %257, %263
  store i32 %264, i32* %8, align 4
  %265 = load i32*, i32** %22, align 8
  %266 = load i32, i32* @DCTSIZE, align 4
  %267 = mul nsw i32 %266, 3
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** %22, align 8
  %272 = load i32, i32* @DCTSIZE, align 4
  %273 = mul nsw i32 %272, 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = add nsw i32 %270, %276
  store i32 %277, i32* %6, align 4
  %278 = load i32*, i32** %22, align 8
  %279 = load i32, i32* @DCTSIZE, align 4
  %280 = mul nsw i32 %279, 3
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %278, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32*, i32** %22, align 8
  %285 = load i32, i32* @DCTSIZE, align 4
  %286 = mul nsw i32 %285, 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %284, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %283, %289
  store i32 %290, i32* %7, align 4
  %291 = load i32, i32* %3, align 4
  %292 = load i32, i32* %6, align 4
  %293 = add nsw i32 %291, %292
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %3, align 4
  %295 = load i32, i32* %6, align 4
  %296 = sub nsw i32 %294, %295
  store i32 %296, i32* %14, align 4
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %297, %298
  store i32 %299, i32* %12, align 4
  %300 = load i32, i32* %4, align 4
  %301 = load i32, i32* %5, align 4
  %302 = sub nsw i32 %300, %301
  store i32 %302, i32* %13, align 4
  %303 = load i32, i32* %11, align 4
  %304 = load i32, i32* %12, align 4
  %305 = add nsw i32 %303, %304
  %306 = load i32*, i32** %22, align 8
  %307 = load i32, i32* @DCTSIZE, align 4
  %308 = mul nsw i32 %307, 0
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  store i32 %305, i32* %310, align 4
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* %12, align 4
  %313 = sub nsw i32 %311, %312
  %314 = load i32*, i32** %22, align 8
  %315 = load i32, i32* @DCTSIZE, align 4
  %316 = mul nsw i32 %315, 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  store i32 %313, i32* %318, align 4
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* %14, align 4
  %321 = add nsw i32 %319, %320
  %322 = mul nsw i32 %321, 0
  store i32 %322, i32* %15, align 4
  %323 = load i32, i32* %14, align 4
  %324 = load i32, i32* %15, align 4
  %325 = add nsw i32 %323, %324
  %326 = load i32*, i32** %22, align 8
  %327 = load i32, i32* @DCTSIZE, align 4
  %328 = mul nsw i32 %327, 2
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %326, i64 %329
  store i32 %325, i32* %330, align 4
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* %15, align 4
  %333 = sub nsw i32 %331, %332
  %334 = load i32*, i32** %22, align 8
  %335 = load i32, i32* @DCTSIZE, align 4
  %336 = mul nsw i32 %335, 6
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %334, i64 %337
  store i32 %333, i32* %338, align 4
  %339 = load i32, i32* %7, align 4
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %339, %340
  store i32 %341, i32* %11, align 4
  %342 = load i32, i32* %8, align 4
  %343 = load i32, i32* %9, align 4
  %344 = add nsw i32 %342, %343
  store i32 %344, i32* %12, align 4
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* %10, align 4
  %347 = add nsw i32 %345, %346
  store i32 %347, i32* %13, align 4
  %348 = load i32, i32* %11, align 4
  %349 = load i32, i32* %13, align 4
  %350 = sub nsw i32 %348, %349
  %351 = mul nsw i32 %350, 0
  store i32 %351, i32* %19, align 4
  %352 = load i32, i32* %11, align 4
  %353 = mul nsw i32 0, %352
  %354 = load i32, i32* %19, align 4
  %355 = add nsw i32 %353, %354
  store i32 %355, i32* %16, align 4
  %356 = load i32, i32* %13, align 4
  %357 = mul nsw i32 1, %356
  %358 = load i32, i32* %19, align 4
  %359 = add nsw i32 %357, %358
  store i32 %359, i32* %18, align 4
  %360 = load i32, i32* %12, align 4
  %361 = mul nsw i32 %360, 0
  store i32 %361, i32* %17, align 4
  %362 = load i32, i32* %10, align 4
  %363 = load i32, i32* %17, align 4
  %364 = add nsw i32 %362, %363
  store i32 %364, i32* %20, align 4
  %365 = load i32, i32* %10, align 4
  %366 = load i32, i32* %17, align 4
  %367 = sub nsw i32 %365, %366
  store i32 %367, i32* %21, align 4
  %368 = load i32, i32* %21, align 4
  %369 = load i32, i32* %16, align 4
  %370 = add nsw i32 %368, %369
  %371 = load i32*, i32** %22, align 8
  %372 = load i32, i32* @DCTSIZE, align 4
  %373 = mul nsw i32 %372, 5
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %371, i64 %374
  store i32 %370, i32* %375, align 4
  %376 = load i32, i32* %21, align 4
  %377 = load i32, i32* %16, align 4
  %378 = sub nsw i32 %376, %377
  %379 = load i32*, i32** %22, align 8
  %380 = load i32, i32* @DCTSIZE, align 4
  %381 = mul nsw i32 %380, 3
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %379, i64 %382
  store i32 %378, i32* %383, align 4
  %384 = load i32, i32* %20, align 4
  %385 = load i32, i32* %18, align 4
  %386 = add nsw i32 %384, %385
  %387 = load i32*, i32** %22, align 8
  %388 = load i32, i32* @DCTSIZE, align 4
  %389 = mul nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %387, i64 %390
  store i32 %386, i32* %391, align 4
  %392 = load i32, i32* %20, align 4
  %393 = load i32, i32* %18, align 4
  %394 = sub nsw i32 %392, %393
  %395 = load i32*, i32** %22, align 8
  %396 = load i32, i32* @DCTSIZE, align 4
  %397 = mul nsw i32 %396, 7
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %395, i64 %398
  store i32 %394, i32* %399, align 4
  %400 = load i32*, i32** %22, align 8
  %401 = getelementptr inbounds i32, i32* %400, i32 1
  store i32* %401, i32** %22, align 8
  br label %402

402:                                              ; preds = %186
  %403 = load i32, i32* %23, align 4
  %404 = add nsw i32 %403, -1
  store i32 %404, i32* %23, align 4
  br label %183

405:                                              ; preds = %183
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
