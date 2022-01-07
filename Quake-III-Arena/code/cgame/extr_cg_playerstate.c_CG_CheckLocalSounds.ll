; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_playerstate.c_CG_CheckLocalSounds.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_playerstate.c_CG_CheckLocalSounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32*, i32*, i64* }

@PERS_TEAM = common dso_local global i64 0, align 8
@PERS_HITS = common dso_local global i64 0, align 8
@PERS_ATTACKEE_ARMOR = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4
@STAT_HEALTH = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@PERS_CAPTURES = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@PERS_IMPRESSIVE_COUNT = common dso_local global i64 0, align 8
@PERS_EXCELLENT_COUNT = common dso_local global i64 0, align 8
@PERS_GAUNTLET_FRAG_COUNT = common dso_local global i64 0, align 8
@PERS_DEFEND_COUNT = common dso_local global i64 0, align 8
@PERS_ASSIST_COUNT = common dso_local global i64 0, align 8
@PERS_PLAYEREVENTS = common dso_local global i64 0, align 8
@PLAYEREVENT_DENIEDREWARD = common dso_local global i32 0, align 4
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@PLAYEREVENT_GAUNTLETREWARD = common dso_local global i32 0, align 4
@PLAYEREVENT_HOLYSHIT = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@PW_REDFLAG = common dso_local global i64 0, align 8
@PW_BLUEFLAG = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i64 0, align 8
@PERS_RANK = common dso_local global i64 0, align 8
@RANK_TIED_FLAG = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_CheckLocalSounds(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @PERS_TEAM, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @PERS_TEAM, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %16, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %615

25:                                               ; preds = %2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @PERS_HITS, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @PERS_HITS, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %31, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %25
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @PERS_ATTACKEE_ARMOR, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @PERS_ATTACKEE_ARMOR, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 28), align 8
  %55 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %56 = call i32 @trap_S_StartLocalSound(i32 %54, i32 %55)
  br label %76

57:                                               ; preds = %25
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @PERS_HITS, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @PERS_HITS, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %63, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %57
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 27), align 4
  %73 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %74 = call i32 @trap_S_StartLocalSound(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %57
  br label %76

76:                                               ; preds = %75, %39
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @STAT_HEALTH, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @STAT_HEALTH, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %82, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %76
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @STAT_HEALTH, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %91
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @STAT_HEALTH, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = call i32 @CG_PainEvent(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 5), i64 %106)
  br label %108

108:                                              ; preds = %99, %91
  br label %109

109:                                              ; preds = %108, %76
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 4), align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %615

113:                                              ; preds = %109
  %114 = load i32, i32* @qfalse, align 4
  store i32 %114, i32* %8, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @PERS_CAPTURES, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @PERS_CAPTURES, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %120, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %113
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 26), align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 25), align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* @PERS_CAPTURES, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @pushReward(i32 %129, i32 %130, i32 %136)
  %138 = load i32, i32* @qtrue, align 4
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %128, %113
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %145, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %139
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 23), align 4
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 22), align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @PERS_IMPRESSIVE_COUNT, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @pushReward(i32 %155, i32 %156, i32 %162)
  %164 = load i32, i32* @qtrue, align 4
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %153, %139
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %171, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %165
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 20), align 8
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 19), align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @PERS_EXCELLENT_COUNT, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @pushReward(i32 %181, i32 %182, i32 %188)
  %190 = load i32, i32* @qtrue, align 4
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %179, %165
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %197, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %191
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 11), align 4
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 17), align 4
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @PERS_GAUNTLET_FRAG_COUNT, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @pushReward(i32 %207, i32 %208, i32 %214)
  %216 = load i32, i32* @qtrue, align 4
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %205, %191
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* @PERS_DEFEND_COUNT, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* @PERS_DEFEND_COUNT, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %223, %229
  br i1 %230, label %231, label %242

231:                                              ; preds = %217
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 16), align 8
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 15), align 4
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @PERS_DEFEND_COUNT, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @pushReward(i32 %232, i32 %233, i32 %239)
  %241 = load i32, i32* @qtrue, align 4
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %231, %217
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* @PERS_ASSIST_COUNT, align 8
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* @PERS_ASSIST_COUNT, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %248, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %242
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 14), align 8
  %258 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 13), align 4
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i64, i64* @PERS_ASSIST_COUNT, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @pushReward(i32 %257, i32 %258, i32 %264)
  %266 = load i32, i32* @qtrue, align 4
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %256, %242
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %273, %279
  br i1 %280, label %281, label %351

281:                                              ; preds = %267
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @PLAYEREVENT_DENIEDREWARD, align 4
  %289 = and i32 %287, %288
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @PLAYEREVENT_DENIEDREWARD, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %289, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %281
  %300 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 12), align 8
  %301 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %302 = call i32 @trap_S_StartLocalSound(i32 %300, i32 %301)
  br label %349

303:                                              ; preds = %281
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @PLAYEREVENT_GAUNTLETREWARD, align 4
  %311 = and i32 %309, %310
  %312 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @PLAYEREVENT_GAUNTLETREWARD, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %311, %319
  br i1 %320, label %321, label %325

321:                                              ; preds = %303
  %322 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 11), align 4
  %323 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %324 = call i32 @trap_S_StartLocalSound(i32 %322, i32 %323)
  br label %348

325:                                              ; preds = %303
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @PLAYEREVENT_HOLYSHIT, align 4
  %333 = and i32 %331, %332
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load i64, i64* @PERS_PLAYEREVENTS, align 8
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @PLAYEREVENT_HOLYSHIT, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %333, %341
  br i1 %342, label %343, label %347

343:                                              ; preds = %325
  %344 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 10), align 8
  %345 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %346 = call i32 @trap_S_StartLocalSound(i32 %344, i32 %345)
  br label %347

347:                                              ; preds = %343, %325
  br label %348

348:                                              ; preds = %347, %321
  br label %349

349:                                              ; preds = %348, %299
  %350 = load i32, i32* @qtrue, align 4
  store i32 %350, i32* %8, align 4
  br label %351

351:                                              ; preds = %349, %267
  %352 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %353 = load i64, i64* @GT_TEAM, align 8
  %354 = icmp sge i64 %352, %353
  br i1 %354, label %355, label %426

355:                                              ; preds = %351
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 2
  %358 = load i64*, i64** %357, align 8
  %359 = load i64, i64* @PW_REDFLAG, align 8
  %360 = getelementptr inbounds i64, i64* %358, i64 %359
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 2
  %364 = load i64*, i64** %363, align 8
  %365 = load i64, i64* @PW_REDFLAG, align 8
  %366 = getelementptr inbounds i64, i64* %364, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %361, %367
  br i1 %368, label %369, label %377

369:                                              ; preds = %355
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 2
  %372 = load i64*, i64** %371, align 8
  %373 = load i64, i64* @PW_REDFLAG, align 8
  %374 = getelementptr inbounds i64, i64* %372, i64 %373
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %421, label %377

377:                                              ; preds = %369, %355
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 2
  %380 = load i64*, i64** %379, align 8
  %381 = load i64, i64* @PW_BLUEFLAG, align 8
  %382 = getelementptr inbounds i64, i64* %380, i64 %381
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 2
  %386 = load i64*, i64** %385, align 8
  %387 = load i64, i64* @PW_BLUEFLAG, align 8
  %388 = getelementptr inbounds i64, i64* %386, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %383, %389
  br i1 %390, label %391, label %399

391:                                              ; preds = %377
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 2
  %394 = load i64*, i64** %393, align 8
  %395 = load i64, i64* @PW_BLUEFLAG, align 8
  %396 = getelementptr inbounds i64, i64* %394, i64 %395
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %421, label %399

399:                                              ; preds = %391, %377
  %400 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 2
  %402 = load i64*, i64** %401, align 8
  %403 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %404 = getelementptr inbounds i64, i64* %402, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 2
  %408 = load i64*, i64** %407, align 8
  %409 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %410 = getelementptr inbounds i64, i64* %408, i64 %409
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %405, %411
  br i1 %412, label %413, label %425

413:                                              ; preds = %399
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 2
  %416 = load i64*, i64** %415, align 8
  %417 = load i64, i64* @PW_NEUTRALFLAG, align 8
  %418 = getelementptr inbounds i64, i64* %416, i64 %417
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %413, %391, %369
  %422 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 9), align 4
  %423 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %424 = call i32 @trap_S_StartLocalSound(i32 %422, i32 %423)
  br label %425

425:                                              ; preds = %421, %413, %399
  br label %426

426:                                              ; preds = %425, %351
  %427 = load i32, i32* %8, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %493, label %429

429:                                              ; preds = %426
  %430 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 3), align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %492, label %432

432:                                              ; preds = %429
  %433 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 0
  %435 = load i32*, i32** %434, align 8
  %436 = load i64, i64* @PERS_RANK, align 8
  %437 = getelementptr inbounds i32, i32* %435, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 0
  %441 = load i32*, i32** %440, align 8
  %442 = load i64, i64* @PERS_RANK, align 8
  %443 = getelementptr inbounds i32, i32* %441, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %438, %444
  br i1 %445, label %446, label %491

446:                                              ; preds = %432
  %447 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %448 = load i64, i64* @GT_TEAM, align 8
  %449 = icmp slt i64 %447, %448
  br i1 %449, label %450, label %490

450:                                              ; preds = %446
  %451 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 0
  %453 = load i32*, i32** %452, align 8
  %454 = load i64, i64* @PERS_RANK, align 8
  %455 = getelementptr inbounds i32, i32* %453, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %450
  %459 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 8), align 8
  %460 = call i32 @CG_AddBufferedSound(i32 %459)
  br label %489

461:                                              ; preds = %450
  %462 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %462, i32 0, i32 0
  %464 = load i32*, i32** %463, align 8
  %465 = load i64, i64* @PERS_RANK, align 8
  %466 = getelementptr inbounds i32, i32* %464, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* @RANK_TIED_FLAG, align 4
  %469 = icmp eq i32 %467, %468
  br i1 %469, label %470, label %473

470:                                              ; preds = %461
  %471 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 7), align 4
  %472 = call i32 @CG_AddBufferedSound(i32 %471)
  br label %488

473:                                              ; preds = %461
  %474 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %474, i32 0, i32 0
  %476 = load i32*, i32** %475, align 8
  %477 = load i64, i64* @PERS_RANK, align 8
  %478 = getelementptr inbounds i32, i32* %476, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* @RANK_TIED_FLAG, align 4
  %481 = xor i32 %480, -1
  %482 = and i32 %479, %481
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %473
  %485 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 6), align 8
  %486 = call i32 @CG_AddBufferedSound(i32 %485)
  br label %487

487:                                              ; preds = %484, %473
  br label %488

488:                                              ; preds = %487, %470
  br label %489

489:                                              ; preds = %488, %458
  br label %490

490:                                              ; preds = %489, %446
  br label %491

491:                                              ; preds = %490, %432
  br label %492

492:                                              ; preds = %491, %429
  br label %493

493:                                              ; preds = %492, %426
  %494 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %495 = icmp sgt i32 %494, 0
  br i1 %495, label %496, label %556

496:                                              ; preds = %493
  %497 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %498 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 2), align 4
  %499 = sub nsw i32 %497, %498
  store i32 %499, i32* %10, align 4
  %500 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %501 = and i32 %500, 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %516, label %503

503:                                              ; preds = %496
  %504 = load i32, i32* %10, align 4
  %505 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %506 = mul nsw i32 %505, 60
  %507 = add nsw i32 %506, 2
  %508 = mul nsw i32 %507, 1000
  %509 = icmp sgt i32 %504, %508
  br i1 %509, label %510, label %516

510:                                              ; preds = %503
  %511 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %512 = or i32 %511, 7
  store i32 %512, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %513 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 5), align 4
  %514 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %515 = call i32 @trap_S_StartLocalSound(i32 %513, i32 %514)
  br label %555

516:                                              ; preds = %503, %496
  %517 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %518 = and i32 %517, 2
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %533, label %520

520:                                              ; preds = %516
  %521 = load i32, i32* %10, align 4
  %522 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %523 = sub nsw i32 %522, 1
  %524 = mul nsw i32 %523, 60
  %525 = mul nsw i32 %524, 1000
  %526 = icmp sgt i32 %521, %525
  br i1 %526, label %527, label %533

527:                                              ; preds = %520
  %528 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %529 = or i32 %528, 3
  store i32 %529, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %530 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 4), align 8
  %531 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %532 = call i32 @trap_S_StartLocalSound(i32 %530, i32 %531)
  br label %554

533:                                              ; preds = %520, %516
  %534 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %535 = icmp sgt i32 %534, 5
  br i1 %535, label %536, label %553

536:                                              ; preds = %533
  %537 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %538 = and i32 %537, 1
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %553, label %540

540:                                              ; preds = %536
  %541 = load i32, i32* %10, align 4
  %542 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 1), align 8
  %543 = sub nsw i32 %542, 5
  %544 = mul nsw i32 %543, 60
  %545 = mul nsw i32 %544, 1000
  %546 = icmp sgt i32 %541, %545
  br i1 %546, label %547, label %553

547:                                              ; preds = %540
  %548 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %549 = or i32 %548, 1
  store i32 %549, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 1), align 4
  %550 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 3), align 4
  %551 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %552 = call i32 @trap_S_StartLocalSound(i32 %550, i32 %551)
  br label %553

553:                                              ; preds = %547, %540, %536, %533
  br label %554

554:                                              ; preds = %553, %527
  br label %555

555:                                              ; preds = %554, %510
  br label %556

556:                                              ; preds = %555, %493
  %557 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %558 = icmp sgt i32 %557, 0
  br i1 %558, label %559, label %615

559:                                              ; preds = %556
  %560 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0), align 8
  %561 = load i64, i64* @GT_CTF, align 8
  %562 = icmp slt i64 %560, %561
  br i1 %562, label %563, label %615

563:                                              ; preds = %559
  %564 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 4), align 4
  store i32 %564, i32* %5, align 4
  %565 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %566 = and i32 %565, 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %578, label %568

568:                                              ; preds = %563
  %569 = load i32, i32* %5, align 4
  %570 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %571 = sub nsw i32 %570, 1
  %572 = icmp eq i32 %569, %571
  br i1 %572, label %573, label %578

573:                                              ; preds = %568
  %574 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %575 = or i32 %574, 7
  store i32 %575, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %576 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 2), align 8
  %577 = call i32 @CG_AddBufferedSound(i32 %576)
  br label %614

578:                                              ; preds = %568, %563
  %579 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %580 = icmp sgt i32 %579, 2
  br i1 %580, label %581, label %595

581:                                              ; preds = %578
  %582 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %583 = and i32 %582, 2
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %595, label %585

585:                                              ; preds = %581
  %586 = load i32, i32* %5, align 4
  %587 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %588 = sub nsw i32 %587, 2
  %589 = icmp eq i32 %586, %588
  br i1 %589, label %590, label %595

590:                                              ; preds = %585
  %591 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %592 = or i32 %591, 3
  store i32 %592, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %593 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 1), align 4
  %594 = call i32 @CG_AddBufferedSound(i32 %593)
  br label %613

595:                                              ; preds = %585, %581, %578
  %596 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %597 = icmp sgt i32 %596, 3
  br i1 %597, label %598, label %612

598:                                              ; preds = %595
  %599 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %600 = and i32 %599, 1
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %612, label %602

602:                                              ; preds = %598
  %603 = load i32, i32* %5, align 4
  %604 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 3), align 8
  %605 = sub nsw i32 %604, 3
  %606 = icmp eq i32 %603, %605
  br i1 %606, label %607, label %612

607:                                              ; preds = %602
  %608 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %609 = or i32 %608, 1
  store i32 %609, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 2), align 8
  %610 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 5, i32 0), align 8
  %611 = call i32 @CG_AddBufferedSound(i32 %610)
  br label %612

612:                                              ; preds = %607, %602, %598, %595
  br label %613

613:                                              ; preds = %612, %590
  br label %614

614:                                              ; preds = %613, %573
  br label %615

615:                                              ; preds = %24, %112, %614, %559, %556
  ret void
}

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

declare dso_local i32 @CG_PainEvent(i32*, i64) #1

declare dso_local i32 @pushReward(i32, i32, i32) #1

declare dso_local i32 @CG_AddBufferedSound(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
