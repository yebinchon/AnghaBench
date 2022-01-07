; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotFuncButtonActivateGoal.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotFuncButtonActivateGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64*, i32, i64*, i64*, i64, i64 }
%struct.TYPE_9__ = type { double, i32 }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@ET_MOVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lip\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"health\00", align 1
@qtrue = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@PRESENCE_CROUCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotFuncButtonActivateGoal(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca [10 x i64*], align 16
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i64* inttoptr (i64 1 to i64*), i64** %30, align 8
  store i64* inttoptr (i64 -1 to i64*), i64** %31, align 8
  %33 = load i32, i32* @qfalse, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = call i32 @VectorClear(i64* %38)
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %42 = call i32 @trap_AAS_ValueForBSPEpairKey(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %41, i32 128)
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %3
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %4, align 4
  br label %605

48:                                               ; preds = %3
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = call i32 @atoi(i8* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @qfalse, align 4
  store i32 %55, i32* %4, align 4
  br label %605

56:                                               ; preds = %48
  %57 = load i64*, i64** %23, align 8
  %58 = call i32 @VectorClear(i64* %57)
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @ET_MOVER, align 4
  %61 = load i64*, i64** %21, align 8
  %62 = load i64*, i64** %22, align 8
  %63 = call i32 @BotModelMinsMaxs(i32 %59, i32 %60, i32 0, i64* %61, i64* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @trap_AAS_FloatForBSPEpairKey(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), float* %14)
  %66 = load float, float* %14, align 4
  %67 = fcmp une float %66, 0.000000e+00
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  store float 4.000000e+00, float* %14, align 4
  br label %69

69:                                               ; preds = %68, %56
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @trap_AAS_FloatForBSPEpairKey(i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), float* %17)
  %72 = load i64*, i64** %23, align 8
  %73 = load float, float* %17, align 4
  %74 = fptosi float %73 to i32
  %75 = call i32 @VectorSet(i64* %72, i32 0, i32 %74, i32 0)
  %76 = load i64*, i64** %23, align 8
  %77 = load i64*, i64** %25, align 8
  %78 = call i32 @BotSetMovedir(i64* %76, i64* %77)
  %79 = load i64*, i64** %22, align 8
  %80 = load i64*, i64** %21, align 8
  %81 = load i64*, i64** %18, align 8
  %82 = call i32 @VectorSubtract(i64* %79, i64* %80, i64* %81)
  %83 = load i64*, i64** %21, align 8
  %84 = load i64*, i64** %22, align 8
  %85 = load i64*, i64** %26, align 8
  %86 = call i32 @VectorAdd(i64* %83, i64* %84, i64* %85)
  %87 = load i64*, i64** %26, align 8
  %88 = load i64*, i64** %26, align 8
  %89 = call i32 @VectorScale(i64* %87, double 5.000000e-01, i64* %88)
  %90 = load i64*, i64** %25, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = call float @fabs(i64 %92)
  %94 = load i64*, i64** %18, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = sitofp i64 %96 to float
  %98 = fmul float %93, %97
  %99 = load i64*, i64** %25, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = call float @fabs(i64 %101)
  %103 = load i64*, i64** %18, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = sitofp i64 %105 to float
  %107 = fmul float %102, %106
  %108 = fadd float %98, %107
  %109 = load i64*, i64** %25, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 2
  %111 = load i64, i64* %110, align 8
  %112 = call float @fabs(i64 %111)
  %113 = load i64*, i64** %18, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 2
  %115 = load i64, i64* %114, align 8
  %116 = sitofp i64 %115 to float
  %117 = fmul float %112, %116
  %118 = fadd float %108, %117
  store float %118, float* %15, align 4
  %119 = load float, float* %15, align 4
  %120 = fpext float %119 to double
  %121 = fmul double %120, 5.000000e-01
  %122 = fptrunc double %121 to float
  store float %122, float* %15, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @trap_AAS_FloatForBSPEpairKey(i32 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), float* %16)
  %125 = load float, float* %16, align 4
  %126 = fcmp une float %125, 0.000000e+00
  br i1 %126, label %127, label %402

127:                                              ; preds = %69
  %128 = load i64*, i64** %26, align 8
  %129 = load float, float* %15, align 4
  %130 = fneg float %129
  %131 = load i64*, i64** %25, align 8
  %132 = load i64*, i64** %27, align 8
  %133 = call i32 @VectorMA(i64* %128, float %130, i64* %131, i64* %132)
  %134 = load i64*, i64** %27, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = call i32 @VectorCopy(i64* %134, i64* %137)
  %139 = load i32, i32* @qtrue, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i64*, i64** %27, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MASK_SHOT, align 4
  %150 = call i32 @BotAI_Trace(%struct.TYPE_9__* %32, i32 %144, i32* null, i32* null, i64* %145, i32 %148, i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %152 = load double, double* %151, align 8
  %153 = fcmp oge double %152, 1.000000e+00
  br i1 %153, label %159, label %154

154:                                              ; preds = %127
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %195

159:                                              ; preds = %154, %127
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 6
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  store i64 0, i64* %169, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = call i32 @VectorCopy(i64* %172, i64* %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 3
  %187 = load i64*, i64** %186, align 8
  %188 = call i32 @VectorSet(i64* %187, i32 -8, i32 -8, i32 -8)
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 4
  %192 = load i64*, i64** %191, align 8
  %193 = call i32 @VectorSet(i64* %192, i32 8, i32 8, i32 8)
  %194 = load i32, i32* @qtrue, align 4
  store i32 %194, i32* %4, align 4
  br label %605

195:                                              ; preds = %154
  %196 = load i32, i32* @PRESENCE_CROUCH, align 4
  %197 = load i64*, i64** %28, align 8
  %198 = load i64*, i64** %29, align 8
  %199 = call i32 @trap_AAS_PresenceTypeBoundingBox(i32 %196, i64* %197, i64* %198)
  store i32 0, i32* %8, align 4
  br label %200

200:                                              ; preds = %243, %195
  %201 = load i32, i32* %8, align 4
  %202 = icmp slt i32 %201, 3
  br i1 %202, label %203, label %246

203:                                              ; preds = %200
  %204 = load i64*, i64** %25, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %226

210:                                              ; preds = %203
  %211 = load i64*, i64** %25, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = call float @fabs(i64 %215)
  %217 = load i64*, i64** %29, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = call float @fabs(i64 %221)
  %223 = fmul float %216, %222
  %224 = load float, float* %15, align 4
  %225 = fadd float %224, %223
  store float %225, float* %15, align 4
  br label %242

226:                                              ; preds = %203
  %227 = load i64*, i64** %25, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = call float @fabs(i64 %231)
  %233 = load i64*, i64** %28, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = call float @fabs(i64 %237)
  %239 = fmul float %232, %238
  %240 = load float, float* %15, align 4
  %241 = fadd float %240, %239
  store float %241, float* %15, align 4
  br label %242

242:                                              ; preds = %226, %210
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %8, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %8, align 4
  br label %200

246:                                              ; preds = %200
  %247 = load i64*, i64** %26, align 8
  %248 = load float, float* %15, align 4
  %249 = fneg float %248
  %250 = load i64*, i64** %25, align 8
  %251 = load i64*, i64** %27, align 8
  %252 = call i32 @VectorMA(i64* %247, float %249, i64* %250, i64* %251)
  %253 = load i64*, i64** %27, align 8
  %254 = load i64*, i64** %19, align 8
  %255 = call i32 @VectorCopy(i64* %253, i64* %254)
  %256 = load i64*, i64** %19, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 2
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 24
  store i64 %259, i64* %257, align 8
  %260 = load i64*, i64** %19, align 8
  %261 = load i64*, i64** %20, align 8
  %262 = call i32 @VectorCopy(i64* %260, i64* %261)
  %263 = load i64*, i64** %20, align 8
  %264 = getelementptr inbounds i64, i64* %263, i64 2
  %265 = load i64, i64* %264, align 8
  %266 = sub nsw i64 %265, 512
  store i64 %266, i64* %264, align 8
  %267 = load i64*, i64** %19, align 8
  %268 = load i64*, i64** %20, align 8
  %269 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %270 = getelementptr inbounds [10 x i64*], [10 x i64*]* %24, i64 0, i64 0
  %271 = call i32 @trap_AAS_TraceAreas(i64* %267, i64* %268, i32* %269, i64** %270, i32 10)
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = sub nsw i32 %272, 1
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %286, %246
  %275 = load i32, i32* %8, align 4
  %276 = icmp sge i32 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %274
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @trap_AAS_AreaReachability(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  br label %289

285:                                              ; preds = %277
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %8, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %8, align 4
  br label %274

289:                                              ; preds = %284, %274
  %290 = load i32, i32* %8, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  br label %293

293:                                              ; preds = %292, %289
  %294 = load i32, i32* %8, align 4
  %295 = icmp sge i32 %294, 0
  br i1 %295, label %296, label %399

296:                                              ; preds = %293
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [10 x i64*], [10 x i64*]* %24, i64 0, i64 %298
  %300 = load i64*, i64** %299, align 8
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 1
  %304 = load i64*, i64** %303, align 8
  %305 = call i32 @VectorCopy(i64* %300, i64* %304)
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 2
  store i32 %309, i32* %312, align 8
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 3
  %316 = load i64*, i64** %315, align 8
  %317 = call i32 @VectorSet(i64* %316, i32 8, i32 8, i32 8)
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 4
  %321 = load i64*, i64** %320, align 8
  %322 = call i32 @VectorSet(i64* %321, i32 -8, i32 -8, i32 -8)
  store i32 0, i32* %8, align 4
  br label %323

323:                                              ; preds = %384, %296
  %324 = load i32, i32* %8, align 4
  %325 = icmp slt i32 %324, 3
  br i1 %325, label %326, label %387

326:                                              ; preds = %323
  %327 = load i64*, i64** %25, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  %331 = load i64, i64* %330, align 8
  %332 = icmp slt i64 %331, 0
  br i1 %332, label %333, label %358

333:                                              ; preds = %326
  %334 = load i64*, i64** %25, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64, i64* %334, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = call float @fabs(i64 %338)
  %340 = load i64*, i64** %31, align 8
  %341 = load i32, i32* %8, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i64, i64* %340, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = call float @fabs(i64 %344)
  %346 = fmul float %339, %345
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 4
  %350 = load i64*, i64** %349, align 8
  %351 = load i32, i32* %8, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i64, i64* %350, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = sitofp i64 %354 to float
  %356 = fadd float %355, %346
  %357 = fptosi float %356 to i64
  store i64 %357, i64* %353, align 8
  br label %383

358:                                              ; preds = %326
  %359 = load i64*, i64** %25, align 8
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64, i64* %359, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = call float @fabs(i64 %363)
  %365 = load i64*, i64** %30, align 8
  %366 = load i32, i32* %8, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i64, i64* %365, i64 %367
  %369 = load i64, i64* %368, align 8
  %370 = call float @fabs(i64 %369)
  %371 = fmul float %364, %370
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 3
  %375 = load i64*, i64** %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %375, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = sitofp i64 %379 to float
  %381 = fadd float %380, %371
  %382 = fptosi float %381 to i64
  store i64 %382, i64* %378, align 8
  br label %383

383:                                              ; preds = %358, %333
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %8, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %8, align 4
  br label %323

387:                                              ; preds = %323
  %388 = load i32, i32* %12, align 4
  %389 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %390 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  store i32 %388, i32* %391, align 8
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 2
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 6
  store i64 0, i64* %394, align 8
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 5
  store i64 0, i64* %397, align 8
  %398 = load i32, i32* @qtrue, align 4
  store i32 %398, i32* %4, align 4
  br label %605

399:                                              ; preds = %293
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* @qfalse, align 4
  store i32 %401, i32* %4, align 4
  br label %605

402:                                              ; preds = %69
  %403 = load i32, i32* @PRESENCE_CROUCH, align 4
  %404 = load i64*, i64** %28, align 8
  %405 = load i64*, i64** %29, align 8
  %406 = call i32 @trap_AAS_PresenceTypeBoundingBox(i32 %403, i64* %404, i64* %405)
  store i32 0, i32* %8, align 4
  br label %407

407:                                              ; preds = %450, %402
  %408 = load i32, i32* %8, align 4
  %409 = icmp slt i32 %408, 3
  br i1 %409, label %410, label %453

410:                                              ; preds = %407
  %411 = load i64*, i64** %25, align 8
  %412 = load i32, i32* %8, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i64, i64* %411, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = icmp slt i64 %415, 0
  br i1 %416, label %417, label %433

417:                                              ; preds = %410
  %418 = load i64*, i64** %25, align 8
  %419 = load i32, i32* %8, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i64, i64* %418, i64 %420
  %422 = load i64, i64* %421, align 8
  %423 = call float @fabs(i64 %422)
  %424 = load i64*, i64** %29, align 8
  %425 = load i32, i32* %8, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i64, i64* %424, i64 %426
  %428 = load i64, i64* %427, align 8
  %429 = call float @fabs(i64 %428)
  %430 = fmul float %423, %429
  %431 = load float, float* %15, align 4
  %432 = fadd float %431, %430
  store float %432, float* %15, align 4
  br label %449

433:                                              ; preds = %410
  %434 = load i64*, i64** %25, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i64, i64* %434, i64 %436
  %438 = load i64, i64* %437, align 8
  %439 = call float @fabs(i64 %438)
  %440 = load i64*, i64** %28, align 8
  %441 = load i32, i32* %8, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  %444 = load i64, i64* %443, align 8
  %445 = call float @fabs(i64 %444)
  %446 = fmul float %439, %445
  %447 = load float, float* %15, align 4
  %448 = fadd float %447, %446
  store float %448, float* %15, align 4
  br label %449

449:                                              ; preds = %433, %417
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %8, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %8, align 4
  br label %407

453:                                              ; preds = %407
  %454 = load i64*, i64** %26, align 8
  %455 = load float, float* %15, align 4
  %456 = fneg float %455
  %457 = load i64*, i64** %25, align 8
  %458 = load i64*, i64** %27, align 8
  %459 = call i32 @VectorMA(i64* %454, float %456, i64* %457, i64* %458)
  %460 = load i64*, i64** %27, align 8
  %461 = load i64*, i64** %19, align 8
  %462 = call i32 @VectorCopy(i64* %460, i64* %461)
  %463 = load i64*, i64** %19, align 8
  %464 = getelementptr inbounds i64, i64* %463, i64 2
  %465 = load i64, i64* %464, align 8
  %466 = add nsw i64 %465, 24
  store i64 %466, i64* %464, align 8
  %467 = load i64*, i64** %19, align 8
  %468 = load i64*, i64** %20, align 8
  %469 = call i32 @VectorCopy(i64* %467, i64* %468)
  %470 = load i64*, i64** %20, align 8
  %471 = getelementptr inbounds i64, i64* %470, i64 2
  %472 = load i64, i64* %471, align 8
  %473 = sub nsw i64 %472, 100
  store i64 %473, i64* %471, align 8
  %474 = load i64*, i64** %19, align 8
  %475 = load i64*, i64** %20, align 8
  %476 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %477 = call i32 @trap_AAS_TraceAreas(i64* %474, i64* %475, i32* %476, i64** null, i32 10)
  store i32 %477, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %478

478:                                              ; preds = %491, %453
  %479 = load i32, i32* %8, align 4
  %480 = load i32, i32* %10, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %494

482:                                              ; preds = %478
  %483 = load i32, i32* %8, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = call i64 @trap_AAS_AreaReachability(i32 %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %490

489:                                              ; preds = %482
  br label %494

490:                                              ; preds = %482
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %8, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %8, align 4
  br label %478

494:                                              ; preds = %489, %478
  %495 = load i32, i32* %8, align 4
  %496 = load i32, i32* %10, align 4
  %497 = icmp slt i32 %495, %496
  br i1 %497, label %498, label %602

498:                                              ; preds = %494
  %499 = load i64*, i64** %26, align 8
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %501 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %500, i32 0, i32 2
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 1
  %503 = load i64*, i64** %502, align 8
  %504 = call i32 @VectorCopy(i64* %499, i64* %503)
  %505 = load i32, i32* %8, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 2
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 2
  store i32 %508, i32* %511, align 8
  %512 = load i64*, i64** %21, align 8
  %513 = load i64*, i64** %26, align 8
  %514 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %515 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %514, i32 0, i32 2
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 3
  %517 = load i64*, i64** %516, align 8
  %518 = call i32 @VectorSubtract(i64* %512, i64* %513, i64* %517)
  %519 = load i64*, i64** %22, align 8
  %520 = load i64*, i64** %26, align 8
  %521 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 2
  %523 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %522, i32 0, i32 4
  %524 = load i64*, i64** %523, align 8
  %525 = call i32 @VectorSubtract(i64* %519, i64* %520, i64* %524)
  store i32 0, i32* %8, align 4
  br label %526

526:                                              ; preds = %587, %498
  %527 = load i32, i32* %8, align 4
  %528 = icmp slt i32 %527, 3
  br i1 %528, label %529, label %590

529:                                              ; preds = %526
  %530 = load i64*, i64** %25, align 8
  %531 = load i32, i32* %8, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i64, i64* %530, i64 %532
  %534 = load i64, i64* %533, align 8
  %535 = icmp slt i64 %534, 0
  br i1 %535, label %536, label %561

536:                                              ; preds = %529
  %537 = load i64*, i64** %25, align 8
  %538 = load i32, i32* %8, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i64, i64* %537, i64 %539
  %541 = load i64, i64* %540, align 8
  %542 = call float @fabs(i64 %541)
  %543 = load i64*, i64** %31, align 8
  %544 = load i32, i32* %8, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i64, i64* %543, i64 %545
  %547 = load i64, i64* %546, align 8
  %548 = call float @fabs(i64 %547)
  %549 = fmul float %542, %548
  %550 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %551 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %550, i32 0, i32 2
  %552 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %551, i32 0, i32 4
  %553 = load i64*, i64** %552, align 8
  %554 = load i32, i32* %8, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i64, i64* %553, i64 %555
  %557 = load i64, i64* %556, align 8
  %558 = sitofp i64 %557 to float
  %559 = fadd float %558, %549
  %560 = fptosi float %559 to i64
  store i64 %560, i64* %556, align 8
  br label %586

561:                                              ; preds = %529
  %562 = load i64*, i64** %25, align 8
  %563 = load i32, i32* %8, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i64, i64* %562, i64 %564
  %566 = load i64, i64* %565, align 8
  %567 = call float @fabs(i64 %566)
  %568 = load i64*, i64** %30, align 8
  %569 = load i32, i32* %8, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i64, i64* %568, i64 %570
  %572 = load i64, i64* %571, align 8
  %573 = call float @fabs(i64 %572)
  %574 = fmul float %567, %573
  %575 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %576 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %575, i32 0, i32 2
  %577 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %576, i32 0, i32 3
  %578 = load i64*, i64** %577, align 8
  %579 = load i32, i32* %8, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i64, i64* %578, i64 %580
  %582 = load i64, i64* %581, align 8
  %583 = sitofp i64 %582 to float
  %584 = fadd float %583, %574
  %585 = fptosi float %584 to i64
  store i64 %585, i64* %581, align 8
  br label %586

586:                                              ; preds = %561, %536
  br label %587

587:                                              ; preds = %586
  %588 = load i32, i32* %8, align 4
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %8, align 4
  br label %526

590:                                              ; preds = %526
  %591 = load i32, i32* %12, align 4
  %592 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %593 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %592, i32 0, i32 2
  %594 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %593, i32 0, i32 0
  store i32 %591, i32* %594, align 8
  %595 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %596 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %595, i32 0, i32 2
  %597 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %596, i32 0, i32 6
  store i64 0, i64* %597, align 8
  %598 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %599 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %598, i32 0, i32 2
  %600 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %599, i32 0, i32 5
  store i64 0, i64* %600, align 8
  %601 = load i32, i32* @qtrue, align 4
  store i32 %601, i32* %4, align 4
  br label %605

602:                                              ; preds = %494
  br label %603

603:                                              ; preds = %602
  %604 = load i32, i32* @qfalse, align 4
  store i32 %604, i32* %4, align 4
  br label %605

605:                                              ; preds = %603, %590, %400, %387, %159, %54, %46
  %606 = load i32, i32* %4, align 4
  ret i32 %606
}

declare dso_local i32 @VectorClear(i64*) #1

declare dso_local i32 @trap_AAS_ValueForBSPEpairKey(i32, i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @BotModelMinsMaxs(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @trap_AAS_FloatForBSPEpairKey(i32, i8*, float*) #1

declare dso_local i32 @VectorSet(i64*, i32, i32, i32) #1

declare dso_local i32 @BotSetMovedir(i64*, i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local float @fabs(i64) #1

declare dso_local i32 @VectorMA(i64*, float, i64*, i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_9__*, i32, i32*, i32*, i64*, i32, i32) #1

declare dso_local i32 @trap_AAS_PresenceTypeBoundingBox(i32, i64*, i64*) #1

declare dso_local i32 @trap_AAS_TraceAreas(i64*, i64*, i32*, i64**, i32) #1

declare dso_local i64 @trap_AAS_AreaReachability(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
