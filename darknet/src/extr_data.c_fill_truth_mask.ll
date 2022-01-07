; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_mask.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_data.c_fill_truth_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, float* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"images\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"JPEGImages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".JPG\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".JPEG\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_truth_mask(i8* %0, i32 %1, float* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_19__* byval(%struct.TYPE_19__) align 8 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4096 x i8], align 16
  %21 = alloca i32*, align 8
  %22 = alloca [32788 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_17__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_17__, align 8
  %29 = alloca %struct.TYPE_18__, align 4
  %30 = alloca %struct.TYPE_17__, align 8
  %31 = alloca %struct.TYPE_17__, align 8
  %32 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store float* %2, float** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 %9, i32* %19, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %35 = call i32 @find_replace(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %38 = call i32 @find_replace(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %41 = call i32 @find_replace(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %43 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %44 = call i32 @find_replace(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %46 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %47 = call i32 @find_replace(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  %48 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %49 = call i32* @fopen(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %49, i32** %21, align 8
  %50 = load i32*, i32** %21, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %10
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %54 = call i32 @file_error(i8* %53)
  br label %55

55:                                               ; preds = %52, %10
  store i32 0, i32* %24, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call { i64, float* } @make_image(i32 %56, i32 %57, i32 1)
  %59 = bitcast %struct.TYPE_17__* %25 to { i64, float* }*
  %60 = getelementptr inbounds { i64, float* }, { i64, float* }* %59, i32 0, i32 0
  %61 = extractvalue { i64, float* } %58, 0
  store i64 %61, i64* %60, align 8
  %62 = getelementptr inbounds { i64, float* }, { i64, float* }* %59, i32 0, i32 1
  %63 = extractvalue { i64, float* } %58, 1
  store float* %63, float** %62, align 8
  br label %64

64:                                               ; preds = %311, %55
  %65 = load i32*, i32** %21, align 8
  %66 = getelementptr inbounds [32788 x i8], [32788 x i8]* %22, i64 0, i64 0
  %67 = call i32 @fscanf(i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %23, i8* %66)
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i1 [ false, %64 ], [ %72, %69 ]
  br i1 %74, label %75, label %320

75:                                               ; preds = %73
  store i32 0, i32* %26, align 4
  %76 = getelementptr inbounds [32788 x i8], [32788 x i8]* %22, i64 0, i64 0
  %77 = call i32* @read_intlist(i8* %76, i32* %26, i32 0)
  store i32* %77, i32** %27, align 8
  %78 = load i32*, i32** %27, align 8
  %79 = load i32, i32* %26, align 4
  %80 = bitcast %struct.TYPE_17__* %25 to { i64, float* }*
  %81 = getelementptr inbounds { i64, float* }, { i64, float* }* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds { i64, float* }, { i64, float* }* %80, i32 0, i32 1
  %84 = load float*, float** %83, align 8
  %85 = call i32 @load_rle(i64 %82, float* %84, i32* %78, i32 %79)
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = bitcast %struct.TYPE_17__* %25 to { i64, float* }*
  %101 = getelementptr inbounds { i64, float* }, { i64, float* }* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds { i64, float* }, { i64, float* }* %100, i32 0, i32 1
  %104 = load float*, float** %103, align 8
  %105 = call { i64, float* } @rotate_crop_image(i64 %102, float* %104, i32 %87, i32 %89, i32 %91, i32 %93, i32 %95, i32 %97, i32 %99)
  %106 = bitcast %struct.TYPE_17__* %28 to { i64, float* }*
  %107 = getelementptr inbounds { i64, float* }, { i64, float* }* %106, i32 0, i32 0
  %108 = extractvalue { i64, float* } %105, 0
  store i64 %108, i64* %107, align 8
  %109 = getelementptr inbounds { i64, float* }, { i64, float* }* %106, i32 0, i32 1
  %110 = extractvalue { i64, float* } %105, 1
  store float* %110, float** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %75
  %114 = bitcast %struct.TYPE_17__* %28 to { i64, float* }*
  %115 = getelementptr inbounds { i64, float* }, { i64, float* }* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds { i64, float* }, { i64, float* }* %114, i32 0, i32 1
  %118 = load float*, float** %117, align 8
  %119 = call i32 @flip_image(i64 %116, float* %118)
  br label %120

120:                                              ; preds = %113, %75
  %121 = bitcast %struct.TYPE_17__* %28 to { i64, float* }*
  %122 = getelementptr inbounds { i64, float* }, { i64, float* }* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds { i64, float* }, { i64, float* }* %121, i32 0, i32 1
  %125 = load float*, float** %124, align 8
  %126 = call { i64, i64 } @bound_image(i64 %123, float* %125)
  %127 = bitcast %struct.TYPE_18__* %29 to { i64, i64 }*
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 0
  %129 = extractvalue { i64, i64 } %126, 0
  store i64 %129, i64* %128, align 4
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 1
  %131 = extractvalue { i64, i64 } %126, 1
  store i64 %131, i64* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %311

135:                                              ; preds = %120
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = bitcast %struct.TYPE_17__* %28 to { i64, float* }*
  %145 = getelementptr inbounds { i64, float* }, { i64, float* }* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds { i64, float* }, { i64, float* }* %144, i32 0, i32 1
  %148 = load float*, float** %147, align 8
  %149 = call { i64, float* } @crop_image(i64 %146, float* %148, i32 %137, i32 %139, i32 %141, i32 %143)
  %150 = bitcast %struct.TYPE_17__* %30 to { i64, float* }*
  %151 = getelementptr inbounds { i64, float* }, { i64, float* }* %150, i32 0, i32 0
  %152 = extractvalue { i64, float* } %149, 0
  store i64 %152, i64* %151, align 8
  %153 = getelementptr inbounds { i64, float* }, { i64, float* }* %150, i32 0, i32 1
  %154 = extractvalue { i64, float* } %149, 1
  store float* %154, float** %153, align 8
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %19, align 4
  %157 = bitcast %struct.TYPE_17__* %30 to { i64, float* }*
  %158 = getelementptr inbounds { i64, float* }, { i64, float* }* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds { i64, float* }, { i64, float* }* %157, i32 0, i32 1
  %161 = load float*, float** %160, align 8
  %162 = call { i64, float* } @resize_image(i64 %159, float* %161, i32 %155, i32 %156)
  %163 = bitcast %struct.TYPE_17__* %31 to { i64, float* }*
  %164 = getelementptr inbounds { i64, float* }, { i64, float* }* %163, i32 0, i32 0
  %165 = extractvalue { i64, float* } %162, 0
  store i64 %165, i64* %164, align 8
  %166 = getelementptr inbounds { i64, float* }, { i64, float* }* %163, i32 0, i32 1
  %167 = extractvalue { i64, float* } %162, 1
  store float* %167, float** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sitofp i32 %169 to double
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sitofp i32 %172 to double
  %174 = fdiv double %173, 2.000000e+00
  %175 = fadd double %170, %174
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sitofp i32 %177 to double
  %179 = fdiv double %175, %178
  %180 = fptrunc double %179 to float
  %181 = load float*, float** %13, align 8
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %19, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 4, %185
  %187 = add nsw i32 %186, 1
  %188 = mul nsw i32 %182, %187
  %189 = add nsw i32 %188, 0
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %181, i64 %190
  store float %180, float* %191, align 4
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = sitofp i32 %193 to double
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = sitofp i32 %196 to double
  %198 = fdiv double %197, 2.000000e+00
  %199 = fadd double %194, %198
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sitofp i32 %201 to double
  %203 = fdiv double %199, %202
  %204 = fptrunc double %203 to float
  %205 = load float*, float** %13, align 8
  %206 = load i32, i32* %24, align 4
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %19, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add nsw i32 4, %209
  %211 = add nsw i32 %210, 1
  %212 = mul nsw i32 %206, %211
  %213 = add nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %205, i64 %214
  store float %204, float* %215, align 4
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sdiv i32 %217, %219
  %221 = sitofp i32 %220 to float
  %222 = load float*, float** %13, align 8
  %223 = load i32, i32* %24, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %19, align 4
  %226 = mul nsw i32 %224, %225
  %227 = add nsw i32 4, %226
  %228 = add nsw i32 %227, 1
  %229 = mul nsw i32 %223, %228
  %230 = add nsw i32 %229, 2
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %222, i64 %231
  store float %221, float* %232, align 4
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sdiv i32 %234, %236
  %238 = sitofp i32 %237 to float
  %239 = load float*, float** %13, align 8
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %19, align 4
  %243 = mul nsw i32 %241, %242
  %244 = add nsw i32 4, %243
  %245 = add nsw i32 %244, 1
  %246 = mul nsw i32 %240, %245
  %247 = add nsw i32 %246, 3
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %239, i64 %248
  store float %238, float* %249, align 4
  store i32 0, i32* %32, align 4
  br label %250

250:                                              ; preds = %276, %135
  %251 = load i32, i32* %32, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* %19, align 4
  %254 = mul nsw i32 %252, %253
  %255 = icmp slt i32 %251, %254
  br i1 %255, label %256, label %279

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %258 = load float*, float** %257, align 8
  %259 = load i32, i32* %32, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %258, i64 %260
  %262 = load float, float* %261, align 4
  %263 = load float*, float** %13, align 8
  %264 = load i32, i32* %24, align 4
  %265 = load i32, i32* %18, align 4
  %266 = load i32, i32* %19, align 4
  %267 = mul nsw i32 %265, %266
  %268 = add nsw i32 4, %267
  %269 = add nsw i32 %268, 1
  %270 = mul nsw i32 %264, %269
  %271 = add nsw i32 %270, 4
  %272 = load i32, i32* %32, align 4
  %273 = add nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %263, i64 %274
  store float %262, float* %275, align 4
  br label %276

276:                                              ; preds = %256
  %277 = load i32, i32* %32, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %32, align 4
  br label %250

279:                                              ; preds = %250
  %280 = load i32, i32* %23, align 4
  %281 = sitofp i32 %280 to float
  %282 = load float*, float** %13, align 8
  %283 = load i32, i32* %24, align 4
  %284 = load i32, i32* %18, align 4
  %285 = load i32, i32* %19, align 4
  %286 = mul nsw i32 %284, %285
  %287 = add nsw i32 4, %286
  %288 = add nsw i32 %287, 1
  %289 = mul nsw i32 %283, %288
  %290 = add nsw i32 %289, 4
  %291 = load i32, i32* %18, align 4
  %292 = load i32, i32* %19, align 4
  %293 = mul nsw i32 %291, %292
  %294 = add nsw i32 %290, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %282, i64 %295
  store float %281, float* %296, align 4
  %297 = bitcast %struct.TYPE_17__* %30 to { i64, float* }*
  %298 = getelementptr inbounds { i64, float* }, { i64, float* }* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds { i64, float* }, { i64, float* }* %297, i32 0, i32 1
  %301 = load float*, float** %300, align 8
  %302 = call i32 @free_image(i64 %299, float* %301)
  %303 = bitcast %struct.TYPE_17__* %31 to { i64, float* }*
  %304 = getelementptr inbounds { i64, float* }, { i64, float* }* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds { i64, float* }, { i64, float* }* %303, i32 0, i32 1
  %307 = load float*, float** %306, align 8
  %308 = call i32 @free_image(i64 %305, float* %307)
  %309 = load i32, i32* %24, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %24, align 4
  br label %311

311:                                              ; preds = %279, %120
  %312 = bitcast %struct.TYPE_17__* %28 to { i64, float* }*
  %313 = getelementptr inbounds { i64, float* }, { i64, float* }* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = getelementptr inbounds { i64, float* }, { i64, float* }* %312, i32 0, i32 1
  %316 = load float*, float** %315, align 8
  %317 = call i32 @free_image(i64 %314, float* %316)
  %318 = load i32*, i32** %27, align 8
  %319 = call i32 @free(i32* %318)
  br label %64

320:                                              ; preds = %73
  %321 = load i32*, i32** %21, align 8
  %322 = call i32 @fclose(i32* %321)
  %323 = bitcast %struct.TYPE_17__* %25 to { i64, float* }*
  %324 = getelementptr inbounds { i64, float* }, { i64, float* }* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds { i64, float* }, { i64, float* }* %323, i32 0, i32 1
  %327 = load float*, float** %326, align 8
  %328 = call i32 @free_image(i64 %325, float* %327)
  ret void
}

declare dso_local i32 @find_replace(i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_error(i8*) #1

declare dso_local { i64, float* } @make_image(i32, i32, i32) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*, i8*) #1

declare dso_local i32* @read_intlist(i8*, i32*, i32) #1

declare dso_local i32 @load_rle(i64, float*, i32*, i32) #1

declare dso_local { i64, float* } @rotate_crop_image(i64, float*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @flip_image(i64, float*) #1

declare dso_local { i64, i64 } @bound_image(i64, float*) #1

declare dso_local { i64, float* } @crop_image(i64, float*, i32, i32, i32, i32) #1

declare dso_local { i64, float* } @resize_image(i64, float*, i32, i32) #1

declare dso_local i32 @free_image(i64, float*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
