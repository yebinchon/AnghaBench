; ModuleID = '/home/carl/AnghaBench/ccv/lib/cuda/extr_cwc_convnet_ext.c_cwc_convnet_mean_formation.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/cuda/extr_cwc_convnet_ext.c_cwc_convnet_mean_formation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { double*, float* }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_21__, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i32 }

@CCV_64F = common dso_local global i32 0, align 4
@CCV_32F = common dso_local global i32 0, align 4
@CCV_CLI_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c" - compute mean activity %d / %d\00", align 1
@CCV_IO_ANY_FILE = common dso_local global i32 0, align 4
@CCV_IO_RGB_COLOR = common dso_local global i32 0, align 4
@CCV_CLI_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot load %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cwc_convnet_mean_formation(%struct.TYPE_26__* %0, i64 %1, i64 %2, i32 %3, i32 %4, %struct.TYPE_24__** %5) #0 {
  %7 = alloca %struct.TYPE_23__, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_24__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double*, align 8
  %25 = alloca float*, align 8
  %26 = alloca double, align 8
  %27 = bitcast %struct.TYPE_23__* %7 to { i64, i64 }*
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  store i64 %1, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  store i64 %2, i64* %29, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_24__** %5, %struct.TYPE_24__*** %11, align 8
  store i32 0, i32* %13, align 4
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @CCV_64F, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.TYPE_24__* @ccv_dense_matrix_new(i64 %31, i64 %33, i32 %36, i32 0, i32 0)
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %14, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %39 = call i32 @ccv_zero(%struct.TYPE_24__* %38)
  %40 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @CCV_32F, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @CCV_32F, align 4
  %51 = or i32 %49, %50
  %52 = call %struct.TYPE_24__* @ccv_dense_matrix_renew(%struct.TYPE_24__* %41, i64 %43, i64 %45, i32 %48, i32 %51, i32 0)
  %53 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %53, align 8
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %15, align 8
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %187, %6
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %190

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = srem i32 %61, 23
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp eq i32 %65, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %64, %60
  %72 = load i32, i32* @CCV_CLI_INFO, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FLUSH(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %64
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @ccv_array_get(%struct.TYPE_26__* %80, i32 %81)
  %83 = inttoptr i64 %82 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %83, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %17, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %100 [
    i32 129, label %87
    i32 128, label %91
  ]

87:                                               ; preds = %79
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  store %struct.TYPE_24__* %90, %struct.TYPE_24__** %17, align 8
  br label %100

91:                                               ; preds = %79
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %97 = load i32, i32* @CCV_IO_RGB_COLOR, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @ccv_read(i32 %95, %struct.TYPE_24__** %17, i32 %98)
  br label %100

100:                                              ; preds = %79, %91, %87
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %102 = icmp ne %struct.TYPE_24__* %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @CCV_CLI_ERROR, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @PRINT(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  br label %187

110:                                              ; preds = %100
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %18, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %113, %115
  br i1 %116, label %124, label %117

117:                                              ; preds = %110
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %120, %122
  br i1 %123, label %124, label %164

124:                                              ; preds = %117, %110
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %127, %129
  %131 = add nsw i64 %130, 1
  %132 = sdiv i64 %131, 2
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %19, align 4
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %136, %138
  %140 = add nsw i64 %139, 1
  %141 = sdiv i64 %140, 2
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %19, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %124
  %146 = load i32, i32* %20, align 4
  %147 = icmp eq i32 %146, 0
  br label %148

148:                                              ; preds = %145, %124
  %149 = phi i1 [ true, %124 ], [ %147, %145 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %153 = bitcast %struct.TYPE_24__** %18 to i32**
  %154 = load i32, i32* @CCV_32F, align 4
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %19, align 4
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @ccv_slice(%struct.TYPE_24__* %152, i32** %153, i32 %154, i32 %155, i32 %156, i32 %159, i32 %162)
  br label %169

164:                                              ; preds = %117
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %166 = bitcast %struct.TYPE_24__** %18 to i32**
  %167 = load i32, i32* @CCV_32F, align 4
  %168 = call i32 @ccv_shift(%struct.TYPE_24__* %165, i32** %166, i32 %167, i32 0, i32 0)
  br label %169

169:                                              ; preds = %164, %148
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 129
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %176 = call i32 @ccv_matrix_free(%struct.TYPE_24__* %175)
  br label %177

177:                                              ; preds = %174, %169
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %180 = bitcast %struct.TYPE_24__** %14 to i32**
  %181 = load i32, i32* @CCV_64F, align 4
  %182 = call i32 @ccv_add(%struct.TYPE_24__* %178, %struct.TYPE_24__* %179, i32** %180, i32 %181)
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  %186 = call i32 @ccv_matrix_free(%struct.TYPE_24__* %185)
  br label %187

187:                                              ; preds = %177, %103
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %54

190:                                              ; preds = %54
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %291

193:                                              ; preds = %190
  %194 = load i32, i32* %13, align 4
  %195 = sitofp i32 %194 to double
  %196 = fdiv double 5.000000e-01, %195
  store double %196, double* %23, align 8
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load double*, double** %199, align 8
  store double* %200, double** %24, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  %204 = load float*, float** %203, align 8
  store float* %204, float** %25, align 8
  store i32 0, i32* %12, align 4
  br label %205

205:                                              ; preds = %287, %193
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp slt i64 %207, %210
  br i1 %211, label %212, label %290

212:                                              ; preds = %205
  store i32 0, i32* %21, align 4
  br label %213

213:                                              ; preds = %267, %212
  %214 = load i32, i32* %21, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp slt i64 %215, %218
  br i1 %219, label %220, label %270

220:                                              ; preds = %213
  store i32 0, i32* %22, align 4
  br label %221

221:                                              ; preds = %263, %220
  %222 = load i32, i32* %22, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %266

225:                                              ; preds = %221
  %226 = load double, double* %23, align 8
  %227 = load double*, double** %24, align 8
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* %9, align 4
  %230 = mul nsw i32 %228, %229
  %231 = load i32, i32* %22, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds double, double* %227, i64 %233
  %235 = load double, double* %234, align 8
  %236 = load double*, double** %24, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = sub nsw i64 %239, %241
  %243 = sub nsw i64 %242, 1
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %243, %245
  %247 = load i32, i32* %22, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %246, %248
  %250 = getelementptr inbounds double, double* %236, i64 %249
  %251 = load double, double* %250, align 8
  %252 = fadd double %235, %251
  %253 = fmul double %226, %252
  %254 = fptrunc double %253 to float
  %255 = load float*, float** %25, align 8
  %256 = load i32, i32* %21, align 4
  %257 = load i32, i32* %9, align 4
  %258 = mul nsw i32 %256, %257
  %259 = load i32, i32* %22, align 4
  %260 = add nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %255, i64 %261
  store float %254, float* %262, align 4
  br label %263

263:                                              ; preds = %225
  %264 = load i32, i32* %22, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %22, align 4
  br label %221

266:                                              ; preds = %221
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %21, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %21, align 4
  br label %213

270:                                              ; preds = %213
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = mul nsw i64 %273, %275
  %277 = load float*, float** %25, align 8
  %278 = getelementptr inbounds float, float* %277, i64 %276
  store float* %278, float** %25, align 8
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i32, i32* %9, align 4
  %283 = sext i32 %282 to i64
  %284 = mul nsw i64 %281, %283
  %285 = load double*, double** %24, align 8
  %286 = getelementptr inbounds double, double* %285, i64 %284
  store double* %286, double** %24, align 8
  br label %287

287:                                              ; preds = %270
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %12, align 4
  br label %205

290:                                              ; preds = %205
  br label %330

291:                                              ; preds = %190
  %292 = load i32, i32* %13, align 4
  %293 = sitofp i32 %292 to double
  %294 = fdiv double 1.000000e+00, %293
  store double %294, double* %26, align 8
  store i32 0, i32* %12, align 4
  br label %295

295:                                              ; preds = %326, %291
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = mul nsw i64 %299, %301
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = mul nsw i64 %302, %304
  %306 = icmp slt i64 %297, %305
  br i1 %306, label %307, label %329

307:                                              ; preds = %295
  %308 = load double, double* %26, align 8
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 0
  %312 = load double*, double** %311, align 8
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds double, double* %312, i64 %314
  %316 = load double, double* %315, align 8
  %317 = fmul double %308, %316
  %318 = fptrunc double %317 to float
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 1
  %322 = load float*, float** %321, align 8
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %322, i64 %324
  store float %318, float* %325, align 4
  br label %326

326:                                              ; preds = %307
  %327 = load i32, i32* %12, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %12, align 4
  br label %295

329:                                              ; preds = %295
  br label %330

330:                                              ; preds = %329, %290
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %332 = call i32 @ccv_matrix_free(%struct.TYPE_24__* %331)
  %333 = load i32, i32* @CCV_CLI_INFO, align 4
  %334 = call i32 (i32, i8*, ...) @PRINT(i32 %333, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_24__* @ccv_dense_matrix_new(i64, i64, i32, i32, i32) #1

declare dso_local i32 @ccv_zero(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @ccv_dense_matrix_renew(%struct.TYPE_24__*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @FLUSH(i32, i8*, i32, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ccv_read(i32, %struct.TYPE_24__**, i32) #1

declare dso_local i32 @PRINT(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_slice(%struct.TYPE_24__*, i32**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_shift(%struct.TYPE_24__*, i32**, i32, i32, i32) #1

declare dso_local i32 @ccv_matrix_free(%struct.TYPE_24__*) #1

declare dso_local i32 @ccv_add(%struct.TYPE_24__*, %struct.TYPE_24__*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
