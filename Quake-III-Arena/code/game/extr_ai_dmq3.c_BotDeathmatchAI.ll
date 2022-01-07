; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotDeathmatchAI.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotDeathmatchAI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, %struct.TYPE_21__, i32, i32*, i32, i32, i32, i32, i64 (%struct.TYPE_22__*)*, i64, i64, i32, i32, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_20__ = type { i32 }

@MAX_INFO_STRING = common dso_local global i32 0, align 4
@CHARACTERISTIC_GENDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sex\00", align 1
@g_gametype = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"team %s\00", align 1
@CHAT_GENDERMALE = common dso_local global i32 0, align 4
@CHAT_GENDERFEMALE = common dso_local global i32 0, align 4
@CHAT_GENDERLESS = common dso_local global i32 0, align 4
@INVENTORY_HEALTH = common dso_local global i64 0, align 8
@PERS_HITS = common dso_local global i64 0, align 8
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"BotDeathmatchAI: no ai node\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"BotDeathmatchAI: chat enter game\00", align 1
@qtrue = common dso_local global i64 0, align 8
@MAX_NODESWITCHES = common dso_local global i32 0, align 4
@PRT_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"%s at %1.1f switched more than %d AI nodes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotDeathmatchAI(%struct.TYPE_22__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca float, align 4
  %5 = alloca [144 x i8], align 16
  %6 = alloca [144 x i8], align 16
  %7 = alloca [144 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store float %1, float* %4, align 4
  %12 = load i32, i32* @MAX_INFO_STRING, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %131

20:                                               ; preds = %2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  br label %268

30:                                               ; preds = %20
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CHARACTERISTIC_GENDER, align 4
  %35 = getelementptr inbounds [144 x i8], [144 x i8]* %5, i64 0, i64 0
  %36 = call i32 @trap_Characteristic_String(i32 %33, i32 %34, i8* %35, i32 144)
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = trunc i64 %13 to i32
  %41 = call i32 @trap_GetUserinfo(i32 %39, i8* %15, i32 %40)
  %42 = getelementptr inbounds [144 x i8], [144 x i8]* %5, i64 0, i64 0
  %43 = call i32 @Info_SetValueForKey(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @trap_SetUserinfo(i32 %46, i8* %15)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %30
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @g_gametype, i32 0, i32 0), align 8
  %54 = load i64, i64* @GT_TOURNAMENT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 14
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @Com_sprintf(i8* %57, i32 144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [144 x i8], [144 x i8]* %7, i64 0, i64 0
  %67 = call i32 @trap_EA_Command(i32 %65, i8* %66)
  br label %68

68:                                               ; preds = %56, %52, %30
  %69 = getelementptr inbounds [144 x i8], [144 x i8]* %5, i64 0, i64 0
  %70 = load i8, i8* %69, align 16
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 109
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 13
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CHAT_GENDERMALE, align 4
  %78 = call i32 @trap_BotSetChatGender(i32 %76, i32 %77)
  br label %97

79:                                               ; preds = %68
  %80 = getelementptr inbounds [144 x i8], [144 x i8]* %5, i64 0, i64 0
  %81 = load i8, i8* %80, align 16
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 102
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CHAT_GENDERFEMALE, align 4
  %89 = call i32 @trap_BotSetChatGender(i32 %87, i32 %88)
  br label %96

90:                                               ; preds = %79
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 13
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CHAT_GENDERLESS, align 4
  %95 = call i32 @trap_BotSetChatGender(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %84
  br label %97

97:                                               ; preds = %96, %73
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [144 x i8], [144 x i8]* %6, i64 0, i64 0
  %102 = call i32 @ClientName(i32 %100, i8* %101, i32 144)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [144 x i8], [144 x i8]* %6, i64 0, i64 0
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @trap_BotSetChatName(i32 %105, i8* %106, i32 %109)
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @INVENTORY_HEALTH, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @PERS_HITS, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = call i32 (...) @BotSetupAlternativeRouteGoals()
  br label %131

131:                                              ; preds = %97, %2
  %132 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %139 = call i32 @BotIntermission(%struct.TYPE_22__* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %131
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %143 = call i32 @BotSetTeleportTime(%struct.TYPE_22__* %142)
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %145 = call i32 @BotUpdateInventory(%struct.TYPE_22__* %144)
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %147 = call i32 @BotCheckSnapshot(%struct.TYPE_22__* %146)
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = call i32 @BotCheckAir(%struct.TYPE_22__* %148)
  br label %150

150:                                              ; preds = %141, %131
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %152 = call i32 @BotCheckConsoleMessages(%struct.TYPE_22__* %151)
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %154 = call i32 @BotIntermission(%struct.TYPE_22__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %150
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %158 = call i32 @BotIsObserver(%struct.TYPE_22__* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %162 = call i32 @BotTeamAI(%struct.TYPE_22__* %161)
  br label %163

163:                                              ; preds = %160, %156, %150
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 9
  %166 = load i64 (%struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*)** %165, align 8
  %167 = icmp ne i64 (%struct.TYPE_22__*)* %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %170 = call i32 @AIEnter_Seek_LTG(%struct.TYPE_22__* %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %163
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 10
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %201, label %176

176:                                              ; preds = %171
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (...) @FloatTime()
  %181 = sub nsw i32 %180, 8
  %182 = icmp sgt i32 %179, %181
  br i1 %182, label %183, label %201

183:                                              ; preds = %176
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %185 = call i64 @BotChat_EnterGame(%struct.TYPE_22__* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %183
  %188 = call i32 (...) @FloatTime()
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %191 = call i64 @BotChatTime(%struct.TYPE_22__* %190)
  %192 = add nsw i64 %189, %191
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 11
  store i64 %192, i64* %194, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %196 = call i32 @AIEnter_Stand(%struct.TYPE_22__* %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %197

197:                                              ; preds = %187, %183
  %198 = load i64, i64* @qtrue, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 10
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %197, %176, %171
  %202 = call i32 (...) @BotResetNodeSwitches()
  store i32 0, i32* %10, align 4
  br label %203

203:                                              ; preds = %216, %201
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* @MAX_NODESWITCHES, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %219

207:                                              ; preds = %203
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 9
  %210 = load i64 (%struct.TYPE_22__*)*, i64 (%struct.TYPE_22__*)** %209, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %212 = call i64 %210(%struct.TYPE_22__* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  br label %219

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %203

219:                                              ; preds = %214, %203
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 8
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  store i32 1, i32* %11, align 4
  br label %268

225:                                              ; preds = %219
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @MAX_NODESWITCHES, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %250

229:                                              ; preds = %225
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @trap_BotDumpGoalStack(i32 %232)
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @trap_BotDumpAvoidGoals(i32 %236)
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %239 = call i32 @BotDumpNodeSwitches(%struct.TYPE_22__* %238)
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds [144 x i8], [144 x i8]* %6, i64 0, i64 0
  %244 = call i32 @ClientName(i32 %242, i8* %243, i32 144)
  %245 = load i32, i32* @PRT_ERROR, align 4
  %246 = getelementptr inbounds [144 x i8], [144 x i8]* %6, i64 0, i64 0
  %247 = call i32 (...) @FloatTime()
  %248 = load i32, i32* @MAX_NODESWITCHES, align 4
  %249 = call i32 @BotAI_Print(i32 %245, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %229, %225
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 4
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* @INVENTORY_HEALTH, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* @PERS_HITS, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 8
  store i32 0, i32* %11, align 4
  br label %268

268:                                              ; preds = %250, %224, %29
  %269 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %269)
  %270 = load i32, i32* %11, align 4
  switch i32 %270, label %272 [
    i32 0, label %271
    i32 1, label %271
  ]

271:                                              ; preds = %268, %268
  ret void

272:                                              ; preds = %268
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Characteristic_String(i32, i32, i8*, i32) #2

declare dso_local i32 @trap_GetUserinfo(i32, i8*, i32) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i8*) #2

declare dso_local i32 @trap_SetUserinfo(i32, i8*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @trap_EA_Command(i32, i8*) #2

declare dso_local i32 @trap_BotSetChatGender(i32, i32) #2

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i32 @trap_BotSetChatName(i32, i8*, i32) #2

declare dso_local i32 @BotSetupAlternativeRouteGoals(...) #2

declare dso_local i32 @BotIntermission(%struct.TYPE_22__*) #2

declare dso_local i32 @BotSetTeleportTime(%struct.TYPE_22__*) #2

declare dso_local i32 @BotUpdateInventory(%struct.TYPE_22__*) #2

declare dso_local i32 @BotCheckSnapshot(%struct.TYPE_22__*) #2

declare dso_local i32 @BotCheckAir(%struct.TYPE_22__*) #2

declare dso_local i32 @BotCheckConsoleMessages(%struct.TYPE_22__*) #2

declare dso_local i32 @BotIsObserver(%struct.TYPE_22__*) #2

declare dso_local i32 @BotTeamAI(%struct.TYPE_22__*) #2

declare dso_local i32 @AIEnter_Seek_LTG(%struct.TYPE_22__*, i8*) #2

declare dso_local i32 @FloatTime(...) #2

declare dso_local i64 @BotChat_EnterGame(%struct.TYPE_22__*) #2

declare dso_local i64 @BotChatTime(%struct.TYPE_22__*) #2

declare dso_local i32 @AIEnter_Stand(%struct.TYPE_22__*, i8*) #2

declare dso_local i32 @BotResetNodeSwitches(...) #2

declare dso_local i32 @trap_BotDumpGoalStack(i32) #2

declare dso_local i32 @trap_BotDumpAvoidGoals(i32) #2

declare dso_local i32 @BotDumpNodeSwitches(%struct.TYPE_22__*) #2

declare dso_local i32 @BotAI_Print(i32, i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
