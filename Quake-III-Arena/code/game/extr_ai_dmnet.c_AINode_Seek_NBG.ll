; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Seek_NBG.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Seek_NBG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64 }
%struct.TYPE_29__ = type { i32, i32, i64, double*, double, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"seek nbg: observer\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"seek nbg: intermision\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"seek nbg: bot dead\00", align 1
@TFL_DEFAULT = common dso_local global i32 0, align 4
@bot_grapple = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@TFL_GRAPPLEHOOK = common dso_local global i32 0, align 4
@TFL_LAVA = common dso_local global i32 0, align 4
@TFL_SLIME = common dso_local global i32 0, align 4
@TFL_ROCKETJUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"seek nbg: time out\00", align 1
@qtrue = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@MOVERESULT_WAITING = common dso_local global i32 0, align 4
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"seek nbg: found enemy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AINode_Seek_NBG(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %8 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %9 = call i64 @BotIsObserver(%struct.TYPE_29__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %13 = call i32 @AIEnter_Observer(%struct.TYPE_29__* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %2, align 4
  br label %283

15:                                               ; preds = %1
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %17 = call i64 @BotIntermission(%struct.TYPE_29__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %21 = call i32 @AIEnter_Intermission(%struct.TYPE_29__* %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @qfalse, align 4
  store i32 %22, i32* %2, align 4
  br label %283

23:                                               ; preds = %15
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %25 = call i64 @BotIsDead(%struct.TYPE_29__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %29 = call i32 @AIEnter_Respawn(%struct.TYPE_29__* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %2, align 4
  br label %283

31:                                               ; preds = %23
  %32 = load i32, i32* @TFL_DEFAULT, align 4
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @bot_grapple, i32 0, i32 0), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @TFL_GRAPPLEHOOK, align 4
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %45 = call i64 @BotInLavaOrSlime(%struct.TYPE_29__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* @TFL_LAVA, align 4
  %49 = load i32, i32* @TFL_SLIME, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %47, %43
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %57 = call i64 @BotCanAndWantsToRocketJump(%struct.TYPE_29__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32, i32* @TFL_ROCKETJUMP, align 4
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %67 = call i32 @BotMapScripts(%struct.TYPE_29__* %66)
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @trap_BotGetTopGoal(i32 %72, i32* %4)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %65
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  br label %88

78:                                               ; preds = %65
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %80 = call i64 @BotReachedGoal(%struct.TYPE_29__* %79, i32* %4)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %84 = call i32 @BotChooseWeapon(%struct.TYPE_29__* %83)
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %78
  br label %88

88:                                               ; preds = %87, %75
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i64 (...) @FloatTime()
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %88
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @trap_BotPopGoal(i32 %97)
  %99 = call i64 (...) @FloatTime()
  %100 = sitofp i64 %99 to double
  %101 = fadd double %100, 5.000000e-02
  %102 = fptosi double %101 to i64
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 10
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %106 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_29__* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @qfalse, align 4
  store i32 %107, i32* %2, align 4
  br label %283

108:                                              ; preds = %88
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %110 = call i64 @BotAIPredictObstacles(%struct.TYPE_29__* %109, i32* %4)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* @qfalse, align 4
  store i32 %113, i32* %2, align 4
  br label %283

114:                                              ; preds = %108
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %116 = call i32 @BotSetupForMovement(%struct.TYPE_29__* %115)
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @trap_BotMoveToGoal(%struct.TYPE_30__* %7, i32 %119, i32* %4, i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %114
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @trap_BotResetAvoidReach(i32 %130)
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %127, %114
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %136 = load i32, i32* @qtrue, align 4
  %137 = call i32 @BotAIBlocked(%struct.TYPE_29__* %135, %struct.TYPE_30__* %7, i32 %136)
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %139 = call i32 @BotClearPath(%struct.TYPE_29__* %138, %struct.TYPE_30__* %7)
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %143 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %141, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %134
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 3
  %154 = load double*, double** %153, align 8
  %155 = call i32 @VectorCopy(i32 %151, double* %154)
  br label %247

156:                                              ; preds = %134
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MOVERESULT_WAITING, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %191

162:                                              ; preds = %156
  %163 = call double (...) @random()
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 4
  %166 = load double, double* %165, align 8
  %167 = fmul double %166, 8.000000e-01
  %168 = fcmp olt double %163, %167
  br i1 %168, label %169, label %190

169:                                              ; preds = %162
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @BotRoamGoal(%struct.TYPE_29__* %170, i32 %171)
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @VectorSubtract(i32 %173, i32 %176, i32 %177)
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 3
  %182 = load double*, double** %181, align 8
  %183 = call i32 @vectoangles(i32 %179, double* %182)
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 3
  %186 = load double*, double** %185, align 8
  %187 = getelementptr inbounds double, double* %186, i64 2
  %188 = load double, double* %187, align 8
  %189 = fmul double %188, 5.000000e-01
  store double %189, double* %187, align 8
  br label %190

190:                                              ; preds = %169, %162
  br label %246

191:                                              ; preds = %156
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %245, label %198

198:                                              ; preds = %191
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @trap_BotGetSecondGoal(i32 %201, i32* %4)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %198
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @trap_BotGetTopGoal(i32 %207, i32* %4)
  br label %209

209:                                              ; preds = %204, %198
  %210 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %5, align 4
  %217 = call i64 @trap_BotMovementViewTarget(i32 %212, i32* %4, i32 %215, i32 300, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %231

219:                                              ; preds = %209
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 9
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @VectorSubtract(i32 %220, i32 %223, i32 %224)
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 3
  %229 = load double*, double** %228, align 8
  %230 = call i32 @vectoangles(i32 %226, double* %229)
  br label %238

231:                                              ; preds = %209
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 3
  %236 = load double*, double** %235, align 8
  %237 = call i32 @vectoangles(i32 %233, double* %236)
  br label %238

238:                                              ; preds = %231, %219
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 3
  %241 = load double*, double** %240, align 8
  %242 = getelementptr inbounds double, double* %241, i64 2
  %243 = load double, double* %242, align 8
  %244 = fmul double %243, 5.000000e-01
  store double %244, double* %242, align 8
  br label %245

245:                                              ; preds = %238, %191
  br label %246

246:                                              ; preds = %245, %190
  br label %247

247:                                              ; preds = %246, %149
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %7, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %256, i32 0, i32 8
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %253, %247
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %260 = call i64 @BotFindEnemy(%struct.TYPE_29__* %259, i32 -1)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %281

262:                                              ; preds = %258
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %264 = call i64 @BotWantsToRetreat(%struct.TYPE_29__* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %268 = call i32 @AIEnter_Battle_NBG(%struct.TYPE_29__* %267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %280

269:                                              ; preds = %262
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @trap_BotResetLastAvoidReach(i32 %272)
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @trap_BotEmptyGoalStack(i32 %276)
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %279 = call i32 @AIEnter_Battle_Fight(%struct.TYPE_29__* %278, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %280

280:                                              ; preds = %269, %266
  br label %281

281:                                              ; preds = %280, %258
  %282 = load i32, i32* @qtrue, align 4
  store i32 %282, i32* %2, align 4
  br label %283

283:                                              ; preds = %281, %112, %94, %27, %19, %11
  %284 = load i32, i32* %2, align 4
  ret i32 %284
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_29__*) #1

declare dso_local i32 @AIEnter_Observer(%struct.TYPE_29__*, i8*) #1

declare dso_local i64 @BotIntermission(%struct.TYPE_29__*) #1

declare dso_local i32 @AIEnter_Intermission(%struct.TYPE_29__*, i8*) #1

declare dso_local i64 @BotIsDead(%struct.TYPE_29__*) #1

declare dso_local i32 @AIEnter_Respawn(%struct.TYPE_29__*, i8*) #1

declare dso_local i64 @BotInLavaOrSlime(%struct.TYPE_29__*) #1

declare dso_local i64 @BotCanAndWantsToRocketJump(%struct.TYPE_29__*) #1

declare dso_local i32 @BotMapScripts(%struct.TYPE_29__*) #1

declare dso_local i32 @trap_BotGetTopGoal(i32, i32*) #1

declare dso_local i64 @BotReachedGoal(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @BotChooseWeapon(%struct.TYPE_29__*) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local i32 @trap_BotPopGoal(i32) #1

declare dso_local i32 @AIEnter_Seek_LTG(%struct.TYPE_29__*, i8*) #1

declare dso_local i64 @BotAIPredictObstacles(%struct.TYPE_29__*, i32*) #1

declare dso_local i32 @BotSetupForMovement(%struct.TYPE_29__*) #1

declare dso_local i32 @trap_BotMoveToGoal(%struct.TYPE_30__*, i32, i32*, i32) #1

declare dso_local i32 @trap_BotResetAvoidReach(i32) #1

declare dso_local i32 @BotAIBlocked(%struct.TYPE_29__*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @BotClearPath(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @VectorCopy(i32, double*) #1

declare dso_local double @random(...) #1

declare dso_local i32 @BotRoamGoal(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @vectoangles(i32, double*) #1

declare dso_local i32 @trap_BotGetSecondGoal(i32, i32*) #1

declare dso_local i64 @trap_BotMovementViewTarget(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @BotFindEnemy(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @BotWantsToRetreat(%struct.TYPE_29__*) #1

declare dso_local i32 @AIEnter_Battle_NBG(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @trap_BotResetLastAvoidReach(i32) #1

declare dso_local i32 @trap_BotEmptyGoalStack(i32) #1

declare dso_local i32 @AIEnter_Battle_Fight(%struct.TYPE_29__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
