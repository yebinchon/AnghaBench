; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotWalkInDirection.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotWalkInDirection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double*, i32, double*, float, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, double*, i32 }

@MFL_ONGROUND = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@MFL_BARRIERJUMP = common dso_local global i32 0, align 4
@MOVE_CROUCH = common dso_local global i32 0, align 4
@MOVE_JUMP = common dso_local global i32 0, align 4
@PRESENCE_CROUCH = common dso_local global i32 0, align 4
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@PREDICTIONTIME_JUMP = common dso_local global double 0.000000e+00, align 8
@SE_HITGROUND = common dso_local global i32 0, align 4
@SE_HITGROUNDDAMAGE = common dso_local global i32 0, align 4
@SE_ENTERWATER = common dso_local global i32 0, align 4
@SE_ENTERSLIME = common dso_local global i32 0, align 4
@SE_ENTERLAVA = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotWalkInDirection(%struct.TYPE_6__* %0, double* %1, float %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca double*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__, align 8
  %20 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store double* %1, double** %7, align 8
  store float %2, float* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load double*, double** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @AAS_OnGround(double* %23, i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i32, i32* @MFL_ONGROUND, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MFL_ONGROUND, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %293

45:                                               ; preds = %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = load double*, double** %7, align 8
  %48 = load float, float* %8, align 4
  %49 = call i64 @BotCheckBarrierJump(%struct.TYPE_6__* %46, double* %47, float %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @qtrue, align 4
  store i32 %52, i32* %5, align 4
  br label %317

53:                                               ; preds = %45
  %54 = load i32, i32* @MFL_BARRIERJUMP, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @MOVE_CROUCH, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @MOVE_JUMP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @PRESENCE_CROUCH, align 4
  store i32 %70, i32* %15, align 4
  br label %73

71:                                               ; preds = %64, %53
  %72 = load i32, i32* @PRESENCE_NORMAL, align 4
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load double*, double** %7, align 8
  %75 = getelementptr inbounds double, double* %74, i64 0
  %76 = load double, double* %75, align 8
  %77 = load double*, double** %10, align 8
  %78 = getelementptr inbounds double, double* %77, i64 0
  store double %76, double* %78, align 8
  %79 = load double*, double** %7, align 8
  %80 = getelementptr inbounds double, double* %79, i64 1
  %81 = load double, double* %80, align 8
  %82 = load double*, double** %10, align 8
  %83 = getelementptr inbounds double, double* %82, i64 1
  store double %81, double* %83, align 8
  %84 = load double*, double** %10, align 8
  %85 = getelementptr inbounds double, double* %84, i64 2
  store double 0.000000e+00, double* %85, align 8
  %86 = load double*, double** %10, align 8
  %87 = call i32 @VectorNormalize(double* %86)
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @MOVE_JUMP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %73
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load double*, double** %94, align 8
  %96 = load double*, double** %10, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call float @BotGapDistance(double* %95, double* %96, i32 %99)
  %101 = fcmp ogt float %100, 0.000000e+00
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i32, i32* @MOVE_JUMP, align 4
  %104 = load i32, i32* %9, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %92
  br label %107

107:                                              ; preds = %106, %73
  %108 = load double*, double** %10, align 8
  %109 = load float, float* %8, align 4
  %110 = load double*, double** %11, align 8
  %111 = call i32 @VectorScale(double* %108, float %109, double* %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load double*, double** %113, align 8
  %115 = load double*, double** %12, align 8
  %116 = call i32 @VectorCopy(double* %114, double* %115)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @MOVE_JUMP, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %107
  %122 = load double*, double** %11, align 8
  %123 = getelementptr inbounds double, double* %122, i64 2
  store double 4.000000e+02, double* %123, align 8
  %124 = load double, double* @PREDICTIONTIME_JUMP, align 8
  %125 = fdiv double %124, 1.000000e-01
  %126 = fptosi double %125 to i32
  store i32 %126, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %127 = load i32, i32* @SE_HITGROUND, align 4
  %128 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @SE_ENTERWATER, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @SE_ENTERSLIME, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @SE_ENTERLAVA, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %18, align 4
  br label %144

136:                                              ; preds = %107
  store i32 2, i32* %16, align 4
  store i32 2, i32* %17, align 4
  %137 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %138 = load i32, i32* @SE_ENTERWATER, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @SE_ENTERSLIME, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @SE_ENTERLAVA, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %18, align 4
  br label %144

144:                                              ; preds = %136, %121
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load double*, double** %146, align 8
  %148 = load double*, double** %14, align 8
  %149 = call i32 @VectorCopy(double* %147, double* %148)
  %150 = load double*, double** %14, align 8
  %151 = getelementptr inbounds double, double* %150, i64 2
  %152 = load double, double* %151, align 8
  %153 = fadd double %152, 5.000000e-01
  store double %153, double* %151, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load double*, double** %14, align 8
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* @qtrue, align 4
  %160 = load double*, double** %12, align 8
  %161 = load double*, double** %11, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* @qfalse, align 4
  %166 = call i32 @AAS_PredictClientMovement(%struct.TYPE_7__* %19, i32 %156, double* %157, i32 %158, i32 %159, double* %160, double* %161, i32 %162, i32 %163, float 0x3FB99999A0000000, i32 %164, i32 0, i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %16, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %144
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @MOVE_JUMP, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @qfalse, align 4
  store i32 %177, i32* %5, align 4
  br label %317

178:                                              ; preds = %171, %144
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SE_ENTERSLIME, align 4
  %182 = load i32, i32* @SE_ENTERLAVA, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %185 = or i32 %183, %184
  %186 = and i32 %180, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %178
  %189 = load i32, i32* @qfalse, align 4
  store i32 %189, i32* %5, align 4
  br label %317

190:                                              ; preds = %178
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @SE_HITGROUND, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %225

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load double*, double** %13, align 8
  %200 = call i32 @VectorNormalize2(i32 %198, double* %199)
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %202 = load double*, double** %201, align 8
  %203 = load double*, double** %13, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  %207 = call float @BotGapDistance(double* %202, double* %203, i32 %206)
  store float %207, float* %20, align 4
  %208 = load float, float* %20, align 4
  %209 = fcmp ogt float %208, 0.000000e+00
  br i1 %209, label %210, label %212

210:                                              ; preds = %196
  %211 = load i32, i32* @qfalse, align 4
  store i32 %211, i32* %5, align 4
  br label %317

212:                                              ; preds = %196
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %214 = load double*, double** %213, align 8
  %215 = load double*, double** %10, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = call float @BotGapDistance(double* %214, double* %215, i32 %218)
  store float %219, float* %20, align 4
  %220 = load float, float* %20, align 4
  %221 = fcmp ogt float %220, 0.000000e+00
  br i1 %221, label %222, label %224

222:                                              ; preds = %212
  %223 = load i32, i32* @qfalse, align 4
  store i32 %223, i32* %5, align 4
  br label %317

224:                                              ; preds = %212
  br label %225

225:                                              ; preds = %224, %190
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %227 = load double*, double** %226, align 8
  %228 = getelementptr inbounds double, double* %227, i64 0
  %229 = load double, double* %228, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load double*, double** %231, align 8
  %233 = getelementptr inbounds double, double* %232, i64 0
  %234 = load double, double* %233, align 8
  %235 = fsub double %229, %234
  %236 = load double*, double** %13, align 8
  %237 = getelementptr inbounds double, double* %236, i64 0
  store double %235, double* %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %239 = load double*, double** %238, align 8
  %240 = getelementptr inbounds double, double* %239, i64 1
  %241 = load double, double* %240, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load double*, double** %243, align 8
  %245 = getelementptr inbounds double, double* %244, i64 1
  %246 = load double, double* %245, align 8
  %247 = fsub double %241, %246
  %248 = load double*, double** %13, align 8
  %249 = getelementptr inbounds double, double* %248, i64 1
  store double %247, double* %249, align 8
  %250 = load double*, double** %13, align 8
  %251 = getelementptr inbounds double, double* %250, i64 2
  store double 0.000000e+00, double* %251, align 8
  %252 = load double*, double** %13, align 8
  %253 = call float @VectorLength(double* %252)
  %254 = fpext float %253 to double
  %255 = load float, float* %8, align 4
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 3
  %258 = load float, float* %257, align 8
  %259 = fmul float %255, %258
  %260 = fpext float %259 to double
  %261 = fmul double %260, 5.000000e-01
  %262 = fcmp olt double %254, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %225
  %264 = load i32, i32* @qfalse, align 4
  store i32 %264, i32* %5, align 4
  br label %317

265:                                              ; preds = %225
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* @MOVE_JUMP, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @EA_Jump(i32 %273)
  br label %275

275:                                              ; preds = %270, %265
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @MOVE_CROUCH, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @EA_Crouch(i32 %283)
  br label %285

285:                                              ; preds = %280, %275
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = load double*, double** %10, align 8
  %290 = load float, float* %8, align 4
  %291 = call i32 @EA_Move(i32 %288, double* %289, float %290)
  %292 = load i32, i32* @qtrue, align 4
  store i32 %292, i32* %5, align 4
  br label %317

293:                                              ; preds = %38
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @MFL_BARRIERJUMP, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %315

300:                                              ; preds = %293
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 2
  %303 = load double*, double** %302, align 8
  %304 = getelementptr inbounds double, double* %303, i64 2
  %305 = load double, double* %304, align 8
  %306 = fcmp olt double %305, 5.000000e+01
  br i1 %306, label %307, label %314

307:                                              ; preds = %300
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 4
  %311 = load double*, double** %7, align 8
  %312 = load float, float* %8, align 4
  %313 = call i32 @EA_Move(i32 %310, double* %311, float %312)
  br label %314

314:                                              ; preds = %307, %300
  br label %315

315:                                              ; preds = %314, %293
  %316 = load i32, i32* @qtrue, align 4
  store i32 %316, i32* %5, align 4
  br label %317

317:                                              ; preds = %315, %285, %263, %222, %210, %188, %176, %51
  %318 = load i32, i32* %5, align 4
  ret i32 %318
}

declare dso_local i64 @AAS_OnGround(double*, i32, i32) #1

declare dso_local i64 @BotCheckBarrierJump(%struct.TYPE_6__*, double*, float) #1

declare dso_local i32 @VectorNormalize(double*) #1

declare dso_local float @BotGapDistance(double*, double*, i32) #1

declare dso_local i32 @VectorScale(double*, float, double*) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local i32 @AAS_PredictClientMovement(%struct.TYPE_7__*, i32, double*, i32, i32, double*, double*, i32, i32, float, i32, i32, i32) #1

declare dso_local i32 @VectorNormalize2(i32, double*) #1

declare dso_local float @VectorLength(double*) #1

declare dso_local i32 @EA_Jump(i32) #1

declare dso_local i32 @EA_Crouch(i32) #1

declare dso_local i32 @EA_Move(i32, double*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
