; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/util/extr_ccv_nnc_util_cpu_ref.c__ccv_nnc_tensor_transfer_cpu_ref.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/util/extr_ccv_nnc_util_cpu_ref.c__ccv_nnc_tensor_transfer_cpu_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { float*, float* }
%struct.TYPE_12__ = type { i64 }

@CCV_NNC_MAX_DIM_ALLOC = common dso_local global i32 0, align 4
@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_ccv_nnc_tensor_transfer_cpu_ref(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %16, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_11__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_11__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load float*, float** %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load float*, float** %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ccv_nnc_tensor_count(i64 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @CCV_GET_DATA_TYPE_SIZE(i64 %48)
  %50 = mul nsw i32 %44, %49
  %51 = call i32 @memcpy(float* %35, float* %39, i32 %50)
  br label %292

52:                                               ; preds = %27, %2
  %53 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %5, align 8
  %56 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %6, align 8
  %57 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %58 = zext i32 %57 to i64
  %59 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %7, align 8
  %60 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %61 = zext i32 %60 to i64
  %62 = alloca i32, i64 %61, align 16
  store i64 %61, i64* %8, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = call i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_11__* %63, i32* %56)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = call i32 @ccv_nnc_tensor_view_check_dim(%struct.TYPE_11__* %65, i32* %56)
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_11__* %68, i32* %59)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = call i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_11__* %70, i32* %62)
  %72 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %77 = add nsw i32 %76, 2
  %78 = zext i32 %77 to i64
  %79 = alloca i32, i64 %78, align 16
  store i64 %78, i64* %9, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load float*, float** %82, align 8
  store float* %83, float** %10, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load float*, float** %86, align 8
  store float* %87, float** %11, align 8
  %88 = getelementptr inbounds i32, i32* %59, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds i32, i32* %56, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %181

93:                                               ; preds = %52
  %94 = getelementptr inbounds i32, i32* %62, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds i32, i32* %56, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %181

99:                                               ; preds = %93
  %100 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 0, i32* %100, align 16
  br label %101

101:                                              ; preds = %176, %99
  %102 = getelementptr inbounds i32, i32* %79, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = getelementptr inbounds i32, i32* %56, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %180

107:                                              ; preds = %101
  %108 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %143, %107
  %110 = getelementptr inbounds i32, i32* %79, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds i32, i32* %56, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %147

115:                                              ; preds = %109
  %116 = load float*, float** %11, align 8
  %117 = load float*, float** %10, align 8
  %118 = getelementptr inbounds i32, i32* %56, i64 2
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds i32, i32* %56, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %119, %121
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(float* %116, float* %117, i32 %125)
  %127 = getelementptr inbounds i32, i32* %59, i64 2
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds i32, i32* %59, i64 3
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %128, %130
  %132 = load float*, float** %10, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds float, float* %132, i64 %133
  store float* %134, float** %10, align 8
  %135 = getelementptr inbounds i32, i32* %62, i64 2
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds i32, i32* %62, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %136, %138
  %140 = load float*, float** %11, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds float, float* %140, i64 %141
  store float* %142, float** %11, align 8
  br label %143

143:                                              ; preds = %115
  %144 = getelementptr inbounds i32, i32* %79, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %109

147:                                              ; preds = %109
  %148 = getelementptr inbounds i32, i32* %59, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds i32, i32* %56, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %149, %151
  %153 = getelementptr inbounds i32, i32* %59, i64 2
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %152, %154
  %156 = getelementptr inbounds i32, i32* %59, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %155, %157
  %159 = load float*, float** %10, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds float, float* %159, i64 %160
  store float* %161, float** %10, align 8
  %162 = getelementptr inbounds i32, i32* %62, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds i32, i32* %56, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %163, %165
  %167 = getelementptr inbounds i32, i32* %62, i64 2
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %166, %168
  %170 = getelementptr inbounds i32, i32* %62, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %169, %171
  %173 = load float*, float** %11, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds float, float* %173, i64 %174
  store float* %175, float** %11, align 8
  br label %176

176:                                              ; preds = %147
  %177 = getelementptr inbounds i32, i32* %79, i64 0
  %178 = load i32, i32* %177, align 16
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 16
  br label %101

180:                                              ; preds = %101
  store i32 1, i32* %12, align 4
  br label %289

181:                                              ; preds = %93, %52
  %182 = getelementptr inbounds i32, i32* %79, i64 0
  store i32 0, i32* %182, align 16
  br label %183

183:                                              ; preds = %284, %181
  %184 = getelementptr inbounds i32, i32* %79, i64 0
  %185 = load i32, i32* %184, align 16
  %186 = getelementptr inbounds i32, i32* %56, i64 0
  %187 = load i32, i32* %186, align 16
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %189, label %288

189:                                              ; preds = %183
  %190 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %251, %189
  %192 = getelementptr inbounds i32, i32* %79, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds i32, i32* %56, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %255

197:                                              ; preds = %191
  %198 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 0, i32* %198, align 8
  br label %199

199:                                              ; preds = %224, %197
  %200 = getelementptr inbounds i32, i32* %79, i64 2
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds i32, i32* %56, i64 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %201, %203
  br i1 %204, label %205, label %228

205:                                              ; preds = %199
  %206 = load float*, float** %11, align 8
  %207 = load float*, float** %10, align 8
  %208 = getelementptr inbounds i32, i32* %56, i64 3
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 4
  %212 = trunc i64 %211 to i32
  %213 = call i32 @memcpy(float* %206, float* %207, i32 %212)
  %214 = getelementptr inbounds i32, i32* %59, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = load float*, float** %10, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds float, float* %216, i64 %217
  store float* %218, float** %10, align 8
  %219 = getelementptr inbounds i32, i32* %62, i64 3
  %220 = load i32, i32* %219, align 4
  %221 = load float*, float** %11, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds float, float* %221, i64 %222
  store float* %223, float** %11, align 8
  br label %224

224:                                              ; preds = %205
  %225 = getelementptr inbounds i32, i32* %79, i64 2
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 8
  br label %199

228:                                              ; preds = %199
  %229 = getelementptr inbounds i32, i32* %59, i64 2
  %230 = load i32, i32* %229, align 8
  %231 = getelementptr inbounds i32, i32* %56, i64 2
  %232 = load i32, i32* %231, align 8
  %233 = sub nsw i32 %230, %232
  %234 = getelementptr inbounds i32, i32* %59, i64 3
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %233, %235
  %237 = load float*, float** %10, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds float, float* %237, i64 %238
  store float* %239, float** %10, align 8
  %240 = getelementptr inbounds i32, i32* %62, i64 2
  %241 = load i32, i32* %240, align 8
  %242 = getelementptr inbounds i32, i32* %56, i64 2
  %243 = load i32, i32* %242, align 8
  %244 = sub nsw i32 %241, %243
  %245 = getelementptr inbounds i32, i32* %62, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %244, %246
  %248 = load float*, float** %11, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds float, float* %248, i64 %249
  store float* %250, float** %11, align 8
  br label %251

251:                                              ; preds = %228
  %252 = getelementptr inbounds i32, i32* %79, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  br label %191

255:                                              ; preds = %191
  %256 = getelementptr inbounds i32, i32* %59, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds i32, i32* %56, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %257, %259
  %261 = getelementptr inbounds i32, i32* %59, i64 2
  %262 = load i32, i32* %261, align 8
  %263 = mul nsw i32 %260, %262
  %264 = getelementptr inbounds i32, i32* %59, i64 3
  %265 = load i32, i32* %264, align 4
  %266 = mul nsw i32 %263, %265
  %267 = load float*, float** %10, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds float, float* %267, i64 %268
  store float* %269, float** %10, align 8
  %270 = getelementptr inbounds i32, i32* %62, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds i32, i32* %56, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %271, %273
  %275 = getelementptr inbounds i32, i32* %62, i64 2
  %276 = load i32, i32* %275, align 8
  %277 = mul nsw i32 %274, %276
  %278 = getelementptr inbounds i32, i32* %62, i64 3
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %277, %279
  %281 = load float*, float** %11, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds float, float* %281, i64 %282
  store float* %283, float** %11, align 8
  br label %284

284:                                              ; preds = %255
  %285 = getelementptr inbounds i32, i32* %79, i64 0
  %286 = load i32, i32* %285, align 16
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 16
  br label %183

288:                                              ; preds = %183
  store i32 0, i32* %12, align 4
  br label %289

289:                                              ; preds = %288, %180
  %290 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %290)
  %291 = load i32, i32* %12, align 4
  switch i32 %291, label %293 [
    i32 0, label %292
    i32 1, label %292
  ]

292:                                              ; preds = %31, %289, %289
  ret void

293:                                              ; preds = %289
  unreachable
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_11__*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @ccv_nnc_tensor_count(i64) #1

declare dso_local i32 @CCV_GET_DATA_TYPE_SIZE(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ccv_nnc_tensor_view_get_dim(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ccv_nnc_tensor_view_check_dim(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ccv_nnc_tensor_view_get_inc(%struct.TYPE_11__*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
