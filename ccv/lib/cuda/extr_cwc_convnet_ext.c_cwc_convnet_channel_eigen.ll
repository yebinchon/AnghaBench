; ModuleID = '/home/carl/AnghaBench/ccv/lib/cuda/extr_cwc_convnet_ext.c_cwc_convnet_channel_eigen.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/cuda/extr_cwc_convnet_ext.c_cwc_convnet_channel_eigen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { double* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_21__, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i32 }

@CCV_CLI_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c" - compute covariance matrix for data augmentation (color gain) %d / %d\00", align 1
@CCV_IO_ANY_FILE = common dso_local global i32 0, align 4
@CCV_IO_RGB_COLOR = common dso_local global i32 0, align 4
@CCV_CLI_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cannot load %s.\0A\00", align 1
@CCV_32F = common dso_local global i32 0, align 4
@CCV_64F = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cwc_convnet_channel_eigen(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1, i64 %2, i32 %3, %struct.TYPE_24__** %4, %struct.TYPE_24__** %5) #0 {
  %7 = alloca %struct.TYPE_23__, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__**, align 8
  %12 = alloca %struct.TYPE_24__**, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double*, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca %struct.TYPE_24__, align 8
  %27 = bitcast %struct.TYPE_23__* %7 to i64*
  store i64 %2, i64* %27, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_24__** %4, %struct.TYPE_24__*** %11, align 8
  store %struct.TYPE_24__** %5, %struct.TYPE_24__*** %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 3
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @alloca(i32 %35)
  %37 = inttoptr i64 %36 to double*
  store double* %37, double** %13, align 8
  %38 = load double*, double** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(double* %38, i32 0, i32 %42)
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @CCV_GET_CHANNEL(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %62, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %104, %6
  %69 = load i32, i32* %14, align 4
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %71, %73
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %68
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %100, %76
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load double*, double** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %85, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double*, double** %13, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fadd double %98, %93
  store double %99, double* %97, align 8
  br label %100

100:                                              ; preds = %81
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %77

103:                                              ; preds = %77
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %68

107:                                              ; preds = %68
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %129, %107
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  %113 = load double*, double** %13, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %119, %121
  %123 = sitofp i32 %122 to double
  %124 = fdiv double %117, %123
  %125 = load double*, double** %13, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds double, double* %125, i64 %127
  store double %124, double* %128, align 8
  br label %129

129:                                              ; preds = %112
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %108

132:                                              ; preds = %108
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 8, %134
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %135, %137
  %139 = trunc i64 %138 to i32
  %140 = call i64 @alloca(i32 %139)
  %141 = inttoptr i64 %140 to double*
  store double* %141, double** %19, align 8
  %142 = load double*, double** %19, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 8, %144
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %145, %147
  %149 = trunc i64 %148 to i32
  %150 = call i32 @memset(double* %142, i32 0, i32 %149)
  store i32 0, i32* %17, align 4
  br label %151

151:                                              ; preds = %354, %132
  %152 = load i32, i32* %17, align 4
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %357

157:                                              ; preds = %151
  %158 = load i32, i32* %17, align 4
  %159 = srem i32 %158, 23
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %157
  %162 = load i32, i32* %17, align 4
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 1
  %167 = icmp eq i32 %162, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %161, %157
  %169 = load i32, i32* @CCV_CLI_INFO, align 4
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @FLUSH(i32 %169, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %168, %161
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %178 = load i32, i32* %17, align 4
  %179 = call i64 @ccv_array_get(%struct.TYPE_26__* %177, i32 %178)
  %180 = inttoptr i64 %179 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %180, %struct.TYPE_25__** %20, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %21, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %197 [
    i32 129, label %184
    i32 128, label %188
  ]

184:                                              ; preds = %176
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %186, align 8
  store %struct.TYPE_24__* %187, %struct.TYPE_24__** %21, align 8
  br label %197

188:                                              ; preds = %176
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @CCV_IO_ANY_FILE, align 4
  %194 = load i32, i32* @CCV_IO_RGB_COLOR, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @ccv_read(i32 %192, %struct.TYPE_24__** %21, i32 %195)
  br label %197

197:                                              ; preds = %176, %188, %184
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %199 = icmp ne %struct.TYPE_24__* %198, null
  br i1 %199, label %207, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* @CCV_CLI_ERROR, align 4
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, ...) @PRINT(i32 %201, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  br label %354

207:                                              ; preds = %197
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %22, align 8
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %210, %212
  br i1 %213, label %221, label %214

214:                                              ; preds = %207
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %217, %219
  br i1 %220, label %221, label %257

221:                                              ; preds = %214, %207
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %224, %226
  %228 = add nsw i32 %227, 1
  %229 = sdiv i32 %228, 2
  store i32 %229, i32* %23, align 4
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %232, %234
  %236 = add nsw i32 %235, 1
  %237 = sdiv i32 %236, 2
  store i32 %237, i32* %24, align 4
  %238 = load i32, i32* %23, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %221
  %241 = load i32, i32* %24, align 4
  %242 = icmp eq i32 %241, 0
  br label %243

243:                                              ; preds = %240, %221
  %244 = phi i1 [ true, %221 ], [ %242, %240 ]
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %248 = bitcast %struct.TYPE_24__** %22 to i32**
  %249 = load i32, i32* @CCV_32F, align 4
  %250 = load i32, i32* %24, align 4
  %251 = load i32, i32* %23, align 4
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @ccv_slice(%struct.TYPE_24__* %247, i32** %248, i32 %249, i32 %250, i32 %251, i32 %253, i32 %255)
  br label %262

257:                                              ; preds = %214
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %259 = bitcast %struct.TYPE_24__** %22 to i32**
  %260 = load i32, i32* @CCV_32F, align 4
  %261 = call i32 @ccv_shift(%struct.TYPE_24__* %258, i32** %259, i32 %260, i32 0, i32 0)
  br label %262

262:                                              ; preds = %257, %243
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 129
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %269 = call i32 @ccv_matrix_free(%struct.TYPE_24__* %268)
  br label %270

270:                                              ; preds = %267, %262
  store i32 0, i32* %14, align 4
  br label %271

271:                                              ; preds = %346, %270
  %272 = load i32, i32* %14, align 4
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 %274, %276
  %278 = icmp slt i32 %272, %277
  br i1 %278, label %279, label %349

279:                                              ; preds = %271
  store i32 0, i32* %15, align 4
  br label %280

280:                                              ; preds = %342, %279
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %10, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %345

284:                                              ; preds = %280
  %285 = load i32, i32* %15, align 4
  store i32 %285, i32* %16, align 4
  br label %286

286:                                              ; preds = %338, %284
  %287 = load i32, i32* %16, align 4
  %288 = load i32, i32* %10, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %341

290:                                              ; preds = %286
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load double*, double** %293, align 8
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %10, align 4
  %297 = mul nsw i32 %295, %296
  %298 = load i32, i32* %15, align 4
  %299 = add nsw i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %294, i64 %300
  %302 = load double, double* %301, align 8
  %303 = load double*, double** %13, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds double, double* %303, i64 %305
  %307 = load double, double* %306, align 8
  %308 = fsub double %302, %307
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 0
  %312 = load double*, double** %311, align 8
  %313 = load i32, i32* %14, align 4
  %314 = load i32, i32* %10, align 4
  %315 = mul nsw i32 %313, %314
  %316 = load i32, i32* %16, align 4
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds double, double* %312, i64 %318
  %320 = load double, double* %319, align 8
  %321 = load double*, double** %13, align 8
  %322 = load i32, i32* %16, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds double, double* %321, i64 %323
  %325 = load double, double* %324, align 8
  %326 = fsub double %320, %325
  %327 = fmul double %308, %326
  %328 = load double*, double** %19, align 8
  %329 = load i32, i32* %15, align 4
  %330 = load i32, i32* %10, align 4
  %331 = mul nsw i32 %329, %330
  %332 = load i32, i32* %16, align 4
  %333 = add nsw i32 %331, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds double, double* %328, i64 %334
  %336 = load double, double* %335, align 8
  %337 = fadd double %336, %327
  store double %337, double* %335, align 8
  br label %338

338:                                              ; preds = %290
  %339 = load i32, i32* %16, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %16, align 4
  br label %286

341:                                              ; preds = %286
  br label %342

342:                                              ; preds = %341
  %343 = load i32, i32* %15, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %15, align 4
  br label %280

345:                                              ; preds = %280
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %14, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %14, align 4
  br label %271

349:                                              ; preds = %271
  %350 = load i32, i32* %18, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %18, align 4
  %352 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %353 = call i32 @ccv_matrix_free(%struct.TYPE_24__* %352)
  br label %354

354:                                              ; preds = %349, %200
  %355 = load i32, i32* %17, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %17, align 4
  br label %151

357:                                              ; preds = %151
  store i32 0, i32* %14, align 4
  br label %358

358:                                              ; preds = %389, %357
  %359 = load i32, i32* %14, align 4
  %360 = load i32, i32* %10, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %392

362:                                              ; preds = %358
  store i32 0, i32* %15, align 4
  br label %363

363:                                              ; preds = %385, %362
  %364 = load i32, i32* %15, align 4
  %365 = load i32, i32* %14, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %388

367:                                              ; preds = %363
  %368 = load double*, double** %19, align 8
  %369 = load i32, i32* %15, align 4
  %370 = load i32, i32* %10, align 4
  %371 = mul nsw i32 %369, %370
  %372 = load i32, i32* %14, align 4
  %373 = add nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds double, double* %368, i64 %374
  %376 = load double, double* %375, align 8
  %377 = load double*, double** %19, align 8
  %378 = load i32, i32* %14, align 4
  %379 = load i32, i32* %10, align 4
  %380 = mul nsw i32 %378, %379
  %381 = load i32, i32* %15, align 4
  %382 = add nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds double, double* %377, i64 %383
  store double %376, double* %384, align 8
  br label %385

385:                                              ; preds = %367
  %386 = load i32, i32* %15, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %15, align 4
  br label %363

388:                                              ; preds = %363
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %14, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %14, align 4
  br label %358

392:                                              ; preds = %358
  %393 = load i32, i32* %18, align 4
  %394 = sitofp i32 %393 to double
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = sitofp i32 %396 to double
  %398 = fmul double %394, %397
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = sitofp i32 %400 to double
  %402 = fmul double %398, %401
  %403 = fdiv double 1.000000e+00, %402
  store double %403, double* %25, align 8
  store i32 0, i32* %14, align 4
  br label %404

404:                                              ; preds = %429, %392
  %405 = load i32, i32* %14, align 4
  %406 = load i32, i32* %10, align 4
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %408, label %432

408:                                              ; preds = %404
  store i32 0, i32* %15, align 4
  br label %409

409:                                              ; preds = %425, %408
  %410 = load i32, i32* %15, align 4
  %411 = load i32, i32* %10, align 4
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %428

413:                                              ; preds = %409
  %414 = load double, double* %25, align 8
  %415 = load double*, double** %19, align 8
  %416 = load i32, i32* %14, align 4
  %417 = load i32, i32* %10, align 4
  %418 = mul nsw i32 %416, %417
  %419 = load i32, i32* %15, align 4
  %420 = add nsw i32 %418, %419
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds double, double* %415, i64 %421
  %423 = load double, double* %422, align 8
  %424 = fmul double %423, %414
  store double %424, double* %422, align 8
  br label %425

425:                                              ; preds = %413
  %426 = load i32, i32* %15, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %15, align 4
  br label %409

428:                                              ; preds = %409
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %14, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %14, align 4
  br label %404

432:                                              ; preds = %404
  %433 = load i32, i32* @CCV_64F, align 4
  %434 = load i32, i32* @CCV_C1, align 4
  %435 = or i32 %433, %434
  %436 = load double*, double** %19, align 8
  call void @ccv_dense_matrix(%struct.TYPE_24__* sret %26, i32 3, i32 3, i32 %435, double* %436, i32 0)
  %437 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %11, align 8
  %438 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %439 = load i32, i32* @CCV_64F, align 4
  %440 = call i32 @ccv_eigen(%struct.TYPE_24__* %26, %struct.TYPE_24__** %437, %struct.TYPE_24__** %438, i32 %439, i32 0)
  %441 = load i32, i32* @CCV_CLI_INFO, align 4
  %442 = call i32 (i32, i8*, ...) @PRINT(i32 %441, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i32 @FLUSH(i32, i8*, i32, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ccv_read(i32, %struct.TYPE_24__**, i32) #1

declare dso_local i32 @PRINT(i32, i8*, ...) #1

declare dso_local i32 @ccv_slice(%struct.TYPE_24__*, i32**, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_shift(%struct.TYPE_24__*, i32**, i32, i32, i32) #1

declare dso_local i32 @ccv_matrix_free(%struct.TYPE_24__*) #1

declare dso_local void @ccv_dense_matrix(%struct.TYPE_24__* sret, i32, i32, i32, double*, i32) #1

declare dso_local i32 @ccv_eigen(%struct.TYPE_24__*, %struct.TYPE_24__**, %struct.TYPE_24__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
