; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_WalkMove.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_pmove.c_PM_WalkMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32, float, float*, i32 }
%struct.TYPE_11__ = type { float, float }
%struct.TYPE_12__ = type { float*, float*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@pm = common dso_local global %struct.TYPE_13__* null, align 8
@pml = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@OVERCLIP = common dso_local global i32 0, align 4
@PMF_DUCKED = common dso_local global i32 0, align 4
@pm_duckScale = common dso_local global float 0.000000e+00, align 4
@pm_swimScale = common dso_local global double 0.000000e+00, align 8
@SURF_SLICK = common dso_local global i32 0, align 4
@PMF_TIME_KNOCKBACK = common dso_local global i32 0, align 4
@pm_airaccelerate = common dso_local global float 0.000000e+00, align 4
@pm_accelerate = common dso_local global float 0.000000e+00, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_WalkMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_WalkMove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %23

16:                                               ; preds = %0
  %17 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 0), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 3, i32 1, i32 0), align 4
  %19 = call i64 @DotProduct(float* %17, i32 %18)
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @PM_WaterMove()
  br label %282

23:                                               ; preds = %16, %0
  %24 = call i64 (...) @PM_CheckJump()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (...) @PM_WaterMove()
  br label %35

33:                                               ; preds = %26
  %34 = call i32 (...) @PM_AirMove()
  br label %35

35:                                               ; preds = %33, %31
  br label %282

36:                                               ; preds = %23
  %37 = call i32 (...) @PM_Friction()
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load float, float* %40, align 8
  store float %41, float* %3, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load float, float* %44, align 4
  store float %45, float* %4, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = bitcast %struct.TYPE_11__* %8 to i8*
  %49 = bitcast %struct.TYPE_11__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 8 %49, i64 8, i1 false)
  %50 = call float @PM_CmdScale(%struct.TYPE_11__* %8)
  store float %50, float* %7, align 4
  %51 = call i32 (...) @PM_SetMovementDir()
  %52 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 0), align 8
  %53 = getelementptr inbounds float, float* %52, i64 2
  store float 0.000000e+00, float* %53, align 4
  %54 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 1), align 8
  %55 = getelementptr inbounds float, float* %54, i64 2
  store float 0.000000e+00, float* %55, align 4
  %56 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 0), align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 3, i32 1, i32 0), align 4
  %58 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 0), align 8
  %59 = load i32, i32* @OVERCLIP, align 4
  %60 = call i32 @PM_ClipVelocity(float* %56, i32 %57, float* %58, i32 %59)
  %61 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 1), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 3, i32 1, i32 0), align 4
  %63 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 1), align 8
  %64 = load i32, i32* @OVERCLIP, align 4
  %65 = call i32 @PM_ClipVelocity(float* %61, i32 %62, float* %63, i32 %64)
  %66 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 0), align 8
  %67 = call float @VectorNormalize(float* %66)
  %68 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 1), align 8
  %69 = call float @VectorNormalize(float* %68)
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %93, %36
  %71 = load i32, i32* %1, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %96

73:                                               ; preds = %70
  %74 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 0), align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load float, float* %3, align 4
  %80 = fmul float %78, %79
  %81 = load float*, float** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 1), align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = load float, float* %4, align 4
  %87 = fmul float %85, %86
  %88 = fadd float %80, %87
  %89 = load float*, float** %2, align 8
  %90 = load i32, i32* %1, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  store float %88, float* %92, align 4
  br label %93

93:                                               ; preds = %73
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %70

96:                                               ; preds = %70
  %97 = load float*, float** %2, align 8
  %98 = load float*, float** %5, align 8
  %99 = call i32 @VectorCopy(float* %97, float* %98)
  %100 = load float*, float** %5, align 8
  %101 = call float @VectorNormalize(float* %100)
  store float %101, float* %6, align 4
  %102 = load float, float* %7, align 4
  %103 = load float, float* %6, align 4
  %104 = fmul float %103, %102
  store float %104, float* %6, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @PMF_DUCKED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %96
  %114 = load float, float* %6, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load float, float* %118, align 4
  %120 = load float, float* @pm_duckScale, align 4
  %121 = fmul float %119, %120
  %122 = fcmp ogt float %114, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %113
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  %128 = load float, float* %127, align 4
  %129 = load float, float* @pm_duckScale, align 4
  %130 = fmul float %128, %129
  store float %130, float* %6, align 4
  br label %131

131:                                              ; preds = %123, %113
  br label %132

132:                                              ; preds = %131, %96
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %169

137:                                              ; preds = %132
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sitofp i32 %140 to double
  %142 = fdiv double %141, 3.000000e+00
  %143 = fptrunc double %142 to float
  store float %143, float* %11, align 4
  %144 = load double, double* @pm_swimScale, align 8
  %145 = fsub double 1.000000e+00, %144
  %146 = load float, float* %11, align 4
  %147 = fpext float %146 to double
  %148 = fmul double %145, %147
  %149 = fsub double 1.000000e+00, %148
  %150 = fptrunc double %149 to float
  store float %150, float* %11, align 4
  %151 = load float, float* %6, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load float, float* %155, align 4
  %157 = load float, float* %11, align 4
  %158 = fmul float %156, %157
  %159 = fcmp ogt float %151, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %137
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load float, float* %164, align 4
  %166 = load float, float* %11, align 4
  %167 = fmul float %165, %166
  store float %167, float* %6, align 4
  br label %168

168:                                              ; preds = %160, %137
  br label %169

169:                                              ; preds = %168, %132
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 3, i32 0), align 4
  %171 = load i32, i32* @SURF_SLICK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @PMF_TIME_KNOCKBACK, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %174, %169
  %184 = load float, float* @pm_airaccelerate, align 4
  store float %184, float* %9, align 4
  br label %187

185:                                              ; preds = %174
  %186 = load float, float* @pm_accelerate, align 4
  store float %186, float* %9, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = load float*, float** %5, align 8
  %189 = load float, float* %6, align 4
  %190 = load float, float* %9, align 4
  %191 = call i32 @PM_Accelerate(float* %188, float %189, float %190)
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 3, i32 0), align 4
  %193 = load i32, i32* @SURF_SLICK, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %187
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @PMF_TIME_KNOCKBACK, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %222

205:                                              ; preds = %196, %187
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 2), align 8
  %212 = mul nsw i32 %210, %211
  %213 = sitofp i32 %212 to float
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 2
  %218 = load float*, float** %217, align 8
  %219 = getelementptr inbounds float, float* %218, i64 2
  %220 = load float, float* %219, align 4
  %221 = fsub float %220, %213
  store float %221, float* %219, align 4
  br label %223

222:                                              ; preds = %196
  br label %223

223:                                              ; preds = %222, %205
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 2
  %228 = load float*, float** %227, align 8
  %229 = call float @VectorLength(float* %228)
  store float %229, float* %10, align 4
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 2
  %234 = load float*, float** %233, align 8
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @pml, i32 0, i32 3, i32 1, i32 0), align 4
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 2
  %240 = load float*, float** %239, align 8
  %241 = load i32, i32* @OVERCLIP, align 4
  %242 = call i32 @PM_ClipVelocity(float* %234, i32 %235, float* %240, i32 %241)
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 2
  %247 = load float*, float** %246, align 8
  %248 = call float @VectorNormalize(float* %247)
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 2
  %253 = load float*, float** %252, align 8
  %254 = load float, float* %10, align 4
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 2
  %259 = load float*, float** %258, align 8
  %260 = call i32 @VectorScale(float* %253, float %254, float* %259)
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  %265 = load float*, float** %264, align 8
  %266 = getelementptr inbounds float, float* %265, i64 0
  %267 = load float, float* %266, align 4
  %268 = fcmp une float %267, 0.000000e+00
  br i1 %268, label %279, label %269

269:                                              ; preds = %223
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pm, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 2
  %274 = load float*, float** %273, align 8
  %275 = getelementptr inbounds float, float* %274, i64 1
  %276 = load float, float* %275, align 4
  %277 = fcmp une float %276, 0.000000e+00
  br i1 %277, label %279, label %278

278:                                              ; preds = %269
  br label %282

279:                                              ; preds = %269, %223
  %280 = load i32, i32* @qfalse, align 4
  %281 = call i32 @PM_StepSlideMove(i32 %280)
  br label %282

282:                                              ; preds = %279, %278, %35, %21
  ret void
}

declare dso_local i64 @DotProduct(float*, i32) #1

declare dso_local i32 @PM_WaterMove(...) #1

declare dso_local i64 @PM_CheckJump(...) #1

declare dso_local i32 @PM_AirMove(...) #1

declare dso_local i32 @PM_Friction(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local float @PM_CmdScale(%struct.TYPE_11__*) #1

declare dso_local i32 @PM_SetMovementDir(...) #1

declare dso_local i32 @PM_ClipVelocity(float*, i32, float*, i32) #1

declare dso_local float @VectorNormalize(float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @PM_Accelerate(float*, float, float) #1

declare dso_local float @VectorLength(float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @PM_StepSlideMove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
