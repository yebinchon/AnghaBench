; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_quick_learn.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_quick_learn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { double, i32, i64, %struct.TYPE_46__**, %struct.TYPE_44__, %struct.TYPE_46__*, %struct.TYPE_48__*, i64, i64, i64, %struct.TYPE_42__ }
%struct.TYPE_44__ = type { float, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_48__ = type { i32, i64 }
%struct.TYPE_42__ = type { float, float }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_45__ = type { i32, %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32, i32, float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_41__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_43__*, %struct.TYPE_45__*)* @_ccv_tld_quick_learn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ccv_tld_quick_learn(%struct.TYPE_41__* %0, %struct.TYPE_43__* %1, %struct.TYPE_43__* %2, %struct.TYPE_43__* %3, %struct.TYPE_45__* byval(%struct.TYPE_45__) align 8 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca %struct.TYPE_43__*, align 8
  %9 = alloca %struct.TYPE_43__*, align 8
  %10 = alloca %struct.TYPE_43__*, align 8
  %11 = alloca %struct.TYPE_43__*, align 8
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_47__, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_46__*, align 8
  %19 = alloca %struct.TYPE_46__*, align 8
  %20 = alloca %struct.TYPE_45__, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_45__, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_45__*, align 8
  %34 = alloca %struct.TYPE_45__*, align 8
  %35 = alloca %struct.TYPE_45__, align 8
  %36 = alloca %struct.TYPE_43__*, align 8
  %37 = alloca %struct.TYPE_45__*, align 8
  %38 = alloca %struct.TYPE_43__*, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %7, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %8, align 8
  store %struct.TYPE_43__* %2, %struct.TYPE_43__** %9, align 8
  store %struct.TYPE_43__* %3, %struct.TYPE_43__** %10, align 8
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %4, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %4, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = sitofp i32 %45 to float
  %47 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %47, i32 0, i32 10
  %49 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %48, i32 0, i32 0
  %50 = load float, float* %49, align 8
  %51 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %51, i32 0, i32 10
  %53 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = fmul float %50, %54
  %56 = fdiv float %46, %55
  %57 = call float @sqrtf(float %56) #4
  store float %57, float* %12, align 4
  %58 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %4, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %4, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %59, i32 0, i32 2
  %61 = load float, float* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %4, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sitofp i32 %64 to float
  %66 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %67, i32 0, i32 0
  %69 = load float, float* %68, align 8
  %70 = load float, float* %12, align 4
  %71 = fmul float %69, %70
  %72 = fsub float %65, %71
  %73 = fadd float %61, %72
  %74 = fpext float %73 to double
  %75 = fadd double %74, 5.000000e-01
  %76 = fptosi double %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %4, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %77, i32 0, i32 3
  %79 = load float, float* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %4, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sitofp i32 %82 to float
  %84 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %84, i32 0, i32 10
  %86 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %85, i32 0, i32 1
  %87 = load float, float* %86, align 4
  %88 = load float, float* %12, align 4
  %89 = fmul float %87, %88
  %90 = fsub float %83, %89
  %91 = fadd float %79, %90
  %92 = fpext float %91 to double
  %93 = fadd double %92, 5.000000e-01
  %94 = fptosi double %93 to i32
  %95 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %95, i32 0, i32 10
  %97 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %96, i32 0, i32 0
  %98 = load float, float* %97, align 8
  %99 = load float, float* %12, align 4
  %100 = fmul float %98, %99
  %101 = fpext float %100 to double
  %102 = fadd double %101, 5.000000e-01
  %103 = fptosi double %102 to i32
  %104 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %104, i32 0, i32 10
  %106 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %105, i32 0, i32 1
  %107 = load float, float* %106, align 4
  %108 = load float, float* %12, align 4
  %109 = fmul float %107, %108
  %110 = fpext float %109 to double
  %111 = fadd double %110, 5.000000e-01
  %112 = fptosi double %111 to i32
  %113 = call { i64, <2 x float> } @ccv_rect(i32 %76, i32 %94, i32 %103, i32 %112)
  %114 = bitcast %struct.TYPE_47__* %13 to { i64, <2 x float> }*
  %115 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %114, i32 0, i32 0
  %116 = extractvalue { i64, <2 x float> } %113, 0
  store i64 %116, i64* %115, align 4
  %117 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %114, i32 0, i32 1
  %118 = extractvalue { i64, <2 x float> } %113, 1
  store <2 x float> %118, <2 x float>* %117, align 4
  %119 = bitcast %struct.TYPE_47__* %58 to i8*
  %120 = bitcast %struct.TYPE_47__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %119, i8* align 4 %120, i64 16, i1 false)
  %121 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %122 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %4, i32 0, i32 1
  %124 = bitcast %struct.TYPE_47__* %123 to { i64, <2 x float> }*
  %125 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 4
  %127 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %124, i32 0, i32 1
  %128 = load <2 x float>, <2 x float>* %127, align 4
  %129 = call i32 @_ccv_tld_fetch_patch(%struct.TYPE_41__* %121, %struct.TYPE_43__* %122, %struct.TYPE_43__** %11, i32 0, i64 %126, <2 x float> %128)
  %130 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %131 = call double @ccv_variance(%struct.TYPE_43__* %130)
  store double %131, double* %14, align 8
  %132 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %133 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %134 = call float @_ccv_tld_sv_classify(%struct.TYPE_41__* %132, %struct.TYPE_43__* %133, i32 0, i32 0, i32* %15, i32* %16)
  store float %134, float* %17, align 4
  %135 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %136 = call i32 @ccv_matrix_free(%struct.TYPE_43__* %135)
  %137 = load float, float* %17, align 4
  %138 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %139, i32 0, i32 0
  %141 = load float, float* %140, align 8
  %142 = fcmp ogt float %137, %141
  br i1 %142, label %143, label %623

143:                                              ; preds = %5
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %623, label %146

146:                                              ; preds = %143
  %147 = load double, double* %14, align 8
  %148 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %148, i32 0, i32 0
  %150 = load double, double* %149, align 8
  %151 = fcmp ogt double %147, %150
  br i1 %151, label %152, label %623

152:                                              ; preds = %146
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %18, align 8
  store %struct.TYPE_46__* null, %struct.TYPE_46__** %19, align 8
  %153 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @ccv_size(i32 %155, i32 %158)
  %160 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %160, i32 0, i32 10
  %162 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %4, i32 0, i32 1
  %163 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %163, i32 0, i32 4
  %165 = bitcast %struct.TYPE_42__* %161 to <2 x float>*
  %166 = load <2 x float>, <2 x float>* %165, align 8
  %167 = bitcast %struct.TYPE_47__* %162 to { i64, <2 x float> }*
  %168 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 4
  %170 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %167, i32 0, i32 1
  %171 = load <2 x float>, <2 x float>* %170, align 4
  call void @_ccv_tld_generate_box_for(%struct.TYPE_45__* sret %20, i32 %159, <2 x float> %166, i64 %169, <2 x float> %171, i32 10, %struct.TYPE_46__** %18, %struct.TYPE_46__** %19, %struct.TYPE_44__* byval(%struct.TYPE_44__) align 8 %164)
  %172 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %175

175:                                              ; preds = %200, %152
  %176 = load i32, i32* %21, align 4
  %177 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %203

182:                                              ; preds = %175
  store i32 0, i32* %22, align 4
  br label %183

183:                                              ; preds = %196, %182
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* %23, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %183
  %188 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %189 = load i32, i32* %22, align 4
  %190 = call i32* @ccv_array_get(%struct.TYPE_46__* %188, i32 %189)
  %191 = bitcast i32* %190 to %struct.TYPE_45__*
  %192 = bitcast %struct.TYPE_45__* %24 to i8*
  %193 = bitcast %struct.TYPE_45__* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %192, i8* align 4 %193, i64 20, i1 false)
  %194 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %195 = call i32 @ccv_array_push(%struct.TYPE_46__* %194, %struct.TYPE_45__* %24)
  br label %196

196:                                              ; preds = %187
  %197 = load i32, i32* %22, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %22, align 4
  br label %183

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %175

203:                                              ; preds = %175
  %204 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %204, i32 0, i32 9
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to i32*
  store i32* %207, i32** %25, align 8
  %208 = load i32*, i32** %25, align 8
  %209 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %210 = call i32* @ccv_array_get(%struct.TYPE_46__* %209, i32 0)
  %211 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %212 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %215 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @sfmt_genrand_shuffle(i32* %208, i32* %210, i32 %213, i32 %216)
  %218 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %219 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %220, 4
  %222 = add nsw i32 %221, 3
  %223 = sdiv i32 %222, 6
  store i32 %223, i32* %26, align 4
  %224 = load i32, i32* %26, align 4
  %225 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %224, %227
  %229 = sext i32 %228 to i64
  %230 = mul i64 4, %229
  %231 = trunc i64 %230 to i32
  %232 = call i64 @ccmalloc(i32 %231)
  %233 = inttoptr i64 %232 to i32*
  store i32* %233, i32** %27, align 8
  store i32 0, i32* %21, align 4
  br label %234

234:                                              ; preds = %248, %203
  %235 = load i32, i32* %21, align 4
  %236 = load i32, i32* %26, align 4
  %237 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  %241 = icmp slt i32 %235, %240
  br i1 %241, label %242, label %251

242:                                              ; preds = %234
  %243 = load i32, i32* %21, align 4
  %244 = load i32*, i32** %27, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %243, i32* %247, align 4
  br label %248

248:                                              ; preds = %242
  %249 = load i32, i32* %21, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %21, align 4
  br label %234

251:                                              ; preds = %234
  %252 = load i32*, i32** %25, align 8
  %253 = load i32*, i32** %27, align 8
  %254 = load i32, i32* %26, align 4
  %255 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %254, %257
  %259 = call i32 @sfmt_genrand_shuffle(i32* %252, i32* %253, i32 %258, i32 4)
  %260 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %260, i32 0, i32 8
  %262 = load i64, i64* %261, align 8
  %263 = inttoptr i64 %262 to i32*
  store i32* %263, i32** %28, align 8
  %264 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %264, i32 0, i32 6
  %266 = load %struct.TYPE_48__*, %struct.TYPE_48__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = mul i64 4, %269
  %271 = load i32, i32* %26, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = mul i64 %270, %273
  %275 = trunc i64 %274 to i32
  %276 = call i64 @ccmalloc(i32 %275)
  %277 = inttoptr i64 %276 to i32*
  store i32* %277, i32** %29, align 8
  %278 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %281, i32 0, i32 4
  %283 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %284, 1
  %286 = srem i32 %280, %285
  store i32 %286, i32* %30, align 4
  %287 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %31, align 4
  store i32 0, i32* %21, align 4
  br label %292

292:                                              ; preds = %506, %251
  %293 = load i32, i32* %21, align 4
  %294 = icmp slt i32 %293, 2
  br i1 %294, label %295, label %509

295:                                              ; preds = %292
  %296 = load i32*, i32** %29, align 8
  %297 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %297, i32 0, i32 6
  %299 = load %struct.TYPE_48__*, %struct.TYPE_48__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %296, i64 %302
  store i32* %303, i32** %32, align 8
  store i32 0, i32* %22, align 4
  br label %304

304:                                              ; preds = %502, %295
  %305 = load i32, i32* %22, align 4
  %306 = load i32, i32* %26, align 4
  %307 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %308 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %306, %309
  %311 = icmp slt i32 %305, %310
  br i1 %311, label %312, label %505

312:                                              ; preds = %304
  %313 = load i32*, i32** %27, align 8
  %314 = load i32, i32* %22, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %23, align 4
  %318 = load i32, i32* %23, align 4
  %319 = load i32, i32* %26, align 4
  %320 = icmp slt i32 %318, %319
  br i1 %320, label %321, label %456

321:                                              ; preds = %312
  %322 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %323 = load i32, i32* %23, align 4
  %324 = call i32* @ccv_array_get(%struct.TYPE_46__* %322, i32 %323)
  %325 = bitcast i32* %324 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %325, %struct.TYPE_45__** %33, align 8
  %326 = load i32, i32* %21, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %422

328:                                              ; preds = %321
  %329 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %330 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = icmp sge i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %328
  %334 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %335 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %20, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = icmp slt i32 %336, %338
  br label %340

340:                                              ; preds = %333, %328
  %341 = phi i1 [ false, %328 ], [ %339, %333 ]
  %342 = zext i1 %341 to i32
  %343 = call i32 @assert(i32 %342)
  %344 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %345 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %31, align 4
  %348 = srem i32 %346, %347
  %349 = load i32, i32* %30, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %418

351:                                              ; preds = %340
  %352 = load %struct.TYPE_43__*, %struct.TYPE_43__** %9, align 8
  %353 = load %struct.TYPE_43__*, %struct.TYPE_43__** %10, align 8
  %354 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %355 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %354, i32 0, i32 1
  %356 = bitcast %struct.TYPE_47__* %355 to { i64, <2 x float> }*
  %357 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 4
  %359 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %356, i32 0, i32 1
  %360 = load <2 x float>, <2 x float>* %359, align 4
  %361 = call i64 @_ccv_tld_box_variance(%struct.TYPE_43__* %352, %struct.TYPE_43__* %353, i64 %358, <2 x float> %360)
  %362 = sitofp i64 %361 to double
  %363 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %363, i32 0, i32 0
  %365 = load double, double* %364, align 8
  %366 = fcmp ogt double %362, %365
  br i1 %366, label %367, label %418

367:                                              ; preds = %351
  %368 = load i32*, i32** %32, align 8
  %369 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %369, i32 0, i32 7
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %373 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %375, i32 0, i32 6
  %377 = load %struct.TYPE_48__*, %struct.TYPE_48__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = mul nsw i32 %374, %379
  %381 = sext i32 %380 to i64
  %382 = add nsw i64 %371, %381
  %383 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %383, i32 0, i32 6
  %385 = load %struct.TYPE_48__*, %struct.TYPE_48__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = mul i64 4, %388
  %390 = trunc i64 %389 to i32
  %391 = call i32 @memcpy(i32* %368, i64 %382, i32 %390)
  %392 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %392, i32 0, i32 6
  %394 = load %struct.TYPE_48__*, %struct.TYPE_48__** %393, align 8
  %395 = load i32*, i32** %32, align 8
  %396 = call i64 @ccv_ferns_predict(%struct.TYPE_48__* %394, i32* %395)
  %397 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %397, i32 0, i32 6
  %399 = load %struct.TYPE_48__*, %struct.TYPE_48__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = icmp sge i64 %396, %401
  br i1 %402, label %403, label %409

403:                                              ; preds = %367
  %404 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %404, i32 0, i32 6
  %406 = load %struct.TYPE_48__*, %struct.TYPE_48__** %405, align 8
  %407 = load i32*, i32** %32, align 8
  %408 = call i32 @ccv_ferns_correct(%struct.TYPE_48__* %406, i32* %407, i32 0, i32 2)
  br label %409

409:                                              ; preds = %403, %367
  %410 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %410, i32 0, i32 6
  %412 = load %struct.TYPE_48__*, %struct.TYPE_48__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i32*, i32** %32, align 8
  %416 = sext i32 %414 to i64
  %417 = getelementptr inbounds i32, i32* %415, i64 %416
  store i32* %417, i32** %32, align 8
  br label %421

418:                                              ; preds = %351, %340
  %419 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %420 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %419, i32 0, i32 0
  store i32 -1, i32* %420, align 4
  br label %421

421:                                              ; preds = %418, %409
  br label %455

422:                                              ; preds = %321
  %423 = load %struct.TYPE_45__*, %struct.TYPE_45__** %33, align 8
  %424 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  br label %502

428:                                              ; preds = %422
  %429 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %429, i32 0, i32 6
  %431 = load %struct.TYPE_48__*, %struct.TYPE_48__** %430, align 8
  %432 = load i32*, i32** %32, align 8
  %433 = call i64 @ccv_ferns_predict(%struct.TYPE_48__* %431, i32* %432)
  %434 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %434, i32 0, i32 6
  %436 = load %struct.TYPE_48__*, %struct.TYPE_48__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = icmp sge i64 %433, %438
  br i1 %439, label %440, label %446

440:                                              ; preds = %428
  %441 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %442 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %441, i32 0, i32 6
  %443 = load %struct.TYPE_48__*, %struct.TYPE_48__** %442, align 8
  %444 = load i32*, i32** %32, align 8
  %445 = call i32 @ccv_ferns_correct(%struct.TYPE_48__* %443, i32* %444, i32 0, i32 2)
  br label %446

446:                                              ; preds = %440, %428
  %447 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %447, i32 0, i32 6
  %449 = load %struct.TYPE_48__*, %struct.TYPE_48__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load i32*, i32** %32, align 8
  %453 = sext i32 %451 to i64
  %454 = getelementptr inbounds i32, i32* %452, i64 %453
  store i32* %454, i32** %32, align 8
  br label %455

455:                                              ; preds = %446, %421
  br label %501

456:                                              ; preds = %312
  %457 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %458 = load i32, i32* %23, align 4
  %459 = load i32, i32* %26, align 4
  %460 = sub nsw i32 %458, %459
  %461 = call i32* @ccv_array_get(%struct.TYPE_46__* %457, i32 %460)
  %462 = bitcast i32* %461 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %462, %struct.TYPE_45__** %34, align 8
  %463 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %464 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %463, i32 0, i32 6
  %465 = load %struct.TYPE_48__*, %struct.TYPE_48__** %464, align 8
  %466 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %467 = load %struct.TYPE_45__*, %struct.TYPE_45__** %34, align 8
  %468 = load i32*, i32** %29, align 8
  %469 = load i32*, i32** %28, align 8
  %470 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %471 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %470, i32 0, i32 4
  %472 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %471, i32 0, i32 6
  %473 = load i32, i32* %472, align 8
  %474 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %474, i32 0, i32 4
  %476 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %475, i32 0, i32 5
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %478, i32 0, i32 4
  %480 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 8
  %482 = bitcast %struct.TYPE_45__* %35 to i8*
  %483 = bitcast %struct.TYPE_45__* %467 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %482, i8* align 4 %483, i64 20, i1 false)
  %484 = call i32 @_ccv_tld_ferns_feature_for(%struct.TYPE_48__* %465, %struct.TYPE_43__* %466, %struct.TYPE_45__* byval(%struct.TYPE_45__) align 8 %35, i32* %468, i32* %469, i32 %473, i32 %477, i32 %481)
  %485 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %486 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %485, i32 0, i32 6
  %487 = load %struct.TYPE_48__*, %struct.TYPE_48__** %486, align 8
  %488 = load i32*, i32** %29, align 8
  %489 = call i64 @ccv_ferns_predict(%struct.TYPE_48__* %487, i32* %488)
  %490 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %491 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %490, i32 0, i32 2
  %492 = load i64, i64* %491, align 8
  %493 = icmp sle i64 %489, %492
  br i1 %493, label %494, label %500

494:                                              ; preds = %456
  %495 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %496 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %495, i32 0, i32 6
  %497 = load %struct.TYPE_48__*, %struct.TYPE_48__** %496, align 8
  %498 = load i32*, i32** %29, align 8
  %499 = call i32 @ccv_ferns_correct(%struct.TYPE_48__* %497, i32* %498, i32 1, i32 1)
  br label %500

500:                                              ; preds = %494, %456
  br label %501

501:                                              ; preds = %500, %455
  br label %502

502:                                              ; preds = %501, %427
  %503 = load i32, i32* %22, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %22, align 4
  br label %304

505:                                              ; preds = %304
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %21, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %21, align 4
  br label %292

509:                                              ; preds = %292
  %510 = load i32*, i32** %29, align 8
  %511 = call i32 @ccfree(i32* %510)
  %512 = load %struct.TYPE_46__*, %struct.TYPE_46__** %19, align 8
  %513 = call i32 @ccv_array_free(%struct.TYPE_46__* %512)
  %514 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %515 = call i32 @ccv_array_free(%struct.TYPE_46__* %514)
  %516 = load i32*, i32** %27, align 8
  %517 = call i32 @ccfree(i32* %516)
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %36, align 8
  %518 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %519 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %520 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %20, i32 0, i32 1
  %521 = bitcast %struct.TYPE_47__* %520 to { i64, <2 x float> }*
  %522 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 4
  %524 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %521, i32 0, i32 1
  %525 = load <2 x float>, <2 x float>* %524, align 4
  %526 = call i32 @_ccv_tld_fetch_patch(%struct.TYPE_41__* %518, %struct.TYPE_43__* %519, %struct.TYPE_43__** %36, i32 0, i64 %523, <2 x float> %525)
  %527 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %528 = load %struct.TYPE_43__*, %struct.TYPE_43__** %36, align 8
  %529 = call i64 @_ccv_tld_sv_correct(%struct.TYPE_41__* %527, %struct.TYPE_43__* %528, i32 1)
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %534

531:                                              ; preds = %509
  %532 = load %struct.TYPE_43__*, %struct.TYPE_43__** %36, align 8
  %533 = call i32 @ccv_matrix_free(%struct.TYPE_43__* %532)
  br label %534

534:                                              ; preds = %531, %509
  store i32 0, i32* %21, align 4
  br label %535

535:                                              ; preds = %589, %534
  %536 = load i32, i32* %21, align 4
  %537 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %537, i32 0, i32 5
  %539 = load %struct.TYPE_46__*, %struct.TYPE_46__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 4
  %542 = icmp slt i32 %536, %541
  br i1 %542, label %543, label %592

543:                                              ; preds = %535
  %544 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %545 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %544, i32 0, i32 5
  %546 = load %struct.TYPE_46__*, %struct.TYPE_46__** %545, align 8
  %547 = load i32, i32* %21, align 4
  %548 = call i32* @ccv_array_get(%struct.TYPE_46__* %546, i32 %547)
  %549 = bitcast i32* %548 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %549, %struct.TYPE_45__** %37, align 8
  %550 = load %struct.TYPE_45__*, %struct.TYPE_45__** %37, align 8
  %551 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %20, i32 0, i32 1
  %553 = bitcast %struct.TYPE_47__* %551 to { i64, <2 x float> }*
  %554 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %553, i32 0, i32 0
  %555 = load i64, i64* %554, align 4
  %556 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %553, i32 0, i32 1
  %557 = load <2 x float>, <2 x float>* %556, align 4
  %558 = bitcast %struct.TYPE_47__* %552 to { i64, <2 x float> }*
  %559 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 4
  %561 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %558, i32 0, i32 1
  %562 = load <2 x float>, <2 x float>* %561, align 4
  %563 = call i64 @_ccv_tld_rect_intersect(i64 %555, <2 x float> %557, i64 %560, <2 x float> %562)
  %564 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %565 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %564, i32 0, i32 4
  %566 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %565, i32 0, i32 3
  %567 = load i64, i64* %566, align 8
  %568 = icmp slt i64 %563, %567
  br i1 %568, label %569, label %588

569:                                              ; preds = %543
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %38, align 8
  %570 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %571 = load %struct.TYPE_43__*, %struct.TYPE_43__** %8, align 8
  %572 = load %struct.TYPE_45__*, %struct.TYPE_45__** %37, align 8
  %573 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %572, i32 0, i32 1
  %574 = bitcast %struct.TYPE_47__* %573 to { i64, <2 x float> }*
  %575 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 4
  %577 = getelementptr inbounds { i64, <2 x float> }, { i64, <2 x float> }* %574, i32 0, i32 1
  %578 = load <2 x float>, <2 x float>* %577, align 4
  %579 = call i32 @_ccv_tld_fetch_patch(%struct.TYPE_41__* %570, %struct.TYPE_43__* %571, %struct.TYPE_43__** %38, i32 0, i64 %576, <2 x float> %578)
  %580 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %581 = load %struct.TYPE_43__*, %struct.TYPE_43__** %38, align 8
  %582 = call i64 @_ccv_tld_sv_correct(%struct.TYPE_41__* %580, %struct.TYPE_43__* %581, i32 0)
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %587

584:                                              ; preds = %569
  %585 = load %struct.TYPE_43__*, %struct.TYPE_43__** %38, align 8
  %586 = call i32 @ccv_matrix_free(%struct.TYPE_43__* %585)
  br label %587

587:                                              ; preds = %584, %569
  br label %588

588:                                              ; preds = %587, %543
  br label %589

589:                                              ; preds = %588
  %590 = load i32, i32* %21, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %21, align 4
  br label %535

592:                                              ; preds = %535
  %593 = load i32*, i32** %25, align 8
  %594 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %595 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %594, i32 0, i32 3
  %596 = load %struct.TYPE_46__**, %struct.TYPE_46__*** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_46__*, %struct.TYPE_46__** %596, i64 0
  %598 = load %struct.TYPE_46__*, %struct.TYPE_46__** %597, align 8
  %599 = call i32* @ccv_array_get(%struct.TYPE_46__* %598, i32 0)
  %600 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %601 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %600, i32 0, i32 3
  %602 = load %struct.TYPE_46__**, %struct.TYPE_46__*** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_46__*, %struct.TYPE_46__** %602, i64 0
  %604 = load %struct.TYPE_46__*, %struct.TYPE_46__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 4
  %607 = call i32 @sfmt_genrand_shuffle(i32* %593, i32* %599, i32 %606, i32 8)
  %608 = load i32*, i32** %25, align 8
  %609 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %610 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %609, i32 0, i32 3
  %611 = load %struct.TYPE_46__**, %struct.TYPE_46__*** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_46__*, %struct.TYPE_46__** %611, i64 1
  %613 = load %struct.TYPE_46__*, %struct.TYPE_46__** %612, align 8
  %614 = call i32* @ccv_array_get(%struct.TYPE_46__* %613, i32 0)
  %615 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %616 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %615, i32 0, i32 3
  %617 = load %struct.TYPE_46__**, %struct.TYPE_46__*** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_46__*, %struct.TYPE_46__** %617, i64 1
  %619 = load %struct.TYPE_46__*, %struct.TYPE_46__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 4
  %622 = call i32 @sfmt_genrand_shuffle(i32* %608, i32* %614, i32 %621, i32 8)
  store i32 0, i32* %6, align 4
  br label %624

623:                                              ; preds = %146, %143, %5
  store i32 -1, i32* %6, align 4
  br label %624

624:                                              ; preds = %623, %592
  %625 = load i32, i32* %6, align 4
  ret i32 %625
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

declare dso_local { i64, <2 x float> } @ccv_rect(i32, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @_ccv_tld_fetch_patch(%struct.TYPE_41__*, %struct.TYPE_43__*, %struct.TYPE_43__**, i32, i64, <2 x float>) #2

declare dso_local double @ccv_variance(%struct.TYPE_43__*) #2

declare dso_local float @_ccv_tld_sv_classify(%struct.TYPE_41__*, %struct.TYPE_43__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @ccv_matrix_free(%struct.TYPE_43__*) #2

declare dso_local void @_ccv_tld_generate_box_for(%struct.TYPE_45__* sret, i32, <2 x float>, i64, <2 x float>, i32, %struct.TYPE_46__**, %struct.TYPE_46__**, %struct.TYPE_44__* byval(%struct.TYPE_44__) align 8) #2

declare dso_local i32 @ccv_size(i32, i32) #2

declare dso_local i32* @ccv_array_get(%struct.TYPE_46__*, i32) #2

declare dso_local i32 @ccv_array_push(%struct.TYPE_46__*, %struct.TYPE_45__*) #2

declare dso_local i32 @sfmt_genrand_shuffle(i32*, i32*, i32, i32) #2

declare dso_local i64 @ccmalloc(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @_ccv_tld_box_variance(%struct.TYPE_43__*, %struct.TYPE_43__*, i64, <2 x float>) #2

declare dso_local i32 @memcpy(i32*, i64, i32) #2

declare dso_local i64 @ccv_ferns_predict(%struct.TYPE_48__*, i32*) #2

declare dso_local i32 @ccv_ferns_correct(%struct.TYPE_48__*, i32*, i32, i32) #2

declare dso_local i32 @_ccv_tld_ferns_feature_for(%struct.TYPE_48__*, %struct.TYPE_43__*, %struct.TYPE_45__* byval(%struct.TYPE_45__) align 8, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @ccfree(i32*) #2

declare dso_local i32 @ccv_array_free(%struct.TYPE_46__*) #2

declare dso_local i64 @_ccv_tld_sv_correct(%struct.TYPE_41__*, %struct.TYPE_43__*, i32) #2

declare dso_local i64 @_ccv_tld_rect_intersect(i64, <2 x float>, i64, <2 x float>) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
