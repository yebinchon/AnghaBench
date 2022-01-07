; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/cmd/convolution/cpu_opt/extr__ccv_nnc_conv_cpu_gemm.c__ccv_nnc_conv_forw_gemm_cpu_opt.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/cmd/convolution/cpu_opt/extr__ccv_nnc_conv_cpu_gemm.c__ccv_nnc_conv_forw_gemm_cpu_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i64*, i64* }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_20__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }

@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4
@CCV_32F = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@CCV_B_TRANSPOSE = common dso_local global i32 0, align 4
@CCV_NNC_EXEC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ccv_nnc_conv_forw_gemm_cpu_opt(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2, %struct.TYPE_26__* byval(%struct.TYPE_26__) align 8 %3, %struct.TYPE_25__* %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_27__, align 8
  %15 = alloca %struct.TYPE_27__, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %9, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %20 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_25__* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %26 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_25__* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %32 = icmp ne %struct.TYPE_25__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %5
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %35 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_25__* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %33, %5
  %39 = phi i1 [ true, %5 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %43 = call i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_25__* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @ccv_nnc_tensor_nd(i32* %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %55 = add nsw i32 %54, 1
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %38
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %60 = add nsw i32 %59, 2
  %61 = icmp eq i32 %58, %60
  br label %62

62:                                               ; preds = %57, %38
  %63 = phi i1 [ true, %38 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %68 = add nsw i32 %67, 1
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  br label %81

75:                                               ; preds = %62
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i32* [ %74, %70 ], [ %80, %75 ]
  store i32* %82, i32** %11, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @ccv_nnc_tensor_nd(i32* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %90 = add nsw i32 %89, 1
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %95 = add nsw i32 %94, 2
  %96 = icmp eq i32 %93, %95
  br label %97

97:                                               ; preds = %92, %81
  %98 = phi i1 [ true, %81 ], [ %96, %92 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %103 = add nsw i32 %102, 1
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  br label %116

110:                                              ; preds = %97
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  br label %116

116:                                              ; preds = %110, %105
  %117 = phi i32* [ %109, %105 ], [ %115, %110 ]
  store i32* %117, i32** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br label %131

131:                                              ; preds = %124, %116
  %132 = phi i1 [ false, %116 ], [ %130, %124 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br label %148

148:                                              ; preds = %141, %131
  %149 = phi i1 [ false, %131 ], [ %147, %141 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32*, i32** %11, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %13, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %154, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i32*, i32** %11, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %13, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %163, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp sle i32 %174, 1
  br i1 %175, label %176, label %183

176:                                              ; preds = %148
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp sle i32 %181, 1
  br label %183

183:                                              ; preds = %176, %148
  %184 = phi i1 [ false, %148 ], [ %182, %176 ]
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = load i32*, i32** %11, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %11, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %189, %192
  %194 = load i32*, i32** %11, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @CCV_32F, align 4
  %198 = load i32, i32* @CCV_C1, align 4
  %199 = or i32 %197, %198
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call { i32, i64 } @ccv_dense_matrix(i32 %193, i32 %196, i32 %199, i32 %203, i32 0)
  %205 = bitcast %struct.TYPE_27__* %14 to { i32, i64 }*
  %206 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %205, i32 0, i32 0
  %207 = extractvalue { i32, i64 } %204, 0
  store i32 %207, i32* %206, align 8
  %208 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %205, i32 0, i32 1
  %209 = extractvalue { i32, i64 } %204, 1
  store i64 %209, i64* %208, align 8
  %210 = load i32*, i32** %13, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %13, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %212, %215
  %217 = load i32*, i32** %13, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @CCV_32F, align 4
  %221 = load i32, i32* @CCV_C1, align 4
  %222 = or i32 %220, %221
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = call { i32, i64 } @ccv_dense_matrix(i32 %216, i32 %219, i32 %222, i32 %226, i32 0)
  %228 = bitcast %struct.TYPE_27__* %15 to { i32, i64 }*
  %229 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %228, i32 0, i32 0
  %230 = extractvalue { i32, i64 } %227, 0
  store i32 %230, i32* %229, align 8
  %231 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %228, i32 0, i32 1
  %232 = extractvalue { i32, i64 } %227, 1
  store i64 %232, i64* %231, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %234 = icmp ne %struct.TYPE_25__* %233, null
  br i1 %234, label %235, label %267

235:                                              ; preds = %183
  store i32 0, i32* %16, align 4
  br label %236

236:                                              ; preds = %263, %235
  %237 = load i32, i32* %16, align 4
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %266

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* %16, align 4
  %246 = load i32*, i32** %13, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %245, %248
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %244, %250
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %13, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = mul i64 4, %259
  %261 = trunc i64 %260 to i32
  %262 = call i32 @memcpy(i64 %251, i32 %255, i32 %261)
  br label %263

263:                                              ; preds = %241
  %264 = load i32, i32* %16, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %16, align 4
  br label %236

266:                                              ; preds = %236
  br label %267

267:                                              ; preds = %266, %183
  store %struct.TYPE_27__* %15, %struct.TYPE_27__** %17, align 8
  %268 = load i32*, i32** %13, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 2
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** %11, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 2
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @CCV_32F, align 4
  %275 = load i32, i32* @CCV_C1, align 4
  %276 = or i32 %274, %275
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call { i32, i64 } @ccv_dense_matrix(i32 %270, i32 %273, i32 %276, i32 %280, i32 0)
  %282 = bitcast %struct.TYPE_27__* %18 to { i32, i64 }*
  %283 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %282, i32 0, i32 0
  %284 = extractvalue { i32, i64 } %281, 0
  store i32 %284, i32* %283, align 8
  %285 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %282, i32 0, i32 1
  %286 = extractvalue { i32, i64 } %281, 1
  store i64 %286, i64* %285, align 8
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %288 = icmp ne %struct.TYPE_25__* %287, null
  br i1 %288, label %289, label %294

289:                                              ; preds = %267
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %291 = load i32, i32* @CCV_B_TRANSPOSE, align 4
  %292 = bitcast %struct.TYPE_27__** %17 to i32**
  %293 = call i32 @ccv_gemm(%struct.TYPE_27__* %14, %struct.TYPE_27__* %18, i32 1, %struct.TYPE_27__* %290, i32 1, i32 %291, i32** %292, i32 0)
  br label %298

294:                                              ; preds = %267
  %295 = load i32, i32* @CCV_B_TRANSPOSE, align 4
  %296 = bitcast %struct.TYPE_27__** %17 to i32**
  %297 = call i32 @ccv_gemm(%struct.TYPE_27__* %14, %struct.TYPE_27__* %18, i32 1, %struct.TYPE_27__* null, i32 0, i32 %295, i32** %296, i32 0)
  br label %298

298:                                              ; preds = %294, %289
  %299 = load i32, i32* @CCV_NNC_EXEC_SUCCESS, align 4
  ret i32 %299
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CCV_IS_TENSOR_VIEW(%struct.TYPE_25__*) #1

declare dso_local i32 @ccv_nnc_tensor_nd(i32*) #1

declare dso_local { i32, i64 } @ccv_dense_matrix(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @ccv_gemm(%struct.TYPE_27__*, %struct.TYPE_27__*, i32, %struct.TYPE_27__*, i32, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
