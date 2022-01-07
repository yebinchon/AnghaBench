; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Battle_Chase.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Battle_Chase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64 }
%struct.TYPE_32__ = type { i64, i64, i32, i32, i32, double, double*, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i64, i64, double*, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"battle chase: observer\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"battle chase: intermission\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"battle chase: bot dead\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"battle chase: no enemy\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"battle chase\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"battle chase: better enemy\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"battle chase: no enemy area\00", align 1
@TFL_DEFAULT = common dso_local global i32 0, align 4
@bot_grapple = common dso_local global %struct.TYPE_35__ zeroinitializer, align 8
@TFL_GRAPPLEHOOK = common dso_local global i32 0, align 4
@TFL_LAVA = common dso_local global i32 0, align 4
@TFL_SLIME = common dso_local global i32 0, align 4
@TFL_ROCKETJUMP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"battle chase: time out\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"battle chase: nbg\00", align 1
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"battle chase: wants to retreat\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AINode_Battle_Chase(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_34__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_33__, align 8
  %8 = alloca float, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %9 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %10 = call i64 @BotIsObserver(%struct.TYPE_32__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %14 = call i32 @AIEnter_Observer(%struct.TYPE_32__* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @qfalse, align 4
  store i32 %15, i32* %2, align 4
  br label %326

16:                                               ; preds = %1
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %18 = call i64 @BotIntermission(%struct.TYPE_32__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %22 = call i32 @AIEnter_Intermission(%struct.TYPE_32__* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @qfalse, align 4
  store i32 %23, i32* %2, align 4
  br label %326

24:                                               ; preds = %16
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %26 = call i64 @BotIsDead(%struct.TYPE_32__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %30 = call i32 @AIEnter_Respawn(%struct.TYPE_32__* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %2, align 4
  br label %326

32:                                               ; preds = %24
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %39 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_32__* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @qfalse, align 4
  store i32 %40, i32* %2, align 4
  br label %326

41:                                               ; preds = %32
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 16
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @BotEntityVisible(i32 %44, i32 %47, i32 %50, i32 360, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %58 = call i32 @AIEnter_Battle_Fight(%struct.TYPE_32__* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %2, align 4
  br label %326

60:                                               ; preds = %41
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %62 = call i64 @BotFindEnemy(%struct.TYPE_32__* %61, i32 -1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %66 = call i32 @AIEnter_Battle_Fight(%struct.TYPE_32__* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @qfalse, align 4
  store i32 %67, i32* %2, align 4
  br label %326

68:                                               ; preds = %60
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %75 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_32__* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %76 = load i32, i32* @qfalse, align 4
  store i32 %76, i32* %2, align 4
  br label %326

77:                                               ; preds = %68
  %78 = load i32, i32* @TFL_DEFAULT, align 4
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @bot_grapple, i32 0, i32 0), align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32, i32* @TFL_GRAPPLEHOOK, align 4
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %91 = call i64 @BotInLavaOrSlime(%struct.TYPE_32__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32, i32* @TFL_LAVA, align 4
  %95 = load i32, i32* @TFL_SLIME, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %93, %89
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %103 = call i64 @BotCanAndWantsToRocketJump(%struct.TYPE_32__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* @TFL_ROCKETJUMP, align 4
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %101
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %113 = call i32 @BotMapScripts(%struct.TYPE_32__* %112)
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %4, i32 0, i32 0
  store i64 %116, i64* %117, align 8
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %4, i32 0, i32 1
  store i64 %120, i64* %121, align 8
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %4, i32 0, i32 2
  %126 = load double*, double** %125, align 8
  %127 = call i32 @VectorCopy(i32 %124, double* %126)
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %4, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @VectorSet(i32 %129, i32 -8, i32 -8, i32 -8)
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %4, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @VectorSet(i32 %132, i32 8, i32 8, i32 8)
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @trap_BotTouchingGoal(i32 %136, %struct.TYPE_34__* %4)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %111
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 3
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %111
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (...) @FloatTime()
  %152 = sub nsw i32 %151, 10
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %147, %142
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %156 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_32__* %155, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %157 = load i32, i32* @qfalse, align 4
  store i32 %157, i32* %2, align 4
  br label %326

158:                                              ; preds = %147
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (...) @FloatTime()
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %194

164:                                              ; preds = %158
  %165 = call i32 (...) @FloatTime()
  %166 = add nsw i32 %165, 1
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  store float 1.500000e+02, float* %8, align 4
  %169 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load float, float* %8, align 4
  %174 = call i64 @BotNearbyGoal(%struct.TYPE_32__* %169, i32 %172, %struct.TYPE_34__* %4, float %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %164
  %177 = call i32 (...) @FloatTime()
  %178 = sitofp i32 %177 to double
  %179 = load float, float* %8, align 4
  %180 = fpext float %179 to double
  %181 = fmul double 1.000000e-01, %180
  %182 = fadd double %178, %181
  %183 = fadd double %182, 1.000000e+00
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %184, i32 0, i32 5
  store double %183, double* %185, align 8
  %186 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %186, i32 0, i32 11
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @trap_BotResetLastAvoidReach(i32 %188)
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %191 = call i32 @AIEnter_Battle_NBG(%struct.TYPE_32__* %190, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %192 = load i32, i32* @qfalse, align 4
  store i32 %192, i32* %2, align 4
  br label %326

193:                                              ; preds = %164
  br label %194

194:                                              ; preds = %193, %158
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @BotUpdateBattleInventory(%struct.TYPE_32__* %195, i64 %198)
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %201 = call i32 @BotSetupForMovement(%struct.TYPE_32__* %200)
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 0, i32 11
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @trap_BotMoveToGoal(%struct.TYPE_33__* %7, i32 %204, %struct.TYPE_34__* %4, i32 %207)
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %194
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %213, i32 0, i32 11
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @trap_BotResetAvoidReach(i32 %215)
  %217 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %217, i32 0, i32 12
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %212, %194
  %220 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %221 = load i32, i32* @qfalse, align 4
  %222 = call i32 @BotAIBlocked(%struct.TYPE_32__* %220, %struct.TYPE_33__* %7, i32 %221)
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %226 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %229 = or i32 %227, %228
  %230 = and i32 %224, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %219
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %235, i32 0, i32 6
  %237 = load double*, double** %236, align 8
  %238 = call i32 @VectorCopy(i32 %234, double* %237)
  br label %294

239:                                              ; preds = %219
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %293, label %246

246:                                              ; preds = %239
  %247 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (...) @FloatTime()
  %251 = sub nsw i32 %250, 2
  %252 = icmp sgt i32 %249, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %246
  %254 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %255 = call i32 @BotAimAtEnemy(%struct.TYPE_32__* %254)
  br label %286

256:                                              ; preds = %246
  %257 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i32 0, i32 11
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %5, align 4
  %264 = call i64 @trap_BotMovementViewTarget(i32 %259, %struct.TYPE_34__* %4, i32 %262, i32 300, i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %256
  %267 = load i32, i32* %5, align 4
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 10
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @VectorSubtract(i32 %267, i32 %270, i32 %271)
  %273 = load i32, i32* %6, align 4
  %274 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %274, i32 0, i32 6
  %276 = load double*, double** %275, align 8
  %277 = call i32 @vectoangles(i32 %273, double* %276)
  br label %285

278:                                              ; preds = %256
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i32 0, i32 6
  %283 = load double*, double** %282, align 8
  %284 = call i32 @vectoangles(i32 %280, double* %283)
  br label %285

285:                                              ; preds = %278, %266
  br label %286

286:                                              ; preds = %285, %253
  %287 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %287, i32 0, i32 6
  %289 = load double*, double** %288, align 8
  %290 = getelementptr inbounds double, double* %289, i64 2
  %291 = load double, double* %290, align 8
  %292 = fmul double %291, 5.000000e-01
  store double %292, double* %290, align 8
  br label %293

293:                                              ; preds = %286, %239
  br label %294

294:                                              ; preds = %293, %232
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %7, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %303, i32 0, i32 9
  store i32 %302, i32* %304, align 8
  br label %305

305:                                              ; preds = %300, %294
  %306 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %306, i32 0, i32 8
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp eq i64 %308, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %305
  %314 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %314, i32 0, i32 3
  store i32 0, i32* %315, align 4
  br label %316

316:                                              ; preds = %313, %305
  %317 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %318 = call i64 @BotWantsToRetreat(%struct.TYPE_32__* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %316
  %321 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %322 = call i32 @AIEnter_Battle_Retreat(%struct.TYPE_32__* %321, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %323 = load i32, i32* @qtrue, align 4
  store i32 %323, i32* %2, align 4
  br label %326

324:                                              ; preds = %316
  %325 = load i32, i32* @qtrue, align 4
  store i32 %325, i32* %2, align 4
  br label %326

326:                                              ; preds = %324, %320, %176, %154, %73, %64, %56, %37, %28, %20, %12
  %327 = load i32, i32* %2, align 4
  ret i32 %327
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_32__*) #1

declare dso_local i32 @AIEnter_Observer(%struct.TYPE_32__*, i8*) #1

declare dso_local i64 @BotIntermission(%struct.TYPE_32__*) #1

declare dso_local i32 @AIEnter_Intermission(%struct.TYPE_32__*, i8*) #1

declare dso_local i64 @BotIsDead(%struct.TYPE_32__*) #1

declare dso_local i32 @AIEnter_Respawn(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @AIEnter_Seek_LTG(%struct.TYPE_32__*, i8*) #1

declare dso_local i64 @BotEntityVisible(i32, i32, i32, i32, i64) #1

declare dso_local i32 @AIEnter_Battle_Fight(%struct.TYPE_32__*, i8*) #1

declare dso_local i64 @BotFindEnemy(%struct.TYPE_32__*, i32) #1

declare dso_local i64 @BotInLavaOrSlime(%struct.TYPE_32__*) #1

declare dso_local i64 @BotCanAndWantsToRocketJump(%struct.TYPE_32__*) #1

declare dso_local i32 @BotMapScripts(%struct.TYPE_32__*) #1

declare dso_local i32 @VectorCopy(i32, double*) #1

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i64 @trap_BotTouchingGoal(i32, %struct.TYPE_34__*) #1

declare dso_local i32 @FloatTime(...) #1

declare dso_local i64 @BotNearbyGoal(%struct.TYPE_32__*, i32, %struct.TYPE_34__*, float) #1

declare dso_local i32 @trap_BotResetLastAvoidReach(i32) #1

declare dso_local i32 @AIEnter_Battle_NBG(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @BotUpdateBattleInventory(%struct.TYPE_32__*, i64) #1

declare dso_local i32 @BotSetupForMovement(%struct.TYPE_32__*) #1

declare dso_local i32 @trap_BotMoveToGoal(%struct.TYPE_33__*, i32, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @trap_BotResetAvoidReach(i32) #1

declare dso_local i32 @BotAIBlocked(%struct.TYPE_32__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @BotAimAtEnemy(%struct.TYPE_32__*) #1

declare dso_local i64 @trap_BotMovementViewTarget(i32, %struct.TYPE_34__*, i32, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @vectoangles(i32, double*) #1

declare dso_local i64 @BotWantsToRetreat(%struct.TYPE_32__*) #1

declare dso_local i32 @AIEnter_Battle_Retreat(%struct.TYPE_32__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
