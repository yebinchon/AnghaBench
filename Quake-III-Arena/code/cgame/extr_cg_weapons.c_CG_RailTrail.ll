; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_RailTrail.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_RailTrail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { float }
%struct.TYPE_18__ = type { double }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_15__ = type { float, double, double, double*, %struct.TYPE_12__, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { float, i32*, i32*, i32 }
%struct.TYPE_14__ = type { float, i32*, i32*, i32*, float, i32, i32, i32 }

@LE_FADE_RGB = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@cg_railTrailTime = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@RT_RAIL_CORE = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@cg_oldRail = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@LEF_PUFF_DONT_SCALE = common dso_local global i32 0, align 4
@LE_MOVE_SCALE_FADE = common dso_local global i32 0, align 4
@RT_SPRITE = common dso_local global i32 0, align 4
@TR_LINEAR = common dso_local global i32 0, align 4
@RADIUS = common dso_local global i32 0, align 4
@ROTATION = common dso_local global i32 0, align 4
@SPACING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_RailTrail(%struct.TYPE_16__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [36 x i32*], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 4
  store i32 %22, i32* %20, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @VectorCopy(i32* %23, i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @VectorSubtract(i32* %26, i32* %27, i32* %28)
  %30 = load i32*, i32** %11, align 8
  %31 = call float @VectorNormalize(i32* %30)
  store float %31, float* %13, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @PerpendicularVector(i32* %32, i32* %33)
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %48, %3
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 36
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %14, align 4
  %46 = mul nsw i32 %45, 10
  %47 = call i32 @RotatePointAroundVector(i32* %42, i32* %43, i32* %44, i32 %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %35

51:                                               ; preds = %35
  %52 = call %struct.TYPE_15__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %17, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 7
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %18, align 8
  %55 = load i32, i32* @LE_FADE_RGB, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store float %58, float* %60, align 8
  %61 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %62 = fpext float %61 to double
  %63 = load double, double* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_railTrailTime, i32 0, i32 0), align 8
  %64 = fadd double %62, %63
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  store double %64, double* %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load float, float* %71, align 8
  %73 = fpext float %72 to double
  %74 = fsub double %69, %73
  %75 = fdiv double 1.000000e+00, %74
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  store double %75, double* %77, align 8
  %78 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %79 = fdiv float %78, 1.000000e+03
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store float %79, float* %81, align 8
  %82 = load i32, i32* @RT_RAIL_CORE, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cgs, i32 0, i32 0, i32 1), align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @VectorCopy(i32* %88, i32* %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @VectorCopy(i32* %93, i32* %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, 255
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, 255
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 %113, i32* %117, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %122, 255
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %123, i32* %127, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  store i32 255, i32* %131, align 4
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = sitofp i32 %136 to double
  %138 = fmul double %137, 7.500000e-01
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  %141 = load double*, double** %140, align 8
  %142 = getelementptr inbounds double, double* %141, i64 0
  store double %138, double* %142, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = sitofp i32 %147 to double
  %149 = fmul double %148, 7.500000e-01
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 3
  %152 = load double*, double** %151, align 8
  %153 = getelementptr inbounds double, double* %152, i64 1
  store double %149, double* %153, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = sitofp i32 %158 to double
  %160 = fmul double %159, 7.500000e-01
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 3
  %163 = load double*, double** %162, align 8
  %164 = getelementptr inbounds double, double* %163, i64 2
  store double %160, double* %164, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 3
  %167 = load double*, double** %166, align 8
  %168 = getelementptr inbounds double, double* %167, i64 3
  store double 1.000000e+00, double* %168, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @AxisClear(i32 %171)
  %173 = load i32*, i32** %8, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = load i32*, i32** %8, align 8
  %176 = call i32 @VectorMA(i32* %173, i32 20, i32* %174, i32* %175)
  %177 = load i32*, i32** %8, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = call i32 @VectorCopy(i32* %177, i32* %178)
  %180 = load i32*, i32** %11, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 @VectorScale(i32* %180, i32 5, i32* %181)
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_oldRail, i32 0, i32 0), align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %51
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %190, 8
  store i32 %191, i32* %189, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, 8
  store i32 %197, i32* %195, align 4
  br label %406

198:                                              ; preds = %51
  store i32 -1, i32* %16, align 4
  store i32 18, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %199

199:                                              ; preds = %403, %198
  %200 = load i32, i32* %14, align 4
  %201 = sitofp i32 %200 to float
  %202 = load float, float* %13, align 4
  %203 = fcmp olt float %201, %202
  br i1 %203, label %204, label %406

204:                                              ; preds = %199
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %16, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %386

208:                                              ; preds = %204
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %209, 5
  store i32 %210, i32* %16, align 4
  %211 = call %struct.TYPE_15__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_15__* %211, %struct.TYPE_15__** %17, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 7
  store %struct.TYPE_14__* %213, %struct.TYPE_14__** %18, align 8
  %214 = load i32, i32* @LEF_PUFF_DONT_SCALE, align 4
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 6
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* @LE_MOVE_SCALE_FADE, align 4
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 5
  store i32 %217, i32* %219, align 8
  %220 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  store float %220, float* %222, align 8
  %223 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %224 = load i32, i32* %14, align 4
  %225 = ashr i32 %224, 1
  %226 = sitofp i32 %225 to float
  %227 = fadd float %223, %226
  %228 = fadd float %227, 6.000000e+02
  %229 = fpext float %228 to double
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  store double %229, double* %231, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  %234 = load double, double* %233, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load float, float* %236, align 8
  %238 = fpext float %237 to double
  %239 = fsub double %234, %238
  %240 = fdiv double 1.000000e+00, %239
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 2
  store double %240, double* %242, align 8
  %243 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %244 = fdiv float %243, 1.000000e+03
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  store float %244, float* %246, align 8
  %247 = load i32, i32* @RT_SPRITE, align 4
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 6
  store i32 %247, i32* %249, align 8
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 4
  store float 0x3FF19999A0000000, float* %251, align 8
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cgs, i32 0, i32 0, i32 0), align 4
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 5
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 %259, 255
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  store i32 %260, i32* %264, align 4
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  %269 = load i32, i32* %268, align 4
  %270 = mul nsw i32 %269, 255
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  store i32 %270, i32* %274, align 4
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 2
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %279, 255
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 2
  store i32 %280, i32* %284, align 4
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 3
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 3
  store i32 255, i32* %288, align 4
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = sitofp i32 %293 to double
  %295 = fmul double %294, 7.500000e-01
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 3
  %298 = load double*, double** %297, align 8
  %299 = getelementptr inbounds double, double* %298, i64 0
  store double %295, double* %299, align 8
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  %305 = sitofp i32 %304 to double
  %306 = fmul double %305, 7.500000e-01
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 3
  %309 = load double*, double** %308, align 8
  %310 = getelementptr inbounds double, double* %309, i64 1
  store double %306, double* %310, align 8
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 2
  %315 = load i32, i32* %314, align 4
  %316 = sitofp i32 %315 to double
  %317 = fmul double %316, 7.500000e-01
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 3
  %320 = load double*, double** %319, align 8
  %321 = getelementptr inbounds double, double* %320, i64 2
  store double %317, double* %321, align 8
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 3
  %324 = load double*, double** %323, align 8
  %325 = getelementptr inbounds double, double* %324, i64 3
  store double 1.000000e+00, double* %325, align 8
  %326 = load i32, i32* @TR_LINEAR, align 4
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 4
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 3
  store i32 %326, i32* %329, align 8
  %330 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 4
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  store float %330, float* %333, align 8
  %334 = load i32*, i32** %8, align 8
  %335 = load i32*, i32** %9, align 8
  %336 = call i32 @VectorCopy(i32* %334, i32* %335)
  %337 = load i32*, i32** %9, align 8
  %338 = load i32, i32* %15, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %339
  %341 = load i32*, i32** %340, align 8
  %342 = load i32*, i32** %9, align 8
  %343 = call i32 @VectorMA(i32* %337, i32 4, i32* %341, i32* %342)
  %344 = load i32*, i32** %9, align 8
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = call i32 @VectorCopy(i32* %344, i32* %348)
  %350 = load i32, i32* %15, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 0
  %355 = load i32, i32* %354, align 4
  %356 = mul nsw i32 %355, 6
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 2
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  store i32 %356, i32* %361, align 4
  %362 = load i32, i32* %15, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %363
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  %367 = load i32, i32* %366, align 4
  %368 = mul nsw i32 %367, 6
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 4
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 2
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  store i32 %368, i32* %373, align 4
  %374 = load i32, i32* %15, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [36 x i32*], [36 x i32*]* %7, i64 0, i64 %375
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 2
  %379 = load i32, i32* %378, align 4
  %380 = mul nsw i32 %379, 6
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 4
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 2
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 2
  store i32 %380, i32* %385, align 4
  br label %386

386:                                              ; preds = %208, %204
  %387 = load i32*, i32** %8, align 8
  %388 = load i32*, i32** %11, align 8
  %389 = load i32*, i32** %8, align 8
  %390 = call i32 @VectorAdd(i32* %387, i32* %388, i32* %389)
  %391 = load i32, i32* %15, align 4
  %392 = add nsw i32 %391, 1
  %393 = icmp slt i32 %392, 36
  br i1 %393, label %394, label %397

394:                                              ; preds = %386
  %395 = load i32, i32* %15, align 4
  %396 = add nsw i32 %395, 1
  br label %401

397:                                              ; preds = %386
  %398 = load i32, i32* %15, align 4
  %399 = add nsw i32 %398, 1
  %400 = srem i32 %399, 36
  br label %401

401:                                              ; preds = %397, %394
  %402 = phi i32 [ %396, %394 ], [ %400, %397 ]
  store i32 %402, i32* %15, align 4
  br label %403

403:                                              ; preds = %401
  %404 = load i32, i32* %14, align 4
  %405 = add nsw i32 %404, 5
  store i32 %405, i32* %14, align 4
  br label %199

406:                                              ; preds = %185, %199
  ret void
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local float @VectorNormalize(i32*) #1

declare dso_local i32 @PerpendicularVector(i32*, i32*) #1

declare dso_local i32 @RotatePointAroundVector(i32*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_15__* @CG_AllocLocalEntity(...) #1

declare dso_local i32 @AxisClear(i32) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @VectorScale(i32*, i32, i32*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
