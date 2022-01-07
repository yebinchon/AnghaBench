; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Seek_LTG.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Seek_LTG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64 }
%struct.TYPE_37__ = type { i32, i32, i32, i32, i32, i64, i32, double*, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_38__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"seek ltg: observer\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"seek ltg: intermission\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"seek ltg: bot dead\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"seek ltg: random chat\00", align 1
@TFL_DEFAULT = common dso_local global i32 0, align 4
@bot_grapple = common dso_local global %struct.TYPE_39__ zeroinitializer, align 8
@TFL_GRAPPLEHOOK = common dso_local global i32 0, align 4
@TFL_LAVA = common dso_local global i32 0, align 4
@TFL_SLIME = common dso_local global i32 0, align 4
@TFL_ROCKETJUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"seek ltg: found enemy\00", align 1
@qtrue = common dso_local global i32 0, align 4
@LTG_DEFENDKEYAREA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"ltg seek: nbg\00", align 1
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@MOVERESULT_WAITING = common dso_local global i32 0, align 4
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@gametype = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AINode_Seek_LTG(%struct.TYPE_37__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_37__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_38__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %3, align 8
  %9 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %10 = call i64 @BotIsObserver(%struct.TYPE_37__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %14 = call i32 @AIEnter_Observer(%struct.TYPE_37__* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %2, align 4
  br label %370

16:                                               ; preds = %1
  %17 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %18 = call i64 @BotIntermission(%struct.TYPE_37__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %22 = call i32 @AIEnter_Intermission(%struct.TYPE_37__* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %2, align 4
  br label %370

24:                                               ; preds = %16
  %25 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %26 = call i64 @BotIsDead(%struct.TYPE_37__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %30 = call i32 @AIEnter_Respawn(%struct.TYPE_37__* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %2, align 4
  br label %370

32:                                               ; preds = %24
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %34 = call i64 @BotChat_Random(%struct.TYPE_37__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = call i32 (...) @FloatTime()
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %40 = call i64 @BotChatTime(%struct.TYPE_37__* %39)
  %41 = add nsw i64 %38, %40
  %42 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %42, i32 0, i32 15
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %45 = call i32 @AIEnter_Stand(%struct.TYPE_37__* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @qfalse, align 4
  store i32 %46, i32* %2, align 4
  br label %370

47:                                               ; preds = %32
  %48 = load i32, i32* @TFL_DEFAULT, align 4
  %49 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @bot_grapple, i32 0, i32 0), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @TFL_GRAPPLEHOOK, align 4
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %61 = call i64 @BotInLavaOrSlime(%struct.TYPE_37__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32, i32* @TFL_LAVA, align 4
  %65 = load i32, i32* @TFL_SLIME, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %63, %59
  %72 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %73 = call i64 @BotCanAndWantsToRocketJump(%struct.TYPE_37__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @TFL_ROCKETJUMP, align 4
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %71
  %82 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %83 = call i32 @BotMapScripts(%struct.TYPE_37__* %82)
  %84 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 4
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (...) @FloatTime()
  %90 = sub nsw i32 %89, 2
  %91 = icmp sgt i32 %88, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %81
  %93 = call double (...) @random()
  %94 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 1
  %98 = sitofp i32 %97 to double
  %99 = fcmp olt double %93, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @trap_EA_Gesture(i32 %103)
  br label %105

105:                                              ; preds = %100, %92
  br label %106

106:                                              ; preds = %105, %81
  %107 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %108 = call i64 @BotFindEnemy(%struct.TYPE_37__* %107, i32 -1)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %112 = call i64 @BotWantsToRetreat(%struct.TYPE_37__* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %116 = call i32 @AIEnter_Battle_Retreat(%struct.TYPE_37__* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @qfalse, align 4
  store i32 %117, i32* %2, align 4
  br label %370

118:                                              ; preds = %110
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @trap_BotResetLastAvoidReach(i32 %121)
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @trap_BotEmptyGoalStack(i32 %125)
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %128 = call i32 @AIEnter_Battle_Fight(%struct.TYPE_37__* %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* @qfalse, align 4
  store i32 %129, i32* %2, align 4
  br label %370

130:                                              ; preds = %106
  %131 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %132 = load i32, i32* @qfalse, align 4
  %133 = call i32 @BotTeamGoals(%struct.TYPE_37__* %131, i32 %132)
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %135 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @qfalse, align 4
  %139 = call i32 @BotLongTermGoal(%struct.TYPE_37__* %134, i32 %137, i32 %138, i32* %4)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %130
  %142 = load i32, i32* @qtrue, align 4
  store i32 %142, i32* %2, align 4
  br label %370

143:                                              ; preds = %130
  %144 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (...) @FloatTime()
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %192

149:                                              ; preds = %143
  %150 = call i32 (...) @FloatTime()
  %151 = sitofp i32 %150 to double
  %152 = fadd double %151, 5.000000e-01
  %153 = fptosi double %152 to i32
  %154 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %157 = call i32 @BotWantsToCamp(%struct.TYPE_37__* %156)
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @LTG_DEFENDKEYAREA, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  store i32 400, i32* %8, align 4
  br label %165

164:                                              ; preds = %149
  store i32 150, i32* %8, align 4
  br label %165

165:                                              ; preds = %164, %163
  %166 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %167 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i64 @BotNearbyGoal(%struct.TYPE_37__* %166, i32 %169, i32* %4, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %191

173:                                              ; preds = %165
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @trap_BotResetLastAvoidReach(i32 %176)
  %178 = call i32 (...) @FloatTime()
  %179 = add nsw i32 %178, 4
  %180 = sitofp i32 %179 to double
  %181 = load i32, i32* %8, align 4
  %182 = sitofp i32 %181 to double
  %183 = fmul double %182, 1.000000e-02
  %184 = fadd double %180, %183
  %185 = fptosi double %184 to i32
  %186 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 8
  %188 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %189 = call i32 @AIEnter_Seek_NBG(%struct.TYPE_37__* %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %190 = load i32, i32* @qfalse, align 4
  store i32 %190, i32* %2, align 4
  br label %370

191:                                              ; preds = %165
  br label %192

192:                                              ; preds = %191, %143
  %193 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %194 = call i64 @BotAIPredictObstacles(%struct.TYPE_37__* %193, i32* %4)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @qfalse, align 4
  store i32 %197, i32* %2, align 4
  br label %370

198:                                              ; preds = %192
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %200 = call i32 @BotSetupForMovement(%struct.TYPE_37__* %199)
  %201 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %201, i32 0, i32 11
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @trap_BotMoveToGoal(%struct.TYPE_38__* %7, i32 %203, i32* %4, i32 %206)
  %208 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %198
  %212 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %212, i32 0, i32 11
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @trap_BotResetAvoidReach(i32 %214)
  %216 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %216, i32 0, i32 12
  store i64 0, i64* %217, align 8
  br label %218

218:                                              ; preds = %211, %198
  %219 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %220 = load i32, i32* @qtrue, align 4
  %221 = call i32 @BotAIBlocked(%struct.TYPE_37__* %219, %struct.TYPE_38__* %7, i32 %220)
  %222 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %223 = call i32 @BotClearPath(%struct.TYPE_37__* %222, %struct.TYPE_38__* %7)
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %227 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %230 = or i32 %228, %229
  %231 = and i32 %225, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %218
  %234 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 7
  %238 = load double*, double** %237, align 8
  %239 = call i32 @VectorCopy(i32 %235, double* %238)
  br label %357

240:                                              ; preds = %218
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @MOVERESULT_WAITING, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %276

246:                                              ; preds = %240
  %247 = call double (...) @random()
  %248 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = sitofp i32 %250 to double
  %252 = fmul double %251, 8.000000e-01
  %253 = fcmp olt double %247, %252
  br i1 %253, label %254, label %275

254:                                              ; preds = %246
  %255 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %256 = load i32, i32* %5, align 4
  %257 = call i32 @BotRoamGoal(%struct.TYPE_37__* %255, i32 %256)
  %258 = load i32, i32* %5, align 4
  %259 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %259, i32 0, i32 10
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @VectorSubtract(i32 %258, i32 %261, i32 %262)
  %264 = load i32, i32* %6, align 4
  %265 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %265, i32 0, i32 7
  %267 = load double*, double** %266, align 8
  %268 = call i32 @vectoangles(i32 %264, double* %267)
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %269, i32 0, i32 7
  %271 = load double*, double** %270, align 8
  %272 = getelementptr inbounds double, double* %271, i64 2
  %273 = load double, double* %272, align 8
  %274 = fmul double %273, 5.000000e-01
  store double %274, double* %272, align 8
  br label %275

275:                                              ; preds = %254, %246
  br label %356

276:                                              ; preds = %240
  %277 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %277, i32 0, i32 8
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %355, label %283

283:                                              ; preds = %276
  %284 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %284, i32 0, i32 11
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = call i64 @trap_BotMovementViewTarget(i32 %286, i32* %4, i32 %289, i32 300, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %305

293:                                              ; preds = %283
  %294 = load i32, i32* %5, align 4
  %295 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %295, i32 0, i32 10
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @VectorSubtract(i32 %294, i32 %297, i32 %298)
  %300 = load i32, i32* %6, align 4
  %301 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %301, i32 0, i32 7
  %303 = load double*, double** %302, align 8
  %304 = call i32 @vectoangles(i32 %300, double* %303)
  br label %348

305:                                              ; preds = %283
  %306 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i64 @VectorLengthSquared(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %313, i32 0, i32 7
  %315 = load double*, double** %314, align 8
  %316 = call i32 @vectoangles(i32 %312, double* %315)
  br label %347

317:                                              ; preds = %305
  %318 = call double (...) @random()
  %319 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = sitofp i32 %321 to double
  %323 = fmul double %322, 8.000000e-01
  %324 = fcmp olt double %318, %323
  br i1 %324, label %325, label %346

325:                                              ; preds = %317
  %326 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %327 = load i32, i32* %5, align 4
  %328 = call i32 @BotRoamGoal(%struct.TYPE_37__* %326, i32 %327)
  %329 = load i32, i32* %5, align 4
  %330 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %330, i32 0, i32 10
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* %6, align 4
  %334 = call i32 @VectorSubtract(i32 %329, i32 %332, i32 %333)
  %335 = load i32, i32* %6, align 4
  %336 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %336, i32 0, i32 7
  %338 = load double*, double** %337, align 8
  %339 = call i32 @vectoangles(i32 %335, double* %338)
  %340 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %340, i32 0, i32 7
  %342 = load double*, double** %341, align 8
  %343 = getelementptr inbounds double, double* %342, i64 2
  %344 = load double, double* %343, align 8
  %345 = fmul double %344, 5.000000e-01
  store double %345, double* %343, align 8
  br label %346

346:                                              ; preds = %325, %317
  br label %347

347:                                              ; preds = %346, %310
  br label %348

348:                                              ; preds = %347, %293
  %349 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %350 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %349, i32 0, i32 7
  %351 = load double*, double** %350, align 8
  %352 = getelementptr inbounds double, double* %351, i64 2
  %353 = load double, double* %352, align 8
  %354 = fmul double %353, 5.000000e-01
  store double %354, double* %352, align 8
  br label %355

355:                                              ; preds = %348, %276
  br label %356

356:                                              ; preds = %355, %275
  br label %357

357:                                              ; preds = %356, %233
  %358 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %361 = and i32 %359, %360
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %357
  %364 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %7, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_37__*, %struct.TYPE_37__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %366, i32 0, i32 9
  store i32 %365, i32* %367, align 4
  br label %368

368:                                              ; preds = %363, %357
  %369 = load i32, i32* @qtrue, align 4
  store i32 %369, i32* %2, align 4
  br label %370

370:                                              ; preds = %368, %196, %173, %141, %118, %114, %36, %28, %20, %12
  %371 = load i32, i32* %2, align 4
  ret i32 %371
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_37__*) #1

declare dso_local i32 @AIEnter_Observer(%struct.TYPE_37__*, i8*) #1

declare dso_local i64 @BotIntermission(%struct.TYPE_37__*) #1

declare dso_local i32 @AIEnter_Intermission(%struct.TYPE_37__*, i8*) #1

declare dso_local i64 @BotIsDead(%struct.TYPE_37__*) #1

declare dso_local i32 @AIEnter_Respawn(%struct.TYPE_37__*, i8*) #1

declare dso_local i64 @BotChat_Random(%struct.TYPE_37__*) #1

declare dso_local i32 @FloatTime(...) #1

declare dso_local i64 @BotChatTime(%struct.TYPE_37__*) #1

declare dso_local i32 @AIEnter_Stand(%struct.TYPE_37__*, i8*) #1

declare dso_local i64 @BotInLavaOrSlime(%struct.TYPE_37__*) #1

declare dso_local i64 @BotCanAndWantsToRocketJump(%struct.TYPE_37__*) #1

declare dso_local i32 @BotMapScripts(%struct.TYPE_37__*) #1

declare dso_local double @random(...) #1

declare dso_local i32 @trap_EA_Gesture(i32) #1

declare dso_local i64 @BotFindEnemy(%struct.TYPE_37__*, i32) #1

declare dso_local i64 @BotWantsToRetreat(%struct.TYPE_37__*) #1

declare dso_local i32 @AIEnter_Battle_Retreat(%struct.TYPE_37__*, i8*) #1

declare dso_local i32 @trap_BotResetLastAvoidReach(i32) #1

declare dso_local i32 @trap_BotEmptyGoalStack(i32) #1

declare dso_local i32 @AIEnter_Battle_Fight(%struct.TYPE_37__*, i8*) #1

declare dso_local i32 @BotTeamGoals(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @BotLongTermGoal(%struct.TYPE_37__*, i32, i32, i32*) #1

declare dso_local i32 @BotWantsToCamp(%struct.TYPE_37__*) #1

declare dso_local i64 @BotNearbyGoal(%struct.TYPE_37__*, i32, i32*, i32) #1

declare dso_local i32 @AIEnter_Seek_NBG(%struct.TYPE_37__*, i8*) #1

declare dso_local i64 @BotAIPredictObstacles(%struct.TYPE_37__*, i32*) #1

declare dso_local i32 @BotSetupForMovement(%struct.TYPE_37__*) #1

declare dso_local i32 @trap_BotMoveToGoal(%struct.TYPE_38__*, i32, i32*, i32) #1

declare dso_local i32 @trap_BotResetAvoidReach(i32) #1

declare dso_local i32 @BotAIBlocked(%struct.TYPE_37__*, %struct.TYPE_38__*, i32) #1

declare dso_local i32 @BotClearPath(%struct.TYPE_37__*, %struct.TYPE_38__*) #1

declare dso_local i32 @VectorCopy(i32, double*) #1

declare dso_local i32 @BotRoamGoal(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @vectoangles(i32, double*) #1

declare dso_local i64 @trap_BotMovementViewTarget(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @VectorLengthSquared(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
