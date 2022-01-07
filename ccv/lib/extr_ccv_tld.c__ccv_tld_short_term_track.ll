; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_short_term_track.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_short_term_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, i64 }
%struct.TYPE_32__ = type { float, float, i32, i32 }
%struct.TYPE_31__ = type { float, i32, i32, i32 }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_35__ = type { float, float }
%struct.TYPE_34__ = type { %struct.TYPE_30__, i64 }
%struct.TYPE_30__ = type { i64, i64 }

@TLD_GRID_SPARSITY = common dso_local global i32 0, align 4
@TLD_PATCH_SIZE = common dso_local global i32 0, align 4
@CCV_8U = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ <2 x float>, i64 } (%struct.TYPE_33__*, %struct.TYPE_33__*, <2 x float>, i64, i64, i64)* @_ccv_tld_short_term_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { <2 x float>, i64 } @_ccv_tld_short_term_track(%struct.TYPE_33__* %0, %struct.TYPE_33__* %1, <2 x float> %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_32__, align 4
  %8 = alloca %struct.TYPE_32__, align 4
  %9 = alloca %struct.TYPE_31__, align 4
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_35__, align 4
  %18 = alloca %struct.TYPE_36__*, align 8
  %19 = alloca %struct.TYPE_36__*, align 8
  %20 = alloca %struct.TYPE_33__*, align 8
  %21 = alloca %struct.TYPE_33__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca %struct.TYPE_35__*, align 8
  %30 = alloca %struct.TYPE_34__*, align 8
  %31 = alloca %struct.TYPE_34__*, align 8
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float*, align 8
  %37 = alloca float*, align 8
  %38 = alloca %struct.TYPE_35__*, align 8
  %39 = alloca %struct.TYPE_35__*, align 8
  %40 = alloca float*, align 8
  %41 = alloca %struct.TYPE_35__*, align 8
  %42 = alloca %struct.TYPE_35__*, align 8
  %43 = alloca %struct.TYPE_35__*, align 8
  %44 = alloca %struct.TYPE_35__*, align 8
  %45 = alloca float, align 4
  %46 = bitcast %struct.TYPE_32__* %8 to { <2 x float>, i64 }*
  %47 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %46, i32 0, i32 0
  store <2 x float> %2, <2 x float>* %47, align 4
  %48 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %46, i32 0, i32 1
  store i64 %3, i64* %48, align 4
  %49 = bitcast %struct.TYPE_31__* %9 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  store i64 %4, i64* %50, align 4
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  store i64 %5, i64* %51, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %10, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %11, align 8
  %52 = call { <2 x float>, i64 } @ccv_rect(i32 0, i32 0, i32 0, i32 0)
  %53 = bitcast %struct.TYPE_32__* %7 to { <2 x float>, i64 }*
  %54 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %53, i32 0, i32 0
  %55 = extractvalue { <2 x float>, i64 } %52, 0
  store <2 x float> %55, <2 x float>* %54, align 4
  %56 = getelementptr inbounds { <2 x float>, i64 }, { <2 x float>, i64 }* %53, i32 0, i32 1
  %57 = extractvalue { <2 x float>, i64 } %52, 1
  store i64 %57, i64* %56, align 4
  %58 = load i32, i32* @TLD_GRID_SPARSITY, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* @TLD_GRID_SPARSITY, align 4
  %61 = sub nsw i32 %60, 1
  %62 = mul nsw i32 %59, %61
  %63 = call %struct.TYPE_36__* @ccv_array_new(i32 8, i32 %62, i32 0)
  store %struct.TYPE_36__* %63, %struct.TYPE_36__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 0
  %65 = load float, float* %64, align 4
  %66 = load i32, i32* @TLD_GRID_SPARSITY, align 4
  %67 = sitofp i32 %66 to float
  %68 = fdiv float %65, %67
  store float %68, float* %13, align 4
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 1
  %70 = load float, float* %69, align 4
  %71 = load i32, i32* @TLD_GRID_SPARSITY, align 4
  %72 = sitofp i32 %71 to float
  %73 = fdiv float %70, %72
  store float %73, float* %14, align 4
  %74 = load float, float* %13, align 4
  %75 = fpext float %74 to double
  %76 = fmul double %75, 5.000000e-01
  %77 = fptrunc double %76 to float
  store float %77, float* %15, align 4
  br label %78

78:                                               ; preds = %115, %6
  %79 = load float, float* %15, align 4
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 0
  %81 = load float, float* %80, align 4
  %82 = fcmp olt float %79, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %78
  %84 = load float, float* %14, align 4
  %85 = fpext float %84 to double
  %86 = fmul double %85, 5.000000e-01
  %87 = fptrunc double %86 to float
  store float %87, float* %16, align 4
  br label %88

88:                                               ; preds = %110, %83
  %89 = load float, float* %16, align 4
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 1
  %91 = load float, float* %90, align 4
  %92 = fcmp olt float %89, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sitofp i32 %95 to float
  %97 = load float, float* %15, align 4
  %98 = fadd float %96, %97
  %99 = fptosi float %98 to i32
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to float
  %103 = load float, float* %16, align 4
  %104 = fadd float %102, %103
  %105 = fptosi float %104 to i32
  %106 = call <2 x float> @ccv_decimal_point(i32 %99, i32 %105)
  %107 = bitcast %struct.TYPE_35__* %17 to <2 x float>*
  store <2 x float> %106, <2 x float>* %107, align 4
  %108 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %109 = call i32 @ccv_array_push(%struct.TYPE_36__* %108, %struct.TYPE_35__* %17)
  br label %110

110:                                              ; preds = %93
  %111 = load float, float* %14, align 4
  %112 = load float, float* %16, align 4
  %113 = fadd float %112, %111
  store float %113, float* %16, align 4
  br label %88

114:                                              ; preds = %88
  br label %115

115:                                              ; preds = %114
  %116 = load float, float* %13, align 4
  %117 = load float, float* %15, align 4
  %118 = fadd float %117, %116
  store float %118, float* %15, align 4
  br label %78

119:                                              ; preds = %78
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sle i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %126 = call i32 @ccv_array_free(%struct.TYPE_36__* %125)
  br label %823

127:                                              ; preds = %119
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %18, align 8
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %130 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ccv_optical_flow_lucas_kanade(%struct.TYPE_33__* %128, %struct.TYPE_33__* %129, %struct.TYPE_36__* %130, %struct.TYPE_36__** %18, i32 %132, i32 %134, i32 %136)
  %138 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp sle i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %127
  %143 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %144 = call i32 @ccv_array_free(%struct.TYPE_36__* %143)
  %145 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %146 = call i32 @ccv_array_free(%struct.TYPE_36__* %145)
  br label %823

147:                                              ; preds = %127
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %19, align 8
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %149 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ccv_optical_flow_lucas_kanade(%struct.TYPE_33__* %148, %struct.TYPE_33__* %149, %struct.TYPE_36__* %150, %struct.TYPE_36__** %19, i32 %152, i32 %154, i32 %156)
  %158 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %159 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %160 = load i32, i32* @CCV_8U, align 4
  %161 = load i32, i32* @CCV_C1, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @ccv_compute_dense_matrix_size(i32 %158, i32 %159, i32 %162)
  %164 = call i64 @alloca(i32 %163)
  %165 = inttoptr i64 %164 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %165, %struct.TYPE_33__** %20, align 8
  %166 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %167 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %168 = load i32, i32* @CCV_8U, align 4
  %169 = load i32, i32* @CCV_C1, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @ccv_compute_dense_matrix_size(i32 %166, i32 %167, i32 %170)
  %172 = call i64 @alloca(i32 %171)
  %173 = inttoptr i64 %172 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %173, %struct.TYPE_33__** %21, align 8
  %174 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %175 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %176 = load i32, i32* @CCV_8U, align 4
  %177 = load i32, i32* @CCV_C1, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %180 = call %struct.TYPE_33__* @ccv_dense_matrix_new(i32 %174, i32 %175, i32 %178, %struct.TYPE_33__* %179, i32 0)
  store %struct.TYPE_33__* %180, %struct.TYPE_33__** %20, align 8
  %181 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %182 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %183 = load i32, i32* @CCV_8U, align 4
  %184 = load i32, i32* @CCV_C1, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %187 = call %struct.TYPE_33__* @ccv_dense_matrix_new(i32 %181, i32 %182, i32 %185, %struct.TYPE_33__* %186, i32 0)
  store %struct.TYPE_33__* %187, %struct.TYPE_33__** %21, align 8
  %188 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = mul i64 4, %190
  %192 = trunc i64 %191 to i32
  %193 = call i64 @alloca(i32 %192)
  %194 = inttoptr i64 %193 to i32*
  store i32* %194, i32** %26, align 8
  %195 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = mul i64 4, %197
  %199 = trunc i64 %198 to i32
  %200 = call i64 @alloca(i32 %199)
  %201 = inttoptr i64 %200 to float*
  store float* %201, float** %27, align 8
  %202 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = mul i64 4, %204
  %206 = trunc i64 %205 to i32
  %207 = call i64 @alloca(i32 %206)
  %208 = inttoptr i64 %207 to float*
  store float* %208, float** %28, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %209

209:                                              ; preds = %407, %147
  %210 = load i32, i32* %22, align 4
  %211 = sext i32 %210 to i64
  %212 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %211, %214
  br i1 %215, label %216, label %410

216:                                              ; preds = %209
  %217 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %218 = load i32, i32* %22, align 4
  %219 = call i64 @ccv_array_get(%struct.TYPE_36__* %217, i32 %218)
  %220 = inttoptr i64 %219 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %220, %struct.TYPE_35__** %29, align 8
  %221 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %222 = load i32, i32* %22, align 4
  %223 = call i64 @ccv_array_get(%struct.TYPE_36__* %221, i32 %222)
  %224 = inttoptr i64 %223 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %224, %struct.TYPE_34__** %30, align 8
  %225 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %226 = load i32, i32* %22, align 4
  %227 = call i64 @ccv_array_get(%struct.TYPE_36__* %225, i32 %226)
  %228 = inttoptr i64 %227 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %228, %struct.TYPE_34__** %31, align 8
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %406

233:                                              ; preds = %216
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %235 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %406

238:                                              ; preds = %233
  %239 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %240 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp sge i64 %242, 0
  br i1 %243, label %244, label %406

244:                                              ; preds = %238
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp slt i64 %248, %251
  br i1 %252, label %253, label %406

253:                                              ; preds = %244
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = icmp sge i64 %257, 0
  br i1 %258, label %259, label %406

259:                                              ; preds = %253
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp slt i64 %263, %266
  br i1 %267, label %268, label %406

268:                                              ; preds = %259
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %270 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp sge i64 %272, 0
  br i1 %273, label %274, label %406

274:                                              ; preds = %268
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp slt i64 %278, %281
  br i1 %282, label %283, label %406

283:                                              ; preds = %274
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %285 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp sge i64 %287, 0
  br i1 %288, label %289, label %406

289:                                              ; preds = %283
  %290 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %291 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = icmp slt i64 %293, %296
  br i1 %297, label %298, label %406

298:                                              ; preds = %289
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = sitofp i64 %302 to float
  %304 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %305 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %304, i32 0, i32 0
  %306 = load float, float* %305, align 4
  %307 = fsub float %303, %306
  %308 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = sitofp i64 %311 to float
  %313 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %314 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %313, i32 0, i32 0
  %315 = load float, float* %314, align 4
  %316 = fsub float %312, %315
  %317 = fmul float %307, %316
  %318 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = sitofp i64 %321 to float
  %323 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %324 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %323, i32 0, i32 1
  %325 = load float, float* %324, align 4
  %326 = fsub float %322, %325
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = sitofp i64 %330 to float
  %332 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %333 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %332, i32 0, i32 1
  %334 = load float, float* %333, align 4
  %335 = fsub float %331, %334
  %336 = fmul float %326, %335
  %337 = fadd float %317, %336
  %338 = load float*, float** %27, align 8
  %339 = load i32, i32* %24, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds float, float* %338, i64 %340
  store float %337, float* %341, align 4
  %342 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %343 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %344 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %343, i32 0, i32 1
  %345 = load float, float* %344, align 4
  %346 = fpext float %345 to double
  %347 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sitofp i32 %348 to double
  %350 = fmul double %349, 5.000000e-01
  %351 = fsub double %346, %350
  %352 = fptrunc double %351 to float
  %353 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  %354 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %353, i32 0, i32 0
  %355 = load float, float* %354, align 4
  %356 = fpext float %355 to double
  %357 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %358 = sub nsw i32 %357, 1
  %359 = sitofp i32 %358 to double
  %360 = fmul double %359, 5.000000e-01
  %361 = fsub double %356, %360
  %362 = fptrunc double %361 to float
  %363 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %364 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %365 = call i32 @ccv_decimal_slice(%struct.TYPE_33__* %342, %struct.TYPE_33__** %20, i32 0, float %352, float %362, i32 %363, i32 %364)
  %366 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %367 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %368 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = sitofp i64 %370 to double
  %372 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %373 = sub nsw i32 %372, 1
  %374 = sitofp i32 %373 to double
  %375 = fmul double %374, 5.000000e-01
  %376 = fsub double %371, %375
  %377 = fptrunc double %376 to float
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %379 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = sitofp i64 %381 to double
  %383 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %384 = sub nsw i32 %383, 1
  %385 = sitofp i32 %384 to double
  %386 = fmul double %385, 5.000000e-01
  %387 = fsub double %382, %386
  %388 = fptrunc double %387 to float
  %389 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %390 = load i32, i32* @TLD_PATCH_SIZE, align 4
  %391 = call i32 @ccv_decimal_slice(%struct.TYPE_33__* %366, %struct.TYPE_33__** %21, i32 0, float %377, float %388, i32 %389, i32 %390)
  %392 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %393 = load %struct.TYPE_33__*, %struct.TYPE_33__** %21, align 8
  %394 = call float @_ccv_tld_norm_cross_correlate(%struct.TYPE_33__* %392, %struct.TYPE_33__* %393)
  %395 = load float*, float** %28, align 8
  %396 = load i32, i32* %24, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds float, float* %395, i64 %397
  store float %394, float* %398, align 4
  %399 = load i32, i32* %22, align 4
  %400 = load i32*, i32** %26, align 8
  %401 = load i32, i32* %24, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  store i32 %399, i32* %403, align 4
  %404 = load i32, i32* %24, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %24, align 4
  br label %406

406:                                              ; preds = %298, %289, %283, %274, %268, %259, %253, %244, %238, %233, %216
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %22, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %22, align 4
  br label %209

410:                                              ; preds = %209
  %411 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %412 = call i32 @ccv_array_free(%struct.TYPE_36__* %411)
  %413 = load i32, i32* %24, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %410
  %416 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %417 = call i32 @ccv_array_free(%struct.TYPE_36__* %416)
  %418 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %419 = call i32 @ccv_array_free(%struct.TYPE_36__* %418)
  br label %823

420:                                              ; preds = %410
  %421 = load i32, i32* %24, align 4
  store i32 %421, i32* %25, align 4
  %422 = load float*, float** %28, align 8
  %423 = load i32, i32* %25, align 4
  %424 = sub nsw i32 %423, 1
  %425 = call float @_ccv_tld_median(float* %422, i32 0, i32 %424)
  store float %425, float* %32, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %426

426:                                              ; preds = %460, %420
  %427 = load i32, i32* %22, align 4
  %428 = load i32, i32* %25, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %463

430:                                              ; preds = %426
  %431 = load float*, float** %28, align 8
  %432 = load i32, i32* %22, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds float, float* %431, i64 %433
  %435 = load float, float* %434, align 4
  %436 = load float, float* %32, align 4
  %437 = fcmp ogt float %435, %436
  br i1 %437, label %438, label %459

438:                                              ; preds = %430
  %439 = load float*, float** %27, align 8
  %440 = load i32, i32* %22, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, float* %439, i64 %441
  %443 = load float, float* %442, align 4
  %444 = load float*, float** %27, align 8
  %445 = load i32, i32* %24, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds float, float* %444, i64 %446
  store float %443, float* %447, align 4
  %448 = load i32*, i32** %26, align 8
  %449 = load i32, i32* %22, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = load i32*, i32** %26, align 8
  %454 = load i32, i32* %24, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %453, i64 %455
  store i32 %452, i32* %456, align 4
  %457 = load i32, i32* %24, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %24, align 4
  br label %459

459:                                              ; preds = %438, %430
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %22, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %22, align 4
  br label %426

463:                                              ; preds = %426
  %464 = load i32, i32* %24, align 4
  store i32 %464, i32* %25, align 4
  %465 = load float*, float** %27, align 8
  %466 = load i32, i32* %25, align 4
  %467 = sub nsw i32 %466, 1
  %468 = call float @_ccv_tld_median(float* %465, i32 0, i32 %467)
  store float %468, float* %33, align 4
  %469 = load float, float* %33, align 4
  %470 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %471 = load float, float* %470, align 4
  %472 = fcmp oge float %469, %471
  br i1 %472, label %473, label %478

473:                                              ; preds = %463
  %474 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %475 = call i32 @ccv_array_free(%struct.TYPE_36__* %474)
  %476 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %477 = call i32 @ccv_array_free(%struct.TYPE_36__* %476)
  br label %823

478:                                              ; preds = %463
  %479 = load i32, i32* %24, align 4
  store i32 %479, i32* %25, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %480

480:                                              ; preds = %504, %478
  %481 = load i32, i32* %22, align 4
  %482 = load i32, i32* %25, align 4
  %483 = icmp slt i32 %481, %482
  br i1 %483, label %484, label %507

484:                                              ; preds = %480
  %485 = load float*, float** %27, align 8
  %486 = load i32, i32* %22, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds float, float* %485, i64 %487
  %489 = load float, float* %488, align 4
  %490 = load float, float* %33, align 4
  %491 = fcmp ole float %489, %490
  br i1 %491, label %492, label %503

492:                                              ; preds = %484
  %493 = load i32*, i32** %26, align 8
  %494 = load i32, i32* %22, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %493, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = load i32*, i32** %26, align 8
  %499 = load i32, i32* %24, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %24, align 4
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i32, i32* %498, i64 %501
  store i32 %497, i32* %502, align 4
  br label %503

503:                                              ; preds = %492, %484
  br label %504

504:                                              ; preds = %503
  %505 = load i32, i32* %22, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %22, align 4
  br label %480

507:                                              ; preds = %480
  %508 = load i32, i32* %24, align 4
  store i32 %508, i32* %25, align 4
  %509 = load i32, i32* %24, align 4
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %516

511:                                              ; preds = %507
  %512 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %513 = call i32 @ccv_array_free(%struct.TYPE_36__* %512)
  %514 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %515 = call i32 @ccv_array_free(%struct.TYPE_36__* %514)
  br label %823

516:                                              ; preds = %507
  %517 = load i32, i32* %25, align 4
  %518 = sext i32 %517 to i64
  %519 = mul i64 4, %518
  %520 = trunc i64 %519 to i32
  %521 = call i64 @alloca(i32 %520)
  %522 = inttoptr i64 %521 to float*
  store float* %522, float** %36, align 8
  %523 = load i32, i32* %25, align 4
  %524 = sext i32 %523 to i64
  %525 = mul i64 4, %524
  %526 = trunc i64 %525 to i32
  %527 = call i64 @alloca(i32 %526)
  %528 = inttoptr i64 %527 to float*
  store float* %528, float** %37, align 8
  store i32 0, i32* %22, align 4
  br label %529

529:                                              ; preds = %572, %516
  %530 = load i32, i32* %22, align 4
  %531 = load i32, i32* %25, align 4
  %532 = icmp slt i32 %530, %531
  br i1 %532, label %533, label %575

533:                                              ; preds = %529
  %534 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %535 = load i32*, i32** %26, align 8
  %536 = load i32, i32* %22, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %535, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = call i64 @ccv_array_get(%struct.TYPE_36__* %534, i32 %539)
  %541 = inttoptr i64 %540 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %541, %struct.TYPE_35__** %38, align 8
  %542 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %543 = load i32*, i32** %26, align 8
  %544 = load i32, i32* %22, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %543, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = call i64 @ccv_array_get(%struct.TYPE_36__* %542, i32 %547)
  %549 = inttoptr i64 %548 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %549, %struct.TYPE_35__** %39, align 8
  %550 = load %struct.TYPE_35__*, %struct.TYPE_35__** %39, align 8
  %551 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %550, i32 0, i32 0
  %552 = load float, float* %551, align 4
  %553 = load %struct.TYPE_35__*, %struct.TYPE_35__** %38, align 8
  %554 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %553, i32 0, i32 0
  %555 = load float, float* %554, align 4
  %556 = fsub float %552, %555
  %557 = load float*, float** %36, align 8
  %558 = load i32, i32* %22, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds float, float* %557, i64 %559
  store float %556, float* %560, align 4
  %561 = load %struct.TYPE_35__*, %struct.TYPE_35__** %39, align 8
  %562 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %561, i32 0, i32 1
  %563 = load float, float* %562, align 4
  %564 = load %struct.TYPE_35__*, %struct.TYPE_35__** %38, align 8
  %565 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %564, i32 0, i32 1
  %566 = load float, float* %565, align 4
  %567 = fsub float %563, %566
  %568 = load float*, float** %37, align 8
  %569 = load i32, i32* %22, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds float, float* %568, i64 %570
  store float %567, float* %571, align 4
  br label %572

572:                                              ; preds = %533
  %573 = load i32, i32* %22, align 4
  %574 = add nsw i32 %573, 1
  store i32 %574, i32* %22, align 4
  br label %529

575:                                              ; preds = %529
  %576 = load float*, float** %36, align 8
  %577 = load i32, i32* %25, align 4
  %578 = sub nsw i32 %577, 1
  %579 = call float @_ccv_tld_median(float* %576, i32 0, i32 %578)
  store float %579, float* %34, align 4
  %580 = load float*, float** %37, align 8
  %581 = load i32, i32* %25, align 4
  %582 = sub nsw i32 %581, 1
  %583 = call float @_ccv_tld_median(float* %580, i32 0, i32 %582)
  store float %583, float* %35, align 4
  %584 = load i32, i32* %25, align 4
  %585 = icmp sgt i32 %584, 1
  br i1 %585, label %586, label %793

586:                                              ; preds = %575
  %587 = load i32, i32* %25, align 4
  %588 = sext i32 %587 to i64
  %589 = mul i64 4, %588
  %590 = load i32, i32* %25, align 4
  %591 = sub nsw i32 %590, 1
  %592 = sext i32 %591 to i64
  %593 = mul i64 %589, %592
  %594 = udiv i64 %593, 2
  %595 = trunc i64 %594 to i32
  %596 = call i64 @alloca(i32 %595)
  %597 = inttoptr i64 %596 to float*
  store float* %597, float** %40, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %598

598:                                              ; preds = %718, %586
  %599 = load i32, i32* %22, align 4
  %600 = load i32, i32* %25, align 4
  %601 = sub nsw i32 %600, 1
  %602 = icmp slt i32 %599, %601
  br i1 %602, label %603, label %721

603:                                              ; preds = %598
  %604 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %605 = load i32*, i32** %26, align 8
  %606 = load i32, i32* %22, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %605, i64 %607
  %609 = load i32, i32* %608, align 4
  %610 = call i64 @ccv_array_get(%struct.TYPE_36__* %604, i32 %609)
  %611 = inttoptr i64 %610 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %611, %struct.TYPE_35__** %41, align 8
  %612 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %613 = load i32*, i32** %26, align 8
  %614 = load i32, i32* %22, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i32, i32* %613, i64 %615
  %617 = load i32, i32* %616, align 4
  %618 = call i64 @ccv_array_get(%struct.TYPE_36__* %612, i32 %617)
  %619 = inttoptr i64 %618 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %619, %struct.TYPE_35__** %42, align 8
  %620 = load i32, i32* %22, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %23, align 4
  br label %622

622:                                              ; preds = %714, %603
  %623 = load i32, i32* %23, align 4
  %624 = load i32, i32* %25, align 4
  %625 = icmp slt i32 %623, %624
  br i1 %625, label %626, label %717

626:                                              ; preds = %622
  %627 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %628 = load i32*, i32** %26, align 8
  %629 = load i32, i32* %23, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i32, i32* %628, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = call i64 @ccv_array_get(%struct.TYPE_36__* %627, i32 %632)
  %634 = inttoptr i64 %633 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %634, %struct.TYPE_35__** %43, align 8
  %635 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %636 = load i32*, i32** %26, align 8
  %637 = load i32, i32* %23, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds i32, i32* %636, i64 %638
  %640 = load i32, i32* %639, align 4
  %641 = call i64 @ccv_array_get(%struct.TYPE_36__* %635, i32 %640)
  %642 = inttoptr i64 %641 to %struct.TYPE_35__*
  store %struct.TYPE_35__* %642, %struct.TYPE_35__** %44, align 8
  %643 = load %struct.TYPE_35__*, %struct.TYPE_35__** %42, align 8
  %644 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %643, i32 0, i32 0
  %645 = load float, float* %644, align 4
  %646 = load %struct.TYPE_35__*, %struct.TYPE_35__** %44, align 8
  %647 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %646, i32 0, i32 0
  %648 = load float, float* %647, align 4
  %649 = fsub float %645, %648
  %650 = load %struct.TYPE_35__*, %struct.TYPE_35__** %42, align 8
  %651 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %650, i32 0, i32 0
  %652 = load float, float* %651, align 4
  %653 = load %struct.TYPE_35__*, %struct.TYPE_35__** %44, align 8
  %654 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %653, i32 0, i32 0
  %655 = load float, float* %654, align 4
  %656 = fsub float %652, %655
  %657 = fmul float %649, %656
  %658 = load %struct.TYPE_35__*, %struct.TYPE_35__** %42, align 8
  %659 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %658, i32 0, i32 1
  %660 = load float, float* %659, align 4
  %661 = load %struct.TYPE_35__*, %struct.TYPE_35__** %44, align 8
  %662 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %661, i32 0, i32 1
  %663 = load float, float* %662, align 4
  %664 = fsub float %660, %663
  %665 = load %struct.TYPE_35__*, %struct.TYPE_35__** %42, align 8
  %666 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %665, i32 0, i32 1
  %667 = load float, float* %666, align 4
  %668 = load %struct.TYPE_35__*, %struct.TYPE_35__** %44, align 8
  %669 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %668, i32 0, i32 1
  %670 = load float, float* %669, align 4
  %671 = fsub float %667, %670
  %672 = fmul float %664, %671
  %673 = fadd float %657, %672
  %674 = load %struct.TYPE_35__*, %struct.TYPE_35__** %41, align 8
  %675 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %674, i32 0, i32 0
  %676 = load float, float* %675, align 4
  %677 = load %struct.TYPE_35__*, %struct.TYPE_35__** %43, align 8
  %678 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %677, i32 0, i32 0
  %679 = load float, float* %678, align 4
  %680 = fsub float %676, %679
  %681 = load %struct.TYPE_35__*, %struct.TYPE_35__** %41, align 8
  %682 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %681, i32 0, i32 0
  %683 = load float, float* %682, align 4
  %684 = load %struct.TYPE_35__*, %struct.TYPE_35__** %43, align 8
  %685 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %684, i32 0, i32 0
  %686 = load float, float* %685, align 4
  %687 = fsub float %683, %686
  %688 = fmul float %680, %687
  %689 = load %struct.TYPE_35__*, %struct.TYPE_35__** %41, align 8
  %690 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %689, i32 0, i32 1
  %691 = load float, float* %690, align 4
  %692 = load %struct.TYPE_35__*, %struct.TYPE_35__** %43, align 8
  %693 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %692, i32 0, i32 1
  %694 = load float, float* %693, align 4
  %695 = fsub float %691, %694
  %696 = load %struct.TYPE_35__*, %struct.TYPE_35__** %41, align 8
  %697 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %696, i32 0, i32 1
  %698 = load float, float* %697, align 4
  %699 = load %struct.TYPE_35__*, %struct.TYPE_35__** %43, align 8
  %700 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %699, i32 0, i32 1
  %701 = load float, float* %700, align 4
  %702 = fsub float %698, %701
  %703 = fmul float %695, %702
  %704 = fadd float %688, %703
  %705 = fdiv float %673, %704
  %706 = fptosi float %705 to i32
  %707 = call float @sqrtf(i32 %706)
  %708 = load float*, float** %40, align 8
  %709 = load i32, i32* %24, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds float, float* %708, i64 %710
  store float %707, float* %711, align 4
  %712 = load i32, i32* %24, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %24, align 4
  br label %714

714:                                              ; preds = %626
  %715 = load i32, i32* %23, align 4
  %716 = add nsw i32 %715, 1
  store i32 %716, i32* %23, align 4
  br label %622

717:                                              ; preds = %622
  br label %718

718:                                              ; preds = %717
  %719 = load i32, i32* %22, align 4
  %720 = add nsw i32 %719, 1
  store i32 %720, i32* %22, align 4
  br label %598

721:                                              ; preds = %598
  %722 = load i32, i32* %25, align 4
  %723 = load i32, i32* %25, align 4
  %724 = sub nsw i32 %723, 1
  %725 = mul nsw i32 %722, %724
  %726 = sdiv i32 %725, 2
  %727 = load i32, i32* %24, align 4
  %728 = icmp eq i32 %726, %727
  %729 = zext i1 %728 to i32
  %730 = call i32 @assert(i32 %729)
  %731 = load float*, float** %40, align 8
  %732 = load i32, i32* %25, align 4
  %733 = load i32, i32* %25, align 4
  %734 = sub nsw i32 %733, 1
  %735 = mul nsw i32 %732, %734
  %736 = sdiv i32 %735, 2
  %737 = sub nsw i32 %736, 1
  %738 = call float @_ccv_tld_median(float* %731, i32 0, i32 %737)
  store float %738, float* %45, align 4
  %739 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 2
  %740 = load i32, i32* %739, align 4
  %741 = sitofp i32 %740 to float
  %742 = load float, float* %34, align 4
  %743 = fadd float %741, %742
  %744 = fpext float %743 to double
  %745 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 0
  %746 = load float, float* %745, align 4
  %747 = fpext float %746 to double
  %748 = load float, float* %45, align 4
  %749 = fpext float %748 to double
  %750 = fsub double %749, 1.000000e+00
  %751 = fmul double %747, %750
  %752 = fmul double %751, 5.000000e-01
  %753 = fsub double %744, %752
  %754 = fadd double %753, 5.000000e-01
  %755 = fptosi double %754 to i32
  %756 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 2
  store i32 %755, i32* %756, align 4
  %757 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 3
  %758 = load i32, i32* %757, align 4
  %759 = sitofp i32 %758 to float
  %760 = load float, float* %35, align 4
  %761 = fadd float %759, %760
  %762 = fpext float %761 to double
  %763 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 1
  %764 = load float, float* %763, align 4
  %765 = fpext float %764 to double
  %766 = load float, float* %45, align 4
  %767 = fpext float %766 to double
  %768 = fsub double %767, 1.000000e+00
  %769 = fmul double %765, %768
  %770 = fmul double %769, 5.000000e-01
  %771 = fsub double %762, %770
  %772 = fadd double %771, 5.000000e-01
  %773 = fptosi double %772 to i32
  %774 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 3
  store i32 %773, i32* %774, align 4
  %775 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 0
  %776 = load float, float* %775, align 4
  %777 = load float, float* %45, align 4
  %778 = fmul float %776, %777
  %779 = fpext float %778 to double
  %780 = fadd double %779, 5.000000e-01
  %781 = fptosi double %780 to i32
  %782 = sitofp i32 %781 to float
  %783 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  store float %782, float* %783, align 4
  %784 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 1
  %785 = load float, float* %784, align 4
  %786 = load float, float* %45, align 4
  %787 = fmul float %785, %786
  %788 = fpext float %787 to double
  %789 = fadd double %788, 5.000000e-01
  %790 = fptosi double %789 to i32
  %791 = sitofp i32 %790 to float
  %792 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  store float %791, float* %792, align 4
  br label %818

793:                                              ; preds = %575
  %794 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 0
  %795 = load float, float* %794, align 4
  %796 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  store float %795, float* %796, align 4
  %797 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 1
  %798 = load float, float* %797, align 4
  %799 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  store float %798, float* %799, align 4
  %800 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 2
  %801 = load i32, i32* %800, align 4
  %802 = sitofp i32 %801 to float
  %803 = load float, float* %34, align 4
  %804 = fadd float %802, %803
  %805 = fpext float %804 to double
  %806 = fadd double %805, 5.000000e-01
  %807 = fptosi double %806 to i32
  %808 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 2
  store i32 %807, i32* %808, align 4
  %809 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %8, i32 0, i32 3
  %810 = load i32, i32* %809, align 4
  %811 = sitofp i32 %810 to float
  %812 = load float, float* %35, align 4
  %813 = fadd float %811, %812
  %814 = fpext float %813 to double
  %815 = fadd double %814, 5.000000e-01
  %816 = fptosi double %815 to i32
  %817 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 3
  store i32 %816, i32* %817, align 4
  br label %818

818:                                              ; preds = %793, %721
  %819 = load %struct.TYPE_36__*, %struct.TYPE_36__** %18, align 8
  %820 = call i32 @ccv_array_free(%struct.TYPE_36__* %819)
  %821 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %822 = call i32 @ccv_array_free(%struct.TYPE_36__* %821)
  br label %823

823:                                              ; preds = %818, %511, %473, %415, %142, %124
  %824 = bitcast %struct.TYPE_32__* %7 to { <2 x float>, i64 }*
  %825 = load { <2 x float>, i64 }, { <2 x float>, i64 }* %824, align 4
  ret { <2 x float>, i64 } %825
}

declare dso_local { <2 x float>, i64 } @ccv_rect(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_36__* @ccv_array_new(i32, i32, i32) #1

declare dso_local <2 x float> @ccv_decimal_point(i32, i32) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_36__*, %struct.TYPE_35__*) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_36__*) #1

declare dso_local i32 @ccv_optical_flow_lucas_kanade(%struct.TYPE_33__*, %struct.TYPE_33__*, %struct.TYPE_36__*, %struct.TYPE_36__**, i32, i32, i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @ccv_compute_dense_matrix_size(i32, i32, i32) #1

declare dso_local %struct.TYPE_33__* @ccv_dense_matrix_new(i32, i32, i32, %struct.TYPE_33__*, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @ccv_decimal_slice(%struct.TYPE_33__*, %struct.TYPE_33__**, i32, float, float, i32, i32) #1

declare dso_local float @_ccv_tld_norm_cross_correlate(%struct.TYPE_33__*, %struct.TYPE_33__*) #1

declare dso_local float @_ccv_tld_median(float*, i32, i32) #1

declare dso_local float @sqrtf(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
