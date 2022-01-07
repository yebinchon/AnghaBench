; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/util/extr_ccv_nnc_util_cpu_ref.c__ccv_nnc_tensor_nhwc_nchw.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/util/extr_ccv_nnc_util_cpu_ref.c__ccv_nnc_tensor_nhwc_nchw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { float* }
%struct.TYPE_7__ = type { i32* }

@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*)* @_ccv_nnc_tensor_nhwc_nchw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_tensor_nhwc_nchw(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %20 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %21 = add nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %5, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %6, align 8
  %25 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %26 = add nsw i32 %25, 2
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %7, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @ccv_nnc_tensor_nd(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ccv_nnc_tensor_nd(i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %40 = add nsw i32 %39, 2
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 1
  br label %48

48:                                               ; preds = %45, %2
  %49 = phi i1 [ true, %2 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %53 = add nsw i32 %52, 2
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 1
  br label %61

61:                                               ; preds = %58, %48
  %62 = phi i1 [ true, %48 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_9__* %65, i32* %24)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_9__* %67, i32* %28)
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %61
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  br label %79

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %71
  %80 = phi i32 [ %77, %71 ], [ 1, %78 ]
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  br label %91

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %83
  %92 = phi i32 [ %89, %83 ], [ 1, %90 ]
  %93 = icmp eq i32 %80, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  br label %106

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %98
  %107 = phi i32 [ %104, %98 ], [ 1, %105 ]
  store i32 %107, i32* %13, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 1, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %116, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %139 = zext i32 %138 to i64
  %140 = alloca i32, i64 %139, align 16
  store i64 %139, i64* %15, align 8
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %185, %106
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %188

145:                                              ; preds = %141
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %11, align 4
  %153 = sub nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %149, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 2
  %163 = load i32, i32* %12, align 4
  %164 = sub nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %160, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %156, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %174, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %140, i64 %183
  store i32 %181, i32* %184, align 4
  br label %185

185:                                              ; preds = %145
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %141

188:                                              ; preds = %141
  %189 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %194 = add nsw i32 %193, 2
  %195 = zext i32 %194 to i64
  %196 = alloca i32, i64 %195, align 16
  store i64 %195, i64* %16, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load float*, float** %199, align 8
  store float* %200, float** %17, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load float*, float** %203, align 8
  store float* %204, float** %18, align 8
  %205 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 0, i32* %205, align 16
  br label %206

206:                                              ; preds = %317, %188
  %207 = getelementptr inbounds i32, i32* %196, i64 0
  %208 = load i32, i32* %207, align 16
  %209 = load i32, i32* %13, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %321

211:                                              ; preds = %206
  %212 = getelementptr inbounds i32, i32* %196, i64 3
  store i32 0, i32* %212, align 4
  br label %213

213:                                              ; preds = %288, %211
  %214 = getelementptr inbounds i32, i32* %196, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %14, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %292

218:                                              ; preds = %213
  %219 = load float*, float** %17, align 8
  %220 = getelementptr inbounds i32, i32* %196, i64 3
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %219, i64 %222
  store float* %223, float** %19, align 8
  %224 = getelementptr inbounds i32, i32* %196, i64 1
  store i32 0, i32* %224, align 4
  br label %225

225:                                              ; preds = %272, %218
  %226 = getelementptr inbounds i32, i32* %196, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds i32, i32* %140, i64 0
  %229 = load i32, i32* %228, align 16
  %230 = icmp slt i32 %227, %229
  br i1 %230, label %231, label %276

231:                                              ; preds = %225
  %232 = getelementptr inbounds i32, i32* %196, i64 2
  store i32 0, i32* %232, align 8
  br label %233

233:                                              ; preds = %254, %231
  %234 = getelementptr inbounds i32, i32* %196, i64 2
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds i32, i32* %140, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %235, %237
  br i1 %238, label %239, label %258

239:                                              ; preds = %233
  %240 = load float*, float** %19, align 8
  %241 = getelementptr inbounds i32, i32* %196, i64 2
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds i32, i32* %24, i64 3
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %242, %244
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %240, i64 %246
  %248 = load float, float* %247, align 4
  %249 = load float*, float** %18, align 8
  %250 = getelementptr inbounds i32, i32* %196, i64 2
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %249, i64 %252
  store float %248, float* %253, align 4
  br label %254

254:                                              ; preds = %239
  %255 = getelementptr inbounds i32, i32* %196, i64 2
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 8
  br label %233

258:                                              ; preds = %233
  %259 = getelementptr inbounds i32, i32* %24, i64 2
  %260 = load i32, i32* %259, align 8
  %261 = getelementptr inbounds i32, i32* %24, i64 3
  %262 = load i32, i32* %261, align 4
  %263 = mul nsw i32 %260, %262
  %264 = load float*, float** %19, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds float, float* %264, i64 %265
  store float* %266, float** %19, align 8
  %267 = getelementptr inbounds i32, i32* %28, i64 3
  %268 = load i32, i32* %267, align 4
  %269 = load float*, float** %18, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds float, float* %269, i64 %270
  store float* %271, float** %18, align 8
  br label %272

272:                                              ; preds = %258
  %273 = getelementptr inbounds i32, i32* %196, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  br label %225

276:                                              ; preds = %225
  %277 = getelementptr inbounds i32, i32* %28, i64 2
  %278 = load i32, i32* %277, align 8
  %279 = getelementptr inbounds i32, i32* %140, i64 0
  %280 = load i32, i32* %279, align 16
  %281 = sub nsw i32 %278, %280
  %282 = getelementptr inbounds i32, i32* %28, i64 3
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %281, %283
  %285 = load float*, float** %18, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds float, float* %285, i64 %286
  store float* %287, float** %18, align 8
  br label %288

288:                                              ; preds = %276
  %289 = getelementptr inbounds i32, i32* %196, i64 3
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 4
  br label %213

292:                                              ; preds = %213
  %293 = getelementptr inbounds i32, i32* %24, i64 1
  %294 = load i32, i32* %293, align 4
  %295 = getelementptr inbounds i32, i32* %24, i64 2
  %296 = load i32, i32* %295, align 8
  %297 = mul nsw i32 %294, %296
  %298 = getelementptr inbounds i32, i32* %24, i64 3
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %297, %299
  %301 = load float*, float** %17, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds float, float* %301, i64 %302
  store float* %303, float** %17, align 8
  %304 = getelementptr inbounds i32, i32* %28, i64 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %14, align 4
  %307 = sub nsw i32 %305, %306
  %308 = getelementptr inbounds i32, i32* %28, i64 2
  %309 = load i32, i32* %308, align 8
  %310 = mul nsw i32 %307, %309
  %311 = getelementptr inbounds i32, i32* %28, i64 3
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 %310, %312
  %314 = load float*, float** %18, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds float, float* %314, i64 %315
  store float* %316, float** %18, align 8
  br label %317

317:                                              ; preds = %292
  %318 = getelementptr inbounds i32, i32* %196, i64 0
  %319 = load i32, i32* %318, align 16
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 16
  br label %206

321:                                              ; preds = %206
  %322 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %322)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ccv_nnc_tensor_nd(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_9__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
