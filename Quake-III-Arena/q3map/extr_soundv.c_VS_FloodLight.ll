; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_FloodLight.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_soundv.c_VS_FloodLight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, float, float*, i32, double*, i32, i8*, i32 }
%struct.TYPE_17__ = type { i64, float**, i32, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i8*, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { float*, i8* }

@__const.VS_FloodLight.dir = private unnamed_addr constant [2 x [4 x i32]] [[4 x i32] [i32 1, i32 1, i32 -1, i32 -1], [4 x i32] [i32 1, i32 -1, i32 -1, i32 1]], align 16
@LDAT_LINEAR = common dso_local global i32 0, align 4
@lightLinearScale = common dso_local global float 0.000000e+00, align 4
@MAX_WORLD_COORD = common dso_local global float 0.000000e+00, align 4
@dleafs = common dso_local global %struct.TYPE_18__* null, align 8
@qtrue = common dso_local global i8* null, align 8
@VOLUME_NORMAL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VS_FloodLight(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x [4 x i32]], align 16
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca [2 x float*], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %25 = bitcast [2 x [4 x i32]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([2 x [4 x i32]]* @__const.VS_FloodLight.dir to i8*), i64 32, i1 false)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %879 [
    i32 132, label %29
    i32 131, label %304
    i32 133, label %556
    i32 130, label %861
    i32 129, label %867
    i32 128, label %873
  ]

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @LDAT_LINEAR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = load float, float* @lightLinearScale, align 4
  %40 = fmul float %38, %39
  store float %40, float* %12, align 4
  br label %46

41:                                               ; preds = %29
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = call float @sqrt(float %44)
  store float %45, float* %12, align 4
  br label %46

46:                                               ; preds = %41, %35
  %47 = load float, float* @MAX_WORLD_COORD, align 4
  store float %47, float* %14, align 4
  %48 = load float, float* %12, align 4
  %49 = load float, float* %14, align 4
  %50 = fcmp ogt float %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load float, float* %12, align 4
  store float %52, float* %14, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = load float*, float** %55, align 8
  %57 = call i32 @VS_LightLeafnum(float* %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dleafs, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i64 %60
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %4, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load i8*, i8** @qtrue, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  br label %879

70:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %300, %70
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %303

74:                                               ; preds = %71
  store i32 -1, i32* %7, align 4
  br label %75

75:                                               ; preds = %296, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp sle i32 %76, 1
  br i1 %77, label %78, label %299

78:                                               ; preds = %75
  %79 = call i32 @memset(%struct.TYPE_17__* %3, i32 0, i32 88)
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i64 0, i64* %80, align 8
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %167, %78
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %170

84:                                               ; preds = %81
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load float*, float** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = sitofp i32 %92 to float
  %94 = load float, float* %14, align 4
  %95 = fmul float %93, %94
  %96 = fadd float %91, %95
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %98 = load float**, float*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds float*, float** %98, i64 %100
  %102 = load float*, float** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  store float %96, float* %105, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 2
  %108 = load float*, float** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  %111 = srem i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %108, i64 %112
  %114 = load float, float* %113, align 4
  %115 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 0
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to float
  %121 = load float, float* %14, align 4
  %122 = fmul float %120, %121
  %123 = fadd float %114, %122
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %125 = load float**, float*** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds float*, float** %125, i64 %127
  %129 = load float*, float** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  %132 = srem i32 %131, 3
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %129, i64 %133
  store float %123, float* %134, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  %137 = load float*, float** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 2
  %140 = srem i32 %139, 3
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %137, i64 %141
  %143 = load float, float* %142, align 4
  %144 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* %9, i64 0, i64 1
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %144, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sitofp i32 %148 to float
  %150 = load float, float* %14, align 4
  %151 = fmul float %149, %150
  %152 = fadd float %143, %151
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %154 = load float**, float*** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds float*, float** %154, i64 %156
  %158 = load float*, float** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 2
  %161 = srem i32 %160, 3
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %158, i64 %162
  store float %152, float* %163, align 4
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %84
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %81

170:                                              ; preds = %81
  %171 = load i32, i32* %7, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %175 = load float**, float*** %174, align 8
  %176 = getelementptr inbounds float*, float** %175, i64 0
  %177 = load float*, float** %176, align 8
  %178 = load float*, float** %18, align 8
  %179 = call i32 @VectorCopy(float* %177, float* %178)
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %181 = load float**, float*** %180, align 8
  %182 = getelementptr inbounds float*, float** %181, i64 2
  %183 = load float*, float** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %185 = load float**, float*** %184, align 8
  %186 = getelementptr inbounds float*, float** %185, i64 0
  %187 = load float*, float** %186, align 8
  %188 = call i32 @VectorCopy(float* %183, float* %187)
  %189 = load float*, float** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %191 = load float**, float*** %190, align 8
  %192 = getelementptr inbounds float*, float** %191, i64 2
  %193 = load float*, float** %192, align 8
  %194 = call i32 @VectorCopy(float* %189, float* %193)
  br label %195

195:                                              ; preds = %173, %170
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %228, %195
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ult i64 %198, %200
  br i1 %201, label %202, label %231

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 9
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i64 %206
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load float*, float** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %212 = load float**, float*** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = urem i64 %215, %217
  %219 = getelementptr inbounds float*, float** %212, i64 %218
  %220 = load float*, float** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %222 = load float**, float*** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float*, float** %222, i64 %224
  %226 = load float*, float** %225, align 8
  %227 = call i32 @VS_PlaneFromPoints(%struct.TYPE_15__* %207, float* %210, float* %220, float* %226)
  br label %228

228:                                              ; preds = %202
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %196

231:                                              ; preds = %196
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 2
  %234 = load float*, float** %233, align 8
  %235 = load float*, float** %18, align 8
  %236 = call i32 @VectorCopy(float* %234, float* %235)
  %237 = load i32, i32* %7, align 4
  %238 = sitofp i32 %237 to float
  %239 = load float, float* %12, align 4
  %240 = fmul float %238, %239
  %241 = load float*, float** %18, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %241, i64 %243
  %245 = load float, float* %244, align 4
  %246 = fadd float %245, %240
  store float %246, float* %244, align 4
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load float*, float** %248, align 8
  %250 = call i32 @VectorClear(float* %249)
  %251 = load i32, i32* %7, align 4
  %252 = sub nsw i32 0, %251
  %253 = sitofp i32 %252 to float
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = load float*, float** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %256, i64 %258
  store float %253, float* %259, align 4
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load float*, float** %261, align 8
  %263 = load float*, float** %18, align 8
  %264 = call i8* @DotProduct(float* %262, float* %263)
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 1
  store i8* %264, i8** %266, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %269 = bitcast %struct.TYPE_15__* %267 to i8*
  %270 = bitcast %struct.TYPE_15__* %268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %269, i8* align 8 %270, i64 16, i1 false)
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 2
  store i32 %273, i32* %274, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  store i32 -1, i32* %275, align 4
  %276 = load i8*, i8** @VOLUME_NORMAL, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 6
  store i8* %276, i8** %277, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %278, align 8
  %280 = call i32 @memset(%struct.TYPE_17__* %279, i32 0, i32 8)
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %281, align 8
  %283 = call i32 @memset(%struct.TYPE_17__* %282, i32 0, i32 8)
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @VS_R_FloodLight(%struct.TYPE_16__* %284, %struct.TYPE_17__* %3, i32 %287, i32 0)
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %231
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %294 = call i32 @VS_R_CastLightAtSurface(%struct.TYPE_16__* %293, %struct.TYPE_17__* %3)
  br label %295

295:                                              ; preds = %292, %231
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %7, align 4
  %298 = add nsw i32 %297, 2
  store i32 %298, i32* %7, align 4
  br label %75

299:                                              ; preds = %75
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %6, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %6, align 4
  br label %71

303:                                              ; preds = %71
  br label %879

304:                                              ; preds = %1
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @LDAT_LINEAR, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %304
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  %313 = load float, float* %312, align 4
  %314 = load float, float* @lightLinearScale, align 4
  %315 = fmul float %313, %314
  store float %315, float* %12, align 4
  br label %321

316:                                              ; preds = %304
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 1
  %319 = load float, float* %318, align 4
  %320 = call float @sqrt(float %319)
  store float %320, float* %12, align 4
  br label %321

321:                                              ; preds = %316, %310
  %322 = load float, float* %12, align 4
  %323 = fmul float %322, 2.000000e+00
  store float %323, float* %12, align 4
  store float 4.096000e+03, float* %14, align 4
  %324 = load float, float* %12, align 4
  %325 = load float, float* %14, align 4
  %326 = fcmp ogt float %324, %325
  br i1 %326, label %327, label %329

327:                                              ; preds = %321
  %328 = load float, float* %12, align 4
  store float %328, float* %14, align 4
  br label %329

329:                                              ; preds = %327, %321
  %330 = load float, float* %14, align 4
  %331 = fmul float 8.000000e+00, %330
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = sitofp i32 %334 to float
  %336 = fmul float %331, %335
  store float %336, float* %13, align 4
  %337 = call i32 @memset(%struct.TYPE_17__* %3, i32 0, i32 88)
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 2
  %340 = load float*, float** %339, align 8
  %341 = call i32 @VS_LightLeafnum(float* %340)
  store i32 %341, i32* %5, align 4
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dleafs, align 8
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i64 %344
  store %struct.TYPE_18__* %345, %struct.TYPE_18__** %4, align 8
  %346 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, -1
  br i1 %349, label %350, label %354

350:                                              ; preds = %329
  %351 = load i8*, i8** @qtrue, align 8
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 6
  store i8* %351, i8** %353, align 8
  br label %879

354:                                              ; preds = %329
  %355 = load float*, float** %15, align 8
  %356 = call i32 @VectorClear(float* %355)
  store i32 0, i32* %6, align 4
  br label %357

357:                                              ; preds = %384, %354
  %358 = load i32, i32* %6, align 4
  %359 = icmp slt i32 %358, 3
  br i1 %359, label %360, label %387

360:                                              ; preds = %357
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 4
  %363 = load double*, double** %362, align 8
  %364 = load i32, i32* %6, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds double, double* %363, i64 %365
  %367 = load double, double* %366, align 8
  %368 = fcmp ogt double %367, -9.000000e-01
  br i1 %368, label %369, label %383

369:                                              ; preds = %360
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 4
  %372 = load double*, double** %371, align 8
  %373 = load i32, i32* %6, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds double, double* %372, i64 %374
  %376 = load double, double* %375, align 8
  %377 = fcmp olt double %376, 9.000000e-01
  br i1 %377, label %378, label %383

378:                                              ; preds = %369
  %379 = load float*, float** %15, align 8
  %380 = load i32, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %379, i64 %381
  store float 1.000000e+00, float* %382, align 4
  br label %387

383:                                              ; preds = %369, %360
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %6, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %6, align 4
  br label %357

387:                                              ; preds = %378, %357
  %388 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 4
  %390 = load double*, double** %389, align 8
  %391 = load float*, float** %15, align 8
  %392 = load float*, float** %16, align 8
  %393 = call i32 @CrossProduct(double* %390, float* %391, float* %392)
  %394 = load float*, float** %16, align 8
  %395 = load float, float* %13, align 4
  %396 = load float*, float** %17, align 8
  %397 = call i32 @VectorScale(float* %394, float %395, float* %396)
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i64 0, i64* %398, align 8
  store float 4.500000e+01, float* %11, align 4
  %399 = load float, float* %11, align 4
  %400 = fdiv float %399, 2.000000e+00
  store float %400, float* %10, align 4
  br label %401

401:                                              ; preds = %457, %387
  %402 = load float, float* %10, align 4
  %403 = load float, float* %11, align 4
  %404 = fdiv float %403, 2.000000e+00
  %405 = fadd float 3.600000e+02, %404
  %406 = fcmp olt float %402, %405
  br i1 %406, label %407, label %461

407:                                              ; preds = %401
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %409 = load float**, float*** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = getelementptr inbounds float*, float** %409, i64 %411
  %413 = load float*, float** %412, align 8
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 4
  %416 = load double*, double** %415, align 8
  %417 = load float*, float** %17, align 8
  %418 = load float, float* %10, align 4
  %419 = call i32 @RotatePointAroundVector(float* %413, double* %416, float* %417, float %418)
  %420 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %420, i32 0, i32 2
  %422 = load float*, float** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %424 = load float**, float*** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = getelementptr inbounds float*, float** %424, i64 %426
  %428 = load float*, float** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %430 = load float**, float*** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = getelementptr inbounds float*, float** %430, i64 %432
  %434 = load float*, float** %433, align 8
  %435 = call i32 @VectorAdd(float* %422, float* %428, float* %434)
  %436 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %437 = load float**, float*** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = getelementptr inbounds float*, float** %437, i64 %439
  %441 = load float*, float** %440, align 8
  %442 = load float, float* %14, align 4
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i32 0, i32 4
  %445 = load double*, double** %444, align 8
  %446 = bitcast double* %445 to float*
  %447 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %448 = load float**, float*** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = getelementptr inbounds float*, float** %448, i64 %450
  %452 = load float*, float** %451, align 8
  %453 = call i32 @VectorMA(float* %441, float %442, float* %446, float* %452)
  %454 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = add i64 %455, 1
  store i64 %456, i64* %454, align 8
  br label %457

457:                                              ; preds = %407
  %458 = load float, float* %11, align 4
  %459 = load float, float* %10, align 4
  %460 = fadd float %459, %458
  store float %460, float* %10, align 4
  br label %401

461:                                              ; preds = %401
  store i32 0, i32* %6, align 4
  br label %462

462:                                              ; preds = %494, %461
  %463 = load i32, i32* %6, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = icmp ult i64 %464, %466
  br i1 %467, label %468, label %497

468:                                              ; preds = %462
  %469 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 9
  %470 = load %struct.TYPE_15__*, %struct.TYPE_15__** %469, align 8
  %471 = load i32, i32* %6, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %470, i64 %472
  %474 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %475 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %474, i32 0, i32 2
  %476 = load float*, float** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %478 = load float**, float*** %477, align 8
  %479 = load i32, i32* %6, align 4
  %480 = add nsw i32 %479, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = urem i64 %481, %483
  %485 = getelementptr inbounds float*, float** %478, i64 %484
  %486 = load float*, float** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %488 = load float**, float*** %487, align 8
  %489 = load i32, i32* %6, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds float*, float** %488, i64 %490
  %492 = load float*, float** %491, align 8
  %493 = call i32 @VS_PlaneFromPoints(%struct.TYPE_15__* %473, float* %476, float* %486, float* %492)
  br label %494

494:                                              ; preds = %468
  %495 = load i32, i32* %6, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %6, align 4
  br label %462

497:                                              ; preds = %462
  %498 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %499 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %498, i32 0, i32 2
  %500 = load float*, float** %499, align 8
  %501 = load float, float* %12, align 4
  %502 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i32 0, i32 4
  %504 = load double*, double** %503, align 8
  %505 = bitcast double* %504 to float*
  %506 = load float*, float** %18, align 8
  %507 = call i32 @VectorMA(float* %500, float %501, float* %505, float* %506)
  %508 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %509 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %508, i32 0, i32 4
  %510 = load double*, double** %509, align 8
  %511 = bitcast double* %510 to float*
  %512 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %512, i32 0, i32 0
  %514 = load float*, float** %513, align 8
  %515 = call i32 @VectorCopy(float* %511, float* %514)
  %516 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %517 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %516, i32 0, i32 0
  %518 = load float*, float** %517, align 8
  %519 = call i32 @VectorInverse(float* %518)
  %520 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %521 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %520, i32 0, i32 0
  %522 = load float*, float** %521, align 8
  %523 = load float*, float** %18, align 8
  %524 = call i8* @DotProduct(float* %522, float* %523)
  %525 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %526 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %525, i32 0, i32 1
  store i8* %524, i8** %526, align 8
  %527 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 8
  %528 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %529 = bitcast %struct.TYPE_15__* %527 to i8*
  %530 = bitcast %struct.TYPE_15__* %528 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %529, i8* align 8 %530, i64 16, i1 false)
  %531 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %532 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 2
  store i32 %533, i32* %534, align 8
  %535 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  store i32 -1, i32* %535, align 4
  %536 = load i8*, i8** @VOLUME_NORMAL, align 8
  %537 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 6
  store i8* %536, i8** %537, align 8
  %538 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %539 = load %struct.TYPE_17__*, %struct.TYPE_17__** %538, align 8
  %540 = call i32 @memset(%struct.TYPE_17__* %539, i32 0, i32 8)
  %541 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %542 = load %struct.TYPE_17__*, %struct.TYPE_17__** %541, align 8
  %543 = call i32 @memset(%struct.TYPE_17__* %542, i32 0, i32 8)
  %544 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %545 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 4
  %548 = call i32 @VS_R_FloodLight(%struct.TYPE_16__* %544, %struct.TYPE_17__* %3, i32 %547, i32 0)
  %549 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %550 = load i32, i32* %549, align 4
  %551 = icmp sge i32 %550, 0
  br i1 %551, label %552, label %555

552:                                              ; preds = %497
  %553 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %554 = call i32 @VS_R_CastLightAtSurface(%struct.TYPE_16__* %553, %struct.TYPE_17__* %3)
  br label %555

555:                                              ; preds = %552, %497
  br label %879

556:                                              ; preds = %1
  %557 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %558 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %557, i32 0, i32 7
  %559 = load i32, i32* %558, align 8
  %560 = load i32, i32* @LDAT_LINEAR, align 4
  %561 = icmp eq i32 %559, %560
  br i1 %561, label %562, label %568

562:                                              ; preds = %556
  %563 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %564 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %563, i32 0, i32 1
  %565 = load float, float* %564, align 4
  %566 = load float, float* @lightLinearScale, align 4
  %567 = fmul float %565, %566
  store float %567, float* %12, align 4
  br label %573

568:                                              ; preds = %556
  %569 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %570 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %569, i32 0, i32 1
  %571 = load float, float* %570, align 4
  %572 = call float @sqrt(float %571)
  store float %572, float* %12, align 4
  br label %573

573:                                              ; preds = %568, %562
  store float 4.096000e+03, float* %14, align 4
  %574 = load float, float* %12, align 4
  %575 = load float, float* %14, align 4
  %576 = fcmp ogt float %574, %575
  br i1 %576, label %577, label %579

577:                                              ; preds = %573
  %578 = load float, float* %12, align 4
  store float %578, float* %14, align 4
  br label %579

579:                                              ; preds = %577, %573
  %580 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %581 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %580, i32 0, i32 2
  %582 = load float*, float** %581, align 8
  %583 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %584 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %583, i32 0, i32 4
  %585 = load double*, double** %584, align 8
  %586 = bitcast double* %585 to float*
  %587 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %588 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %587, i32 0, i32 2
  %589 = load float*, float** %588, align 8
  %590 = call i32 @VectorMA(float* %582, float 0x3FB99999A0000000, float* %586, float* %589)
  %591 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %592 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %591, i32 0, i32 2
  %593 = load float*, float** %592, align 8
  %594 = call i32 @VS_LightLeafnum(float* %593)
  store i32 %594, i32* %5, align 4
  %595 = load %struct.TYPE_18__*, %struct.TYPE_18__** @dleafs, align 8
  %596 = load i32, i32* %5, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %595, i64 %597
  store %struct.TYPE_18__* %598, %struct.TYPE_18__** %4, align 8
  %599 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %600 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = icmp eq i32 %601, -1
  br i1 %602, label %603, label %607

603:                                              ; preds = %579
  %604 = load i8*, i8** @qtrue, align 8
  %605 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %606 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %605, i32 0, i32 6
  store i8* %604, i8** %606, align 8
  br label %879

607:                                              ; preds = %579
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %6, align 4
  br label %608

608:                                              ; preds = %635, %607
  %609 = load i32, i32* %6, align 4
  %610 = icmp slt i32 %609, 3
  br i1 %610, label %611, label %638

611:                                              ; preds = %608
  %612 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %613 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %612, i32 0, i32 4
  %614 = load double*, double** %613, align 8
  %615 = load i32, i32* %6, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds double, double* %614, i64 %616
  %618 = load double, double* %617, align 8
  %619 = fptrunc double %618 to float
  %620 = call float @fabs(float %619)
  %621 = load float, float* %20, align 4
  %622 = fcmp ogt float %620, %621
  br i1 %622, label %623, label %634

623:                                              ; preds = %611
  %624 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %625 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %624, i32 0, i32 4
  %626 = load double*, double** %625, align 8
  %627 = load i32, i32* %6, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds double, double* %626, i64 %628
  %630 = load double, double* %629, align 8
  %631 = fptrunc double %630 to float
  %632 = call float @fabs(float %631)
  store float %632, float* %20, align 4
  %633 = load i32, i32* %6, align 4
  store i32 %633, i32* %22, align 4
  br label %634

634:                                              ; preds = %623, %611
  br label %635

635:                                              ; preds = %634
  %636 = load i32, i32* %6, align 4
  %637 = add nsw i32 %636, 1
  store i32 %637, i32* %6, align 4
  br label %608

638:                                              ; preds = %608
  store i32 0, i32* %6, align 4
  br label %639

639:                                              ; preds = %662, %638
  %640 = load i32, i32* %6, align 4
  %641 = icmp slt i32 %640, 2
  br i1 %641, label %642, label %665

642:                                              ; preds = %639
  %643 = load float*, float** %23, align 8
  %644 = call i32 @VectorClear(float* %643)
  %645 = load float*, float** %23, align 8
  %646 = load i32, i32* %22, align 4
  %647 = add nsw i32 %646, 1
  %648 = load i32, i32* %6, align 4
  %649 = add nsw i32 %647, %648
  %650 = srem i32 %649, 3
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds float, float* %645, i64 %651
  store float 1.000000e+00, float* %652, align 4
  %653 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %654 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %653, i32 0, i32 4
  %655 = load double*, double** %654, align 8
  %656 = load float*, float** %23, align 8
  %657 = load i32, i32* %6, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 %658
  %660 = load float*, float** %659, align 8
  %661 = call i32 @CrossProduct(double* %655, float* %656, float* %660)
  br label %662

662:                                              ; preds = %642
  %663 = load i32, i32* %6, align 4
  %664 = add nsw i32 %663, 1
  store i32 %664, i32* %6, align 4
  br label %639

665:                                              ; preds = %639
  store i32 -1, i32* %6, align 4
  br label %666

666:                                              ; preds = %857, %665
  %667 = load i32, i32* %6, align 4
  %668 = icmp sle i32 %667, 1
  br i1 %668, label %669, label %860

669:                                              ; preds = %666
  store i32 -1, i32* %7, align 4
  br label %670

670:                                              ; preds = %853, %669
  %671 = load i32, i32* %7, align 4
  %672 = icmp sle i32 %671, 1
  br i1 %672, label %673, label %856

673:                                              ; preds = %670
  store i32 0, i32* %21, align 4
  br label %674

674:                                              ; preds = %820, %673
  %675 = load i32, i32* %21, align 4
  %676 = icmp slt i32 %675, 2
  br i1 %676, label %677, label %823

677:                                              ; preds = %674
  %678 = call i32 @memset(%struct.TYPE_17__* %3, i32 0, i32 88)
  %679 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store i64 3, i64* %679, align 8
  %680 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %681 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %680, i32 0, i32 2
  %682 = load float*, float** %681, align 8
  %683 = load i32, i32* %6, align 4
  %684 = sitofp i32 %683 to float
  %685 = load float, float* %14, align 4
  %686 = fmul float %684, %685
  %687 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 0
  %688 = load float*, float** %687, align 16
  %689 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %690 = load float**, float*** %689, align 8
  %691 = load i32, i32* %6, align 4
  %692 = load i32, i32* %7, align 4
  %693 = icmp eq i32 %691, %692
  %694 = zext i1 %693 to i32
  %695 = load i32, i32* %21, align 4
  %696 = icmp eq i32 %694, %695
  %697 = zext i1 %696 to i32
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds float*, float** %690, i64 %698
  %700 = load float*, float** %699, align 8
  %701 = call i32 @VectorMA(float* %682, float %686, float* %688, float* %700)
  %702 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %703 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %702, i32 0, i32 2
  %704 = load float*, float** %703, align 8
  %705 = load i32, i32* %7, align 4
  %706 = sitofp i32 %705 to float
  %707 = load float, float* %14, align 4
  %708 = fmul float %706, %707
  %709 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 1
  %710 = load float*, float** %709, align 8
  %711 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %712 = load float**, float*** %711, align 8
  %713 = load i32, i32* %6, align 4
  %714 = load i32, i32* %7, align 4
  %715 = icmp ne i32 %713, %714
  %716 = zext i1 %715 to i32
  %717 = load i32, i32* %21, align 4
  %718 = icmp eq i32 %716, %717
  %719 = zext i1 %718 to i32
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds float*, float** %712, i64 %720
  %722 = load float*, float** %721, align 8
  %723 = call i32 @VectorMA(float* %704, float %708, float* %710, float* %722)
  %724 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %725 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %724, i32 0, i32 2
  %726 = load float*, float** %725, align 8
  %727 = load float, float* %14, align 4
  %728 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %729 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %728, i32 0, i32 4
  %730 = load double*, double** %729, align 8
  %731 = bitcast double* %730 to float*
  %732 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %733 = load float**, float*** %732, align 8
  %734 = getelementptr inbounds float*, float** %733, i64 2
  %735 = load float*, float** %734, align 8
  %736 = call i32 @VectorMA(float* %726, float %727, float* %731, float* %735)
  store i32 0, i32* %8, align 4
  br label %737

737:                                              ; preds = %769, %677
  %738 = load i32, i32* %8, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %741 = load i64, i64* %740, align 8
  %742 = icmp ult i64 %739, %741
  br i1 %742, label %743, label %772

743:                                              ; preds = %737
  %744 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 9
  %745 = load %struct.TYPE_15__*, %struct.TYPE_15__** %744, align 8
  %746 = load i32, i32* %8, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %745, i64 %747
  %749 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %750 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %749, i32 0, i32 2
  %751 = load float*, float** %750, align 8
  %752 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %753 = load float**, float*** %752, align 8
  %754 = load i32, i32* %8, align 4
  %755 = add nsw i32 %754, 1
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %758 = load i64, i64* %757, align 8
  %759 = urem i64 %756, %758
  %760 = getelementptr inbounds float*, float** %753, i64 %759
  %761 = load float*, float** %760, align 8
  %762 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %763 = load float**, float*** %762, align 8
  %764 = load i32, i32* %8, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds float*, float** %763, i64 %765
  %767 = load float*, float** %766, align 8
  %768 = call i32 @VS_PlaneFromPoints(%struct.TYPE_15__* %748, float* %751, float* %761, float* %767)
  br label %769

769:                                              ; preds = %743
  %770 = load i32, i32* %8, align 4
  %771 = add nsw i32 %770, 1
  store i32 %771, i32* %8, align 4
  br label %737

772:                                              ; preds = %737
  %773 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %774 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %775 = load float**, float*** %774, align 8
  %776 = getelementptr inbounds float*, float** %775, i64 0
  %777 = load float*, float** %776, align 8
  %778 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %779 = load float**, float*** %778, align 8
  %780 = getelementptr inbounds float*, float** %779, i64 1
  %781 = load float*, float** %780, align 8
  %782 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 1
  %783 = load float**, float*** %782, align 8
  %784 = getelementptr inbounds float*, float** %783, i64 2
  %785 = load float*, float** %784, align 8
  %786 = call i32 @VS_PlaneFromPoints(%struct.TYPE_15__* %773, float* %777, float* %781, float* %785)
  %787 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %788 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %787, i32 0, i32 2
  %789 = load float*, float** %788, align 8
  %790 = load float, float* %12, align 4
  %791 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %792 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %791, i32 0, i32 4
  %793 = load double*, double** %792, align 8
  %794 = bitcast double* %793 to float*
  %795 = load float*, float** %18, align 8
  %796 = call i32 @VectorMA(float* %789, float %790, float* %794, float* %795)
  %797 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %798 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %797, i32 0, i32 0
  %799 = load float*, float** %798, align 8
  %800 = load float*, float** %18, align 8
  %801 = call i8* @DotProduct(float* %799, float* %800)
  %802 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %803 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %802, i32 0, i32 1
  store i8* %801, i8** %803, align 8
  %804 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %805 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %804, i32 0, i32 2
  %806 = load float*, float** %805, align 8
  %807 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %808 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %807, i32 0, i32 0
  %809 = load float*, float** %808, align 8
  %810 = call i8* @DotProduct(float* %806, float* %809)
  %811 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %812 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %811, i32 0, i32 1
  %813 = load i8*, i8** %812, align 8
  %814 = ptrtoint i8* %810 to i64
  %815 = ptrtoint i8* %813 to i64
  %816 = sub i64 %814, %815
  %817 = icmp sgt i64 %816, 0
  br i1 %817, label %818, label %819

818:                                              ; preds = %772
  br label %823

819:                                              ; preds = %772
  br label %820

820:                                              ; preds = %819
  %821 = load i32, i32* %21, align 4
  %822 = add nsw i32 %821, 1
  store i32 %822, i32* %21, align 4
  br label %674

823:                                              ; preds = %818, %674
  %824 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 8
  %825 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 7
  %826 = bitcast %struct.TYPE_15__* %824 to i8*
  %827 = bitcast %struct.TYPE_15__* %825 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %826, i8* align 8 %827, i64 16, i1 false)
  %828 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %829 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %828, i32 0, i32 0
  %830 = load i32, i32* %829, align 4
  %831 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 2
  store i32 %830, i32* %831, align 8
  %832 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  store i32 -1, i32* %832, align 4
  %833 = load i8*, i8** @VOLUME_NORMAL, align 8
  %834 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 6
  store i8* %833, i8** %834, align 8
  %835 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 5
  %836 = load %struct.TYPE_17__*, %struct.TYPE_17__** %835, align 8
  %837 = call i32 @memset(%struct.TYPE_17__* %836, i32 0, i32 8)
  %838 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 4
  %839 = load %struct.TYPE_17__*, %struct.TYPE_17__** %838, align 8
  %840 = call i32 @memset(%struct.TYPE_17__* %839, i32 0, i32 8)
  %841 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %842 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %843 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %842, i32 0, i32 0
  %844 = load i32, i32* %843, align 4
  %845 = call i32 @VS_R_FloodLight(%struct.TYPE_16__* %841, %struct.TYPE_17__* %3, i32 %844, i32 0)
  %846 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 3
  %847 = load i32, i32* %846, align 4
  %848 = icmp sge i32 %847, 0
  br i1 %848, label %849, label %852

849:                                              ; preds = %823
  %850 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %851 = call i32 @VS_R_CastLightAtSurface(%struct.TYPE_16__* %850, %struct.TYPE_17__* %3)
  br label %852

852:                                              ; preds = %849, %823
  br label %853

853:                                              ; preds = %852
  %854 = load i32, i32* %7, align 4
  %855 = add nsw i32 %854, 2
  store i32 %855, i32* %7, align 4
  br label %670

856:                                              ; preds = %670
  br label %857

857:                                              ; preds = %856
  %858 = load i32, i32* %6, align 4
  %859 = add nsw i32 %858, 2
  store i32 %859, i32* %6, align 4
  br label %666

860:                                              ; preds = %666
  br label %879

861:                                              ; preds = %1
  %862 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %863 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %862, i32 0, i32 5
  %864 = call i32 @memcpy(i32* %19, i32* %863, i32 4)
  %865 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %866 = call i32 @VS_R_SubdivideDirectedAreaLight(%struct.TYPE_16__* %865, i32 0, i32* %19)
  br label %879

867:                                              ; preds = %1
  %868 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %869 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %868, i32 0, i32 5
  %870 = call i32 @memcpy(i32* %19, i32* %869, i32 4)
  %871 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %872 = call i32 @VS_R_SubdivideRadialAreaLight(%struct.TYPE_16__* %871, i32 0, i32* %19)
  br label %879

873:                                              ; preds = %1
  %874 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %875 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %874, i32 0, i32 5
  %876 = call i32 @memcpy(i32* %19, i32* %875, i32 4)
  %877 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %878 = call i32 @VS_R_SubdivideAreaSpotLight(%struct.TYPE_16__* %877, i32 0, i32* %19)
  br label %879

879:                                              ; preds = %1, %873, %867, %861, %860, %603, %555, %350, %303, %66
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @sqrt(float) #2

declare dso_local i32 @VS_LightLeafnum(float*) #2

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @VectorCopy(float*, float*) #2

declare dso_local i32 @VS_PlaneFromPoints(%struct.TYPE_15__*, float*, float*, float*) #2

declare dso_local i32 @VectorClear(float*) #2

declare dso_local i8* @DotProduct(float*, float*) #2

declare dso_local i32 @VS_R_FloodLight(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @VS_R_CastLightAtSurface(%struct.TYPE_16__*, %struct.TYPE_17__*) #2

declare dso_local i32 @CrossProduct(double*, float*, float*) #2

declare dso_local i32 @VectorScale(float*, float, float*) #2

declare dso_local i32 @RotatePointAroundVector(float*, double*, float*, float) #2

declare dso_local i32 @VectorAdd(float*, float*, float*) #2

declare dso_local i32 @VectorMA(float*, float, float*, float*) #2

declare dso_local i32 @VectorInverse(float*) #2

declare dso_local float @fabs(float) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @VS_R_SubdivideDirectedAreaLight(%struct.TYPE_16__*, i32, i32*) #2

declare dso_local i32 @VS_R_SubdivideRadialAreaLight(%struct.TYPE_16__*, i32, i32*) #2

declare dso_local i32 @VS_R_SubdivideAreaSpotLight(%struct.TYPE_16__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
