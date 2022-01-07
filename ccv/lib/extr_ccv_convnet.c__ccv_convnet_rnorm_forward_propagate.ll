; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_rnorm_forward_propagate.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_convnet.c__ccv_convnet_rnorm_forward_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, float, float, float }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { float* }

@CCV_32F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__**, %struct.TYPE_16__**)* @_ccv_convnet_rnorm_forward_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_convnet_rnorm_forward_propagate(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__** %2, %struct.TYPE_16__** %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca %struct.TYPE_16__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_16__*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__** %3, %struct.TYPE_16__*** %8, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ccv_convnet_make_output(%struct.TYPE_17__* %34, i32 %37, i32 %40, i32* %9, i32* %10, i32* %11)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load float, float* %50, align 4
  store float %51, float* %13, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load float, float* %55, align 4
  store float %56, float* %14, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load float, float* %60, align 4
  store float %61, float* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %16, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @CCV_GET_DATA_TYPE(i32 %66)
  %68 = load i32, i32* @CCV_32F, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @CCV_GET_CHANNEL(i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* @CCV_32F, align 4
  %77 = load i32, i32* %17, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %18, align 4
  %79 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call %struct.TYPE_16__* @ccv_dense_matrix_renew(%struct.TYPE_16__* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %86, align 8
  store %struct.TYPE_16__* %85, %struct.TYPE_16__** %19, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load float*, float** %89, align 8
  store float* %90, float** %25, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load float*, float** %93, align 8
  store float* %94, float** %26, align 8
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %27, align 4
  %98 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %99 = icmp ne %struct.TYPE_16__** %98, null
  br i1 %99, label %100, label %273

100:                                              ; preds = %4
  %101 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* %18, align 4
  %107 = call %struct.TYPE_16__* @ccv_dense_matrix_renew(%struct.TYPE_16__* %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  store %struct.TYPE_16__* %107, %struct.TYPE_16__** %108, align 8
  store %struct.TYPE_16__* %107, %struct.TYPE_16__** %28, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load float*, float** %111, align 8
  store float* %112, float** %29, align 8
  store i32 0, i32* %20, align 4
  br label %113

113:                                              ; preds = %269, %100
  %114 = load i32, i32* %20, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %272

119:                                              ; preds = %113
  store i32 0, i32* %21, align 4
  br label %120

120:                                              ; preds = %241, %119
  %121 = load i32, i32* %21, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %244

126:                                              ; preds = %120
  store i32 0, i32* %24, align 4
  br label %127

127:                                              ; preds = %237, %126
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %240

131:                                              ; preds = %127
  store i32 0, i32* %22, align 4
  br label %132

132:                                              ; preds = %233, %131
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %27, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %236

136:                                              ; preds = %132
  %137 = load float*, float** %25, align 8
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %17, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* %27, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %140, %143
  %145 = load i32, i32* %22, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %137, i64 %147
  %149 = load float, float* %148, align 4
  store float %149, float* %30, align 4
  store float 0.000000e+00, float* %31, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %16, align 4
  %152 = sub nsw i32 %150, %151
  %153 = call i32 @ccv_max(i32 %152, i32 0)
  store i32 %153, i32* %23, align 4
  br label %154

154:                                              ; preds = %193, %136
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %27, align 4
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @ccv_min(i32 %158, i32 %160)
  %162 = icmp sle i32 %155, %161
  br i1 %162, label %163, label %196

163:                                              ; preds = %154
  %164 = load float*, float** %25, align 8
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %17, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %27, align 4
  %170 = mul nsw i32 %168, %169
  %171 = add nsw i32 %167, %170
  %172 = load i32, i32* %23, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %164, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float*, float** %25, align 8
  %178 = load i32, i32* %21, align 4
  %179 = load i32, i32* %17, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %27, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %180, %183
  %185 = load i32, i32* %23, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %177, i64 %187
  %189 = load float, float* %188, align 4
  %190 = fmul float %176, %189
  %191 = load float, float* %31, align 4
  %192 = fadd float %191, %190
  store float %192, float* %31, align 4
  br label %193

193:                                              ; preds = %163
  %194 = load i32, i32* %23, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %23, align 4
  br label %154

196:                                              ; preds = %154
  %197 = load float, float* %13, align 4
  %198 = load float, float* %14, align 4
  %199 = load float, float* %31, align 4
  %200 = fmul float %198, %199
  %201 = fadd float %197, %200
  store float %201, float* %31, align 4
  %202 = load float, float* %31, align 4
  %203 = load float*, float** %29, align 8
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* %17, align 4
  %206 = mul nsw i32 %204, %205
  %207 = load i32, i32* %24, align 4
  %208 = load i32, i32* %27, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add nsw i32 %206, %209
  %211 = load i32, i32* %22, align 4
  %212 = add nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %203, i64 %213
  store float %202, float* %214, align 4
  %215 = load float, float* %30, align 4
  %216 = load float, float* %31, align 4
  %217 = load float, float* %15, align 4
  %218 = fneg float %217
  %219 = call float @powf(float %216, float %218) #3
  %220 = fmul float %215, %219
  %221 = load float*, float** %26, align 8
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* %17, align 4
  %224 = mul nsw i32 %222, %223
  %225 = load i32, i32* %24, align 4
  %226 = load i32, i32* %27, align 4
  %227 = mul nsw i32 %225, %226
  %228 = add nsw i32 %224, %227
  %229 = load i32, i32* %22, align 4
  %230 = add nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %221, i64 %231
  store float %220, float* %232, align 4
  br label %233

233:                                              ; preds = %196
  %234 = load i32, i32* %22, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %22, align 4
  br label %132

236:                                              ; preds = %132
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %24, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %24, align 4
  br label %127

240:                                              ; preds = %127
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %21, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %21, align 4
  br label %120

244:                                              ; preds = %120
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %17, align 4
  %249 = mul nsw i32 %247, %248
  %250 = load float*, float** %25, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds float, float* %250, i64 %251
  store float* %252, float** %25, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %17, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load float*, float** %29, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds float, float* %258, i64 %259
  store float* %260, float** %29, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %17, align 4
  %265 = mul nsw i32 %263, %264
  %266 = load float*, float** %26, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds float, float* %266, i64 %267
  store float* %268, float** %26, align 8
  br label %269

269:                                              ; preds = %244
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %20, align 4
  br label %113

272:                                              ; preds = %113
  br label %413

273:                                              ; preds = %4
  store i32 0, i32* %20, align 4
  br label %274

274:                                              ; preds = %409, %273
  %275 = load i32, i32* %20, align 4
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %412

280:                                              ; preds = %274
  store i32 0, i32* %21, align 4
  br label %281

281:                                              ; preds = %389, %280
  %282 = load i32, i32* %21, align 4
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %392

287:                                              ; preds = %281
  store i32 0, i32* %24, align 4
  br label %288

288:                                              ; preds = %385, %287
  %289 = load i32, i32* %24, align 4
  %290 = load i32, i32* %11, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %388

292:                                              ; preds = %288
  store i32 0, i32* %22, align 4
  br label %293

293:                                              ; preds = %381, %292
  %294 = load i32, i32* %22, align 4
  %295 = load i32, i32* %27, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %384

297:                                              ; preds = %293
  %298 = load float*, float** %25, align 8
  %299 = load i32, i32* %21, align 4
  %300 = load i32, i32* %17, align 4
  %301 = mul nsw i32 %299, %300
  %302 = load i32, i32* %24, align 4
  %303 = load i32, i32* %27, align 4
  %304 = mul nsw i32 %302, %303
  %305 = add nsw i32 %301, %304
  %306 = load i32, i32* %22, align 4
  %307 = add nsw i32 %305, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %298, i64 %308
  %310 = load float, float* %309, align 4
  store float %310, float* %32, align 4
  store float 0.000000e+00, float* %33, align 4
  %311 = load i32, i32* %22, align 4
  %312 = load i32, i32* %16, align 4
  %313 = sub nsw i32 %311, %312
  %314 = call i32 @ccv_max(i32 %313, i32 0)
  store i32 %314, i32* %23, align 4
  br label %315

315:                                              ; preds = %354, %297
  %316 = load i32, i32* %23, align 4
  %317 = load i32, i32* %22, align 4
  %318 = load i32, i32* %16, align 4
  %319 = add nsw i32 %317, %318
  %320 = load i32, i32* %27, align 4
  %321 = sub nsw i32 %320, 1
  %322 = call i32 @ccv_min(i32 %319, i32 %321)
  %323 = icmp sle i32 %316, %322
  br i1 %323, label %324, label %357

324:                                              ; preds = %315
  %325 = load float*, float** %25, align 8
  %326 = load i32, i32* %21, align 4
  %327 = load i32, i32* %17, align 4
  %328 = mul nsw i32 %326, %327
  %329 = load i32, i32* %24, align 4
  %330 = load i32, i32* %27, align 4
  %331 = mul nsw i32 %329, %330
  %332 = add nsw i32 %328, %331
  %333 = load i32, i32* %23, align 4
  %334 = add nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds float, float* %325, i64 %335
  %337 = load float, float* %336, align 4
  %338 = load float*, float** %25, align 8
  %339 = load i32, i32* %21, align 4
  %340 = load i32, i32* %17, align 4
  %341 = mul nsw i32 %339, %340
  %342 = load i32, i32* %24, align 4
  %343 = load i32, i32* %27, align 4
  %344 = mul nsw i32 %342, %343
  %345 = add nsw i32 %341, %344
  %346 = load i32, i32* %23, align 4
  %347 = add nsw i32 %345, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %338, i64 %348
  %350 = load float, float* %349, align 4
  %351 = fmul float %337, %350
  %352 = load float, float* %33, align 4
  %353 = fadd float %352, %351
  store float %353, float* %33, align 4
  br label %354

354:                                              ; preds = %324
  %355 = load i32, i32* %23, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %23, align 4
  br label %315

357:                                              ; preds = %315
  %358 = load float, float* %13, align 4
  %359 = load float, float* %14, align 4
  %360 = load float, float* %33, align 4
  %361 = fmul float %359, %360
  %362 = fadd float %358, %361
  store float %362, float* %33, align 4
  %363 = load float, float* %32, align 4
  %364 = load float, float* %33, align 4
  %365 = load float, float* %15, align 4
  %366 = fneg float %365
  %367 = call float @powf(float %364, float %366) #3
  %368 = fmul float %363, %367
  %369 = load float*, float** %26, align 8
  %370 = load i32, i32* %21, align 4
  %371 = load i32, i32* %17, align 4
  %372 = mul nsw i32 %370, %371
  %373 = load i32, i32* %24, align 4
  %374 = load i32, i32* %27, align 4
  %375 = mul nsw i32 %373, %374
  %376 = add nsw i32 %372, %375
  %377 = load i32, i32* %22, align 4
  %378 = add nsw i32 %376, %377
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds float, float* %369, i64 %379
  store float %368, float* %380, align 4
  br label %381

381:                                              ; preds = %357
  %382 = load i32, i32* %22, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %22, align 4
  br label %293

384:                                              ; preds = %293
  br label %385

385:                                              ; preds = %384
  %386 = load i32, i32* %24, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %24, align 4
  br label %288

388:                                              ; preds = %288
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %21, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %21, align 4
  br label %281

392:                                              ; preds = %281
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* %17, align 4
  %397 = mul nsw i32 %395, %396
  %398 = load float*, float** %25, align 8
  %399 = sext i32 %397 to i64
  %400 = getelementptr inbounds float, float* %398, i64 %399
  store float* %400, float** %25, align 8
  %401 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %402 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* %17, align 4
  %405 = mul nsw i32 %403, %404
  %406 = load float*, float** %26, align 8
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds float, float* %406, i64 %407
  store float* %408, float** %26, align 8
  br label %409

409:                                              ; preds = %392
  %410 = load i32, i32* %20, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %20, align 4
  br label %274

412:                                              ; preds = %274
  br label %413

413:                                              ; preds = %412, %272
  ret void
}

declare dso_local i32 @ccv_convnet_make_output(%struct.TYPE_17__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_GET_DATA_TYPE(i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local %struct.TYPE_16__* @ccv_dense_matrix_renew(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i32 @ccv_min(i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
