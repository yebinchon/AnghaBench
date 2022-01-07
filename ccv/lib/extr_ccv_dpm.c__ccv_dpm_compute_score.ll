; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_dpm.c__ccv_dpm_compute_score.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_dpm.c__ccv_dpm_compute_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_24__*, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_28__ = type { i32, i32 }

@CCV_NO_PADDING = common dso_local global i32 0, align 4
@CCV_NEGATIVE = common dso_local global i32 0, align 4
@CCV_GSEDT = common dso_local global i32 0, align 4
@CCV_32F = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_28__*, %struct.TYPE_28__**, %struct.TYPE_28__**, %struct.TYPE_28__**, %struct.TYPE_28__**)* @_ccv_dpm_compute_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_dpm_compute_score(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1, %struct.TYPE_28__* %2, %struct.TYPE_28__** %3, %struct.TYPE_28__** %4, %struct.TYPE_28__** %5, %struct.TYPE_28__** %6) #0 {
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__**, align 8
  %12 = alloca %struct.TYPE_28__**, align 8
  %13 = alloca %struct.TYPE_28__**, align 8
  %14 = alloca %struct.TYPE_28__**, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_27__*, align 8
  %25 = alloca %struct.TYPE_28__*, align 8
  %26 = alloca %struct.TYPE_28__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca float*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__** %3, %struct.TYPE_28__*** %11, align 8
  store %struct.TYPE_28__** %4, %struct.TYPE_28__*** %12, align 8
  store %struct.TYPE_28__** %5, %struct.TYPE_28__*** %13, align 8
  store %struct.TYPE_28__** %6, %struct.TYPE_28__*** %14, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %15, align 8
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %41, align 8
  %43 = load i32, i32* @CCV_NO_PADDING, align 4
  %44 = call i32 @ccv_filter(%struct.TYPE_28__* %38, %struct.TYPE_24__* %42, %struct.TYPE_28__** %15, i32 0, i32 %43)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %16, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %46 = bitcast %struct.TYPE_28__** %16 to i32**
  %47 = call i32 @ccv_flatten(%struct.TYPE_28__* %45, i32** %46, i32 0, i32 0)
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %49 = call i32 @ccv_matrix_free(%struct.TYPE_28__* %48)
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %51 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %11, align 8
  store %struct.TYPE_28__* %50, %struct.TYPE_28__** %51, align 8
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %53 = icmp eq %struct.TYPE_28__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %7
  br label %293

55:                                               ; preds = %7
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %57 = call i32 @ccv_make_matrix_mutable(%struct.TYPE_28__* %56)
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sdiv i32 %64, 2
  store i32 %65, i32* %17, align 4
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sdiv i32 %72, 2
  store i32 %73, i32* %18, align 4
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %79, 2
  store i32 %80, i32* %19, align 4
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %86, 2
  store i32 %87, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %88

88:                                               ; preds = %290, %55
  %89 = load i32, i32* %21, align 4
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %293

94:                                               ; preds = %88
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %96, align 8
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i64 %99
  store %struct.TYPE_27__* %100, %struct.TYPE_27__** %24, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %25, align 8
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = load i32, i32* @CCV_NO_PADDING, align 4
  %106 = call i32 @ccv_filter(%struct.TYPE_28__* %101, %struct.TYPE_24__* %104, %struct.TYPE_28__** %25, i32 0, i32 %105)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %26, align 8
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %108 = bitcast %struct.TYPE_28__** %26 to i32**
  %109 = call i32 @ccv_flatten(%struct.TYPE_28__* %107, i32** %108, i32 0, i32 0)
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %25, align 8
  %111 = call i32 @ccv_matrix_free(%struct.TYPE_28__* %110)
  %112 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %14, align 8
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %112, i64 %114
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %115, align 8
  %116 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %13, align 8
  %117 = load i32, i32* %21, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %116, i64 %118
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %119, align 8
  %120 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %12, align 8
  %121 = load i32, i32* %21, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %120, i64 %122
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %123, align 8
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %125 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %12, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %125, i64 %127
  %129 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %13, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %129, i64 %131
  %133 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %14, align 8
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %133, i64 %135
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CCV_NEGATIVE, align 4
  %150 = load i32, i32* @CCV_GSEDT, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @ccv_distance_transform(%struct.TYPE_28__* %124, %struct.TYPE_28__** %128, i32 0, %struct.TYPE_28__** %132, i32 0, %struct.TYPE_28__** %136, i32 0, i32 %139, i32 %142, i32 %145, i32 %148, i32 %151)
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %154 = call i32 @ccv_matrix_free(%struct.TYPE_28__* %153)
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sdiv i32 %160, 2
  store i32 %161, i32* %27, align 4
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sdiv i32 %167, 2
  store i32 %168, i32* %28, align 4
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %27, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %17, align 4
  %175 = mul nsw i32 %174, 2
  %176 = sub nsw i32 %173, %175
  store i32 %176, i32* %29, align 4
  %177 = load i32, i32* %27, align 4
  store i32 %177, i32* %30, align 4
  %178 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %12, align 8
  %179 = load i32, i32* %21, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %178, i64 %180
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %184, %189
  %191 = load i32, i32* %27, align 4
  %192 = add nsw i32 %190, %191
  store i32 %192, i32* %31, align 4
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %28, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32, i32* %18, align 4
  %199 = mul nsw i32 %198, 2
  %200 = sub nsw i32 %197, %199
  store i32 %200, i32* %32, align 4
  %201 = load i32, i32* %28, align 4
  store i32 %201, i32* %33, align 4
  %202 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %12, align 8
  %203 = load i32, i32* %21, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %202, i64 %204
  %206 = load %struct.TYPE_28__*, %struct.TYPE_28__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %208, %213
  %215 = load i32, i32* %28, align 4
  %216 = add nsw i32 %214, %215
  store i32 %216, i32* %34, align 4
  %217 = load i32, i32* @CCV_32F, align 4
  %218 = load i32, i32* @CCV_C1, align 4
  %219 = or i32 %217, %218
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %221 = load i32, i32* %17, align 4
  %222 = call i64 @ccv_get_dense_matrix_cell_by(i32 %219, %struct.TYPE_28__* %220, i32 %221, i32 0, i32 0)
  %223 = inttoptr i64 %222 to float*
  store float* %223, float** %35, align 8
  %224 = load i32, i32* %17, align 4
  store i32 %224, i32* %23, align 4
  br label %225

225:                                              ; preds = %286, %94
  %226 = load i32, i32* %23, align 4
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %19, align 4
  %231 = sub nsw i32 %229, %230
  %232 = icmp slt i32 %226, %231
  br i1 %232, label %233, label %289

233:                                              ; preds = %225
  %234 = load i32, i32* %23, align 4
  %235 = mul nsw i32 %234, 2
  %236 = load i32, i32* %29, align 4
  %237 = add nsw i32 %235, %236
  %238 = load i32, i32* %30, align 4
  %239 = load i32, i32* %31, align 4
  %240 = call i32 @ccv_clamp(i32 %237, i32 %238, i32 %239)
  store i32 %240, i32* %36, align 4
  %241 = load i32, i32* %18, align 4
  store i32 %241, i32* %22, align 4
  br label %242

242:                                              ; preds = %276, %233
  %243 = load i32, i32* %22, align 4
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %20, align 4
  %248 = sub nsw i32 %246, %247
  %249 = icmp slt i32 %243, %248
  br i1 %249, label %250, label %279

250:                                              ; preds = %242
  %251 = load i32, i32* %22, align 4
  %252 = mul nsw i32 %251, 2
  %253 = load i32, i32* %32, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32, i32* %33, align 4
  %256 = load i32, i32* %34, align 4
  %257 = call i32 @ccv_clamp(i32 %254, i32 %255, i32 %256)
  store i32 %257, i32* %37, align 4
  %258 = load i32, i32* @CCV_32F, align 4
  %259 = load i32, i32* @CCV_C1, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %12, align 8
  %262 = load i32, i32* %21, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %261, i64 %263
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %264, align 8
  %266 = load i32, i32* %36, align 4
  %267 = load i32, i32* %37, align 4
  %268 = call i64 @ccv_get_dense_matrix_cell_value_by(i32 %260, %struct.TYPE_28__* %265, i32 %266, i32 %267, i32 0)
  %269 = sitofp i64 %268 to float
  %270 = load float*, float** %35, align 8
  %271 = load i32, i32* %22, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %270, i64 %272
  %274 = load float, float* %273, align 4
  %275 = fsub float %274, %269
  store float %275, float* %273, align 4
  br label %276

276:                                              ; preds = %250
  %277 = load i32, i32* %22, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %22, align 4
  br label %242

279:                                              ; preds = %242
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load float*, float** %35, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds float, float* %283, i64 %284
  store float* %285, float** %35, align 8
  br label %286

286:                                              ; preds = %279
  %287 = load i32, i32* %23, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %23, align 4
  br label %225

289:                                              ; preds = %225
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %21, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %21, align 4
  br label %88

293:                                              ; preds = %54, %88
  ret void
}

declare dso_local i32 @ccv_filter(%struct.TYPE_28__*, %struct.TYPE_24__*, %struct.TYPE_28__**, i32, i32) #1

declare dso_local i32 @ccv_flatten(%struct.TYPE_28__*, i32**, i32, i32) #1

declare dso_local i32 @ccv_matrix_free(%struct.TYPE_28__*) #1

declare dso_local i32 @ccv_make_matrix_mutable(%struct.TYPE_28__*) #1

declare dso_local i32 @ccv_distance_transform(%struct.TYPE_28__*, %struct.TYPE_28__**, i32, %struct.TYPE_28__**, i32, %struct.TYPE_28__**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ccv_get_dense_matrix_cell_by(i32, %struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @ccv_clamp(i32, i32, i32) #1

declare dso_local i64 @ccv_get_dense_matrix_cell_value_by(i32, %struct.TYPE_28__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
