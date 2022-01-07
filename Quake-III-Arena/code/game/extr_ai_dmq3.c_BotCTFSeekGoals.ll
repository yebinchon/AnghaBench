; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotCTFSeekGoals.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotCTFSeekGoals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, i32 }
%struct.TYPE_23__ = type { i64, i32, i64, i32, i32, i32, i64, i32, double, i64, i32, i64, %struct.TYPE_24__, i8*, i32, i32, i64, i64, i64, %struct.TYPE_22__, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i64 }

@LTG_RUSHBASE = common dso_local global i64 0, align 8
@CTF_RUSHBASE_TIME = common dso_local global i64 0, align 8
@qfalse = common dso_local global i8* null, align 8
@ctf_blueflag = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@ctf_redflag = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"teamtask\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TEAMTASK_OFFENSE = common dso_local global i32 0, align 4
@VOICECHAT_IHAVEFLAG = common dso_local global i32 0, align 4
@LTG_TEAMACCOMPANY = common dso_local global i64 0, align 8
@LTG_DEFENDKEYAREA = common dso_local global i64 0, align 8
@VOICECHAT_ONFOLLOW = common dso_local global i32 0, align 4
@TEAM_ACCOMPANY_TIME = common dso_local global i64 0, align 8
@LTG_GETFLAG = common dso_local global i64 0, align 8
@LTG_RETURNFLAG = common dso_local global i64 0, align 8
@LTG_TEAMHELP = common dso_local global i64 0, align 8
@LTG_CAMPORDER = common dso_local global i64 0, align 8
@LTG_PATROL = common dso_local global i64 0, align 8
@LTG_GETITEM = common dso_local global i64 0, align 8
@CTF_GETFLAG_TIME = common dso_local global i64 0, align 8
@CTF_RETURNFLAG_TIME = common dso_local global i64 0, align 8
@LTG_MAKELOVE_UNDER = common dso_local global i64 0, align 8
@LTG_MAKELOVE_ONTOP = common dso_local global i64 0, align 8
@TEAMTP_ATTACKER = common dso_local global i32 0, align 4
@TEAMTP_DEFENDER = common dso_local global i32 0, align 4
@TEAM_DEFENDKEYAREA_TIME = common dso_local global i64 0, align 8
@CTF_ROAM_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCTFSeekGoals(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %11 = call i64 @BotCTFCarryingFlag(%struct.TYPE_23__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %108

13:                                               ; preds = %1
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LTG_RUSHBASE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %13
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %21 = call i32 @BotRefuseOrder(%struct.TYPE_23__* %20)
  %22 = load i64, i64* @LTG_RUSHBASE, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = call i64 (...) @FloatTime()
  %26 = load i64, i64* @CTF_RUSHBASE_TIME, align 8
  %27 = add nsw i64 %25, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** @qfalse, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 13
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %42 = call i32 @BotTeam(%struct.TYPE_23__* %41)
  switch i32 %42, label %57 [
    i32 128, label %43
    i32 129, label %50
  ]

43:                                               ; preds = %19
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 20
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctf_blueflag, i32 0, i32 2), align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @VectorSubtract(i32 %46, i32 %47, i32 %48)
  br label %60

50:                                               ; preds = %19
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 20
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctf_redflag, i32 0, i32 2), align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @VectorSubtract(i32 %53, i32 %54, i32 %55)
  br label %60

57:                                               ; preds = %19
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @VectorSet(i32 %58, i32 999, i32 999, i32 999)
  br label %60

60:                                               ; preds = %57, %50, %43
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @VectorLength(i32 %61)
  %63 = icmp slt i32 %62, 128
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %67 = call i32 @BotOppositeTeam(%struct.TYPE_23__* %66)
  %68 = call i32 @BotGetAlternateRouteGoal(%struct.TYPE_23__* %65, i32 %67)
  br label %73

69:                                               ; preds = %60
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 19
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %75 = load i32, i32* @TEAMTASK_OFFENSE, align 4
  %76 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = call i32 @BotSetUserInfo(%struct.TYPE_23__* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %79 = load i32, i32* @VOICECHAT_IHAVEFLAG, align 4
  %80 = call i32 @BotVoiceChat(%struct.TYPE_23__* %78, i32 -1, i32 %79)
  br label %107

81:                                               ; preds = %13
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i64 (...) @FloatTime()
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %89 = call i32 @BotTeam(%struct.TYPE_23__* %88)
  %90 = icmp eq i32 %89, 128
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %6, align 4
  br label %99

95:                                               ; preds = %87
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %81
  br label %107

107:                                              ; preds = %106, %73
  br label %699

108:                                              ; preds = %1
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @LTG_TEAMACCOMPANY, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %108
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 13
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %130, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @BotEntityInfo(i32 %122, i32* %9)
  %124 = call i32 @EntityCarriesFlag(i32* %9)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %119
  br label %130

130:                                              ; preds = %129, %114, %108
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %132 = call i32 @BotTeam(%struct.TYPE_23__* %131)
  %133 = icmp eq i32 %132, 128
  br i1 %133, label %134, label %143

134:                                              ; preds = %130
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 2
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %138, %141
  store i32 %142, i32* %6, align 4
  br label %152

143:                                              ; preds = %130
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %146, 2
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %147, %150
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %143, %134
  %153 = load i32, i32* %6, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %245

155:                                              ; preds = %152
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = call i64 (...) @FloatTime()
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %244

161:                                              ; preds = %155
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @LTG_DEFENDKEYAREA, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %161
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 12
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctf_redflag, i32 0, i32 0), align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %243, label %174

174:                                              ; preds = %167
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 12
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctf_blueflag, i32 0, i32 0), align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %243, label %181

181:                                              ; preds = %174, %161
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %183 = call i32 @BotTeamFlagCarrierVisible(%struct.TYPE_23__* %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %242

186:                                              ; preds = %181
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @LTG_TEAMACCOMPANY, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %242

198:                                              ; preds = %192, %186
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %200 = call i32 @BotRefuseOrder(%struct.TYPE_23__* %199)
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 14
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 15
  store i32 %203, i32* %205, align 4
  %206 = load i8*, i8** @qfalse, align 8
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 13
  store i8* %206, i8** %208, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 5
  store i32 %209, i32* %211, align 8
  %212 = call i64 (...) @FloatTime()
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 18
  store i64 %212, i64* %214, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 16
  store i64 0, i64* %216, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 7
  store i32 1, i32* %218, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @VOICECHAT_ONFOLLOW, align 4
  %224 = call i32 @BotVoiceChat(%struct.TYPE_23__* %219, i32 %222, i32 %223)
  %225 = call i64 (...) @FloatTime()
  %226 = load i64, i64* @TEAM_ACCOMPANY_TIME, align 8
  %227 = add nsw i64 %225, %226
  %228 = trunc i64 %227 to i32
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  %231 = load i64, i64* @LTG_TEAMACCOMPANY, align 8
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 8
  store double 1.120000e+02, double* %235, align 8
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %237 = call i32 @BotSetTeamStatus(%struct.TYPE_23__* %236)
  %238 = call i64 (...) @FloatTime()
  %239 = add nsw i64 %238, 5
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 6
  store i64 %239, i64* %241, align 8
  br label %242

242:                                              ; preds = %198, %192, %181
  br label %243

243:                                              ; preds = %242, %174, %167
  br label %244

244:                                              ; preds = %243, %155
  br label %699

245:                                              ; preds = %152
  %246 = load i32, i32* %6, align 4
  %247 = icmp eq i32 %246, 2
  br i1 %247, label %248, label %345

248:                                              ; preds = %245
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = call i64 (...) @FloatTime()
  %253 = icmp slt i64 %251, %252
  br i1 %253, label %254, label %344

254:                                              ; preds = %248
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %256 = call i32 @BotEnemyFlagCarrierVisible(%struct.TYPE_23__* %255)
  store i32 %256, i32* %7, align 4
  %257 = load i32, i32* %7, align 4
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  br label %260

260:                                              ; preds = %259, %254
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @LTG_GETFLAG, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %343

266:                                              ; preds = %260
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @LTG_RETURNFLAG, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %343

272:                                              ; preds = %266
  %273 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @LTG_TEAMHELP, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %343

278:                                              ; preds = %272
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @LTG_TEAMACCOMPANY, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %343

284:                                              ; preds = %278
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @LTG_CAMPORDER, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %343

290:                                              ; preds = %284
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @LTG_PATROL, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %343

296:                                              ; preds = %290
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @LTG_GETITEM, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %343

302:                                              ; preds = %296
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %304 = call i32 @BotRefuseOrder(%struct.TYPE_23__* %303)
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 14
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 15
  store i32 %307, i32* %309, align 4
  %310 = load i8*, i8** @qfalse, align 8
  %311 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 13
  store i8* %310, i8** %312, align 8
  %313 = call i32 (...) @random()
  %314 = sitofp i32 %313 to double
  %315 = fcmp olt double %314, 5.000000e-01
  br i1 %315, label %316, label %320

316:                                              ; preds = %302
  %317 = load i64, i64* @LTG_GETFLAG, align 8
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 0
  store i64 %317, i64* %319, align 8
  br label %324

320:                                              ; preds = %302
  %321 = load i64, i64* @LTG_RETURNFLAG, align 8
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  br label %324

324:                                              ; preds = %320, %316
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 16
  store i64 0, i64* %326, align 8
  %327 = call i64 (...) @FloatTime()
  %328 = load i64, i64* @CTF_GETFLAG_TIME, align 8
  %329 = add nsw i64 %327, %328
  %330 = trunc i64 %329 to i32
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %335 = call i32 @BotOppositeTeam(%struct.TYPE_23__* %334)
  %336 = call i32 @BotGetAlternateRouteGoal(%struct.TYPE_23__* %333, i32 %335)
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %338 = call i32 @BotSetTeamStatus(%struct.TYPE_23__* %337)
  %339 = call i64 (...) @FloatTime()
  %340 = add nsw i64 %339, 5
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 6
  store i64 %340, i64* %342, align 8
  br label %343

343:                                              ; preds = %324, %296, %290, %284, %278, %272, %266, %260
  br label %344

344:                                              ; preds = %343, %248
  br label %699

345:                                              ; preds = %245
  %346 = load i32, i32* %6, align 4
  %347 = icmp eq i32 %346, 3
  br i1 %347, label %348, label %455

348:                                              ; preds = %345
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 6
  %351 = load i64, i64* %350, align 8
  %352 = call i64 (...) @FloatTime()
  %353 = icmp slt i64 %351, %352
  br i1 %353, label %354, label %454

354:                                              ; preds = %348
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @LTG_RETURNFLAG, align 8
  %359 = icmp ne i64 %357, %358
  br i1 %359, label %360, label %453

360:                                              ; preds = %354
  %361 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @LTG_TEAMACCOMPANY, align 8
  %365 = icmp ne i64 %363, %364
  br i1 %365, label %366, label %453

366:                                              ; preds = %360
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %368 = call i32 @BotTeamFlagCarrierVisible(%struct.TYPE_23__* %367)
  store i32 %368, i32* %7, align 4
  %369 = load i32, i32* %7, align 4
  %370 = icmp sge i32 %369, 0
  br i1 %370, label %371, label %415

371:                                              ; preds = %366
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %373 = call i32 @BotRefuseOrder(%struct.TYPE_23__* %372)
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %374, i32 0, i32 14
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %378 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %377, i32 0, i32 15
  store i32 %376, i32* %378, align 4
  %379 = load i8*, i8** @qfalse, align 8
  %380 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 13
  store i8* %379, i8** %381, align 8
  %382 = load i32, i32* %7, align 4
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %383, i32 0, i32 5
  store i32 %382, i32* %384, align 8
  %385 = call i64 (...) @FloatTime()
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i32 0, i32 18
  store i64 %385, i64* %387, align 8
  %388 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %389 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %388, i32 0, i32 16
  store i64 0, i64* %389, align 8
  %390 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %391 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %390, i32 0, i32 7
  store i32 1, i32* %391, align 8
  %392 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 5
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @VOICECHAT_ONFOLLOW, align 4
  %397 = call i32 @BotVoiceChat(%struct.TYPE_23__* %392, i32 %395, i32 %396)
  %398 = call i64 (...) @FloatTime()
  %399 = load i64, i64* @TEAM_ACCOMPANY_TIME, align 8
  %400 = add nsw i64 %398, %399
  %401 = trunc i64 %400 to i32
  %402 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %402, i32 0, i32 1
  store i32 %401, i32* %403, align 8
  %404 = load i64, i64* @LTG_TEAMACCOMPANY, align 8
  %405 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %406 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %405, i32 0, i32 0
  store i64 %404, i64* %406, align 8
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 8
  store double 1.120000e+02, double* %408, align 8
  %409 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %410 = call i32 @BotSetTeamStatus(%struct.TYPE_23__* %409)
  %411 = call i64 (...) @FloatTime()
  %412 = add nsw i64 %411, 5
  %413 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %414 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %413, i32 0, i32 6
  store i64 %412, i64* %414, align 8
  br label %452

415:                                              ; preds = %366
  %416 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %417 = call i32 @BotRefuseOrder(%struct.TYPE_23__* %416)
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %419 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %418, i32 0, i32 14
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 15
  store i32 %420, i32* %422, align 4
  %423 = load i8*, i8** @qfalse, align 8
  %424 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %425 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %424, i32 0, i32 13
  store i8* %423, i8** %425, align 8
  %426 = call i64 (...) @FloatTime()
  %427 = call i32 (...) @random()
  %428 = mul nsw i32 2, %427
  %429 = sext i32 %428 to i64
  %430 = add nsw i64 %426, %429
  %431 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %432 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %431, i32 0, i32 16
  store i64 %430, i64* %432, align 8
  %433 = load i64, i64* @LTG_RETURNFLAG, align 8
  %434 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i32 0, i32 0
  store i64 %433, i64* %435, align 8
  %436 = call i64 (...) @FloatTime()
  %437 = load i64, i64* @CTF_RETURNFLAG_TIME, align 8
  %438 = add nsw i64 %436, %437
  %439 = trunc i64 %438 to i32
  %440 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %441 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %440, i32 0, i32 1
  store i32 %439, i32* %441, align 8
  %442 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %443 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %444 = call i32 @BotOppositeTeam(%struct.TYPE_23__* %443)
  %445 = call i32 @BotGetAlternateRouteGoal(%struct.TYPE_23__* %442, i32 %444)
  %446 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %447 = call i32 @BotSetTeamStatus(%struct.TYPE_23__* %446)
  %448 = call i64 (...) @FloatTime()
  %449 = add nsw i64 %448, 5
  %450 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %451 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %450, i32 0, i32 6
  store i64 %449, i64* %451, align 8
  br label %452

452:                                              ; preds = %415, %371
  br label %453

453:                                              ; preds = %452, %360, %354
  br label %454

454:                                              ; preds = %453, %348
  br label %699

455:                                              ; preds = %345
  br label %456

456:                                              ; preds = %455
  br label %457

457:                                              ; preds = %456
  %458 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %459 = call i64 @BotTeamLeader(%struct.TYPE_23__* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %457
  br label %699

462:                                              ; preds = %457
  %463 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %463, i32 0, i32 17
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %462
  %468 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %469 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  %471 = add nsw i32 %470, 60
  store i32 %471, i32* %469, align 8
  br label %472

472:                                              ; preds = %467, %462
  %473 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %474 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %473, i32 0, i32 13
  %475 = load i8*, i8** %474, align 8
  %476 = icmp ne i8* %475, null
  br i1 %476, label %485, label %477

477:                                              ; preds = %472
  %478 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %479 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %478, i32 0, i32 17
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %477
  %483 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %484 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %483, i32 0, i32 0
  store i64 0, i64* %484, align 8
  br label %485

485:                                              ; preds = %482, %477, %472
  %486 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %487 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %486, i32 0, i32 0
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @LTG_TEAMHELP, align 8
  %490 = icmp eq i64 %488, %489
  br i1 %490, label %551, label %491

491:                                              ; preds = %485
  %492 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %493 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @LTG_TEAMACCOMPANY, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %551, label %497

497:                                              ; preds = %491
  %498 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %499 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @LTG_DEFENDKEYAREA, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %551, label %503

503:                                              ; preds = %497
  %504 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %505 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @LTG_GETFLAG, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %551, label %509

509:                                              ; preds = %503
  %510 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %511 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* @LTG_RUSHBASE, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %551, label %515

515:                                              ; preds = %509
  %516 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %517 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @LTG_RETURNFLAG, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %551, label %521

521:                                              ; preds = %515
  %522 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %523 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* @LTG_CAMPORDER, align 8
  %526 = icmp eq i64 %524, %525
  br i1 %526, label %551, label %527

527:                                              ; preds = %521
  %528 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %529 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = load i64, i64* @LTG_PATROL, align 8
  %532 = icmp eq i64 %530, %531
  br i1 %532, label %551, label %533

533:                                              ; preds = %527
  %534 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %535 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* @LTG_GETITEM, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %551, label %539

539:                                              ; preds = %533
  %540 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %541 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = load i64, i64* @LTG_MAKELOVE_UNDER, align 8
  %544 = icmp eq i64 %542, %543
  br i1 %544, label %551, label %545

545:                                              ; preds = %539
  %546 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %547 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = load i64, i64* @LTG_MAKELOVE_ONTOP, align 8
  %550 = icmp eq i64 %548, %549
  br i1 %550, label %551, label %552

551:                                              ; preds = %545, %539, %533, %527, %521, %515, %509, %503, %497, %491, %485
  br label %699

552:                                              ; preds = %545
  %553 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %554 = call i64 @BotSetLastOrderedTask(%struct.TYPE_23__* %553)
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %552
  br label %699

557:                                              ; preds = %552
  %558 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %559 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %558, i32 0, i32 6
  %560 = load i64, i64* %559, align 8
  %561 = call i64 (...) @FloatTime()
  %562 = icmp sgt i64 %560, %561
  br i1 %562, label %563, label %564

563:                                              ; preds = %557
  br label %699

564:                                              ; preds = %557
  %565 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %566 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %565, i32 0, i32 9
  %567 = load i64, i64* %566, align 8
  %568 = call i64 (...) @FloatTime()
  %569 = icmp sgt i64 %567, %568
  br i1 %569, label %570, label %571

570:                                              ; preds = %564
  br label %699

571:                                              ; preds = %564
  %572 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %573 = call i32 @BotAggression(%struct.TYPE_23__* %572)
  %574 = icmp slt i32 %573, 50
  br i1 %574, label %575, label %576

575:                                              ; preds = %571
  br label %699

576:                                              ; preds = %571
  %577 = call i64 (...) @FloatTime()
  %578 = call i32 (...) @random()
  %579 = mul nsw i32 2, %578
  %580 = sext i32 %579 to i64
  %581 = add nsw i64 %577, %580
  %582 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %583 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %582, i32 0, i32 16
  store i64 %581, i64* %583, align 8
  %584 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %585 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %584, i32 0, i32 10
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @TEAMTP_ATTACKER, align 4
  %588 = load i32, i32* @TEAMTP_DEFENDER, align 4
  %589 = or i32 %587, %588
  %590 = and i32 %586, %589
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %602

592:                                              ; preds = %576
  %593 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %594 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %593, i32 0, i32 10
  %595 = load i32, i32* %594, align 8
  %596 = load i32, i32* @TEAMTP_ATTACKER, align 4
  %597 = and i32 %595, %596
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %600

599:                                              ; preds = %592
  store float 0x3FE6666660000000, float* %4, align 4
  br label %601

600:                                              ; preds = %592
  store float 0x3FC99999A0000000, float* %4, align 4
  br label %601

601:                                              ; preds = %600, %599
  store float 0x3FECCCCCC0000000, float* %5, align 4
  br label %603

602:                                              ; preds = %576
  store float 0x3FD99999A0000000, float* %4, align 4
  store float 0x3FE6666660000000, float* %5, align 4
  br label %603

603:                                              ; preds = %602, %601
  %604 = call i32 (...) @random()
  %605 = sitofp i32 %604 to float
  store float %605, float* %3, align 4
  %606 = load float, float* %3, align 4
  %607 = load float, float* %4, align 4
  %608 = fcmp olt float %606, %607
  br i1 %608, label %609, label %639

609:                                              ; preds = %603
  %610 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctf_redflag, i32 0, i32 1), align 8
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %639

612:                                              ; preds = %609
  %613 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctf_blueflag, i32 0, i32 1), align 8
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %639

615:                                              ; preds = %612
  %616 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %617 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %616, i32 0, i32 14
  %618 = load i32, i32* %617, align 8
  %619 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %620 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %619, i32 0, i32 15
  store i32 %618, i32* %620, align 4
  %621 = load i8*, i8** @qfalse, align 8
  %622 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %623 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %622, i32 0, i32 13
  store i8* %621, i8** %623, align 8
  %624 = load i64, i64* @LTG_GETFLAG, align 8
  %625 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %626 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %625, i32 0, i32 0
  store i64 %624, i64* %626, align 8
  %627 = call i64 (...) @FloatTime()
  %628 = load i64, i64* @CTF_GETFLAG_TIME, align 8
  %629 = add nsw i64 %627, %628
  %630 = trunc i64 %629 to i32
  %631 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %632 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %631, i32 0, i32 1
  store i32 %630, i32* %632, align 8
  %633 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %634 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %635 = call i32 @BotOppositeTeam(%struct.TYPE_23__* %634)
  %636 = call i32 @BotGetAlternateRouteGoal(%struct.TYPE_23__* %633, i32 %635)
  %637 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %638 = call i32 @BotSetTeamStatus(%struct.TYPE_23__* %637)
  br label %694

639:                                              ; preds = %612, %609, %603
  %640 = load float, float* %3, align 4
  %641 = load float, float* %5, align 4
  %642 = fcmp olt float %640, %641
  br i1 %642, label %643, label %683

643:                                              ; preds = %639
  %644 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctf_redflag, i32 0, i32 1), align 8
  %645 = icmp ne i64 %644, 0
  br i1 %645, label %646, label %683

646:                                              ; preds = %643
  %647 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctf_blueflag, i32 0, i32 1), align 8
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %683

649:                                              ; preds = %646
  %650 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %651 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %650, i32 0, i32 14
  %652 = load i32, i32* %651, align 8
  %653 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %654 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %653, i32 0, i32 15
  store i32 %652, i32* %654, align 4
  %655 = load i8*, i8** @qfalse, align 8
  %656 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %657 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %656, i32 0, i32 13
  store i8* %655, i8** %657, align 8
  %658 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %659 = call i32 @BotTeam(%struct.TYPE_23__* %658)
  %660 = icmp eq i32 %659, 128
  br i1 %660, label %661, label %665

661:                                              ; preds = %649
  %662 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %663 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %662, i32 0, i32 12
  %664 = call i32 @memcpy(%struct.TYPE_24__* %663, %struct.TYPE_25__* @ctf_redflag, i32 4)
  br label %669

665:                                              ; preds = %649
  %666 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %667 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %666, i32 0, i32 12
  %668 = call i32 @memcpy(%struct.TYPE_24__* %667, %struct.TYPE_25__* @ctf_blueflag, i32 4)
  br label %669

669:                                              ; preds = %665, %661
  %670 = load i64, i64* @LTG_DEFENDKEYAREA, align 8
  %671 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %672 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %671, i32 0, i32 0
  store i64 %670, i64* %672, align 8
  %673 = call i64 (...) @FloatTime()
  %674 = load i64, i64* @TEAM_DEFENDKEYAREA_TIME, align 8
  %675 = add nsw i64 %673, %674
  %676 = trunc i64 %675 to i32
  %677 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %678 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %677, i32 0, i32 1
  store i32 %676, i32* %678, align 8
  %679 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %680 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %679, i32 0, i32 11
  store i64 0, i64* %680, align 8
  %681 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %682 = call i32 @BotSetTeamStatus(%struct.TYPE_23__* %681)
  br label %693

683:                                              ; preds = %646, %643, %639
  %684 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %685 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %684, i32 0, i32 0
  store i64 0, i64* %685, align 8
  %686 = call i64 (...) @FloatTime()
  %687 = load i64, i64* @CTF_ROAM_TIME, align 8
  %688 = add nsw i64 %686, %687
  %689 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %690 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %689, i32 0, i32 9
  store i64 %688, i64* %690, align 8
  %691 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %692 = call i32 @BotSetTeamStatus(%struct.TYPE_23__* %691)
  br label %693

693:                                              ; preds = %683, %669
  br label %694

694:                                              ; preds = %693, %615
  %695 = call i64 (...) @FloatTime()
  %696 = add nsw i64 %695, 5
  %697 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %698 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %697, i32 0, i32 6
  store i64 %696, i64* %698, align 8
  br label %699

699:                                              ; preds = %694, %575, %570, %563, %556, %551, %461, %454, %344, %244, %107
  ret void
}

declare dso_local i64 @BotCTFCarryingFlag(%struct.TYPE_23__*) #1

declare dso_local i32 @BotRefuseOrder(%struct.TYPE_23__*) #1

declare dso_local i64 @FloatTime(...) #1

declare dso_local i32 @BotTeam(%struct.TYPE_23__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i32 @VectorLength(i32) #1

declare dso_local i32 @BotGetAlternateRouteGoal(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @BotOppositeTeam(%struct.TYPE_23__*) #1

declare dso_local i32 @BotSetUserInfo(%struct.TYPE_23__*, i8*, i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @BotVoiceChat(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @BotEntityInfo(i32, i32*) #1

declare dso_local i32 @EntityCarriesFlag(i32*) #1

declare dso_local i32 @BotTeamFlagCarrierVisible(%struct.TYPE_23__*) #1

declare dso_local i32 @BotSetTeamStatus(%struct.TYPE_23__*) #1

declare dso_local i32 @BotEnemyFlagCarrierVisible(%struct.TYPE_23__*) #1

declare dso_local i32 @random(...) #1

declare dso_local i64 @BotTeamLeader(%struct.TYPE_23__*) #1

declare dso_local i64 @BotSetLastOrderedTask(%struct.TYPE_23__*) #1

declare dso_local i32 @BotAggression(%struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_24__*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
