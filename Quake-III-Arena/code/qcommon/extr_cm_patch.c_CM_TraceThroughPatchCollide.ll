; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_patch.c_CM_TraceThroughPatchCollide.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_patch.c_CM_TraceThroughPatchCollide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.patchCollide_s = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { float*, i64 }
%struct.TYPE_17__ = type { i64, i32, i64*, i64* }
%struct.TYPE_15__ = type { float*, float*, float**, %struct.TYPE_14__, %struct.TYPE_12__, i64 }
%struct.TYPE_14__ = type { float, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { float*, float }
%struct.TYPE_12__ = type { float*, i64, i64 }

@CM_TraceThroughPatchCollide.cv = internal global %struct.TYPE_18__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"r_debugSurfaceUpdate\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@debugPatchCollide = common dso_local global %struct.patchCollide_s* null, align 8
@debugFacet = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TraceThroughPatchCollide(%struct.TYPE_15__* %0, %struct.patchCollide_s* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.patchCollide_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca [4 x float], align 16
  %16 = alloca [4 x float], align 16
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.patchCollide_s* %1, %struct.patchCollide_s** %4, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %26 = call i32 @CM_TracePointThroughPatchCollide(%struct.TYPE_15__* %24, %struct.patchCollide_s* %25)
  br label %390

27:                                               ; preds = %2
  %28 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %29 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %28, i32 0, i32 2
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %14, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %385, %27
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %34 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %390

37:                                               ; preds = %31
  store float -1.000000e+00, float* %10, align 4
  store float 1.000000e+00, float* %11, align 4
  store i32 -1, i32* %8, align 4
  %38 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %39 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %38, i32 0, i32 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i64 %43
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %13, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load float*, float** %46, align 8
  %48 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %49 = call i32 @VectorCopy(float* %47, float* %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 3
  %54 = load float, float* %53, align 4
  %55 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  store float %54, float* %55, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %117

61:                                               ; preds = %37
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to float
  %67 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %68 = load float, float* %67, align 4
  %69 = fadd float %68, %66
  store float %69, float* %67, align 4
  %70 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load float*, float** %73, align 8
  %75 = call float @DotProduct(float* %70, float* %74)
  store float %75, float* %12, align 4
  %76 = load float, float* %12, align 4
  %77 = fcmp ogt float %76, 0.000000e+00
  br i1 %77, label %78, label %97

78:                                               ; preds = %61
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load float*, float** %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load float*, float** %84, align 8
  %86 = load float*, float** %17, align 8
  %87 = call i32 @VectorSubtract(float* %81, float* %85, float* %86)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  %90 = load float*, float** %89, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load float*, float** %93, align 8
  %95 = load float*, float** %18, align 8
  %96 = call i32 @VectorSubtract(float* %90, float* %94, float* %95)
  br label %116

97:                                               ; preds = %61
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load float*, float** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load float*, float** %103, align 8
  %105 = load float*, float** %17, align 8
  %106 = call i32 @VectorAdd(float* %100, float* %104, float* %105)
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load float*, float** %108, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load float*, float** %112, align 8
  %114 = load float*, float** %18, align 8
  %115 = call i32 @VectorAdd(float* %109, float* %113, float* %114)
  br label %116

116:                                              ; preds = %97, %78
  br label %142

117:                                              ; preds = %37
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load float**, float*** %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds float*, float** %120, i64 %123
  %125 = load float*, float** %124, align 8
  %126 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %127 = call float @DotProduct(float* %125, float* %126)
  store float %127, float* %9, align 4
  %128 = load float, float* %9, align 4
  %129 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %130 = load float, float* %129, align 4
  %131 = fsub float %130, %128
  store float %131, float* %129, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load float*, float** %133, align 8
  %135 = load float*, float** %17, align 8
  %136 = call i32 @VectorCopy(float* %134, float* %135)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load float*, float** %138, align 8
  %140 = load float*, float** %18, align 8
  %141 = call i32 @VectorCopy(float* %139, float* %140)
  br label %142

142:                                              ; preds = %117, %116
  %143 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %144 = load float*, float** %17, align 8
  %145 = load float*, float** %18, align 8
  %146 = call i32 @CM_CheckFacetPlane(float* %143, float* %144, float* %145, float* %10, float* %11, i32* %7)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  br label %385

149:                                              ; preds = %142
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %154 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  %155 = call i32 @Vector4Copy(float* %153, float* %154)
  br label %156

156:                                              ; preds = %152, %149
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %313, %156
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %316

163:                                              ; preds = %157
  %164 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  %165 = getelementptr inbounds %struct.patchCollide_s, %struct.patchCollide_s* %164, i32 0, i32 1
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 2
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i64 %173
  store %struct.TYPE_16__* %174, %struct.TYPE_16__** %13, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 3
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %163
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load float*, float** %185, align 8
  %187 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %188 = call i32 @VectorNegate(float* %186, float* %187)
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load float*, float** %190, align 8
  %192 = getelementptr inbounds float, float* %191, i64 3
  %193 = load float, float* %192, align 4
  %194 = fneg float %193
  %195 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  store float %194, float* %195, align 4
  br label %208

196:                                              ; preds = %163
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 0
  %199 = load float*, float** %198, align 8
  %200 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %201 = call i32 @VectorCopy(float* %199, float* %200)
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load float*, float** %203, align 8
  %205 = getelementptr inbounds float, float* %204, i64 3
  %206 = load float, float* %205, align 4
  %207 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  store float %206, float* %207, align 4
  br label %208

208:                                              ; preds = %196, %183
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %270

214:                                              ; preds = %208
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = sitofp i64 %218 to float
  %220 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %221 = load float, float* %220, align 4
  %222 = fadd float %221, %219
  store float %222, float* %220, align 4
  %223 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load float*, float** %226, align 8
  %228 = call float @DotProduct(float* %223, float* %227)
  store float %228, float* %12, align 4
  %229 = load float, float* %12, align 4
  %230 = fcmp ogt float %229, 0.000000e+00
  br i1 %230, label %231, label %250

231:                                              ; preds = %214
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load float*, float** %233, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load float*, float** %237, align 8
  %239 = load float*, float** %17, align 8
  %240 = call i32 @VectorSubtract(float* %234, float* %238, float* %239)
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 1
  %243 = load float*, float** %242, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load float*, float** %246, align 8
  %248 = load float*, float** %18, align 8
  %249 = call i32 @VectorSubtract(float* %243, float* %247, float* %248)
  br label %269

250:                                              ; preds = %214
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load float*, float** %252, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load float*, float** %256, align 8
  %258 = load float*, float** %17, align 8
  %259 = call i32 @VectorAdd(float* %253, float* %257, float* %258)
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = load float*, float** %261, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load float*, float** %265, align 8
  %267 = load float*, float** %18, align 8
  %268 = call i32 @VectorAdd(float* %262, float* %266, float* %267)
  br label %269

269:                                              ; preds = %250, %231
  br label %297

270:                                              ; preds = %208
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 2
  %273 = load float**, float*** %272, align 8
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds float*, float** %273, i64 %276
  %278 = load float*, float** %277, align 8
  %279 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %280 = call float @DotProduct(float* %278, float* %279)
  store float %280, float* %9, align 4
  %281 = load float, float* %9, align 4
  %282 = call i64 @fabs(float %281)
  %283 = sitofp i64 %282 to float
  %284 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %285 = load float, float* %284, align 4
  %286 = fadd float %285, %283
  store float %286, float* %284, align 4
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load float*, float** %288, align 8
  %290 = load float*, float** %17, align 8
  %291 = call i32 @VectorCopy(float* %289, float* %290)
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 1
  %294 = load float*, float** %293, align 8
  %295 = load float*, float** %18, align 8
  %296 = call i32 @VectorCopy(float* %294, float* %295)
  br label %297

297:                                              ; preds = %270, %269
  %298 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %299 = load float*, float** %17, align 8
  %300 = load float*, float** %18, align 8
  %301 = call i32 @CM_CheckFacetPlane(float* %298, float* %299, float* %300, float* %10, float* %11, i32* %7)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %297
  br label %316

304:                                              ; preds = %297
  %305 = load i32, i32* %7, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %304
  %308 = load i32, i32* %6, align 4
  store i32 %308, i32* %8, align 4
  %309 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %310 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  %311 = call i32 @Vector4Copy(float* %309, float* %310)
  br label %312

312:                                              ; preds = %307, %304
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %6, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %6, align 4
  br label %157

316:                                              ; preds = %303, %157
  %317 = load i32, i32* %6, align 4
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = icmp slt i32 %317, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  br label %385

323:                                              ; preds = %316
  %324 = load i32, i32* %8, align 4
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = sub nsw i32 %327, 1
  %329 = icmp eq i32 %324, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %323
  br label %385

331:                                              ; preds = %323
  %332 = load float, float* %10, align 4
  %333 = load float, float* %11, align 4
  %334 = fcmp olt float %332, %333
  br i1 %334, label %335, label %384

335:                                              ; preds = %331
  %336 = load float, float* %10, align 4
  %337 = fcmp oge float %336, 0.000000e+00
  br i1 %337, label %338, label %384

338:                                              ; preds = %335
  %339 = load float, float* %10, align 4
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = load float, float* %342, align 8
  %344 = fcmp olt float %339, %343
  br i1 %344, label %345, label %383

345:                                              ; preds = %338
  %346 = load float, float* %10, align 4
  %347 = fcmp olt float %346, 0.000000e+00
  br i1 %347, label %348, label %349

348:                                              ; preds = %345
  store float 0.000000e+00, float* %10, align 4
  br label %349

349:                                              ; preds = %348, %345
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** @CM_TraceThroughPatchCollide.cv, align 8
  %351 = icmp ne %struct.TYPE_18__* %350, null
  br i1 %351, label %354, label %352

352:                                              ; preds = %349
  %353 = call %struct.TYPE_18__* @Cvar_Get(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_18__* %353, %struct.TYPE_18__** @CM_TraceThroughPatchCollide.cv, align 8
  br label %354

354:                                              ; preds = %352, %349
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** @CM_TraceThroughPatchCollide.cv, align 8
  %356 = icmp ne %struct.TYPE_18__* %355, null
  br i1 %356, label %357, label %365

357:                                              ; preds = %354
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** @CM_TraceThroughPatchCollide.cv, align 8
  %359 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %357
  %363 = load %struct.patchCollide_s*, %struct.patchCollide_s** %4, align 8
  store %struct.patchCollide_s* %363, %struct.patchCollide_s** @debugPatchCollide, align 8
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %364, %struct.TYPE_17__** @debugFacet, align 8
  br label %365

365:                                              ; preds = %362, %357, %354
  %366 = load float, float* %10, align 4
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 0
  store float %366, float* %369, align 8
  %370 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 0
  %371 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 0
  %375 = load float*, float** %374, align 8
  %376 = call i32 @VectorCopy(float* %370, float* %375)
  %377 = getelementptr inbounds [4 x float], [4 x float]* %16, i64 0, i64 3
  %378 = load float, float* %377, align 4
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 1
  store float %378, float* %382, align 8
  br label %383

383:                                              ; preds = %365, %338
  br label %384

384:                                              ; preds = %383, %335, %331
  br label %385

385:                                              ; preds = %384, %330, %322, %148
  %386 = load i32, i32* %5, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %5, align 4
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 1
  store %struct.TYPE_17__* %389, %struct.TYPE_17__** %14, align 8
  br label %31

390:                                              ; preds = %23, %31
  ret void
}

declare dso_local i32 @CM_TracePointThroughPatchCollide(%struct.TYPE_15__*, %struct.patchCollide_s*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local i32 @CM_CheckFacetPlane(float*, float*, float*, float*, float*, i32*) #1

declare dso_local i32 @Vector4Copy(float*, float*) #1

declare dso_local i32 @VectorNegate(float*, float*) #1

declare dso_local i64 @fabs(float) #1

declare dso_local %struct.TYPE_18__* @Cvar_Get(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
