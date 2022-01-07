; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_ClientCommand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_ClientCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i64 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_28__* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"say\00", align 1
@SAY_ALL = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"say_team\00", align 1
@SAY_TEAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"tell\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"vsay\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vsay_team\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"vtell\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"vosay\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"vosay_team\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"votell\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"vtaunt\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@level = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"give\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"god\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"notarget\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"noclip\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"teamtask\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"levelshot\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"follow\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"follownext\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"followprev\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"team\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"where\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"callvote\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"vote\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"callteamvote\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"teamvote\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"setviewpos\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"print \22unknown cmd %s\0A\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** @g_entities, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i64 %13
  store %struct.TYPE_28__* %14, %struct.TYPE_28__** %3, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %251

20:                                               ; preds = %1
  %21 = trunc i64 %8 to i32
  %22 = call i32 @trap_Argv(i32 0, i8* %10, i32 %21)
  %23 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %27 = load i32, i32* @SAY_ALL, align 4
  %28 = load i32, i32* @qfalse, align 4
  %29 = call i32 @Cmd_Say_f(%struct.TYPE_28__* %26, i32 %27, i32 %28)
  store i32 1, i32* %6, align 4
  br label %251

30:                                               ; preds = %20
  %31 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %35 = load i32, i32* @SAY_TEAM, align 4
  %36 = load i32, i32* @qfalse, align 4
  %37 = call i32 @Cmd_Say_f(%struct.TYPE_28__* %34, i32 %35, i32 %36)
  store i32 1, i32* %6, align 4
  br label %251

38:                                               ; preds = %30
  %39 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %43 = call i32 @Cmd_Tell_f(%struct.TYPE_28__* %42)
  store i32 1, i32* %6, align 4
  br label %251

44:                                               ; preds = %38
  %45 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %49 = load i32, i32* @SAY_ALL, align 4
  %50 = load i32, i32* @qfalse, align 4
  %51 = load i32, i32* @qfalse, align 4
  %52 = call i32 @Cmd_Voice_f(%struct.TYPE_28__* %48, i32 %49, i32 %50, i32 %51)
  store i32 1, i32* %6, align 4
  br label %251

53:                                               ; preds = %44
  %54 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %58 = load i32, i32* @SAY_TEAM, align 4
  %59 = load i32, i32* @qfalse, align 4
  %60 = load i32, i32* @qfalse, align 4
  %61 = call i32 @Cmd_Voice_f(%struct.TYPE_28__* %57, i32 %58, i32 %59, i32 %60)
  store i32 1, i32* %6, align 4
  br label %251

62:                                               ; preds = %53
  %63 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %67 = load i32, i32* @qfalse, align 4
  %68 = call i32 @Cmd_VoiceTell_f(%struct.TYPE_28__* %66, i32 %67)
  store i32 1, i32* %6, align 4
  br label %251

69:                                               ; preds = %62
  %70 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %74 = load i32, i32* @SAY_ALL, align 4
  %75 = load i32, i32* @qfalse, align 4
  %76 = load i32, i32* @qtrue, align 4
  %77 = call i32 @Cmd_Voice_f(%struct.TYPE_28__* %73, i32 %74, i32 %75, i32 %76)
  store i32 1, i32* %6, align 4
  br label %251

78:                                               ; preds = %69
  %79 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %83 = load i32, i32* @SAY_TEAM, align 4
  %84 = load i32, i32* @qfalse, align 4
  %85 = load i32, i32* @qtrue, align 4
  %86 = call i32 @Cmd_Voice_f(%struct.TYPE_28__* %82, i32 %83, i32 %84, i32 %85)
  store i32 1, i32* %6, align 4
  br label %251

87:                                               ; preds = %78
  %88 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %92 = load i32, i32* @qtrue, align 4
  %93 = call i32 @Cmd_VoiceTell_f(%struct.TYPE_28__* %91, i32 %92)
  store i32 1, i32* %6, align 4
  br label %251

94:                                               ; preds = %87
  %95 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %99 = call i32 @Cmd_VoiceTaunt_f(%struct.TYPE_28__* %98)
  store i32 1, i32* %6, align 4
  br label %251

100:                                              ; preds = %94
  %101 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %105 = call i32 @Cmd_Score_f(%struct.TYPE_28__* %104)
  store i32 1, i32* %6, align 4
  br label %251

106:                                              ; preds = %100
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @level, i32 0, i32 0), align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %111 = load i32, i32* @qfalse, align 4
  %112 = load i32, i32* @qtrue, align 4
  %113 = call i32 @Cmd_Say_f(%struct.TYPE_28__* %110, i32 %111, i32 %112)
  store i32 1, i32* %6, align 4
  br label %251

114:                                              ; preds = %106
  %115 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %119 = call i32 @Cmd_Give_f(%struct.TYPE_28__* %118)
  br label %250

120:                                              ; preds = %114
  %121 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %125 = call i32 @Cmd_God_f(%struct.TYPE_28__* %124)
  br label %249

126:                                              ; preds = %120
  %127 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %131 = call i32 @Cmd_Notarget_f(%struct.TYPE_28__* %130)
  br label %248

132:                                              ; preds = %126
  %133 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %137 = call i32 @Cmd_Noclip_f(%struct.TYPE_28__* %136)
  br label %247

138:                                              ; preds = %132
  %139 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %143 = call i32 @Cmd_Kill_f(%struct.TYPE_28__* %142)
  br label %246

144:                                              ; preds = %138
  %145 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %149 = call i32 @Cmd_TeamTask_f(%struct.TYPE_28__* %148)
  br label %245

150:                                              ; preds = %144
  %151 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %155 = call i32 @Cmd_LevelShot_f(%struct.TYPE_28__* %154)
  br label %244

156:                                              ; preds = %150
  %157 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %161 = call i32 @Cmd_Follow_f(%struct.TYPE_28__* %160)
  br label %243

162:                                              ; preds = %156
  %163 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %167 = call i32 @Cmd_FollowCycle_f(%struct.TYPE_28__* %166, i32 1)
  br label %242

168:                                              ; preds = %162
  %169 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %173 = call i32 @Cmd_FollowCycle_f(%struct.TYPE_28__* %172, i32 -1)
  br label %241

174:                                              ; preds = %168
  %175 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %179 = call i32 @Cmd_Team_f(%struct.TYPE_28__* %178)
  br label %240

180:                                              ; preds = %174
  %181 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %185 = call i32 @Cmd_Where_f(%struct.TYPE_28__* %184)
  br label %239

186:                                              ; preds = %180
  %187 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %191 = call i32 @Cmd_CallVote_f(%struct.TYPE_28__* %190)
  br label %238

192:                                              ; preds = %186
  %193 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %197 = call i32 @Cmd_Vote_f(%struct.TYPE_28__* %196)
  br label %237

198:                                              ; preds = %192
  %199 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %203 = call i32 @Cmd_CallTeamVote_f(%struct.TYPE_28__* %202)
  br label %236

204:                                              ; preds = %198
  %205 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0))
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %209 = call i32 @Cmd_TeamVote_f(%struct.TYPE_28__* %208)
  br label %235

210:                                              ; preds = %204
  %211 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %215 = call i32 @Cmd_GameCommand_f(%struct.TYPE_28__* %214)
  br label %234

216:                                              ; preds = %210
  %217 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %221 = call i32 @Cmd_SetViewpos_f(%struct.TYPE_28__* %220)
  br label %233

222:                                              ; preds = %216
  %223 = call i64 @Q_stricmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %227 = call i32 @Cmd_Stats_f(%struct.TYPE_28__* %226)
  br label %232

228:                                              ; preds = %222
  %229 = load i32, i32* %2, align 4
  %230 = call i32 @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0), i8* %10)
  %231 = call i32 @trap_SendServerCommand(i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %228, %225
  br label %233

233:                                              ; preds = %232, %219
  br label %234

234:                                              ; preds = %233, %213
  br label %235

235:                                              ; preds = %234, %207
  br label %236

236:                                              ; preds = %235, %201
  br label %237

237:                                              ; preds = %236, %195
  br label %238

238:                                              ; preds = %237, %189
  br label %239

239:                                              ; preds = %238, %183
  br label %240

240:                                              ; preds = %239, %177
  br label %241

241:                                              ; preds = %240, %171
  br label %242

242:                                              ; preds = %241, %165
  br label %243

243:                                              ; preds = %242, %159
  br label %244

244:                                              ; preds = %243, %153
  br label %245

245:                                              ; preds = %244, %147
  br label %246

246:                                              ; preds = %245, %141
  br label %247

247:                                              ; preds = %246, %135
  br label %248

248:                                              ; preds = %247, %129
  br label %249

249:                                              ; preds = %248, %123
  br label %250

250:                                              ; preds = %249, %117
  store i32 0, i32* %6, align 4
  br label %251

251:                                              ; preds = %250, %109, %103, %97, %90, %81, %72, %65, %56, %47, %41, %33, %25, %19
  %252 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %252)
  %253 = load i32, i32* %6, align 4
  switch i32 %253, label %255 [
    i32 0, label %254
    i32 1, label %254
  ]

254:                                              ; preds = %251, %251
  ret void

255:                                              ; preds = %251
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Cmd_Say_f(%struct.TYPE_28__*, i32, i32) #2

declare dso_local i32 @Cmd_Tell_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Voice_f(%struct.TYPE_28__*, i32, i32, i32) #2

declare dso_local i32 @Cmd_VoiceTell_f(%struct.TYPE_28__*, i32) #2

declare dso_local i32 @Cmd_VoiceTaunt_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Score_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Give_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_God_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Notarget_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Noclip_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Kill_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_TeamTask_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_LevelShot_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Follow_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_FollowCycle_f(%struct.TYPE_28__*, i32) #2

declare dso_local i32 @Cmd_Team_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Where_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_CallVote_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Vote_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_CallTeamVote_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_TeamVote_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_GameCommand_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_SetViewpos_f(%struct.TYPE_28__*) #2

declare dso_local i32 @Cmd_Stats_f(%struct.TYPE_28__*) #2

declare dso_local i32 @trap_SendServerCommand(i32, i32) #2

declare dso_local i32 @va(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
