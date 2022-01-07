; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Seek_ActivateEntity.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_AINode_Seek_ActivateEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i64 }
%struct.TYPE_45__ = type { i32, i32, double*, double, i32, i32, i32, i32, i32, %struct.TYPE_43__*, i32, i32, i32, %struct.TYPE_42__, i32 }
%struct.TYPE_43__ = type { double*, i32, i64, i64, i32, %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_46__ = type { i32, double*, i32, double*, i64 }
%struct.TYPE_44__ = type { double, i64 }
%struct.TYPE_48__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"active entity: observer\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"activate entity: intermission\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"activate entity: bot dead\00", align 1
@TFL_DEFAULT = common dso_local global i32 0, align 4
@bot_grapple = common dso_local global %struct.TYPE_41__ zeroinitializer, align 8
@TFL_GRAPPLEHOOK = common dso_local global i32 0, align 4
@TFL_LAVA = common dso_local global i32 0, align 4
@TFL_SLIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"activate entity: no goal\00", align 1
@MASK_SHOT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"activate entity: time out\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"activate entity: activated\00", align 1
@MOVERESULT_MOVEMENTVIEW = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTWEAPON = common dso_local global i32 0, align 4
@MOVERESULT_MOVEMENTVIEWSET = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@MOVERESULT_WAITING = common dso_local global i32 0, align 4
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"activate entity: found enemy\00", align 1
@PRT_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AINode_Seek_ActivateEntity(%struct.TYPE_45__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_45__*, align 8
  %4 = alloca %struct.TYPE_47__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.TYPE_46__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_44__, align 8
  %11 = alloca %struct.TYPE_48__, align 4
  store %struct.TYPE_45__* %0, %struct.TYPE_45__** %3, align 8
  %12 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %13 = call i64 @BotIsObserver(%struct.TYPE_45__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %17 = call i32 @BotClearActivateGoalStack(%struct.TYPE_45__* %16)
  %18 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %19 = call i32 @AIEnter_Observer(%struct.TYPE_45__* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* %2, align 4
  br label %503

21:                                               ; preds = %1
  %22 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %23 = call i64 @BotIntermission(%struct.TYPE_45__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %27 = call i32 @BotClearActivateGoalStack(%struct.TYPE_45__* %26)
  %28 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %29 = call i32 @AIEnter_Intermission(%struct.TYPE_45__* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %2, align 4
  br label %503

31:                                               ; preds = %21
  %32 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %33 = call i64 @BotIsDead(%struct.TYPE_45__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %37 = call i32 @BotClearActivateGoalStack(%struct.TYPE_45__* %36)
  %38 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %39 = call i32 @AIEnter_Respawn(%struct.TYPE_45__* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @qfalse, align 4
  store i32 %40, i32* %2, align 4
  br label %503

41:                                               ; preds = %31
  %42 = load i32, i32* @TFL_DEFAULT, align 4
  %43 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @bot_grapple, i32 0, i32 0), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @TFL_GRAPPLEHOOK, align 4
  %49 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %55 = call i64 @BotInLavaOrSlime(%struct.TYPE_45__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* @TFL_LAVA, align 4
  %59 = load i32, i32* @TFL_SLIME, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %57, %53
  %66 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %67 = call i32 @BotMapScripts(%struct.TYPE_45__* %66)
  %68 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  %70 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %70, i32 0, i32 9
  %72 = load %struct.TYPE_43__*, %struct.TYPE_43__** %71, align 8
  %73 = icmp ne %struct.TYPE_43__* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %76 = call i32 @BotClearActivateGoalStack(%struct.TYPE_45__* %75)
  %77 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %78 = call i32 @AIEnter_Seek_NBG(%struct.TYPE_45__* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @qfalse, align 4
  store i32 %79, i32* %2, align 4
  br label %503

80:                                               ; preds = %65
  %81 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %81, i32 0, i32 9
  %83 = load %struct.TYPE_43__*, %struct.TYPE_43__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %83, i32 0, i32 5
  store %struct.TYPE_47__* %84, %struct.TYPE_47__** %4, align 8
  %85 = load i32, i32* @qfalse, align 4
  store i32 %85, i32* %9, align 4
  %86 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %86, i32 0, i32 9
  %88 = load %struct.TYPE_43__*, %struct.TYPE_43__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %156

92:                                               ; preds = %80
  %93 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %96, i32 0, i32 9
  %98 = load %struct.TYPE_43__*, %struct.TYPE_43__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %98, i32 0, i32 0
  %100 = load double*, double** %99, align 8
  %101 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MASK_SHOT, align 4
  %105 = call i32 @BotAI_Trace(%struct.TYPE_44__* %10, i32 %95, i32* null, i32* null, double* %100, i32 %103, i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %10, i32 0, i32 0
  %107 = load double, double* %106, align 8
  %108 = fcmp oge double %107, 1.000000e+00
  br i1 %108, label %116, label %109

109:                                              ; preds = %92
  %110 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %10, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %155

116:                                              ; preds = %109, %92
  %117 = load i32, i32* @qtrue, align 4
  store i32 %117, i32* %9, align 4
  %118 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %118, i32 0, i32 13
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %122, i32 0, i32 9
  %124 = load %struct.TYPE_43__*, %struct.TYPE_43__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %121, %126
  br i1 %127, label %128, label %154

128:                                              ; preds = %116
  %129 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %129, i32 0, i32 9
  %131 = load %struct.TYPE_43__*, %struct.TYPE_43__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %131, i32 0, i32 0
  %133 = load double*, double** %132, align 8
  %134 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = load double*, double** %6, align 8
  %138 = call i32 @VectorSubtract(double* %133, i32 %136, double* %137)
  %139 = load double*, double** %6, align 8
  %140 = load double*, double** %7, align 8
  %141 = call i32 @vectoangles(double* %139, double* %140)
  %142 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %142, i32 0, i32 12
  %144 = load i32, i32* %143, align 8
  %145 = load double*, double** %7, align 8
  %146 = call i64 @InFieldOfVision(i32 %144, i32 20, double* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %128
  %149 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %149, i32 0, i32 11
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @trap_EA_Attack(i32 %151)
  br label %153

153:                                              ; preds = %148, %128
  br label %154

154:                                              ; preds = %153, %116
  br label %155

155:                                              ; preds = %154, %109
  br label %156

156:                                              ; preds = %155, %80
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %207

159:                                              ; preds = %156
  %160 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @BotEntityInfo(i64 %162, %struct.TYPE_48__* %11)
  %164 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %164, i32 0, i32 9
  %166 = load %struct.TYPE_43__*, %struct.TYPE_43__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %11, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @VectorCompare(i32 %168, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %159
  %174 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %174, i32 0, i32 9
  %176 = load %struct.TYPE_43__*, %struct.TYPE_43__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %176, i32 0, i32 2
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %173, %159
  %179 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %179, i32 0, i32 9
  %181 = load %struct.TYPE_43__*, %struct.TYPE_43__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call i64 (...) @FloatTime()
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %178
  %187 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %188 = call i32 @BotPopFromActivateGoalStack(%struct.TYPE_45__* %187)
  %189 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %189, i32 0, i32 9
  %191 = load %struct.TYPE_43__*, %struct.TYPE_43__** %190, align 8
  %192 = icmp ne %struct.TYPE_43__* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = call i64 (...) @FloatTime()
  %195 = add nsw i64 %194, 10
  %196 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %196, i32 0, i32 9
  %198 = load %struct.TYPE_43__*, %struct.TYPE_43__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %198, i32 0, i32 2
  store i64 %195, i64* %199, align 8
  %200 = load i32, i32* @qfalse, align 4
  store i32 %200, i32* %2, align 4
  br label %503

201:                                              ; preds = %186
  %202 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %203 = call i32 @AIEnter_Seek_NBG(%struct.TYPE_45__* %202, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %204 = load i32, i32* @qfalse, align 4
  store i32 %204, i32* %2, align 4
  br label %503

205:                                              ; preds = %178
  %206 = call i32 @memset(%struct.TYPE_46__* %8, i32 0, i32 40)
  br label %297

207:                                              ; preds = %156
  %208 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %209 = icmp ne %struct.TYPE_47__* %208, null
  br i1 %209, label %215, label %210

210:                                              ; preds = %207
  %211 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %211, i32 0, i32 9
  %213 = load %struct.TYPE_43__*, %struct.TYPE_43__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %213, i32 0, i32 2
  store i64 0, i64* %214, align 8
  br label %236

215:                                              ; preds = %207
  %216 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %216, i32 0, i32 9
  %218 = load %struct.TYPE_43__*, %struct.TYPE_43__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %235, label %222

222:                                              ; preds = %215
  %223 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %227 = call i64 @trap_BotTouchingGoal(i32 %225, %struct.TYPE_47__* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %222
  %230 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %230, i32 0, i32 9
  %232 = load %struct.TYPE_43__*, %struct.TYPE_43__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %232, i32 0, i32 2
  store i64 0, i64* %233, align 8
  br label %234

234:                                              ; preds = %229, %222
  br label %235

235:                                              ; preds = %234, %215
  br label %236

236:                                              ; preds = %235, %210
  %237 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %237, i32 0, i32 9
  %239 = load %struct.TYPE_43__*, %struct.TYPE_43__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = call i64 (...) @FloatTime()
  %243 = icmp slt i64 %241, %242
  br i1 %243, label %244, label %263

244:                                              ; preds = %236
  %245 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %246 = call i32 @BotPopFromActivateGoalStack(%struct.TYPE_45__* %245)
  %247 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %247, i32 0, i32 9
  %249 = load %struct.TYPE_43__*, %struct.TYPE_43__** %248, align 8
  %250 = icmp ne %struct.TYPE_43__* %249, null
  br i1 %250, label %251, label %259

251:                                              ; preds = %244
  %252 = call i64 (...) @FloatTime()
  %253 = add nsw i64 %252, 10
  %254 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %254, i32 0, i32 9
  %256 = load %struct.TYPE_43__*, %struct.TYPE_43__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %256, i32 0, i32 2
  store i64 %253, i64* %257, align 8
  %258 = load i32, i32* @qfalse, align 4
  store i32 %258, i32* %2, align 4
  br label %503

259:                                              ; preds = %244
  %260 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %261 = call i32 @AIEnter_Seek_NBG(%struct.TYPE_45__* %260, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %262 = load i32, i32* @qfalse, align 4
  store i32 %262, i32* %2, align 4
  br label %503

263:                                              ; preds = %236
  %264 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %265 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %266 = call i64 @BotAIPredictObstacles(%struct.TYPE_45__* %264, %struct.TYPE_47__* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = load i32, i32* @qfalse, align 4
  store i32 %269, i32* %2, align 4
  br label %503

270:                                              ; preds = %263
  %271 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %272 = call i32 @BotSetupForMovement(%struct.TYPE_45__* %271)
  %273 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %277 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @trap_BotMoveToGoal(%struct.TYPE_46__* %8, i32 %275, %struct.TYPE_47__* %276, i32 %279)
  %281 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %270
  %285 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %285, i32 0, i32 7
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @trap_BotResetAvoidReach(i32 %287)
  %289 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %289, i32 0, i32 9
  %291 = load %struct.TYPE_43__*, %struct.TYPE_43__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %291, i32 0, i32 2
  store i64 0, i64* %292, align 8
  br label %293

293:                                              ; preds = %284, %270
  %294 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %295 = load i32, i32* @qtrue, align 4
  %296 = call i32 @BotAIBlocked(%struct.TYPE_45__* %294, %struct.TYPE_46__* %8, i32 %295)
  br label %297

297:                                              ; preds = %293, %205
  %298 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %299 = call i32 @BotClearPath(%struct.TYPE_45__* %298, %struct.TYPE_46__* %8)
  %300 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %300, i32 0, i32 9
  %302 = load %struct.TYPE_43__*, %struct.TYPE_43__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %367

306:                                              ; preds = %297
  %307 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %331, label %312

312:                                              ; preds = %306
  %313 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %313, i32 0, i32 9
  %315 = load %struct.TYPE_43__*, %struct.TYPE_43__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %315, i32 0, i32 0
  %317 = load double*, double** %316, align 8
  %318 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %318, i32 0, i32 10
  %320 = load i32, i32* %319, align 8
  %321 = load double*, double** %6, align 8
  %322 = call i32 @VectorSubtract(double* %317, i32 %320, double* %321)
  %323 = load double*, double** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 1
  %325 = load double*, double** %324, align 8
  %326 = call i32 @vectoangles(double* %323, double* %325)
  %327 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %328 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %327
  store i32 %330, i32* %328, align 8
  br label %331

331:                                              ; preds = %312, %306
  %332 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %366, label %337

337:                                              ; preds = %331
  %338 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %339 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %338
  store i32 %341, i32* %339, align 8
  %342 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %343 = call i32 @BotSelectActivateWeapon(%struct.TYPE_45__* %342)
  %344 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %344, i32 0, i32 9
  %346 = load %struct.TYPE_43__*, %struct.TYPE_43__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %346, i32 0, i32 1
  store i32 %343, i32* %347, align 8
  %348 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %348, i32 0, i32 9
  %350 = load %struct.TYPE_43__*, %struct.TYPE_43__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %354, label %359

354:                                              ; preds = %337
  %355 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %355, i32 0, i32 9
  %357 = load %struct.TYPE_43__*, %struct.TYPE_43__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %357, i32 0, i32 1
  store i32 0, i32* %358, align 8
  br label %359

359:                                              ; preds = %354, %337
  %360 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %360, i32 0, i32 9
  %362 = load %struct.TYPE_43__*, %struct.TYPE_43__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 2
  store i32 %364, i32* %365, align 8
  br label %366

366:                                              ; preds = %359, %331
  br label %367

367:                                              ; preds = %366, %297
  %368 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @MOVERESULT_MOVEMENTVIEWSET, align 4
  %371 = load i32, i32* @MOVERESULT_MOVEMENTVIEW, align 4
  %372 = or i32 %370, %371
  %373 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %374 = or i32 %372, %373
  %375 = and i32 %369, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %367
  %378 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 1
  %379 = load double*, double** %378, align 8
  %380 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %380, i32 0, i32 2
  %382 = load double*, double** %381, align 8
  %383 = call i32 @VectorCopy(double* %379, double* %382)
  br label %465

384:                                              ; preds = %367
  %385 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @MOVERESULT_WAITING, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %419

390:                                              ; preds = %384
  %391 = call double (...) @random()
  %392 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %392, i32 0, i32 3
  %394 = load double, double* %393, align 8
  %395 = fmul double %394, 8.000000e-01
  %396 = fcmp olt double %391, %395
  br i1 %396, label %397, label %418

397:                                              ; preds = %390
  %398 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %399 = load double*, double** %5, align 8
  %400 = call i32 @BotRoamGoal(%struct.TYPE_45__* %398, double* %399)
  %401 = load double*, double** %5, align 8
  %402 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %402, i32 0, i32 8
  %404 = load i32, i32* %403, align 8
  %405 = load double*, double** %6, align 8
  %406 = call i32 @VectorSubtract(double* %401, i32 %404, double* %405)
  %407 = load double*, double** %6, align 8
  %408 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %408, i32 0, i32 2
  %410 = load double*, double** %409, align 8
  %411 = call i32 @vectoangles(double* %407, double* %410)
  %412 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %412, i32 0, i32 2
  %414 = load double*, double** %413, align 8
  %415 = getelementptr inbounds double, double* %414, i64 2
  %416 = load double, double* %415, align 8
  %417 = fmul double %416, 5.000000e-01
  store double %417, double* %415, align 8
  br label %418

418:                                              ; preds = %397, %390
  br label %464

419:                                              ; preds = %384
  %420 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %463, label %426

426:                                              ; preds = %419
  %427 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %428 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %427, i32 0, i32 7
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_47__*, %struct.TYPE_47__** %4, align 8
  %431 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = load double*, double** %5, align 8
  %435 = call i64 @trap_BotMovementViewTarget(i32 %429, %struct.TYPE_47__* %430, i32 %433, i32 300, double* %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %449

437:                                              ; preds = %426
  %438 = load double*, double** %5, align 8
  %439 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %439, i32 0, i32 8
  %441 = load i32, i32* %440, align 8
  %442 = load double*, double** %6, align 8
  %443 = call i32 @VectorSubtract(double* %438, i32 %441, double* %442)
  %444 = load double*, double** %6, align 8
  %445 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %445, i32 0, i32 2
  %447 = load double*, double** %446, align 8
  %448 = call i32 @vectoangles(double* %444, double* %447)
  br label %456

449:                                              ; preds = %426
  %450 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 3
  %451 = load double*, double** %450, align 8
  %452 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %452, i32 0, i32 2
  %454 = load double*, double** %453, align 8
  %455 = call i32 @vectoangles(double* %451, double* %454)
  br label %456

456:                                              ; preds = %449, %437
  %457 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %458 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %457, i32 0, i32 2
  %459 = load double*, double** %458, align 8
  %460 = getelementptr inbounds double, double* %459, i64 2
  %461 = load double, double* %460, align 8
  %462 = fmul double %461, 5.000000e-01
  store double %462, double* %460, align 8
  br label %463

463:                                              ; preds = %456, %419
  br label %464

464:                                              ; preds = %463, %418
  br label %465

465:                                              ; preds = %464, %377
  %466 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* @MOVERESULT_MOVEMENTWEAPON, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %474, i32 0, i32 5
  store i32 %473, i32* %475, align 4
  br label %476

476:                                              ; preds = %471, %465
  %477 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %478 = call i64 @BotFindEnemy(%struct.TYPE_45__* %477, i32 -1)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %501

480:                                              ; preds = %476
  %481 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %482 = call i64 @BotWantsToRetreat(%struct.TYPE_45__* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %480
  %485 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %486 = call i32 @AIEnter_Battle_NBG(%struct.TYPE_45__* %485, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %498

487:                                              ; preds = %480
  %488 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %488, i32 0, i32 7
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @trap_BotResetLastAvoidReach(i32 %490)
  %492 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %492, i32 0, i32 6
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @trap_BotEmptyGoalStack(i32 %494)
  %496 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %497 = call i32 @AIEnter_Battle_Fight(%struct.TYPE_45__* %496, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %498

498:                                              ; preds = %487, %484
  %499 = load %struct.TYPE_45__*, %struct.TYPE_45__** %3, align 8
  %500 = call i32 @BotClearActivateGoalStack(%struct.TYPE_45__* %499)
  br label %501

501:                                              ; preds = %498, %476
  %502 = load i32, i32* @qtrue, align 4
  store i32 %502, i32* %2, align 4
  br label %503

503:                                              ; preds = %501, %268, %259, %251, %201, %193, %74, %35, %25, %15
  %504 = load i32, i32* %2, align 4
  ret i32 %504
}

declare dso_local i64 @BotIsObserver(%struct.TYPE_45__*) #1

declare dso_local i32 @BotClearActivateGoalStack(%struct.TYPE_45__*) #1

declare dso_local i32 @AIEnter_Observer(%struct.TYPE_45__*, i8*) #1

declare dso_local i64 @BotIntermission(%struct.TYPE_45__*) #1

declare dso_local i32 @AIEnter_Intermission(%struct.TYPE_45__*, i8*) #1

declare dso_local i64 @BotIsDead(%struct.TYPE_45__*) #1

declare dso_local i32 @AIEnter_Respawn(%struct.TYPE_45__*, i8*) #1

declare dso_local i64 @BotInLavaOrSlime(%struct.TYPE_45__*) #1

declare dso_local i32 @BotMapScripts(%struct.TYPE_45__*) #1

declare dso_local i32 @AIEnter_Seek_NBG(%struct.TYPE_45__*, i8*) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_44__*, i32, i32*, i32*, double*, i32, i32) #1

declare dso_local i32 @VectorSubtract(double*, i32, double*) #1

declare dso_local i32 @vectoangles(double*, double*) #1

declare dso_local i64 @InFieldOfVision(i32, i32, double*) #1

declare dso_local i32 @trap_EA_Attack(i32) #1

declare dso_local i32 @BotEntityInfo(i64, %struct.TYPE_48__*) #1

declare dso_local i32 @VectorCompare(i32, i32) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local i32 @BotPopFromActivateGoalStack(%struct.TYPE_45__*) #1

declare dso_local i32 @memset(%struct.TYPE_46__*, i32, i32) #1

declare dso_local i64 @trap_BotTouchingGoal(i32, %struct.TYPE_47__*) #1

declare dso_local i64 @BotAIPredictObstacles(%struct.TYPE_45__*, %struct.TYPE_47__*) #1

declare dso_local i32 @BotSetupForMovement(%struct.TYPE_45__*) #1

declare dso_local i32 @trap_BotMoveToGoal(%struct.TYPE_46__*, i32, %struct.TYPE_47__*, i32) #1

declare dso_local i32 @trap_BotResetAvoidReach(i32) #1

declare dso_local i32 @BotAIBlocked(%struct.TYPE_45__*, %struct.TYPE_46__*, i32) #1

declare dso_local i32 @BotClearPath(%struct.TYPE_45__*, %struct.TYPE_46__*) #1

declare dso_local i32 @BotSelectActivateWeapon(%struct.TYPE_45__*) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local double @random(...) #1

declare dso_local i32 @BotRoamGoal(%struct.TYPE_45__*, double*) #1

declare dso_local i64 @trap_BotMovementViewTarget(i32, %struct.TYPE_47__*, i32, i32, double*) #1

declare dso_local i64 @BotFindEnemy(%struct.TYPE_45__*, i32) #1

declare dso_local i64 @BotWantsToRetreat(%struct.TYPE_45__*) #1

declare dso_local i32 @AIEnter_Battle_NBG(%struct.TYPE_45__*, i8*) #1

declare dso_local i32 @trap_BotResetLastAvoidReach(i32) #1

declare dso_local i32 @trap_BotEmptyGoalStack(i32) #1

declare dso_local i32 @AIEnter_Battle_Fight(%struct.TYPE_45__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
