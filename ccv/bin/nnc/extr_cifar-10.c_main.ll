; ModuleID = '/home/carl/AnghaBench/ccv/bin/nnc/extr_cifar-10.c_main.c'
source_filename = "/home/carl/AnghaBench/ccv/bin/nnc/extr_cifar-10.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@CCV_32F = common dso_local global i32 0, align 4
@CCV_C3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1025 x i8], align 16
  %14 = alloca [3 x double], align 16
  %15 = alloca i32*, align 8
  %16 = alloca [3 x double], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_6__*, align 8
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = call i32 (...) @ccv_nnc_init()
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 5
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 4
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32* @fopen(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %41, i32** %8, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i32* @fopen(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %416

48:                                               ; preds = %2
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %416

51:                                               ; preds = %48
  %52 = bitcast [3 x double]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %52, i8 0, i64 24, i1 false)
  %53 = load i32, i32* %6, align 4
  %54 = call i32* @ccv_array_new(i32 4, i32 %53, i32 0)
  store i32* %54, i32** %15, align 8
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %226, %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %229

59:                                               ; preds = %55
  %60 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 0
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @fread(i8* %60, i32 1025, i32 1, i32* %61)
  %63 = bitcast [3 x double]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %63, i8 0, i64 24, i1 false)
  %64 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 0
  %65 = load i8, i8* %64, align 16
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* @CCV_32F, align 4
  %68 = load i32, i32* @CCV_C3, align 4
  %69 = or i32 %67, %68
  %70 = call %struct.TYPE_6__* @ccv_dense_matrix_new(i32 32, i32 32, i32 %69, i32 0, i32 0)
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %18, align 8
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %109, %59
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 32
  br i1 %73, label %74, label %112

74:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %105, %74
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 32
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 %80, 32
  %82 = add nsw i32 %79, %81
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = sitofp i32 %87 to double
  %89 = fmul double %88, 2.000000e+00
  %90 = fdiv double %89, 2.550000e+02
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load double*, double** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 %96, 32
  %98 = add nsw i32 %95, %97
  %99 = mul nsw i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %94, i64 %100
  store double %90, double* %101, align 8
  %102 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %103 = load double, double* %102, align 16
  %104 = fadd double %103, %90
  store double %104, double* %102, align 16
  br label %105

105:                                              ; preds = %78
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %75

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %71

112:                                              ; preds = %71
  %113 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 0
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @fread(i8* %113, i32 1024, i32 1, i32* %114)
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %154, %112
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 32
  br i1 %118, label %119, label %157

119:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %150, %119
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 32
  br i1 %122, label %123, label %153

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %10, align 4
  %126 = mul nsw i32 %125, 32
  %127 = add nsw i32 %124, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = sitofp i32 %131 to double
  %133 = fmul double %132, 2.000000e+00
  %134 = fdiv double %133, 2.550000e+02
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load double*, double** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 %140, 32
  %142 = add nsw i32 %139, %141
  %143 = mul nsw i32 %142, 3
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds double, double* %138, i64 %145
  store double %134, double* %146, align 8
  %147 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %148 = load double, double* %147, align 8
  %149 = fadd double %148, %134
  store double %149, double* %147, align 8
  br label %150

150:                                              ; preds = %123
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %120

153:                                              ; preds = %120
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %116

157:                                              ; preds = %116
  %158 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 0
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @fread(i8* %158, i32 1024, i32 1, i32* %159)
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %199, %157
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 32
  br i1 %163, label %164, label %202

164:                                              ; preds = %161
  store i32 0, i32* %11, align 4
  br label %165

165:                                              ; preds = %195, %164
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %166, 32
  br i1 %167, label %168, label %198

168:                                              ; preds = %165
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %10, align 4
  %171 = mul nsw i32 %170, 32
  %172 = add nsw i32 %169, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = sitofp i32 %176 to double
  %178 = fmul double %177, 2.000000e+00
  %179 = fdiv double %178, 2.550000e+02
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load double*, double** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %10, align 4
  %186 = mul nsw i32 %185, 32
  %187 = add nsw i32 %184, %186
  %188 = mul nsw i32 %187, 3
  %189 = add nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds double, double* %183, i64 %190
  store double %179, double* %191, align 8
  %192 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %193 = load double, double* %192, align 16
  %194 = fadd double %193, %179
  store double %194, double* %192, align 16
  br label %195

195:                                              ; preds = %168
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %165

198:                                              ; preds = %165
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %161

202:                                              ; preds = %161
  %203 = load i32, i32* %17, align 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %205 = call i32 @ccv_categorized(i32 %203, %struct.TYPE_6__* %204, i32 0)
  store i32 %205, i32* %19, align 4
  %206 = load i32*, i32** %15, align 8
  %207 = call i32 @ccv_array_push(i32* %206, i32* %19)
  %208 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %209 = load double, double* %208, align 16
  %210 = fdiv double %209, 1.024000e+03
  %211 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %212 = load double, double* %211, align 16
  %213 = fadd double %212, %210
  store double %213, double* %211, align 16
  %214 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 1
  %215 = load double, double* %214, align 8
  %216 = fdiv double %215, 1.024000e+03
  %217 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %218 = load double, double* %217, align 8
  %219 = fadd double %218, %216
  store double %219, double* %217, align 8
  %220 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 2
  %221 = load double, double* %220, align 16
  %222 = fdiv double %221, 1.024000e+03
  %223 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %224 = load double, double* %223, align 16
  %225 = fadd double %224, %222
  store double %225, double* %223, align 16
  br label %226

226:                                              ; preds = %202
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %55

229:                                              ; preds = %55
  %230 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 0
  %231 = load double, double* %230, align 16
  %232 = load i32, i32* %6, align 4
  %233 = sitofp i32 %232 to double
  %234 = fdiv double %231, %233
  %235 = fptrunc double %234 to float
  %236 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 0
  store float %235, float* %236, align 4
  %237 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %238 = load double, double* %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sitofp i32 %239 to double
  %241 = fdiv double %238, %240
  %242 = fptrunc double %241 to float
  %243 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 1
  store float %242, float* %243, align 4
  %244 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 2
  %245 = load double, double* %244, align 16
  %246 = load i32, i32* %6, align 4
  %247 = sitofp i32 %246 to double
  %248 = fdiv double %245, %247
  %249 = fptrunc double %248 to float
  %250 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 2
  store float %249, float* %250, align 4
  %251 = load i32, i32* %7, align 4
  %252 = call i32* @ccv_array_new(i32 4, i32 %251, i32 0)
  store i32* %252, i32** %21, align 8
  store i32 0, i32* %12, align 4
  br label %253

253:                                              ; preds = %408, %229
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %411

257:                                              ; preds = %253
  %258 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 0
  %259 = load i32*, i32** %9, align 8
  %260 = call i32 @fread(i8* %258, i32 1025, i32 1, i32* %259)
  %261 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 0
  %262 = load i8, i8* %261, align 16
  %263 = zext i8 %262 to i32
  store i32 %263, i32* %22, align 4
  %264 = load i32, i32* @CCV_32F, align 4
  %265 = load i32, i32* @CCV_C3, align 4
  %266 = or i32 %264, %265
  %267 = call %struct.TYPE_6__* @ccv_dense_matrix_new(i32 32, i32 32, i32 %266, i32 0, i32 0)
  store %struct.TYPE_6__* %267, %struct.TYPE_6__** %23, align 8
  store i32 0, i32* %10, align 4
  br label %268

268:                                              ; preds = %307, %257
  %269 = load i32, i32* %10, align 4
  %270 = icmp slt i32 %269, 32
  br i1 %270, label %271, label %310

271:                                              ; preds = %268
  store i32 0, i32* %11, align 4
  br label %272

272:                                              ; preds = %303, %271
  %273 = load i32, i32* %11, align 4
  %274 = icmp slt i32 %273, 32
  br i1 %274, label %275, label %306

275:                                              ; preds = %272
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* %10, align 4
  %278 = mul nsw i32 %277, 32
  %279 = add nsw i32 %276, %278
  %280 = add nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = sitofp i32 %284 to double
  %286 = fmul double %285, 2.000000e+00
  %287 = fdiv double %286, 2.550000e+02
  %288 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 0
  %289 = load float, float* %288, align 4
  %290 = fpext float %289 to double
  %291 = fsub double %287, %290
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = load double*, double** %294, align 8
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* %10, align 4
  %298 = mul nsw i32 %297, 32
  %299 = add nsw i32 %296, %298
  %300 = mul nsw i32 %299, 3
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds double, double* %295, i64 %301
  store double %291, double* %302, align 8
  br label %303

303:                                              ; preds = %275
  %304 = load i32, i32* %11, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %11, align 4
  br label %272

306:                                              ; preds = %272
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %10, align 4
  br label %268

310:                                              ; preds = %268
  %311 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 0
  %312 = load i32*, i32** %9, align 8
  %313 = call i32 @fread(i8* %311, i32 1024, i32 1, i32* %312)
  store i32 0, i32* %10, align 4
  br label %314

314:                                              ; preds = %353, %310
  %315 = load i32, i32* %10, align 4
  %316 = icmp slt i32 %315, 32
  br i1 %316, label %317, label %356

317:                                              ; preds = %314
  store i32 0, i32* %11, align 4
  br label %318

318:                                              ; preds = %349, %317
  %319 = load i32, i32* %11, align 4
  %320 = icmp slt i32 %319, 32
  br i1 %320, label %321, label %352

321:                                              ; preds = %318
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* %10, align 4
  %324 = mul nsw i32 %323, 32
  %325 = add nsw i32 %322, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 %326
  %328 = load i8, i8* %327, align 1
  %329 = zext i8 %328 to i32
  %330 = sitofp i32 %329 to double
  %331 = fmul double %330, 2.000000e+00
  %332 = fdiv double %331, 2.550000e+02
  %333 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 1
  %334 = load float, float* %333, align 4
  %335 = fpext float %334 to double
  %336 = fsub double %332, %335
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = load double*, double** %339, align 8
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %10, align 4
  %343 = mul nsw i32 %342, 32
  %344 = add nsw i32 %341, %343
  %345 = mul nsw i32 %344, 3
  %346 = add nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds double, double* %340, i64 %347
  store double %336, double* %348, align 8
  br label %349

349:                                              ; preds = %321
  %350 = load i32, i32* %11, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %11, align 4
  br label %318

352:                                              ; preds = %318
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %10, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %10, align 4
  br label %314

356:                                              ; preds = %314
  %357 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 0
  %358 = load i32*, i32** %9, align 8
  %359 = call i32 @fread(i8* %357, i32 1024, i32 1, i32* %358)
  store i32 0, i32* %10, align 4
  br label %360

360:                                              ; preds = %399, %356
  %361 = load i32, i32* %10, align 4
  %362 = icmp slt i32 %361, 32
  br i1 %362, label %363, label %402

363:                                              ; preds = %360
  store i32 0, i32* %11, align 4
  br label %364

364:                                              ; preds = %395, %363
  %365 = load i32, i32* %11, align 4
  %366 = icmp slt i32 %365, 32
  br i1 %366, label %367, label %398

367:                                              ; preds = %364
  %368 = load i32, i32* %11, align 4
  %369 = load i32, i32* %10, align 4
  %370 = mul nsw i32 %369, 32
  %371 = add nsw i32 %368, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [1025 x i8], [1025 x i8]* %13, i64 0, i64 %372
  %374 = load i8, i8* %373, align 1
  %375 = zext i8 %374 to i32
  %376 = sitofp i32 %375 to double
  %377 = fmul double %376, 2.000000e+00
  %378 = fdiv double %377, 2.550000e+02
  %379 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 2
  %380 = load float, float* %379, align 4
  %381 = fpext float %380 to double
  %382 = fsub double %378, %381
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 0
  %386 = load double*, double** %385, align 8
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %10, align 4
  %389 = mul nsw i32 %388, 32
  %390 = add nsw i32 %387, %389
  %391 = mul nsw i32 %390, 3
  %392 = add nsw i32 %391, 2
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds double, double* %386, i64 %393
  store double %382, double* %394, align 8
  br label %395

395:                                              ; preds = %367
  %396 = load i32, i32* %11, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %11, align 4
  br label %364

398:                                              ; preds = %364
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %10, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %10, align 4
  br label %360

402:                                              ; preds = %360
  %403 = load i32, i32* %22, align 4
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %405 = call i32 @ccv_categorized(i32 %403, %struct.TYPE_6__* %404, i32 0)
  store i32 %405, i32* %24, align 4
  %406 = load i32*, i32** %21, align 8
  %407 = call i32 @ccv_array_push(i32* %406, i32* %24)
  br label %408

408:                                              ; preds = %402
  %409 = load i32, i32* %12, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %12, align 4
  br label %253

411:                                              ; preds = %253
  %412 = load i32*, i32** %15, align 8
  %413 = getelementptr inbounds [3 x float], [3 x float]* %20, i64 0, i64 0
  %414 = load i32*, i32** %21, align 8
  %415 = call i32 @train_cifar_10(i32* %412, i32 256, float* %413, i32* %414)
  br label %416

416:                                              ; preds = %411, %48, %2
  %417 = load i32*, i32** %8, align 8
  %418 = icmp ne i32* %417, null
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load i32*, i32** %8, align 8
  %421 = call i32 @fclose(i32* %420)
  br label %422

422:                                              ; preds = %419, %416
  %423 = load i32*, i32** %9, align 8
  %424 = icmp ne i32* %423, null
  br i1 %424, label %425, label %428

425:                                              ; preds = %422
  %426 = load i32*, i32** %9, align 8
  %427 = call i32 @fclose(i32* %426)
  br label %428

428:                                              ; preds = %425, %422
  ret i32 0
}

declare dso_local i32 @ccv_nnc_init(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @ccv_dense_matrix_new(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_categorized(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ccv_array_push(i32*, i32*) #1

declare dso_local i32 @train_cifar_10(i32*, i32, float*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
