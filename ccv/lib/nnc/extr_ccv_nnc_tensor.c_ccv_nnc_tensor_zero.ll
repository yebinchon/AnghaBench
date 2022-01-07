; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_tensor.c_ccv_nnc_tensor_zero.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_tensor.c_ccv_nnc_tensor_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32* }

@CCV_NNC_MAX_DIM_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_tensor_zero(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %3, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @CCV_GET_DATA_TYPE_SIZE(i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_6__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = bitcast %struct.TYPE_7__* %39 to { i32*, i32 }*
  %41 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %40, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ccv_nnc_tensor_count(i32* %42, i32 %44)
  %46 = mul i64 %37, %45
  %47 = call i32 @memset(i32* %36, i32 0, i64 %46)
  br label %355

48:                                               ; preds = %1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ccv_nnc_tensor_nd(i32* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %6, align 8
  store i32 1, i32* %10, align 4
  %61 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %62 = sub nsw i32 %61, 3
  %63 = zext i32 %62 to i64
  %64 = call i8* @llvm.stacksave()
  store i8* %64, i8** %11, align 8
  %65 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %12, align 8
  %66 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %67 = sub nsw i32 %66, 2
  %68 = zext i32 %67 to i64
  %69 = alloca i64, i64 %68, align 16
  store i64 %68, i64* %13, align 8
  %70 = load i32, i32* %5, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %98

72:                                               ; preds = %48
  %73 = load i64, i64* %4, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %73, %80
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %81, %88
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %89, %96
  br label %100

98:                                               ; preds = %48
  %99 = load i64, i64* %4, align 8
  br label %100

100:                                              ; preds = %98, %72
  %101 = phi i64 [ %97, %72 ], [ %99, %98 ]
  store i64 %101, i64* %14, align 8
  %102 = load i32, i32* %5, align 4
  %103 = icmp sgt i32 %102, 2
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i64, i64* %14, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %106, 3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %69, i64 %108
  store i64 %105, i64* %109, align 8
  br label %110

110:                                              ; preds = %104, %100
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 %111, 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %175, %110
  %114 = load i32, i32* %7, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %178

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %118, 4
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  br label %145

130:                                              ; preds = %116
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %65, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %135, %143
  br label %145

145:                                              ; preds = %130, %121
  %146 = phi i32 [ %129, %121 ], [ %144, %130 ]
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %65, i64 %148
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %69, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 %154, %160
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %69, i64 %163
  store i64 %161, i64* %164, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %10, align 4
  %174 = mul nsw i32 %173, %172
  store i32 %174, i32* %10, align 4
  br label %175

175:                                              ; preds = %145
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %7, align 4
  br label %113

178:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %209, %178
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %5, align 4
  %182 = sub nsw i32 %181, 3
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %212

184:                                              ; preds = %179
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %69, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %194, %202
  %204 = sext i32 %203 to i64
  %205 = mul i64 %189, %204
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %69, i64 %207
  store i64 %205, i64* %208, align 8
  br label %209

209:                                              ; preds = %184
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %179

212:                                              ; preds = %179
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  store i32* %216, i32** %15, align 8
  %217 = load i64, i64* %4, align 8
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = mul i64 %217, %224
  store i64 %225, i64* %16, align 8
  %226 = load i64, i64* %16, align 8
  %227 = load i32, i32* %5, align 4
  %228 = icmp sge i32 %227, 2
  br i1 %228, label %229, label %236

229:                                              ; preds = %212
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sub nsw i32 %231, 2
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  br label %237

236:                                              ; preds = %212
  br label %237

237:                                              ; preds = %236, %229
  %238 = phi i32 [ %235, %229 ], [ 1, %236 ]
  %239 = sext i32 %238 to i64
  %240 = mul i64 %226, %239
  store i64 %240, i64* %17, align 8
  %241 = load i64, i64* %4, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = mul i64 %241, %251
  store i64 %252, i64* %18, align 8
  %253 = load i32, i32* %5, align 4
  %254 = icmp sge i32 %253, 3
  br i1 %254, label %255, label %265

255:                                              ; preds = %237
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sub nsw i32 %260, 3
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  %264 = load i32, i32* %263, align 4
  br label %266

265:                                              ; preds = %237
  br label %266

266:                                              ; preds = %265, %255
  %267 = phi i32 [ %264, %255 ], [ 1, %265 ]
  %268 = call i32 @ccv_max(i32 1, i32 %267)
  store i32 %268, i32* %19, align 4
  %269 = load i32, i32* %5, align 4
  %270 = icmp sge i32 %269, 2
  br i1 %270, label %271, label %281

271:                                              ; preds = %266
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sub nsw i32 %276, 2
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  %280 = load i32, i32* %279, align 4
  br label %282

281:                                              ; preds = %266
  br label %282

282:                                              ; preds = %281, %271
  %283 = phi i32 [ %280, %271 ], [ 1, %281 ]
  %284 = call i32 @ccv_max(i32 1, i32 %283)
  store i32 %284, i32* %20, align 4
  store i32 0, i32* %7, align 4
  br label %285

285:                                              ; preds = %350, %282
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* %10, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %353

289:                                              ; preds = %285
  store i32 0, i32* %9, align 4
  br label %290

290:                                              ; preds = %316, %289
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %19, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %319

294:                                              ; preds = %290
  %295 = load i32*, i32** %15, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = load i64, i64* %17, align 8
  %299 = mul i64 %297, %298
  %300 = getelementptr inbounds i32, i32* %295, i64 %299
  store i32* %300, i32** %21, align 8
  store i32 0, i32* %8, align 4
  br label %301

301:                                              ; preds = %312, %294
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* %20, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %315

305:                                              ; preds = %301
  %306 = load i32*, i32** %21, align 8
  %307 = load i64, i64* %18, align 8
  %308 = call i32 @memset(i32* %306, i32 0, i64 %307)
  %309 = load i64, i64* %16, align 8
  %310 = load i32*, i32** %21, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 %309
  store i32* %311, i32** %21, align 8
  br label %312

312:                                              ; preds = %305
  %313 = load i32, i32* %8, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %8, align 4
  br label %301

315:                                              ; preds = %301
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %9, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %9, align 4
  br label %290

319:                                              ; preds = %290
  %320 = load i64, i64* %14, align 8
  %321 = load i32*, i32** %15, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 %320
  store i32* %322, i32** %15, align 8
  %323 = load i32, i32* %5, align 4
  %324 = sub nsw i32 %323, 4
  store i32 %324, i32* %9, align 4
  br label %325

325:                                              ; preds = %346, %319
  %326 = load i32, i32* %9, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %349

328:                                              ; preds = %325
  %329 = load i32, i32* %7, align 4
  %330 = add nsw i32 %329, 1
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %65, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = srem i32 %330, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %328
  br label %349

338:                                              ; preds = %328
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i64, i64* %69, i64 %340
  %342 = load i64, i64* %341, align 8
  %343 = load i32*, i32** %15, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 %342
  store i32* %344, i32** %15, align 8
  br label %345

345:                                              ; preds = %338
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, -1
  store i32 %348, i32* %9, align 4
  br label %325

349:                                              ; preds = %337, %325
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %7, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %7, align 4
  br label %285

353:                                              ; preds = %285
  %354 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %354)
  br label %355

355:                                              ; preds = %353, %32
  ret void
}

declare dso_local i64 @CCV_GET_DATA_TYPE_SIZE(i32) #1

declare dso_local i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @ccv_nnc_tensor_count(i32*, i32) #1

declare dso_local i32 @ccv_nnc_tensor_nd(i32*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ccv_max(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
