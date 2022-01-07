; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_classifier.c_try_classifier.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_classifier.c_try_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, double*, double*, double*, double*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, float* }

@.str = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"data/labels.list\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Enter Image Path: \00", align 1
@stdout = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.try_classifier.mean = private unnamed_addr constant [3 x float] [float 0x3FDEE37600000000, float 0x3FDCF28520000000, float 0x3FD9A9D520000000], align 4
@__const.try_classifier.std = private unnamed_addr constant [3 x float] [float 0x3FCCEA67C0000000, float 0x3FCC509560000000, float 0x3FCC4B09A0000000], align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%s: Predicted in %f seconds.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%s: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @try_classifier(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [256 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_16__, align 8
  %22 = alloca %struct.TYPE_16__, align 8
  %23 = alloca %struct.TYPE_16__, align 8
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca %struct.TYPE_15__, align 8
  %30 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call %struct.TYPE_14__* @load_network(i8* %31, i8* %32, i32 0)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %11, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %35 = call i32 @set_batch_network(%struct.TYPE_14__* %34, i32 1)
  %36 = call i32 @srand(i32 2222222)
  %37 = load i8*, i8** %6, align 8
  %38 = call i32* @read_data_cfg(i8* %37)
  store i32* %38, i32** %12, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i8* @option_find_str(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* null)
  store i8* %40, i8** %13, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %5
  %44 = load i32*, i32** %12, align 8
  %45 = call i8* @option_find_str(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %45, i8** %13, align 8
  br label %46

46:                                               ; preds = %43, %5
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @option_find_int(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %48, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = call i8** @get_labels(i8* %49)
  store i8** %50, i8*** %16, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32* @calloc(i32 %51, i32 4)
  store i32* %52, i32** %18, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  store i8* %53, i8** %20, align 8
  br label %54

54:                                               ; preds = %46, %256
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** %20, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @strncpy(i8* %58, i8* %59, i32 256)
  br label %74

61:                                               ; preds = %54
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @fflush(i32 %63)
  %65 = load i8*, i8** %20, align 8
  %66 = load i32, i32* @stdin, align 4
  %67 = call i8* @fgets(i8* %65, i32 256, i32 %66)
  store i8* %67, i8** %20, align 8
  %68 = load i8*, i8** %20, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  br label %257

71:                                               ; preds = %61
  %72 = load i8*, i8** %20, align 8
  %73 = call i32 @strtok(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %57
  %75 = load i8*, i8** %20, align 8
  %76 = call { i64, float* } @load_image_color(i8* %75, i32 0, i32 0)
  %77 = bitcast %struct.TYPE_16__* %21 to { i64, float* }*
  %78 = getelementptr inbounds { i64, float* }, { i64, float* }* %77, i32 0, i32 0
  %79 = extractvalue { i64, float* } %76, 0
  store i64 %79, i64* %78, align 8
  %80 = getelementptr inbounds { i64, float* }, { i64, float* }* %77, i32 0, i32 1
  %81 = extractvalue { i64, float* } %76, 1
  store float* %81, float** %80, align 8
  %82 = bitcast %struct.TYPE_16__* %21 to { i64, float* }*
  %83 = getelementptr inbounds { i64, float* }, { i64, float* }* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds { i64, float* }, { i64, float* }* %82, i32 0, i32 1
  %86 = load float*, float** %85, align 8
  %87 = call { i64, float* } @resize_min(i64 %84, float* %86, i32 256)
  %88 = bitcast %struct.TYPE_16__* %22 to { i64, float* }*
  %89 = getelementptr inbounds { i64, float* }, { i64, float* }* %88, i32 0, i32 0
  %90 = extractvalue { i64, float* } %87, 0
  store i64 %90, i64* %89, align 8
  %91 = getelementptr inbounds { i64, float* }, { i64, float* }* %88, i32 0, i32 1
  %92 = extractvalue { i64, float* } %87, 1
  store float* %92, float** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 224
  %96 = sub nsw i32 %95, 1
  %97 = sdiv i32 %96, 2
  %98 = add nsw i32 %97, 1
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 224
  %102 = sub nsw i32 %101, 1
  %103 = sdiv i32 %102, 2
  %104 = add nsw i32 %103, 1
  %105 = bitcast %struct.TYPE_16__* %22 to { i64, float* }*
  %106 = getelementptr inbounds { i64, float* }, { i64, float* }* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds { i64, float* }, { i64, float* }* %105, i32 0, i32 1
  %109 = load float*, float** %108, align 8
  %110 = call { i64, float* } @crop_image(i64 %107, float* %109, i32 %98, i32 %104, i32 224, i32 224)
  %111 = bitcast %struct.TYPE_16__* %23 to { i64, float* }*
  %112 = getelementptr inbounds { i64, float* }, { i64, float* }* %111, i32 0, i32 0
  %113 = extractvalue { i64, float* } %110, 0
  store i64 %113, i64* %112, align 8
  %114 = getelementptr inbounds { i64, float* }, { i64, float* }* %111, i32 0, i32 1
  %115 = extractvalue { i64, float* } %110, 1
  store float* %115, float** %114, align 8
  %116 = bitcast [3 x float]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 bitcast ([3 x float]* @__const.try_classifier.mean to i8*), i64 12, i1 false)
  %117 = bitcast [3 x float]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 bitcast ([3 x float]* @__const.try_classifier.std to i8*), i64 12, i1 false)
  %118 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  %119 = load float, float* %118, align 4
  %120 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 0
  %121 = load float, float* %120, align 4
  %122 = fmul float %119, %121
  %123 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 0
  store float %122, float* %123, align 4
  %124 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 1
  %125 = load float, float* %124, align 4
  %126 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 1
  %127 = load float, float* %126, align 4
  %128 = fmul float %125, %127
  %129 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 1
  store float %128, float* %129, align 4
  %130 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 2
  %131 = load float, float* %130, align 4
  %132 = getelementptr inbounds [3 x float], [3 x float]* %25, i64 0, i64 2
  %133 = load float, float* %132, align 4
  %134 = fmul float %131, %133
  %135 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 2
  store float %134, float* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %137 = load float*, float** %136, align 8
  %138 = getelementptr inbounds [3 x float], [3 x float]* %24, i64 0, i64 0
  %139 = getelementptr inbounds [3 x float], [3 x float]* %26, i64 0, i64 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %141, %143
  %145 = call i32 @normalize_cpu(float* %137, float* %138, float* %139, i32 1, i32 3, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %147 = load float*, float** %146, align 8
  store float* %147, float** %27, align 8
  %148 = call i64 (...) @clock()
  store i64 %148, i64* %17, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %150 = load float*, float** %27, align 8
  %151 = call float* @network_predict(%struct.TYPE_14__* %149, float* %150)
  store float* %151, float** %28, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i64 %156
  %158 = bitcast %struct.TYPE_15__* %29 to i8*
  %159 = bitcast %struct.TYPE_15__* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 48, i1 false)
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %190, %74
  %161 = load i32, i32* %15, align 4
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %193

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %167 = load double*, double** %166, align 8
  %168 = icmp ne double* %167, null
  br i1 %168, label %169, label %189

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %171 = load double*, double** %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, double* %171, i64 %173
  %175 = load double, double* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 2
  %177 = load double*, double** %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, double* %177, i64 %179
  %181 = load double, double* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %183 = load double*, double** %182, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %183, i64 %185
  %187 = load double, double* %186, align 8
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), double %175, double %181, double %187)
  br label %189

189:                                              ; preds = %169, %165
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %160

193:                                              ; preds = %160
  store i32 0, i32* %15, align 4
  br label %194

194:                                              ; preds = %207, %193
  %195 = load i32, i32* %15, align 4
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 4
  %201 = load double*, double** %200, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double, double* %201, i64 %203
  %205 = load double, double* %204, align 8
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), double %205)
  br label %207

207:                                              ; preds = %199
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %15, align 4
  br label %194

210:                                              ; preds = %194
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %212 = load i32, i32* %14, align 4
  %213 = load i32*, i32** %18, align 8
  %214 = call i32 @top_predictions(%struct.TYPE_14__* %211, i32 %212, i32* %213)
  %215 = load i8*, i8** %20, align 8
  %216 = call i64 (...) @clock()
  %217 = load i64, i64* %17, align 8
  %218 = sub nsw i64 %216, %217
  %219 = call double @sec(i64 %218)
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %215, double %219)
  store i32 0, i32* %15, align 4
  br label %221

221:                                              ; preds = %243, %210
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %246

225:                                              ; preds = %221
  %226 = load i32*, i32** %18, align 8
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %30, align 4
  %231 = load i8**, i8*** %16, align 8
  %232 = load i32, i32* %30, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = load float*, float** %28, align 8
  %237 = load i32, i32* %30, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  %240 = load float, float* %239, align 4
  %241 = fpext float %240 to double
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %235, double %241)
  br label %243

243:                                              ; preds = %225
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %15, align 4
  br label %221

246:                                              ; preds = %221
  %247 = bitcast %struct.TYPE_16__* %23 to { i64, float* }*
  %248 = getelementptr inbounds { i64, float* }, { i64, float* }* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds { i64, float* }, { i64, float* }* %247, i32 0, i32 1
  %251 = load float*, float** %250, align 8
  %252 = call i32 @free_image(i64 %249, float* %251)
  %253 = load i8*, i8** %9, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %246
  br label %257

256:                                              ; preds = %246
  br label %54

257:                                              ; preds = %70, %255
  ret void
}

declare dso_local %struct.TYPE_14__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(i32*, i8*, i8*) #1

declare dso_local i32 @option_find_int(i32*, i8*, i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @fgets(i8*, i32, i32) #1

declare dso_local i32 @strtok(i8*, i8*) #1

declare dso_local { i64, float* } @load_image_color(i8*, i32, i32) #1

declare dso_local { i64, float* } @resize_min(i64, float*, i32) #1

declare dso_local { i64, float* } @crop_image(i64, float*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @normalize_cpu(float*, float*, float*, i32, i32, i32) #1

declare dso_local i64 @clock(...) #1

declare dso_local float* @network_predict(%struct.TYPE_14__*, float*) #1

declare dso_local i32 @top_predictions(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local double @sec(i64) #1

declare dso_local i32 @free_image(i64, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
