; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/ew/extr_ccv_nnc_ew_cpu_ref.c__ccv_nnc_ewdiv_forw_cpu_ref.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/ew/extr_ccv_nnc_ew_cpu_ref.c__ccv_nnc_ewdiv_forw_cpu_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { float* }
%struct.TYPE_13__ = type { i64* }

@CCV_NNC_MAX_DIM_ALLOC = common dso_local global i32 0, align 4
@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*)* @_ccv_nnc_ewdiv_forw_cpu_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_ewdiv_forw_cpu_ref(float %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca i32, align 4
  store float %0, float* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %30 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %9, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  %34 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %11, align 8
  %37 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %12, align 8
  %40 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %13, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = icmp eq %struct.TYPE_12__* %43, null
  br i1 %44, label %45, label %368

45:                                               ; preds = %4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = call i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_12__* %70, i32* %33)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = call i32 @ccv_nnc_tensor_view_check_dim(%struct.TYPE_12__* %72, i32* %33)
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_12__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %114, label %78

78:                                               ; preds = %45
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_12__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %114, label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = call i32 @ccv_nnc_tensor_count(i64* %86)
  store i32 %87, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %110, %82
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %88
  %93 = load float, float* %5, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load float*, float** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fdiv float %93, %101
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load float*, float** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  store float %102, float* %109, align 4
  br label %110

110:                                              ; preds = %92
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %88

113:                                              ; preds = %88
  store i32 1, i32* %16, align 4
  br label %796

114:                                              ; preds = %78, %45
  %115 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %116 = icmp eq i32 %115, 2
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_12__* %119, i32* %39)
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %122 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_12__* %121, i32* %42)
  %123 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %124 = add nsw i32 %123, 2
  %125 = zext i32 %124 to i64
  %126 = call i8* @llvm.stacksave()
  store i8* %126, i8** %17, align 8
  %127 = alloca i32, i64 %125, align 16
  store i64 %125, i64* %18, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load float*, float** %130, align 8
  store float* %131, float** %19, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load float*, float** %134, align 8
  store float* %135, float** %20, align 8
  %136 = getelementptr inbounds i32, i32* %33, i64 2
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds i32, i32* %33, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %137, %139
  store i32 %140, i32* %21, align 4
  %141 = getelementptr inbounds i32, i32* %39, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds i32, i32* %33, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %243

146:                                              ; preds = %114
  %147 = getelementptr inbounds i32, i32* %42, i64 3
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds i32, i32* %33, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %243

152:                                              ; preds = %146
  %153 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 0, i32* %153, align 16
  br label %154

154:                                              ; preds = %238, %152
  %155 = getelementptr inbounds i32, i32* %127, i64 0
  %156 = load i32, i32* %155, align 16
  %157 = getelementptr inbounds i32, i32* %33, i64 0
  %158 = load i32, i32* %157, align 16
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %242

160:                                              ; preds = %154
  %161 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %205, %160
  %163 = getelementptr inbounds i32, i32* %127, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds i32, i32* %33, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %164, %166
  br i1 %167, label %168, label %209

168:                                              ; preds = %162
  store i32 0, i32* %14, align 4
  br label %169

169:                                              ; preds = %185, %168
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %21, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %188

173:                                              ; preds = %169
  %174 = load float, float* %5, align 4
  %175 = load float*, float** %19, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  %179 = load float, float* %178, align 4
  %180 = fdiv float %174, %179
  %181 = load float*, float** %20, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %181, i64 %183
  store float %180, float* %184, align 4
  br label %185

185:                                              ; preds = %173
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %169

188:                                              ; preds = %169
  %189 = getelementptr inbounds i32, i32* %39, i64 2
  %190 = load i32, i32* %189, align 8
  %191 = getelementptr inbounds i32, i32* %39, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %190, %192
  %194 = load float*, float** %19, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds float, float* %194, i64 %195
  store float* %196, float** %19, align 8
  %197 = getelementptr inbounds i32, i32* %42, i64 2
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds i32, i32* %42, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %198, %200
  %202 = load float*, float** %20, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds float, float* %202, i64 %203
  store float* %204, float** %20, align 8
  br label %205

205:                                              ; preds = %188
  %206 = getelementptr inbounds i32, i32* %127, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  br label %162

209:                                              ; preds = %162
  %210 = getelementptr inbounds i32, i32* %39, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds i32, i32* %33, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %211, %213
  %215 = getelementptr inbounds i32, i32* %39, i64 2
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %214, %216
  %218 = getelementptr inbounds i32, i32* %39, i64 3
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %217, %219
  %221 = load float*, float** %19, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds float, float* %221, i64 %222
  store float* %223, float** %19, align 8
  %224 = getelementptr inbounds i32, i32* %42, i64 1
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds i32, i32* %33, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %225, %227
  %229 = getelementptr inbounds i32, i32* %42, i64 2
  %230 = load i32, i32* %229, align 8
  %231 = mul nsw i32 %228, %230
  %232 = getelementptr inbounds i32, i32* %42, i64 3
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %231, %233
  %235 = load float*, float** %20, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds float, float* %235, i64 %236
  store float* %237, float** %20, align 8
  br label %238

238:                                              ; preds = %209
  %239 = getelementptr inbounds i32, i32* %127, i64 0
  %240 = load i32, i32* %239, align 16
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 16
  br label %154

242:                                              ; preds = %154
  store i32 1, i32* %16, align 4
  br label %364

243:                                              ; preds = %146, %114
  %244 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 0, i32* %244, align 16
  br label %245

245:                                              ; preds = %359, %243
  %246 = getelementptr inbounds i32, i32* %127, i64 0
  %247 = load i32, i32* %246, align 16
  %248 = getelementptr inbounds i32, i32* %33, i64 0
  %249 = load i32, i32* %248, align 16
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %251, label %363

251:                                              ; preds = %245
  %252 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 0, i32* %252, align 4
  br label %253

253:                                              ; preds = %326, %251
  %254 = getelementptr inbounds i32, i32* %127, i64 1
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds i32, i32* %33, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp slt i32 %255, %257
  br i1 %258, label %259, label %330

259:                                              ; preds = %253
  %260 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 0, i32* %260, align 8
  br label %261

261:                                              ; preds = %299, %259
  %262 = getelementptr inbounds i32, i32* %127, i64 2
  %263 = load i32, i32* %262, align 8
  %264 = getelementptr inbounds i32, i32* %33, i64 2
  %265 = load i32, i32* %264, align 8
  %266 = icmp slt i32 %263, %265
  br i1 %266, label %267, label %303

267:                                              ; preds = %261
  store i32 0, i32* %14, align 4
  br label %268

268:                                              ; preds = %285, %267
  %269 = load i32, i32* %14, align 4
  %270 = getelementptr inbounds i32, i32* %33, i64 3
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %269, %271
  br i1 %272, label %273, label %288

273:                                              ; preds = %268
  %274 = load float, float* %5, align 4
  %275 = load float*, float** %19, align 8
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  %279 = load float, float* %278, align 4
  %280 = fdiv float %274, %279
  %281 = load float*, float** %20, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %281, i64 %283
  store float %280, float* %284, align 4
  br label %285

285:                                              ; preds = %273
  %286 = load i32, i32* %14, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %14, align 4
  br label %268

288:                                              ; preds = %268
  %289 = getelementptr inbounds i32, i32* %39, i64 3
  %290 = load i32, i32* %289, align 4
  %291 = load float*, float** %19, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds float, float* %291, i64 %292
  store float* %293, float** %19, align 8
  %294 = getelementptr inbounds i32, i32* %42, i64 3
  %295 = load i32, i32* %294, align 4
  %296 = load float*, float** %20, align 8
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds float, float* %296, i64 %297
  store float* %298, float** %20, align 8
  br label %299

299:                                              ; preds = %288
  %300 = getelementptr inbounds i32, i32* %127, i64 2
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 8
  br label %261

303:                                              ; preds = %261
  %304 = getelementptr inbounds i32, i32* %39, i64 2
  %305 = load i32, i32* %304, align 8
  %306 = getelementptr inbounds i32, i32* %33, i64 2
  %307 = load i32, i32* %306, align 8
  %308 = sub nsw i32 %305, %307
  %309 = getelementptr inbounds i32, i32* %39, i64 3
  %310 = load i32, i32* %309, align 4
  %311 = mul nsw i32 %308, %310
  %312 = load float*, float** %19, align 8
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds float, float* %312, i64 %313
  store float* %314, float** %19, align 8
  %315 = getelementptr inbounds i32, i32* %42, i64 2
  %316 = load i32, i32* %315, align 8
  %317 = getelementptr inbounds i32, i32* %33, i64 2
  %318 = load i32, i32* %317, align 8
  %319 = sub nsw i32 %316, %318
  %320 = getelementptr inbounds i32, i32* %42, i64 3
  %321 = load i32, i32* %320, align 4
  %322 = mul nsw i32 %319, %321
  %323 = load float*, float** %20, align 8
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds float, float* %323, i64 %324
  store float* %325, float** %20, align 8
  br label %326

326:                                              ; preds = %303
  %327 = getelementptr inbounds i32, i32* %127, i64 1
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %327, align 4
  br label %253

330:                                              ; preds = %253
  %331 = getelementptr inbounds i32, i32* %39, i64 1
  %332 = load i32, i32* %331, align 4
  %333 = getelementptr inbounds i32, i32* %33, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = sub nsw i32 %332, %334
  %336 = getelementptr inbounds i32, i32* %39, i64 2
  %337 = load i32, i32* %336, align 8
  %338 = mul nsw i32 %335, %337
  %339 = getelementptr inbounds i32, i32* %39, i64 3
  %340 = load i32, i32* %339, align 4
  %341 = mul nsw i32 %338, %340
  %342 = load float*, float** %19, align 8
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds float, float* %342, i64 %343
  store float* %344, float** %19, align 8
  %345 = getelementptr inbounds i32, i32* %42, i64 1
  %346 = load i32, i32* %345, align 4
  %347 = getelementptr inbounds i32, i32* %33, i64 1
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %346, %348
  %350 = getelementptr inbounds i32, i32* %42, i64 2
  %351 = load i32, i32* %350, align 8
  %352 = mul nsw i32 %349, %351
  %353 = getelementptr inbounds i32, i32* %42, i64 3
  %354 = load i32, i32* %353, align 4
  %355 = mul nsw i32 %352, %354
  %356 = load float*, float** %20, align 8
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds float, float* %356, i64 %357
  store float* %358, float** %20, align 8
  br label %359

359:                                              ; preds = %330
  %360 = getelementptr inbounds i32, i32* %127, i64 0
  %361 = load i32, i32* %360, align 16
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %360, align 16
  br label %245

363:                                              ; preds = %245
  store i32 0, i32* %16, align 4
  br label %364

364:                                              ; preds = %363, %242
  %365 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %365)
  %366 = load i32, i32* %16, align 4
  switch i32 %366, label %796 [
    i32 0, label %367
  ]

367:                                              ; preds = %364
  br label %795

368:                                              ; preds = %4
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 0
  %372 = load i64*, i64** %371, align 8
  %373 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %374 = add nsw i32 %373, 2
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %372, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = icmp eq i64 %377, 0
  %379 = zext i1 %378 to i32
  %380 = call i32 @assert(i32 %379)
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 0
  %384 = load i64*, i64** %383, align 8
  %385 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %386 = add nsw i32 %385, 2
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %384, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = icmp eq i64 %389, 0
  %391 = zext i1 %390 to i32
  %392 = call i32 @assert(i32 %391)
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 0
  %396 = load i64*, i64** %395, align 8
  %397 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %398 = add nsw i32 %397, 2
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %396, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = icmp eq i64 %401, 0
  %403 = zext i1 %402 to i32
  %404 = call i32 @assert(i32 %403)
  %405 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %406 = call i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_12__* %405, i32* %33)
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %408 = call i32 @ccv_nnc_tensor_view_check_dim(%struct.TYPE_12__* %407, i32* %33)
  %409 = call i32 @assert(i32 %408)
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %411 = call i32 @ccv_nnc_tensor_view_check_dim(%struct.TYPE_12__* %410, i32* %33)
  %412 = call i32 @assert(i32 %411)
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %414 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_12__* %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %465, label %416

416:                                              ; preds = %368
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %418 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_12__* %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %465, label %420

420:                                              ; preds = %416
  %421 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %422 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_12__* %421)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %465, label %424

424:                                              ; preds = %420
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 0
  %428 = load i64*, i64** %427, align 8
  %429 = call i32 @ccv_nnc_tensor_count(i64* %428)
  store i32 %429, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %430

430:                                              ; preds = %461, %424
  %431 = load i32, i32* %22, align 4
  %432 = load i32, i32* %23, align 4
  %433 = icmp slt i32 %431, %432
  br i1 %433, label %434, label %464

434:                                              ; preds = %430
  %435 = load float, float* %5, align 4
  %436 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 0
  %439 = load float*, float** %438, align 8
  %440 = load i32, i32* %22, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, float* %439, i64 %441
  %443 = load float, float* %442, align 4
  %444 = fmul float %435, %443
  %445 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %446, i32 0, i32 0
  %448 = load float*, float** %447, align 8
  %449 = load i32, i32* %22, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds float, float* %448, i64 %450
  %452 = load float, float* %451, align 4
  %453 = fdiv float %444, %452
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 0
  %457 = load float*, float** %456, align 8
  %458 = load i32, i32* %22, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds float, float* %457, i64 %459
  store float %453, float* %460, align 4
  br label %461

461:                                              ; preds = %434
  %462 = load i32, i32* %22, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %22, align 4
  br label %430

464:                                              ; preds = %430
  store i32 1, i32* %16, align 4
  br label %796

465:                                              ; preds = %420, %416, %368
  %466 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i32
  %469 = call i32 @assert(i32 %468)
  %470 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %471 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_12__* %470, i32* %36)
  %472 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %473 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_12__* %472, i32* %39)
  %474 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %475 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_12__* %474, i32* %42)
  %476 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %477 = add nsw i32 %476, 2
  %478 = zext i32 %477 to i64
  %479 = call i8* @llvm.stacksave()
  store i8* %479, i8** %24, align 8
  %480 = alloca i32, i64 %478, align 16
  store i64 %478, i64* %25, align 8
  %481 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i32 0, i32 0
  %484 = load float*, float** %483, align 8
  store float* %484, float** %26, align 8
  %485 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 0
  %488 = load float*, float** %487, align 8
  store float* %488, float** %27, align 8
  %489 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %490, i32 0, i32 0
  %492 = load float*, float** %491, align 8
  store float* %492, float** %28, align 8
  %493 = getelementptr inbounds i32, i32* %33, i64 2
  %494 = load i32, i32* %493, align 8
  %495 = getelementptr inbounds i32, i32* %33, i64 3
  %496 = load i32, i32* %495, align 4
  %497 = mul nsw i32 %494, %496
  store i32 %497, i32* %29, align 4
  %498 = getelementptr inbounds i32, i32* %36, i64 3
  %499 = load i32, i32* %498, align 4
  %500 = getelementptr inbounds i32, i32* %33, i64 3
  %501 = load i32, i32* %500, align 4
  %502 = icmp eq i32 %499, %501
  br i1 %502, label %503, label %634

503:                                              ; preds = %465
  %504 = getelementptr inbounds i32, i32* %39, i64 3
  %505 = load i32, i32* %504, align 4
  %506 = getelementptr inbounds i32, i32* %33, i64 3
  %507 = load i32, i32* %506, align 4
  %508 = icmp eq i32 %505, %507
  br i1 %508, label %509, label %634

509:                                              ; preds = %503
  %510 = getelementptr inbounds i32, i32* %42, i64 3
  %511 = load i32, i32* %510, align 4
  %512 = getelementptr inbounds i32, i32* %33, i64 3
  %513 = load i32, i32* %512, align 4
  %514 = icmp eq i32 %511, %513
  br i1 %514, label %515, label %634

515:                                              ; preds = %509
  %516 = getelementptr inbounds i32, i32* %480, i64 0
  store i32 0, i32* %516, align 16
  br label %517

517:                                              ; preds = %629, %515
  %518 = getelementptr inbounds i32, i32* %480, i64 0
  %519 = load i32, i32* %518, align 16
  %520 = getelementptr inbounds i32, i32* %33, i64 0
  %521 = load i32, i32* %520, align 16
  %522 = icmp slt i32 %519, %521
  br i1 %522, label %523, label %633

523:                                              ; preds = %517
  %524 = getelementptr inbounds i32, i32* %480, i64 1
  store i32 0, i32* %524, align 4
  br label %525

525:                                              ; preds = %582, %523
  %526 = getelementptr inbounds i32, i32* %480, i64 1
  %527 = load i32, i32* %526, align 4
  %528 = getelementptr inbounds i32, i32* %33, i64 1
  %529 = load i32, i32* %528, align 4
  %530 = icmp slt i32 %527, %529
  br i1 %530, label %531, label %586

531:                                              ; preds = %525
  store i32 0, i32* %22, align 4
  br label %532

532:                                              ; preds = %554, %531
  %533 = load i32, i32* %22, align 4
  %534 = load i32, i32* %29, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %557

536:                                              ; preds = %532
  %537 = load float, float* %5, align 4
  %538 = load float*, float** %26, align 8
  %539 = load i32, i32* %22, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds float, float* %538, i64 %540
  %542 = load float, float* %541, align 4
  %543 = fmul float %537, %542
  %544 = load float*, float** %27, align 8
  %545 = load i32, i32* %22, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds float, float* %544, i64 %546
  %548 = load float, float* %547, align 4
  %549 = fdiv float %543, %548
  %550 = load float*, float** %28, align 8
  %551 = load i32, i32* %22, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds float, float* %550, i64 %552
  store float %549, float* %553, align 4
  br label %554

554:                                              ; preds = %536
  %555 = load i32, i32* %22, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %22, align 4
  br label %532

557:                                              ; preds = %532
  %558 = getelementptr inbounds i32, i32* %36, i64 2
  %559 = load i32, i32* %558, align 8
  %560 = getelementptr inbounds i32, i32* %36, i64 3
  %561 = load i32, i32* %560, align 4
  %562 = mul nsw i32 %559, %561
  %563 = load float*, float** %26, align 8
  %564 = sext i32 %562 to i64
  %565 = getelementptr inbounds float, float* %563, i64 %564
  store float* %565, float** %26, align 8
  %566 = getelementptr inbounds i32, i32* %39, i64 2
  %567 = load i32, i32* %566, align 8
  %568 = getelementptr inbounds i32, i32* %39, i64 3
  %569 = load i32, i32* %568, align 4
  %570 = mul nsw i32 %567, %569
  %571 = load float*, float** %27, align 8
  %572 = sext i32 %570 to i64
  %573 = getelementptr inbounds float, float* %571, i64 %572
  store float* %573, float** %27, align 8
  %574 = getelementptr inbounds i32, i32* %42, i64 2
  %575 = load i32, i32* %574, align 8
  %576 = getelementptr inbounds i32, i32* %42, i64 3
  %577 = load i32, i32* %576, align 4
  %578 = mul nsw i32 %575, %577
  %579 = load float*, float** %28, align 8
  %580 = sext i32 %578 to i64
  %581 = getelementptr inbounds float, float* %579, i64 %580
  store float* %581, float** %28, align 8
  br label %582

582:                                              ; preds = %557
  %583 = getelementptr inbounds i32, i32* %480, i64 1
  %584 = load i32, i32* %583, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %583, align 4
  br label %525

586:                                              ; preds = %525
  %587 = getelementptr inbounds i32, i32* %36, i64 1
  %588 = load i32, i32* %587, align 4
  %589 = getelementptr inbounds i32, i32* %33, i64 1
  %590 = load i32, i32* %589, align 4
  %591 = sub nsw i32 %588, %590
  %592 = getelementptr inbounds i32, i32* %36, i64 2
  %593 = load i32, i32* %592, align 8
  %594 = mul nsw i32 %591, %593
  %595 = getelementptr inbounds i32, i32* %36, i64 3
  %596 = load i32, i32* %595, align 4
  %597 = mul nsw i32 %594, %596
  %598 = load float*, float** %26, align 8
  %599 = sext i32 %597 to i64
  %600 = getelementptr inbounds float, float* %598, i64 %599
  store float* %600, float** %26, align 8
  %601 = getelementptr inbounds i32, i32* %39, i64 1
  %602 = load i32, i32* %601, align 4
  %603 = getelementptr inbounds i32, i32* %33, i64 1
  %604 = load i32, i32* %603, align 4
  %605 = sub nsw i32 %602, %604
  %606 = getelementptr inbounds i32, i32* %39, i64 2
  %607 = load i32, i32* %606, align 8
  %608 = mul nsw i32 %605, %607
  %609 = getelementptr inbounds i32, i32* %39, i64 3
  %610 = load i32, i32* %609, align 4
  %611 = mul nsw i32 %608, %610
  %612 = load float*, float** %27, align 8
  %613 = sext i32 %611 to i64
  %614 = getelementptr inbounds float, float* %612, i64 %613
  store float* %614, float** %27, align 8
  %615 = getelementptr inbounds i32, i32* %42, i64 1
  %616 = load i32, i32* %615, align 4
  %617 = getelementptr inbounds i32, i32* %33, i64 1
  %618 = load i32, i32* %617, align 4
  %619 = sub nsw i32 %616, %618
  %620 = getelementptr inbounds i32, i32* %42, i64 2
  %621 = load i32, i32* %620, align 8
  %622 = mul nsw i32 %619, %621
  %623 = getelementptr inbounds i32, i32* %42, i64 3
  %624 = load i32, i32* %623, align 4
  %625 = mul nsw i32 %622, %624
  %626 = load float*, float** %28, align 8
  %627 = sext i32 %625 to i64
  %628 = getelementptr inbounds float, float* %626, i64 %627
  store float* %628, float** %28, align 8
  br label %629

629:                                              ; preds = %586
  %630 = getelementptr inbounds i32, i32* %480, i64 0
  %631 = load i32, i32* %630, align 16
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %630, align 16
  br label %517

633:                                              ; preds = %517
  store i32 1, i32* %16, align 4
  br label %791

634:                                              ; preds = %509, %503, %465
  %635 = getelementptr inbounds i32, i32* %480, i64 0
  store i32 0, i32* %635, align 16
  br label %636

636:                                              ; preds = %786, %634
  %637 = getelementptr inbounds i32, i32* %480, i64 0
  %638 = load i32, i32* %637, align 16
  %639 = getelementptr inbounds i32, i32* %33, i64 0
  %640 = load i32, i32* %639, align 16
  %641 = icmp slt i32 %638, %640
  br i1 %641, label %642, label %790

642:                                              ; preds = %636
  %643 = getelementptr inbounds i32, i32* %480, i64 1
  store i32 0, i32* %643, align 4
  br label %644

644:                                              ; preds = %739, %642
  %645 = getelementptr inbounds i32, i32* %480, i64 1
  %646 = load i32, i32* %645, align 4
  %647 = getelementptr inbounds i32, i32* %33, i64 1
  %648 = load i32, i32* %647, align 4
  %649 = icmp slt i32 %646, %648
  br i1 %649, label %650, label %743

650:                                              ; preds = %644
  %651 = getelementptr inbounds i32, i32* %480, i64 2
  store i32 0, i32* %651, align 8
  br label %652

652:                                              ; preds = %701, %650
  %653 = getelementptr inbounds i32, i32* %480, i64 2
  %654 = load i32, i32* %653, align 8
  %655 = getelementptr inbounds i32, i32* %33, i64 2
  %656 = load i32, i32* %655, align 8
  %657 = icmp slt i32 %654, %656
  br i1 %657, label %658, label %705

658:                                              ; preds = %652
  store i32 0, i32* %22, align 4
  br label %659

659:                                              ; preds = %682, %658
  %660 = load i32, i32* %22, align 4
  %661 = getelementptr inbounds i32, i32* %33, i64 3
  %662 = load i32, i32* %661, align 4
  %663 = icmp slt i32 %660, %662
  br i1 %663, label %664, label %685

664:                                              ; preds = %659
  %665 = load float, float* %5, align 4
  %666 = load float*, float** %26, align 8
  %667 = load i32, i32* %22, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds float, float* %666, i64 %668
  %670 = load float, float* %669, align 4
  %671 = fmul float %665, %670
  %672 = load float*, float** %27, align 8
  %673 = load i32, i32* %22, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds float, float* %672, i64 %674
  %676 = load float, float* %675, align 4
  %677 = fdiv float %671, %676
  %678 = load float*, float** %28, align 8
  %679 = load i32, i32* %22, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds float, float* %678, i64 %680
  store float %677, float* %681, align 4
  br label %682

682:                                              ; preds = %664
  %683 = load i32, i32* %22, align 4
  %684 = add nsw i32 %683, 1
  store i32 %684, i32* %22, align 4
  br label %659

685:                                              ; preds = %659
  %686 = getelementptr inbounds i32, i32* %36, i64 3
  %687 = load i32, i32* %686, align 4
  %688 = load float*, float** %26, align 8
  %689 = sext i32 %687 to i64
  %690 = getelementptr inbounds float, float* %688, i64 %689
  store float* %690, float** %26, align 8
  %691 = getelementptr inbounds i32, i32* %39, i64 3
  %692 = load i32, i32* %691, align 4
  %693 = load float*, float** %27, align 8
  %694 = sext i32 %692 to i64
  %695 = getelementptr inbounds float, float* %693, i64 %694
  store float* %695, float** %27, align 8
  %696 = getelementptr inbounds i32, i32* %42, i64 3
  %697 = load i32, i32* %696, align 4
  %698 = load float*, float** %28, align 8
  %699 = sext i32 %697 to i64
  %700 = getelementptr inbounds float, float* %698, i64 %699
  store float* %700, float** %28, align 8
  br label %701

701:                                              ; preds = %685
  %702 = getelementptr inbounds i32, i32* %480, i64 2
  %703 = load i32, i32* %702, align 8
  %704 = add nsw i32 %703, 1
  store i32 %704, i32* %702, align 8
  br label %652

705:                                              ; preds = %652
  %706 = getelementptr inbounds i32, i32* %36, i64 2
  %707 = load i32, i32* %706, align 8
  %708 = getelementptr inbounds i32, i32* %33, i64 2
  %709 = load i32, i32* %708, align 8
  %710 = sub nsw i32 %707, %709
  %711 = getelementptr inbounds i32, i32* %36, i64 3
  %712 = load i32, i32* %711, align 4
  %713 = mul nsw i32 %710, %712
  %714 = load float*, float** %26, align 8
  %715 = sext i32 %713 to i64
  %716 = getelementptr inbounds float, float* %714, i64 %715
  store float* %716, float** %26, align 8
  %717 = getelementptr inbounds i32, i32* %39, i64 2
  %718 = load i32, i32* %717, align 8
  %719 = getelementptr inbounds i32, i32* %33, i64 2
  %720 = load i32, i32* %719, align 8
  %721 = sub nsw i32 %718, %720
  %722 = getelementptr inbounds i32, i32* %39, i64 3
  %723 = load i32, i32* %722, align 4
  %724 = mul nsw i32 %721, %723
  %725 = load float*, float** %27, align 8
  %726 = sext i32 %724 to i64
  %727 = getelementptr inbounds float, float* %725, i64 %726
  store float* %727, float** %27, align 8
  %728 = getelementptr inbounds i32, i32* %42, i64 2
  %729 = load i32, i32* %728, align 8
  %730 = getelementptr inbounds i32, i32* %33, i64 2
  %731 = load i32, i32* %730, align 8
  %732 = sub nsw i32 %729, %731
  %733 = getelementptr inbounds i32, i32* %42, i64 3
  %734 = load i32, i32* %733, align 4
  %735 = mul nsw i32 %732, %734
  %736 = load float*, float** %28, align 8
  %737 = sext i32 %735 to i64
  %738 = getelementptr inbounds float, float* %736, i64 %737
  store float* %738, float** %28, align 8
  br label %739

739:                                              ; preds = %705
  %740 = getelementptr inbounds i32, i32* %480, i64 1
  %741 = load i32, i32* %740, align 4
  %742 = add nsw i32 %741, 1
  store i32 %742, i32* %740, align 4
  br label %644

743:                                              ; preds = %644
  %744 = getelementptr inbounds i32, i32* %36, i64 1
  %745 = load i32, i32* %744, align 4
  %746 = getelementptr inbounds i32, i32* %33, i64 1
  %747 = load i32, i32* %746, align 4
  %748 = sub nsw i32 %745, %747
  %749 = getelementptr inbounds i32, i32* %36, i64 2
  %750 = load i32, i32* %749, align 8
  %751 = mul nsw i32 %748, %750
  %752 = getelementptr inbounds i32, i32* %36, i64 3
  %753 = load i32, i32* %752, align 4
  %754 = mul nsw i32 %751, %753
  %755 = load float*, float** %26, align 8
  %756 = sext i32 %754 to i64
  %757 = getelementptr inbounds float, float* %755, i64 %756
  store float* %757, float** %26, align 8
  %758 = getelementptr inbounds i32, i32* %39, i64 1
  %759 = load i32, i32* %758, align 4
  %760 = getelementptr inbounds i32, i32* %33, i64 1
  %761 = load i32, i32* %760, align 4
  %762 = sub nsw i32 %759, %761
  %763 = getelementptr inbounds i32, i32* %39, i64 2
  %764 = load i32, i32* %763, align 8
  %765 = mul nsw i32 %762, %764
  %766 = getelementptr inbounds i32, i32* %39, i64 3
  %767 = load i32, i32* %766, align 4
  %768 = mul nsw i32 %765, %767
  %769 = load float*, float** %27, align 8
  %770 = sext i32 %768 to i64
  %771 = getelementptr inbounds float, float* %769, i64 %770
  store float* %771, float** %27, align 8
  %772 = getelementptr inbounds i32, i32* %42, i64 1
  %773 = load i32, i32* %772, align 4
  %774 = getelementptr inbounds i32, i32* %33, i64 1
  %775 = load i32, i32* %774, align 4
  %776 = sub nsw i32 %773, %775
  %777 = getelementptr inbounds i32, i32* %42, i64 2
  %778 = load i32, i32* %777, align 8
  %779 = mul nsw i32 %776, %778
  %780 = getelementptr inbounds i32, i32* %42, i64 3
  %781 = load i32, i32* %780, align 4
  %782 = mul nsw i32 %779, %781
  %783 = load float*, float** %28, align 8
  %784 = sext i32 %782 to i64
  %785 = getelementptr inbounds float, float* %783, i64 %784
  store float* %785, float** %28, align 8
  br label %786

786:                                              ; preds = %743
  %787 = getelementptr inbounds i32, i32* %480, i64 0
  %788 = load i32, i32* %787, align 16
  %789 = add nsw i32 %788, 1
  store i32 %789, i32* %787, align 16
  br label %636

790:                                              ; preds = %636
  store i32 0, i32* %16, align 4
  br label %791

791:                                              ; preds = %790, %633
  %792 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %792)
  %793 = load i32, i32* %16, align 4
  switch i32 %793, label %796 [
    i32 0, label %794
  ]

794:                                              ; preds = %791
  br label %795

795:                                              ; preds = %794, %367
  store i32 0, i32* %16, align 4
  br label %796

796:                                              ; preds = %795, %791, %464, %364, %113
  %797 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %797)
  %798 = load i32, i32* %16, align 4
  switch i32 %798, label %800 [
    i32 0, label %799
    i32 1, label %799
  ]

799:                                              ; preds = %796, %796
  ret void

800:                                              ; preds = %796
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @ccv_nnc_tensor_view_check_dim(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_12__*) #2

declare dso_local i32 @ccv_nnc_tensor_count(i64*) #2

declare dso_local i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_12__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
