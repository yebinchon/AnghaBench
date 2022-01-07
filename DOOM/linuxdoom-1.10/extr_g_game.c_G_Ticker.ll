; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_Ticker.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_Ticker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { i64 }

@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i64* null, align 8
@players = common dso_local global %struct.TYPE_9__* null, align 8
@PST_REBORN = common dso_local global i64 0, align 8
@gameaction = common dso_local global i32 0, align 4
@gametic = common dso_local global i32 0, align 4
@ticdup = common dso_local global i32 0, align 4
@BACKUPTICS = common dso_local global i32 0, align 4
@netcmds = common dso_local global i32** null, align 8
@demoplayback = common dso_local global i64 0, align 8
@demorecording = common dso_local global i64 0, align 8
@TURBOTHRESHOLD = common dso_local global i64 0, align 8
@G_Ticker.turbomessage = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"%s is turbo!\00", align 1
@player_names = external dso_local global [4 x i8*], align 16
@consoleplayer = common dso_local global i64 0, align 8
@netgame = common dso_local global i64 0, align 8
@netdemo = common dso_local global i32 0, align 4
@consistancy = common dso_local global i64** null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"consistency failure (%i should be %i)\00", align 1
@rndindex = common dso_local global i64 0, align 8
@BT_SPECIAL = common dso_local global i32 0, align 4
@BT_SPECIALMASK = common dso_local global i32 0, align 4
@paused = common dso_local global i32 0, align 4
@savedescription = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"NET GAME\00", align 1
@BTS_SAVEMASK = common dso_local global i32 0, align 4
@BTS_SAVESHIFT = common dso_local global i32 0, align 4
@savegameslot = common dso_local global i32 0, align 4
@gamestate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_Ticker() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %28, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MAXPLAYERS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = load i64*, i64** @playeringame, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @players, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PST_REBORN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @G_DoReborn(i32 %25)
  br label %27

27:                                               ; preds = %24, %15, %8
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %4

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i32, i32* @gameaction, align 4
  %34 = icmp ne i32 %33, 133
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i32, i32* @gameaction, align 4
  switch i32 %36, label %56 [
    i32 135, label %37
    i32 134, label %39
    i32 136, label %41
    i32 131, label %43
    i32 132, label %45
    i32 137, label %47
    i32 129, label %49
    i32 128, label %51
    i32 130, label %53
    i32 133, label %55
  ]

37:                                               ; preds = %35
  %38 = call i32 (...) @G_DoLoadLevel()
  br label %56

39:                                               ; preds = %35
  %40 = call i32 (...) @G_DoNewGame()
  br label %56

41:                                               ; preds = %35
  %42 = call i32 (...) @G_DoLoadGame()
  br label %56

43:                                               ; preds = %35
  %44 = call i32 (...) @G_DoSaveGame()
  br label %56

45:                                               ; preds = %35
  %46 = call i32 (...) @G_DoPlayDemo()
  br label %56

47:                                               ; preds = %35
  %48 = call i32 (...) @G_DoCompleted()
  br label %56

49:                                               ; preds = %35
  %50 = call i32 (...) @F_StartFinale()
  br label %56

51:                                               ; preds = %35
  %52 = call i32 (...) @G_DoWorldDone()
  br label %56

53:                                               ; preds = %35
  %54 = call i32 (...) @M_ScreenShot()
  store i32 133, i32* @gameaction, align 4
  br label %56

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %35, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37
  br label %32

57:                                               ; preds = %32
  %58 = load i32, i32* @gametic, align 4
  %59 = load i32, i32* @ticdup, align 4
  %60 = sdiv i32 %58, %59
  %61 = load i32, i32* @BACKUPTICS, align 4
  %62 = srem i32 %60, %61
  store i32 %62, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %208, %57
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @MAXPLAYERS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %211

67:                                               ; preds = %63
  %68 = load i64*, i64** @playeringame, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %207

74:                                               ; preds = %67
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @players, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %3, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = load i32**, i32*** @netcmds, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @memcpy(%struct.TYPE_8__* %80, i32* %88, i32 24)
  %90 = load i64, i64* @demoplayback, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = call i32 @G_ReadDemoTiccmd(%struct.TYPE_8__* %93)
  br label %95

95:                                               ; preds = %92, %74
  %96 = load i64, i64* @demorecording, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = call i32 @G_WriteDemoTiccmd(%struct.TYPE_8__* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TURBOTHRESHOLD, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %101
  %108 = load i32, i32* @gametic, align 4
  %109 = and i32 %108, 31
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @gametic, align 4
  %113 = ashr i32 %112, 5
  %114 = and i32 %113, 3
  %115 = load i32, i32* %1, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load i32, i32* %1, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i8*], [4 x i8*]* @player_names, i64 0, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @G_Ticker.turbomessage, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %121)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** @players, align 8
  %124 = load i64, i64* @consoleplayer, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @G_Ticker.turbomessage, i64 0, i64 0), i8** %126, align 8
  br label %127

127:                                              ; preds = %117, %111, %107, %101
  %128 = load i64, i64* @netgame, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %206

130:                                              ; preds = %127
  %131 = load i32, i32* @netdemo, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %206, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @gametic, align 4
  %135 = load i32, i32* @ticdup, align 4
  %136 = srem i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %206, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* @gametic, align 4
  %140 = load i32, i32* @BACKUPTICS, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %170

142:                                              ; preds = %138
  %143 = load i64**, i64*** @consistancy, align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64*, i64** %143, i64 %145
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %142
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64**, i64*** @consistancy, align 8
  %161 = load i32, i32* %1, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64*, i64** %160, i64 %162
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %2, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @I_Error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %159, i64 %168)
  br label %170

170:                                              ; preds = %156, %142, %138
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** @players, align 8
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = icmp ne %struct.TYPE_7__* %176, null
  br i1 %177, label %178, label %195

178:                                              ; preds = %170
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** @players, align 8
  %180 = load i32, i32* %1, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64**, i64*** @consistancy, align 8
  %188 = load i32, i32* %1, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64*, i64** %187, i64 %189
  %191 = load i64*, i64** %190, align 8
  %192 = load i32, i32* %2, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  store i64 %186, i64* %194, align 8
  br label %205

195:                                              ; preds = %170
  %196 = load i64, i64* @rndindex, align 8
  %197 = load i64**, i64*** @consistancy, align 8
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64*, i64** %197, i64 %199
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %2, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  store i64 %196, i64* %204, align 8
  br label %205

205:                                              ; preds = %195, %178
  br label %206

206:                                              ; preds = %205, %133, %130, %127
  br label %207

207:                                              ; preds = %206, %67
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %1, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %1, align 4
  br label %63

211:                                              ; preds = %63
  store i32 0, i32* %1, align 4
  br label %212

212:                                              ; preds = %277, %211
  %213 = load i32, i32* %1, align 4
  %214 = load i32, i32* @MAXPLAYERS, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %280

216:                                              ; preds = %212
  %217 = load i64*, i64** @playeringame, align 8
  %218 = load i32, i32* %1, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64, i64* %217, i64 %219
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %276

223:                                              ; preds = %216
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** @players, align 8
  %225 = load i32, i32* %1, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @BT_SPECIAL, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %275

234:                                              ; preds = %223
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** @players, align 8
  %236 = load i32, i32* %1, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @BT_SPECIALMASK, align 4
  %243 = and i32 %241, %242
  switch i32 %243, label %274 [
    i32 143, label %244
    i32 142, label %254
  ]

244:                                              ; preds = %234
  %245 = load i32, i32* @paused, align 4
  %246 = xor i32 %245, 1
  store i32 %246, i32* @paused, align 4
  %247 = load i32, i32* @paused, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = call i32 (...) @S_PauseSound()
  br label %253

251:                                              ; preds = %244
  %252 = call i32 (...) @S_ResumeSound()
  br label %253

253:                                              ; preds = %251, %249
  br label %274

254:                                              ; preds = %234
  %255 = load i32*, i32** @savedescription, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %254
  %260 = load i32*, i32** @savedescription, align 8
  %261 = call i32 @strcpy(i32* %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %254
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** @players, align 8
  %264 = load i32, i32* %1, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @BTS_SAVEMASK, align 4
  %271 = and i32 %269, %270
  %272 = load i32, i32* @BTS_SAVESHIFT, align 4
  %273 = ashr i32 %271, %272
  store i32 %273, i32* @savegameslot, align 4
  store i32 131, i32* @gameaction, align 4
  br label %274

274:                                              ; preds = %234, %262, %253
  br label %275

275:                                              ; preds = %274, %223
  br label %276

276:                                              ; preds = %275, %216
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %1, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %1, align 4
  br label %212

280:                                              ; preds = %212
  %281 = load i32, i32* @gamestate, align 4
  switch i32 %281, label %293 [
    i32 138, label %282
    i32 139, label %287
    i32 140, label %289
    i32 141, label %291
  ]

282:                                              ; preds = %280
  %283 = call i32 (...) @P_Ticker()
  %284 = call i32 (...) @ST_Ticker()
  %285 = call i32 (...) @AM_Ticker()
  %286 = call i32 (...) @HU_Ticker()
  br label %293

287:                                              ; preds = %280
  %288 = call i32 (...) @WI_Ticker()
  br label %293

289:                                              ; preds = %280
  %290 = call i32 (...) @F_Ticker()
  br label %293

291:                                              ; preds = %280
  %292 = call i32 (...) @D_PageTicker()
  br label %293

293:                                              ; preds = %280, %291, %289, %287, %282
  ret void
}

declare dso_local i32 @G_DoReborn(i32) #1

declare dso_local i32 @G_DoLoadLevel(...) #1

declare dso_local i32 @G_DoNewGame(...) #1

declare dso_local i32 @G_DoLoadGame(...) #1

declare dso_local i32 @G_DoSaveGame(...) #1

declare dso_local i32 @G_DoPlayDemo(...) #1

declare dso_local i32 @G_DoCompleted(...) #1

declare dso_local i32 @F_StartFinale(...) #1

declare dso_local i32 @G_DoWorldDone(...) #1

declare dso_local i32 @M_ScreenShot(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @G_ReadDemoTiccmd(%struct.TYPE_8__*) #1

declare dso_local i32 @G_WriteDemoTiccmd(%struct.TYPE_8__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @I_Error(i8*, i64, i64) #1

declare dso_local i32 @S_PauseSound(...) #1

declare dso_local i32 @S_ResumeSound(...) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @P_Ticker(...) #1

declare dso_local i32 @ST_Ticker(...) #1

declare dso_local i32 @AM_Ticker(...) #1

declare dso_local i32 @HU_Ticker(...) #1

declare dso_local i32 @WI_Ticker(...) #1

declare dso_local i32 @F_Ticker(...) #1

declare dso_local i32 @D_PageTicker(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
