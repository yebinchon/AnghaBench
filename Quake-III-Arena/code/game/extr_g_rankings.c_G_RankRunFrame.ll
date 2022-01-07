; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_rankings.c_G_RankRunFrame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_rankings.c_G_RankRunFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, %struct.TYPE_20__, i32, %struct.TYPE_18__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@GR_GAMEKEY = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_24__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@EXEC_INSERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"kick %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"rank_status %i\0A\00", align 1
@TEAM_SPECTATOR = common dso_local global i32 0, align 4
@SPECTATOR_FREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"rank_menu\0A\00", align 1
@g_gametype = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@GT_TEAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@QGR_KEY_PLAYED_WITH = common dso_local global i32 0, align 4
@g_fraglimit = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@g_timelimit = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"timelimit\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"1000\00", align 1
@PERS_MATCH_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RankRunFrame() #0 {
  %1 = alloca %struct.TYPE_24__*, align 8
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 (...) @trap_RankCheckInit()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @GR_GAMEKEY, align 4
  %13 = call i32 @trap_RankBegin(i32 %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = call i32 (...) @trap_RankPoll()
  %16 = call i64 (...) @trap_RankActive()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %224

18:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %206, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @level, i32 0, i32 0), align 8
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %209

23:                                               ; preds = %19
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** @g_entities, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i64 %26
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %1, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %206

33:                                               ; preds = %23
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %35, align 8
  %37 = icmp eq %struct.TYPE_23__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %206

39:                                               ; preds = %33
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SVF_BOT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load i32, i32* @EXEC_INSERT, align 4
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = call i32 @trap_SendConsoleCommand(i32 %48, i8* %55)
  br label %206

57:                                               ; preds = %39
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @trap_RankUserStatus(i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %57
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i8* @va(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = call i32 @trap_SendServerCommand(i32 %73, i8* %75)
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %72
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %57
  %87 = load i32, i32* %4, align 4
  switch i32 %87, label %204 [
    i32 132, label %88
    i32 129, label %88
    i32 130, label %119
    i32 135, label %119
    i32 128, label %119
    i32 131, label %119
    i32 133, label %119
    i32 134, label %119
    i32 136, label %134
  ]

88:                                               ; preds = %86, %86
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TEAM_SPECTATOR, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %88
  %98 = load i32, i32* @TEAM_SPECTATOR, align 4
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 8
  %104 = load i32, i32* @SPECTATOR_FREE, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  store i32 %104, i32* %109, align 4
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %111 = call i32 @ClientSpawn(%struct.TYPE_24__* %110)
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i8* @va(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = call i32 @trap_SendServerCommand(i32 %112, i8* %114)
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @trap_SendServerCommand(i32 %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %97, %88
  br label %205

119:                                              ; preds = %86, %86, %86, %86, %86, %86
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SVF_BOT, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @trap_RankUserReset(i32 %131)
  br label %133

133:                                              ; preds = %127, %119
  br label %205

134:                                              ; preds = %86
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TEAM_SPECTATOR, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %134
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_gametype, i32 0, i32 0), align 4
  %145 = load i32, i32* @GT_TEAM, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %149 = call i32 @SetTeam(%struct.TYPE_24__* %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %143, %134
  %151 = load i32, i32* %3, align 4
  %152 = icmp ne i32 %151, 136
  br i1 %152, label %153, label %203

153:                                              ; preds = %150
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %199, %153
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @level, i32 0, i32 0), align 8
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %202

158:                                              ; preds = %154
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** @g_entities, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i64 %161
  store %struct.TYPE_24__* %162, %struct.TYPE_24__** %2, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %158
  br label %199

168:                                              ; preds = %158
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %170, align 8
  %172 = icmp eq %struct.TYPE_23__* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %199

174:                                              ; preds = %168
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @SVF_BOT, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %199

183:                                              ; preds = %174
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %183
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @trap_RankUserStatus(i32 %188)
  %190 = icmp eq i32 %189, 136
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @QGR_KEY_PLAYED_WITH, align 4
  %195 = call i32 @trap_RankReportInt(i32 %192, i32 %193, i32 %194, i32 1, i32 0)
  br label %196

196:                                              ; preds = %191, %187, %183
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %198 = call i32 @DeathmatchScoreboardMessage(%struct.TYPE_24__* %197)
  br label %199

199:                                              ; preds = %196, %182, %173, %167
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %154

202:                                              ; preds = %154
  br label %203

203:                                              ; preds = %202, %150
  br label %205

204:                                              ; preds = %86
  br label %205

205:                                              ; preds = %204, %203, %133, %118
  br label %206

206:                                              ; preds = %205, %47, %38, %32
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %19

209:                                              ; preds = %19
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_fraglimit, i32 0, i32 0), align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @g_fraglimit, i32 0, i32 0), align 4
  %214 = icmp sgt i32 %213, 100
  br i1 %214, label %215, label %223

215:                                              ; preds = %212, %209
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @g_timelimit, i32 0, i32 0), align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @g_timelimit, i32 0, i32 0), align 4
  %220 = icmp sgt i32 %219, 1000
  br i1 %220, label %221, label %223

221:                                              ; preds = %218, %215
  %222 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %223

223:                                              ; preds = %221, %218, %212
  br label %224

224:                                              ; preds = %223, %14
  %225 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @level, i32 0, i32 1), align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %265

227:                                              ; preds = %224
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %261, %227
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @level, i32 0, i32 0), align 8
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %264

232:                                              ; preds = %228
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** @g_entities, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i64 %235
  store %struct.TYPE_24__* %236, %struct.TYPE_24__** %1, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %238, align 8
  %240 = icmp eq %struct.TYPE_23__* %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %232
  br label %261

242:                                              ; preds = %232
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @level, i32 0, i32 2), align 8
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %243, %249
  %251 = sdiv i32 %250, 1000
  store i32 %251, i32* %5, align 4
  %252 = load i32, i32* %5, align 4
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* @PERS_MATCH_TIME, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32 %252, i32* %260, align 4
  br label %261

261:                                              ; preds = %242, %241
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %6, align 4
  br label %228

264:                                              ; preds = %228
  br label %265

265:                                              ; preds = %264, %224
  ret void
}

declare dso_local i32 @trap_RankCheckInit(...) #1

declare dso_local i32 @trap_RankBegin(i32) #1

declare dso_local i32 @trap_RankPoll(...) #1

declare dso_local i64 @trap_RankActive(...) #1

declare dso_local i32 @trap_SendConsoleCommand(i32, i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @trap_RankUserStatus(i32) #1

declare dso_local i32 @trap_SendServerCommand(i32, i8*) #1

declare dso_local i32 @ClientSpawn(%struct.TYPE_24__*) #1

declare dso_local i32 @trap_RankUserReset(i32) #1

declare dso_local i32 @SetTeam(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @trap_RankReportInt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeathmatchScoreboardMessage(%struct.TYPE_24__*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
