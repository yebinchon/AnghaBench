; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_Death.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_chat.c_BotChat_Death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, i32, i32, i64 }

@bot_nochat = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@TIME_BETWEENCHATTING = common dso_local global i64 0, align 8
@CHARACTERISTIC_CHAT_DEATH = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@bot_fastchat = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MAX_CLIENTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"[world]\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"death_teammate\00", align 1
@CHAT_TEAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"vtaunt\00", align 1
@qtrue = common dso_local global i32 0, align 4
@MOD_WATER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"death_drown\00", align 1
@MOD_SLIME = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"death_slime\00", align 1
@MOD_LAVA = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"death_lava\00", align 1
@MOD_FALLING = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"death_cratered\00", align 1
@MOD_CRUSH = common dso_local global i64 0, align 8
@MOD_SUICIDE = common dso_local global i64 0, align 8
@MOD_TARGET_LASER = common dso_local global i64 0, align 8
@MOD_TRIGGER_HURT = common dso_local global i64 0, align 8
@MOD_UNKNOWN = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"death_suicide\00", align 1
@MOD_TELEFRAG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"death_telefrag\00", align 1
@MOD_GAUNTLET = common dso_local global i64 0, align 8
@MOD_RAILGUN = common dso_local global i64 0, align 8
@MOD_BFG = common dso_local global i64 0, align 8
@MOD_BFG_SPLASH = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"death_gauntlet\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"death_rail\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"death_bfg\00", align 1
@CHARACTERISTIC_CHAT_INSULT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"death_insult\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"death_praise\00", align 1
@CHAT_ALL = common dso_local global i32 0, align 4
@MOD_KAMIKAZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChat_Death(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bot_nochat, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @qfalse, align 4
  store i32 %9, i32* %2, align 4
  br label %313

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 (...) @FloatTime()
  %15 = load i64, i64* @TIME_BETWEENCHATTING, align 8
  %16 = sub nsw i64 %14, %15
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %2, align 4
  br label %313

20:                                               ; preds = %10
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CHARACTERISTIC_CHAT_DEATH, align 4
  %25 = call double @trap_Characteristic_BFloat(i32 %23, i32 %24, i32 0, i32 1)
  %26 = fptrunc double %25 to float
  store float %26, float* %5, align 4
  %27 = load i64, i64* @gametype, align 8
  %28 = load i64, i64* @GT_TOURNAMENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %2, align 4
  br label %313

32:                                               ; preds = %20
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bot_fastchat, i32 0, i32 0), align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = call double (...) @random()
  %37 = load float, float* %5, align 4
  %38 = fpext float %37 to double
  %39 = fcmp ogt double %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %2, align 4
  br label %313

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %32
  %44 = call i32 (...) @BotNumActivePlayers()
  %45 = icmp sle i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @qfalse, align 4
  store i32 %47, i32* %2, align 4
  br label %313

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MAX_CLIENTS, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %64 = call i32 @EasyClientName(i64 %62, i8* %63, i32 32)
  br label %68

65:                                               ; preds = %53, %48
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %67 = call i32 @strcpy(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %59
  %69 = call i64 (...) @TeamPlayIsOn()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @BotSameTeam(%struct.TYPE_8__* %72, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %71
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %2, align 4
  br label %313

88:                                               ; preds = %78
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %91 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %90, i32 0)
  %92 = load i32, i32* @CHAT_TEAM, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  br label %308

95:                                               ; preds = %71, %68
  %96 = call i64 (...) @TeamPlayIsOn()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @trap_EA_Command(i64 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @qtrue, align 4
  store i32 %103, i32* %2, align 4
  br label %313

104:                                              ; preds = %95
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MOD_WATER, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %112)
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %115, i32 0)
  br label %304

117:                                              ; preds = %104
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MOD_SLIME, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %125)
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %128, i32 0)
  br label %303

130:                                              ; preds = %117
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @MOD_LAVA, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %138)
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %141, i32 0)
  br label %302

143:                                              ; preds = %130
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MOD_FALLING, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %151)
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %150, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %154, i32 0)
  br label %301

156:                                              ; preds = %143
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %191, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @MOD_CRUSH, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %191, label %167

167:                                              ; preds = %161
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @MOD_SUICIDE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %191, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MOD_TARGET_LASER, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %191, label %179

179:                                              ; preds = %173
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MOD_TRIGGER_HURT, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %179
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @MOD_UNKNOWN, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %185, %179, %173, %167, %161, %156
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = call i32 @BotRandomOpponentName(%struct.TYPE_8__* %193)
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i8*
  %197 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %192, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %196, i32 0)
  br label %300

198:                                              ; preds = %185
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @MOD_TELEFRAG, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %206 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %207 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %206, i32 0)
  br label %299

208:                                              ; preds = %198
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @MOD_GAUNTLET, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %232, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @MOD_RAILGUN, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %232, label %220

220:                                              ; preds = %214
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @MOD_BFG, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %232, label %226

226:                                              ; preds = %220
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @MOD_BFG_SPLASH, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %273

232:                                              ; preds = %226, %220, %214, %208
  %233 = call double (...) @random()
  %234 = fcmp olt double %233, 5.000000e-01
  br i1 %234, label %235, label %273

235:                                              ; preds = %232
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @MOD_GAUNTLET, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %235
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %243 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @BotWeaponNameForMeansOfDeath(i64 %246)
  %248 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %242, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %243, i32 %247, i8* null)
  br label %272

249:                                              ; preds = %235
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @MOD_RAILGUN, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %249
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %257 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @BotWeaponNameForMeansOfDeath(i64 %260)
  %262 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %257, i32 %261, i8* null)
  br label %271

263:                                              ; preds = %249
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %265 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @BotWeaponNameForMeansOfDeath(i64 %268)
  %270 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %264, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %265, i32 %269, i8* null)
  br label %271

271:                                              ; preds = %263, %255
  br label %272

272:                                              ; preds = %271, %241
  br label %298

273:                                              ; preds = %232, %226
  %274 = call double (...) @random()
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @CHARACTERISTIC_CHAT_INSULT, align 4
  %279 = call double @trap_Characteristic_BFloat(i32 %277, i32 %278, i32 0, i32 1)
  %280 = fcmp olt double %274, %279
  br i1 %280, label %281, label %289

281:                                              ; preds = %273
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %283 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @BotWeaponNameForMeansOfDeath(i64 %286)
  %288 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %282, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %283, i32 %287, i8* null)
  br label %297

289:                                              ; preds = %273
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %291 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @BotWeaponNameForMeansOfDeath(i64 %294)
  %296 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @BotAI_BotInitialChat(%struct.TYPE_8__* %290, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* %291, i32 %295, i8* null)
  br label %297

297:                                              ; preds = %289, %281
  br label %298

298:                                              ; preds = %297, %272
  br label %299

299:                                              ; preds = %298, %204
  br label %300

300:                                              ; preds = %299, %191
  br label %301

301:                                              ; preds = %300, %149
  br label %302

302:                                              ; preds = %301, %136
  br label %303

303:                                              ; preds = %302, %123
  br label %304

304:                                              ; preds = %303, %110
  %305 = load i32, i32* @CHAT_ALL, align 4
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 4
  store i32 %305, i32* %307, align 8
  br label %308

308:                                              ; preds = %304, %88
  %309 = call i64 (...) @FloatTime()
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  %312 = load i32, i32* @qtrue, align 4
  store i32 %312, i32* %2, align 4
  br label %313

313:                                              ; preds = %308, %98, %86, %46, %40, %30, %18, %8
  %314 = load i32, i32* %2, align 4
  ret i32 %314
}

declare dso_local i64 @FloatTime(...) #1

declare dso_local double @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local double @random(...) #1

declare dso_local i32 @BotNumActivePlayers(...) #1

declare dso_local i32 @EasyClientName(i64, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @TeamPlayIsOn(...) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i8*, i32, ...) #1

declare dso_local i32 @trap_EA_Command(i64, i8*) #1

declare dso_local i32 @BotRandomOpponentName(%struct.TYPE_8__*) #1

declare dso_local i32 @BotWeaponNameForMeansOfDeath(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
