; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_region_layer.c_get_region_detections.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_region_layer.c_get_region_detections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { float*, float, float*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_region_detections(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 %1, i32 %2, i32 %3, i32 %4, float %5, i32* %6, float %7, i32 %8, %struct.TYPE_8__* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca i32*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca float, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca float, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca float, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store float %5, float* %15, align 4
  store i32* %6, i32** %16, align 8
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %19, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %43 = load float*, float** %42, align 8
  store float* %43, float** %24, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %226

47:                                               ; preds = %10
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %49, i64 %52
  store float* %53, float** %25, align 8
  store i32 0, i32* %21, align 4
  br label %54

54:                                               ; preds = %192, %47
  %55 = load i32, i32* %21, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %195

59:                                               ; preds = %54
  store i32 0, i32* %20, align 4
  br label %60

60:                                               ; preds = %188, %59
  %61 = load i32, i32* %20, align 4
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 2
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %191

66:                                               ; preds = %60
  store i32 0, i32* %22, align 4
  br label %67

67:                                               ; preds = %184, %66
  %68 = load i32, i32* %22, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %187

72:                                               ; preds = %67
  store i32 0, i32* %23, align 4
  br label %73

73:                                               ; preds = %180, %72
  %74 = load i32, i32* %23, align 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %76, %78
  %80 = add nsw i32 %79, 1
  %81 = icmp slt i32 %74, %80
  br i1 %81, label %82, label %183

82:                                               ; preds = %73
  %83 = load i32, i32* %23, align 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %83, %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %86, %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %89, %91
  %93 = load i32, i32* %22, align 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %93, %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %96, %98
  %100 = add nsw i32 %92, %99
  %101 = load i32, i32* %21, align 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %101, %103
  %105 = add nsw i32 %100, %104
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %26, align 4
  %108 = load i32, i32* %23, align 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %108, %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %111, %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %114, %116
  %118 = load i32, i32* %22, align 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %118, %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %121, %123
  %125 = add nsw i32 %117, %124
  %126 = load i32, i32* %21, align 4
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %126, %128
  %130 = add nsw i32 %125, %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %20, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sub nsw i32 %134, 1
  %136 = add nsw i32 %130, %135
  store i32 %136, i32* %27, align 4
  %137 = load float*, float** %25, align 8
  %138 = load i32, i32* %26, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  %141 = load float, float* %140, align 4
  store float %141, float* %28, align 4
  %142 = load float*, float** %25, align 8
  %143 = load i32, i32* %27, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %142, i64 %144
  %146 = load float, float* %145, align 4
  %147 = load float*, float** %25, align 8
  %148 = load i32, i32* %26, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %147, i64 %149
  store float %146, float* %150, align 4
  %151 = load float, float* %28, align 4
  %152 = load float*, float** %25, align 8
  %153 = load i32, i32* %27, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %152, i64 %154
  store float %151, float* %155, align 4
  %156 = load i32, i32* %23, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %82
  %159 = load float*, float** %25, align 8
  %160 = load i32, i32* %26, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %159, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fneg float %163
  %165 = load float*, float** %25, align 8
  %166 = load i32, i32* %26, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  store float %164, float* %168, align 4
  %169 = load float*, float** %25, align 8
  %170 = load i32, i32* %27, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float, float* %169, i64 %171
  %173 = load float, float* %172, align 4
  %174 = fneg float %173
  %175 = load float*, float** %25, align 8
  %176 = load i32, i32* %27, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  store float %174, float* %178, align 4
  br label %179

179:                                              ; preds = %158, %82
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %23, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %23, align 4
  br label %73

183:                                              ; preds = %73
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %22, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %22, align 4
  br label %67

187:                                              ; preds = %67
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %20, align 4
  br label %60

191:                                              ; preds = %60
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %21, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %21, align 4
  br label %54

195:                                              ; preds = %54
  store i32 0, i32* %20, align 4
  br label %196

196:                                              ; preds = %222, %195
  %197 = load i32, i32* %20, align 4
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %225

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %203 = load float*, float** %202, align 8
  %204 = load i32, i32* %20, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %203, i64 %205
  %207 = load float, float* %206, align 4
  %208 = load float*, float** %25, align 8
  %209 = load i32, i32* %20, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %208, i64 %210
  %212 = load float, float* %211, align 4
  %213 = fadd float %207, %212
  %214 = fpext float %213 to double
  %215 = fdiv double %214, 2.000000e+00
  %216 = fptrunc double %215 to float
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %218 = load float*, float** %217, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %218, i64 %220
  store float %216, float* %221, align 4
  br label %222

222:                                              ; preds = %201
  %223 = load i32, i32* %20, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %20, align 4
  br label %196

225:                                              ; preds = %196
  br label %226

226:                                              ; preds = %225, %10
  store i32 0, i32* %20, align 4
  br label %227

227:                                              ; preds = %586, %226
  %228 = load i32, i32* %20, align 4
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = mul nsw i32 %230, %232
  %234 = icmp slt i32 %228, %233
  br i1 %234, label %235, label %589

235:                                              ; preds = %227
  %236 = load i32, i32* %20, align 4
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = sdiv i32 %236, %238
  store i32 %239, i32* %29, align 4
  %240 = load i32, i32* %20, align 4
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = srem i32 %240, %242
  store i32 %243, i32* %30, align 4
  store i32 0, i32* %22, align 4
  br label %244

244:                                              ; preds = %582, %235
  %245 = load i32, i32* %22, align 4
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %245, %247
  br i1 %248, label %249, label %585

249:                                              ; preds = %244
  %250 = load i32, i32* %22, align 4
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %250, %252
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = mul nsw i32 %253, %255
  %257 = load i32, i32* %20, align 4
  %258 = add nsw i32 %256, %257
  store i32 %258, i32* %31, align 4
  store i32 0, i32* %21, align 4
  br label %259

259:                                              ; preds = %274, %249
  %260 = load i32, i32* %21, align 4
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = icmp slt i32 %260, %262
  br i1 %263, label %264, label %277

264:                                              ; preds = %259
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %266 = load i32, i32* %31, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load float*, float** %269, align 8
  %271 = load i32, i32* %21, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %270, i64 %272
  store float 0.000000e+00, float* %273, align 4
  br label %274

274:                                              ; preds = %264
  %275 = load i32, i32* %21, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %21, align 4
  br label %259

277:                                              ; preds = %259
  %278 = load i32, i32* %22, align 4
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = mul nsw i32 %278, %280
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = mul nsw i32 %281, %283
  %285 = load i32, i32* %20, align 4
  %286 = add nsw i32 %284, %285
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 7
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @entry_index(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 0, i32 %286, i32 %288)
  store i32 %289, i32* %32, align 4
  %290 = load i32, i32* %22, align 4
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i32 %290, %292
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = mul nsw i32 %293, %295
  %297 = load i32, i32* %20, align 4
  %298 = add nsw i32 %296, %297
  %299 = call i32 @entry_index(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 0, i32 %298, i32 0)
  store i32 %299, i32* %33, align 4
  %300 = load i32, i32* %22, align 4
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %302 = load i32, i32* %301, align 4
  %303 = mul nsw i32 %300, %302
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = mul nsw i32 %303, %305
  %307 = load i32, i32* %20, align 4
  %308 = add nsw i32 %306, %307
  %309 = call i32 @entry_index(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 0, i32 %308, i32 4)
  store i32 %309, i32* %34, align 4
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 9
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %277
  br label %320

314:                                              ; preds = %277
  %315 = load float*, float** %24, align 8
  %316 = load i32, i32* %32, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %315, i64 %317
  %319 = load float, float* %318, align 4
  br label %320

320:                                              ; preds = %314, %313
  %321 = phi float [ 1.000000e+00, %313 ], [ %319, %314 ]
  store float %321, float* %35, align 4
  %322 = load float*, float** %24, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 10
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %22, align 4
  %326 = load i32, i32* %33, align 4
  %327 = load i32, i32* %30, align 4
  %328 = load i32, i32* %29, align 4
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = mul nsw i32 %334, %336
  %338 = call i32 @get_region_box(float* %322, i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %330, i32 %332, i32 %337)
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %340 = load i32, i32* %31, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 3
  store i32 %338, i32* %343, align 8
  %344 = load float, float* %35, align 4
  %345 = load float, float* %15, align 4
  %346 = fcmp ogt float %344, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %320
  %348 = load float, float* %35, align 4
  br label %350

349:                                              ; preds = %320
  br label %350

350:                                              ; preds = %349, %347
  %351 = phi float [ %348, %347 ], [ 0.000000e+00, %349 ]
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %353 = load i32, i32* %31, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 1
  store float %351, float* %356, align 8
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %358 = load i32, i32* %31, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 2
  %362 = load float*, float** %361, align 8
  %363 = icmp ne float* %362, null
  br i1 %363, label %364, label %399

364:                                              ; preds = %350
  store i32 0, i32* %21, align 4
  br label %365

365:                                              ; preds = %395, %364
  %366 = load i32, i32* %21, align 4
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 7
  %368 = load i32, i32* %367, align 8
  %369 = sub nsw i32 %368, 4
  %370 = icmp slt i32 %366, %369
  br i1 %370, label %371, label %398

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %373 = load float*, float** %372, align 8
  %374 = load i32, i32* %34, align 4
  %375 = load i32, i32* %21, align 4
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = mul nsw i32 %375, %377
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %380 = load i32, i32* %379, align 8
  %381 = mul nsw i32 %378, %380
  %382 = add nsw i32 %374, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds float, float* %373, i64 %383
  %385 = load float, float* %384, align 4
  %386 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %387 = load i32, i32* %31, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 2
  %391 = load float*, float** %390, align 8
  %392 = load i32, i32* %21, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds float, float* %391, i64 %393
  store float %385, float* %394, align 4
  br label %395

395:                                              ; preds = %371
  %396 = load i32, i32* %21, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %21, align 4
  br label %365

398:                                              ; preds = %365
  br label %399

399:                                              ; preds = %398, %350
  %400 = load i32, i32* %22, align 4
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %402 = load i32, i32* %401, align 4
  %403 = mul nsw i32 %400, %402
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = mul nsw i32 %403, %405
  %407 = load i32, i32* %20, align 4
  %408 = add nsw i32 %406, %407
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 7
  %410 = load i32, i32* %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 9
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  %414 = xor i1 %413, true
  %415 = zext i1 %414 to i32
  %416 = add nsw i32 %410, %415
  %417 = call i32 @entry_index(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 0, i32 %408, i32 %416)
  store i32 %417, i32* %36, align 4
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 8
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %522

421:                                              ; preds = %399
  %422 = load float*, float** %24, align 8
  %423 = load i32, i32* %36, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds float, float* %422, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 6
  %427 = load i32, i32* %426, align 4
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 8
  %429 = load i32, i32* %428, align 4
  %430 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %431 = load i32, i32* %430, align 4
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %433 = load i32, i32* %432, align 8
  %434 = mul nsw i32 %431, %433
  %435 = call i32 @hierarchy_predictions(float* %425, i32 %427, i32 %429, i32 0, i32 %434)
  %436 = load i32*, i32** %16, align 8
  %437 = icmp ne i32* %436, null
  br i1 %437, label %438, label %490

438:                                              ; preds = %421
  store i32 0, i32* %21, align 4
  br label %439

439:                                              ; preds = %486, %438
  %440 = load i32, i32* %21, align 4
  %441 = icmp slt i32 %440, 200
  br i1 %441, label %442, label %489

442:                                              ; preds = %439
  %443 = load i32, i32* %22, align 4
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %445 = load i32, i32* %444, align 4
  %446 = mul nsw i32 %443, %445
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %448 = load i32, i32* %447, align 8
  %449 = mul nsw i32 %446, %448
  %450 = load i32, i32* %20, align 4
  %451 = add nsw i32 %449, %450
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 7
  %453 = load i32, i32* %452, align 8
  %454 = add nsw i32 %453, 1
  %455 = load i32*, i32** %16, align 8
  %456 = load i32, i32* %21, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = add nsw i32 %454, %459
  %461 = call i32 @entry_index(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 0, i32 %451, i32 %460)
  store i32 %461, i32* %37, align 4
  %462 = load float, float* %35, align 4
  %463 = load float*, float** %24, align 8
  %464 = load i32, i32* %37, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds float, float* %463, i64 %465
  %467 = load float, float* %466, align 4
  %468 = fmul float %462, %467
  store float %468, float* %38, align 4
  %469 = load float, float* %38, align 4
  %470 = load float, float* %15, align 4
  %471 = fcmp ogt float %469, %470
  br i1 %471, label %472, label %474

472:                                              ; preds = %442
  %473 = load float, float* %38, align 4
  br label %475

474:                                              ; preds = %442
  br label %475

475:                                              ; preds = %474, %472
  %476 = phi float [ %473, %472 ], [ 0.000000e+00, %474 ]
  %477 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %478 = load i32, i32* %31, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %480, i32 0, i32 0
  %482 = load float*, float** %481, align 8
  %483 = load i32, i32* %21, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds float, float* %482, i64 %484
  store float %476, float* %485, align 4
  br label %486

486:                                              ; preds = %475
  %487 = load i32, i32* %21, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %21, align 4
  br label %439

489:                                              ; preds = %439
  br label %521

490:                                              ; preds = %421
  %491 = load float*, float** %24, align 8
  %492 = load i32, i32* %36, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds float, float* %491, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 8
  %496 = load i32, i32* %495, align 4
  %497 = load float, float* %17, align 4
  %498 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %499 = load i32, i32* %498, align 4
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %501 = load i32, i32* %500, align 8
  %502 = mul nsw i32 %499, %501
  %503 = call i32 @hierarchy_top_prediction(float* %494, i32 %496, float %497, i32 %502)
  store i32 %503, i32* %39, align 4
  %504 = load float, float* %35, align 4
  %505 = load float, float* %15, align 4
  %506 = fcmp ogt float %504, %505
  br i1 %506, label %507, label %509

507:                                              ; preds = %490
  %508 = load float, float* %35, align 4
  br label %510

509:                                              ; preds = %490
  br label %510

510:                                              ; preds = %509, %507
  %511 = phi float [ %508, %507 ], [ 0.000000e+00, %509 ]
  %512 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %513 = load i32, i32* %31, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 0
  %517 = load float*, float** %516, align 8
  %518 = load i32, i32* %39, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds float, float* %517, i64 %519
  store float %511, float* %520, align 4
  br label %521

521:                                              ; preds = %510, %489
  br label %581

522:                                              ; preds = %399
  %523 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %524 = load i32, i32* %31, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i64 %525
  %527 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %526, i32 0, i32 1
  %528 = load float, float* %527, align 8
  %529 = fcmp une float %528, 0.000000e+00
  br i1 %529, label %530, label %580

530:                                              ; preds = %522
  store i32 0, i32* %21, align 4
  br label %531

531:                                              ; preds = %576, %530
  %532 = load i32, i32* %21, align 4
  %533 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 6
  %534 = load i32, i32* %533, align 4
  %535 = icmp slt i32 %532, %534
  br i1 %535, label %536, label %579

536:                                              ; preds = %531
  %537 = load i32, i32* %22, align 4
  %538 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %539 = load i32, i32* %538, align 4
  %540 = mul nsw i32 %537, %539
  %541 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %542 = load i32, i32* %541, align 8
  %543 = mul nsw i32 %540, %542
  %544 = load i32, i32* %20, align 4
  %545 = add nsw i32 %543, %544
  %546 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 7
  %547 = load i32, i32* %546, align 8
  %548 = add nsw i32 %547, 1
  %549 = load i32, i32* %21, align 4
  %550 = add nsw i32 %548, %549
  %551 = call i32 @entry_index(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i32 0, i32 %545, i32 %550)
  store i32 %551, i32* %40, align 4
  %552 = load float, float* %35, align 4
  %553 = load float*, float** %24, align 8
  %554 = load i32, i32* %40, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds float, float* %553, i64 %555
  %557 = load float, float* %556, align 4
  %558 = fmul float %552, %557
  store float %558, float* %41, align 4
  %559 = load float, float* %41, align 4
  %560 = load float, float* %15, align 4
  %561 = fcmp ogt float %559, %560
  br i1 %561, label %562, label %564

562:                                              ; preds = %536
  %563 = load float, float* %41, align 4
  br label %565

564:                                              ; preds = %536
  br label %565

565:                                              ; preds = %564, %562
  %566 = phi float [ %563, %562 ], [ 0.000000e+00, %564 ]
  %567 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %568 = load i32, i32* %31, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %567, i64 %569
  %571 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %570, i32 0, i32 0
  %572 = load float*, float** %571, align 8
  %573 = load i32, i32* %21, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds float, float* %572, i64 %574
  store float %566, float* %575, align 4
  br label %576

576:                                              ; preds = %565
  %577 = load i32, i32* %21, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %21, align 4
  br label %531

579:                                              ; preds = %531
  br label %580

580:                                              ; preds = %579, %522
  br label %581

581:                                              ; preds = %580, %521
  br label %582

582:                                              ; preds = %581
  %583 = load i32, i32* %22, align 4
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %22, align 4
  br label %244

585:                                              ; preds = %244
  br label %586

586:                                              ; preds = %585
  %587 = load i32, i32* %20, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %20, align 4
  br label %227

589:                                              ; preds = %227
  %590 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %591 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %592 = load i32, i32* %591, align 4
  %593 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %594 = load i32, i32* %593, align 8
  %595 = mul nsw i32 %592, %594
  %596 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 5
  %597 = load i32, i32* %596, align 8
  %598 = mul nsw i32 %595, %597
  %599 = load i32, i32* %11, align 4
  %600 = load i32, i32* %12, align 4
  %601 = load i32, i32* %13, align 4
  %602 = load i32, i32* %14, align 4
  %603 = load i32, i32* %18, align 4
  %604 = call i32 @correct_region_boxes(%struct.TYPE_8__* %590, i32 %598, i32 %599, i32 %600, i32 %601, i32 %602, i32 %603)
  ret void
}

declare dso_local i32 @entry_index(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8, i32, i32, i32) #1

declare dso_local i32 @get_region_box(float*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hierarchy_predictions(float*, i32, i32, i32, i32) #1

declare dso_local i32 @hierarchy_top_prediction(float*, i32, float, i32) #1

declare dso_local i32 @correct_region_boxes(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
