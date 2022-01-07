; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_KeyboardCommands.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_KeyboardCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keys = common dso_local global i32 0, align 4
@InputType = common dso_local global i64* null, align 8
@SIFC_FKB = common dso_local global i64 0, align 8
@SCROLLLOCK = common dso_local global i32 0, align 4
@cidisabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Family Keyboard %sabled.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@LEFTSHIFT = common dso_local global i32 0, align 4
@RIGHTSHIFT = common dso_local global i32 0, align 4
@LEFTALT = common dso_local global i32 0, align 4
@RIGHTALT = common dso_local global i32 0, align 4
@F4 = common dso_local global i32 0, align 4
@NoWaiting = common dso_local global i32 0, align 4
@GRAVE = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GIT_FDS = common dso_local global i64 0, align 8
@F6 = common dso_local global i32 0, align 4
@F8 = common dso_local global i32 0, align 4
@F9 = common dso_local global i32 0, align 4
@GIT_NSF = common dso_local global i64 0, align 8
@F2 = common dso_local global i32 0, align 4
@F5 = common dso_local global i32 0, align 4
@F7 = common dso_local global i32 0, align 4
@F1 = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@EQUAL = common dso_local global i32 0, align 4
@BACKSPACE = common dso_local global i32 0, align 4
@BACKSLASH = common dso_local global i32 0, align 4
@RIGHTCONTROL = common dso_local global i32 0, align 4
@F10 = common dso_local global i32 0, align 4
@F11 = common dso_local global i32 0, align 4
@F12 = common dso_local global i32 0, align 4
@ESCAPE = common dso_local global i32 0, align 4
@GIT_VSUNI = common dso_local global i64 0, align 8
@DIPS = common dso_local global i32 0, align 4
@KeyboardCommands.bbuf = internal global [32 x i32] zeroinitializer, align 16
@KeyboardCommands.bbuft = internal global i32 0, align 4
@KeyboardCommands.barcoder = internal global i32 0, align 4
@H = common dso_local global i32 0, align 4
@T = common dso_local global i32 0, align 4
@KP_MINUS = common dso_local global i32 0, align 4
@KP_PLUS = common dso_local global i32 0, align 4
@SIFC_BWORLD = common dso_local global i64 0, align 8
@cspec = common dso_local global i64 0, align 8
@SIS_DATACH = common dso_local global i64 0, align 8
@BWorldData = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Barcode Entered\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Enter Barcode\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Barcode: %s\00", align 1
@ENTER = common dso_local global i32 0, align 4
@F3 = common dso_local global i32 0, align 4
@SDL_GRAB_OFF = common dso_local global i32 0, align 4
@SDL_GRAB_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @KeyboardCommands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @KeyboardCommands() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @GetKeyboard()
  store i32 %3, i32* @keys, align 4
  %4 = load i64*, i64** @InputType, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SIFC_FKB, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %0
  %10 = load i32, i32* @SCROLLLOCK, align 4
  %11 = call i64 @keyonly(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32, i32* @cidisabled, align 4
  %15 = xor i32 %14, 1
  store i32 %15, i32* @cidisabled, align 4
  %16 = load i32, i32* @cidisabled, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %13, %9
  %22 = load i32, i32* @cidisabled, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %591

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i32, i32* @LEFTSHIFT, align 4
  %28 = call i32 @KEY(i32 %27)
  %29 = load i32, i32* @RIGHTSHIFT, align 4
  %30 = call i32 @KEY(i32 %29)
  %31 = or i32 %28, %30
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* @LEFTALT, align 4
  %33 = call i32 @KEY(i32 %32)
  %34 = load i32, i32* @RIGHTALT, align 4
  %35 = call i32 @KEY(i32 %34)
  %36 = or i32 %33, %35
  store i32 %36, i32* %2, align 4
  %37 = load i32, i32* @F4, align 4
  %38 = call i64 @keyonly(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %26
  %41 = load i32, i32* %1, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @FCEUI_SetRenderDisable(i32 -1, i32 2)
  br label %47

45:                                               ; preds = %40
  %46 = call i32 @FCEUI_SetRenderDisable(i32 2, i32 -1)
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %26
  %49 = load i32, i32* @NoWaiting, align 4
  %50 = and i32 %49, -2
  store i32 %50, i32* @NoWaiting, align 4
  %51 = load i32, i32* @GRAVE, align 4
  %52 = call i32 @KEY(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @NoWaiting, align 4
  %56 = or i32 %55, 1
  store i32 %56, i32* @NoWaiting, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i64, i64* @gametype, align 8
  %59 = load i64, i64* @GIT_FDS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i32, i32* @F6, align 4
  %63 = call i64 @keyonly(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (...) @FCEUI_FDSSelect()
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* @F8, align 4
  %69 = call i64 @keyonly(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (...) @FCEUI_FDSInsert()
  br label %73

73:                                               ; preds = %71, %67
  br label %74

74:                                               ; preds = %73, %57
  %75 = load i32, i32* @F9, align 4
  %76 = call i64 @keyonly(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = call i32 (...) @FCEUI_SaveSnapshot()
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i64, i64* @gametype, align 8
  %82 = load i64, i64* @GIT_NSF, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %80
  %85 = load i32, i32* @F2, align 4
  %86 = call i64 @keyonly(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (...) @DoCheatSeq()
  br label %90

90:                                               ; preds = %88, %84
  %91 = load i32, i32* @F5, align 4
  %92 = call i64 @keyonly(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32, i32* %1, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @FCEUI_SaveMovie(i32* null, i32 0, i32* null)
  br label %101

99:                                               ; preds = %94
  %100 = call i32 @FCEUI_SaveState(i32* null)
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %90
  %103 = load i32, i32* @F7, align 4
  %104 = call i64 @keyonly(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32, i32* %1, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @FCEUI_LoadMovie(i32* null, i32 0)
  br label %113

111:                                              ; preds = %106
  %112 = call i32 @FCEUI_LoadState(i32* null)
  br label %113

113:                                              ; preds = %111, %109
  br label %114

114:                                              ; preds = %113, %102
  br label %115

115:                                              ; preds = %114, %80
  %116 = load i32, i32* @F1, align 4
  %117 = call i64 @keyonly(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 (...) @FCEUI_ToggleTileView()
  br label %121

121:                                              ; preds = %119, %115
  %122 = load i32, i32* @MINUS, align 4
  %123 = call i64 @keyonly(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 (...) @DecreaseEmulationSpeed()
  br label %127

127:                                              ; preds = %125, %121
  %128 = load i32, i32* @EQUAL, align 4
  %129 = call i64 @keyonly(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = call i32 (...) @IncreaseEmulationSpeed()
  br label %133

133:                                              ; preds = %131, %127
  %134 = load i32, i32* @BACKSPACE, align 4
  %135 = call i64 @keyonly(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = call i32 (...) @FCEUI_MovieToggleFrameDisplay()
  br label %139

139:                                              ; preds = %137, %133
  %140 = load i32, i32* @BACKSLASH, align 4
  %141 = call i64 @keyonly(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 (...) @FCEUI_ToggleEmulationPause()
  br label %145

145:                                              ; preds = %143, %139
  %146 = load i32, i32* @RIGHTCONTROL, align 4
  %147 = call i64 @keyonly(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = call i32 (...) @FCEUI_FrameAdvance()
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32, i32* @F10, align 4
  %153 = call i64 @keyonly(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = call i32 (...) @FCEUI_ResetNES()
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i32, i32* @F11, align 4
  %159 = call i64 @keyonly(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = call i32 (...) @FCEUI_PowerNES()
  br label %163

163:                                              ; preds = %161, %157
  %164 = load i32, i32* @F12, align 4
  %165 = call i32 @KEY(i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* @ESCAPE, align 4
  %169 = call i32 @KEY(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167, %163
  %172 = call i32 (...) @CloseGame()
  br label %173

173:                                              ; preds = %171, %167
  %174 = load i64, i64* @gametype, align 8
  %175 = load i64, i64* @GIT_VSUNI, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %237

177:                                              ; preds = %173
  %178 = load i32, i32* @F8, align 4
  %179 = call i64 @keyonly(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = call i32 (...) @FCEUI_VSUniCoin()
  br label %183

183:                                              ; preds = %181, %177
  %184 = load i32, i32* @F6, align 4
  %185 = call i64 @keyonly(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32, i32* @DIPS, align 4
  %189 = xor i32 %188, 1
  store i32 %189, i32* @DIPS, align 4
  %190 = call i32 (...) @FCEUI_VSUniToggleDIPView()
  br label %191

191:                                              ; preds = %187, %183
  %192 = load i32, i32* @DIPS, align 4
  %193 = and i32 %192, 1
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  br label %310

196:                                              ; preds = %191
  %197 = call i64 @keyonly(i32 1)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = call i32 @FCEUI_VSUniToggleDIP(i32 0)
  br label %201

201:                                              ; preds = %199, %196
  %202 = call i64 @keyonly(i32 2)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = call i32 @FCEUI_VSUniToggleDIP(i32 1)
  br label %206

206:                                              ; preds = %204, %201
  %207 = call i64 @keyonly(i32 3)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %206
  %210 = call i32 @FCEUI_VSUniToggleDIP(i32 2)
  br label %211

211:                                              ; preds = %209, %206
  %212 = call i64 @keyonly(i32 4)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = call i32 @FCEUI_VSUniToggleDIP(i32 3)
  br label %216

216:                                              ; preds = %214, %211
  %217 = call i64 @keyonly(i32 5)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = call i32 @FCEUI_VSUniToggleDIP(i32 4)
  br label %221

221:                                              ; preds = %219, %216
  %222 = call i64 @keyonly(i32 6)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = call i32 @FCEUI_VSUniToggleDIP(i32 5)
  br label %226

226:                                              ; preds = %224, %221
  %227 = call i64 @keyonly(i32 7)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = call i32 @FCEUI_VSUniToggleDIP(i32 6)
  br label %231

231:                                              ; preds = %229, %226
  %232 = call i64 @keyonly(i32 8)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = call i32 @FCEUI_VSUniToggleDIP(i32 7)
  br label %236

236:                                              ; preds = %234, %231
  br label %591

237:                                              ; preds = %173
  %238 = load i32, i32* @H, align 4
  %239 = call i64 @keyonly(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %237
  %242 = call i32 (...) @FCEUI_NTSCSELHUE()
  br label %243

243:                                              ; preds = %241, %237
  %244 = load i32, i32* @T, align 4
  %245 = call i64 @keyonly(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %243
  %248 = call i32 (...) @FCEUI_NTSCSELTINT()
  br label %249

249:                                              ; preds = %247, %243
  %250 = load i32, i32* @KP_MINUS, align 4
  %251 = call i32 @KEY(i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = load i32, i32* @MINUS, align 4
  %255 = call i32 @KEY(i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %253, %249
  %258 = call i32 (...) @FCEUI_NTSCDEC()
  br label %259

259:                                              ; preds = %257, %253
  %260 = load i32, i32* @KP_PLUS, align 4
  %261 = call i32 @KEY(i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %259
  %264 = load i32, i32* @EQUAL, align 4
  %265 = call i32 @KEY(i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %263, %259
  %268 = call i32 (...) @FCEUI_NTSCINC()
  br label %269

269:                                              ; preds = %267, %263
  %270 = load i64*, i64** @InputType, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 2
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @SIFC_BWORLD, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %279, label %275

275:                                              ; preds = %269
  %276 = load i64, i64* @cspec, align 8
  %277 = load i64, i64* @SIS_DATACH, align 8
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %308

279:                                              ; preds = %275, %269
  %280 = load i32, i32* @F8, align 4
  %281 = call i64 @keyonly(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %307

283:                                              ; preds = %279
  %284 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %285 = xor i32 %284, 1
  store i32 %285, i32* @KeyboardCommands.barcoder, align 4
  %286 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %304, label %288

288:                                              ; preds = %283
  %289 = load i64*, i64** @InputType, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 2
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @SIFC_BWORLD, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %288
  %295 = load i32*, i32** @BWorldData, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 1
  %297 = call i32 @strcpy(i32* %296, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  %298 = load i32*, i32** @BWorldData, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 0
  store i32 1, i32* %299, align 4
  br label %302

300:                                              ; preds = %288
  %301 = call i32 @FCEUI_DatachSet(i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %302

302:                                              ; preds = %300, %294
  %303 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %306

304:                                              ; preds = %283
  store i32 0, i32* @KeyboardCommands.bbuft, align 4
  %305 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %306

306:                                              ; preds = %304, %302
  br label %307

307:                                              ; preds = %306, %279
  br label %309

308:                                              ; preds = %275
  store i32 0, i32* @KeyboardCommands.barcoder, align 4
  br label %309

309:                                              ; preds = %308, %307
  br label %310

310:                                              ; preds = %309, %195
  %311 = call i64 @keyonly(i32 0)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %338

313:                                              ; preds = %310
  %314 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %329

316:                                              ; preds = %313
  %317 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %318 = icmp slt i32 %317, 13
  br i1 %318, label %319, label %327

319:                                              ; preds = %316
  %320 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* @KeyboardCommands.bbuft, align 4
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %322
  store i32 48, i32* %323, align 4
  %324 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %325
  store i32 0, i32* %326, align 4
  br label %327

327:                                              ; preds = %319, %316
  %328 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %337

329:                                              ; preds = %313
  %330 = load i32, i32* %1, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  %333 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 0, i32 1)
  br label %336

334:                                              ; preds = %329
  %335 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 0, i32 1)
  br label %336

336:                                              ; preds = %334, %332
  br label %337

337:                                              ; preds = %336, %327
  br label %338

338:                                              ; preds = %337, %310
  %339 = call i64 @keyonly(i32 1)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %366

341:                                              ; preds = %338
  %342 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %357

344:                                              ; preds = %341
  %345 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %346 = icmp slt i32 %345, 13
  br i1 %346, label %347, label %355

347:                                              ; preds = %344
  %348 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* @KeyboardCommands.bbuft, align 4
  %350 = sext i32 %348 to i64
  %351 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %350
  store i32 49, i32* %351, align 4
  %352 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %353
  store i32 0, i32* %354, align 4
  br label %355

355:                                              ; preds = %347, %344
  %356 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %365

357:                                              ; preds = %341
  %358 = load i32, i32* %1, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %357
  %361 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 1, i32 1)
  br label %364

362:                                              ; preds = %357
  %363 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 1, i32 1)
  br label %364

364:                                              ; preds = %362, %360
  br label %365

365:                                              ; preds = %364, %355
  br label %366

366:                                              ; preds = %365, %338
  %367 = call i64 @keyonly(i32 2)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %394

369:                                              ; preds = %366
  %370 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %385

372:                                              ; preds = %369
  %373 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %374 = icmp slt i32 %373, 13
  br i1 %374, label %375, label %383

375:                                              ; preds = %372
  %376 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* @KeyboardCommands.bbuft, align 4
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %378
  store i32 50, i32* %379, align 4
  %380 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %381
  store i32 0, i32* %382, align 4
  br label %383

383:                                              ; preds = %375, %372
  %384 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %393

385:                                              ; preds = %369
  %386 = load i32, i32* %1, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %385
  %389 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 2, i32 1)
  br label %392

390:                                              ; preds = %385
  %391 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 2, i32 1)
  br label %392

392:                                              ; preds = %390, %388
  br label %393

393:                                              ; preds = %392, %383
  br label %394

394:                                              ; preds = %393, %366
  %395 = call i64 @keyonly(i32 3)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %422

397:                                              ; preds = %394
  %398 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %413

400:                                              ; preds = %397
  %401 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %402 = icmp slt i32 %401, 13
  br i1 %402, label %403, label %411

403:                                              ; preds = %400
  %404 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* @KeyboardCommands.bbuft, align 4
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %406
  store i32 51, i32* %407, align 4
  %408 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %409
  store i32 0, i32* %410, align 4
  br label %411

411:                                              ; preds = %403, %400
  %412 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %421

413:                                              ; preds = %397
  %414 = load i32, i32* %1, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %413
  %417 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 3, i32 1)
  br label %420

418:                                              ; preds = %413
  %419 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 3, i32 1)
  br label %420

420:                                              ; preds = %418, %416
  br label %421

421:                                              ; preds = %420, %411
  br label %422

422:                                              ; preds = %421, %394
  %423 = call i64 @keyonly(i32 4)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %450

425:                                              ; preds = %422
  %426 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %441

428:                                              ; preds = %425
  %429 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %430 = icmp slt i32 %429, 13
  br i1 %430, label %431, label %439

431:                                              ; preds = %428
  %432 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* @KeyboardCommands.bbuft, align 4
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %434
  store i32 52, i32* %435, align 4
  %436 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %437
  store i32 0, i32* %438, align 4
  br label %439

439:                                              ; preds = %431, %428
  %440 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %449

441:                                              ; preds = %425
  %442 = load i32, i32* %1, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %446

444:                                              ; preds = %441
  %445 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 4, i32 1)
  br label %448

446:                                              ; preds = %441
  %447 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 4, i32 1)
  br label %448

448:                                              ; preds = %446, %444
  br label %449

449:                                              ; preds = %448, %439
  br label %450

450:                                              ; preds = %449, %422
  %451 = call i64 @keyonly(i32 5)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %478

453:                                              ; preds = %450
  %454 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %469

456:                                              ; preds = %453
  %457 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %458 = icmp slt i32 %457, 13
  br i1 %458, label %459, label %467

459:                                              ; preds = %456
  %460 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* @KeyboardCommands.bbuft, align 4
  %462 = sext i32 %460 to i64
  %463 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %462
  store i32 53, i32* %463, align 4
  %464 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %465
  store i32 0, i32* %466, align 4
  br label %467

467:                                              ; preds = %459, %456
  %468 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %477

469:                                              ; preds = %453
  %470 = load i32, i32* %1, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %474

472:                                              ; preds = %469
  %473 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 5, i32 1)
  br label %476

474:                                              ; preds = %469
  %475 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 5, i32 1)
  br label %476

476:                                              ; preds = %474, %472
  br label %477

477:                                              ; preds = %476, %467
  br label %478

478:                                              ; preds = %477, %450
  %479 = call i64 @keyonly(i32 6)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %506

481:                                              ; preds = %478
  %482 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %497

484:                                              ; preds = %481
  %485 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %486 = icmp slt i32 %485, 13
  br i1 %486, label %487, label %495

487:                                              ; preds = %484
  %488 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* @KeyboardCommands.bbuft, align 4
  %490 = sext i32 %488 to i64
  %491 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %490
  store i32 54, i32* %491, align 4
  %492 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %493
  store i32 0, i32* %494, align 4
  br label %495

495:                                              ; preds = %487, %484
  %496 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %505

497:                                              ; preds = %481
  %498 = load i32, i32* %1, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %502

500:                                              ; preds = %497
  %501 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 6, i32 1)
  br label %504

502:                                              ; preds = %497
  %503 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 6, i32 1)
  br label %504

504:                                              ; preds = %502, %500
  br label %505

505:                                              ; preds = %504, %495
  br label %506

506:                                              ; preds = %505, %478
  %507 = call i64 @keyonly(i32 7)
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %534

509:                                              ; preds = %506
  %510 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %525

512:                                              ; preds = %509
  %513 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %514 = icmp slt i32 %513, 13
  br i1 %514, label %515, label %523

515:                                              ; preds = %512
  %516 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* @KeyboardCommands.bbuft, align 4
  %518 = sext i32 %516 to i64
  %519 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %518
  store i32 55, i32* %519, align 4
  %520 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %521
  store i32 0, i32* %522, align 4
  br label %523

523:                                              ; preds = %515, %512
  %524 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %533

525:                                              ; preds = %509
  %526 = load i32, i32* %1, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %530

528:                                              ; preds = %525
  %529 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 7, i32 1)
  br label %532

530:                                              ; preds = %525
  %531 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 7, i32 1)
  br label %532

532:                                              ; preds = %530, %528
  br label %533

533:                                              ; preds = %532, %523
  br label %534

534:                                              ; preds = %533, %506
  %535 = call i64 @keyonly(i32 8)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %562

537:                                              ; preds = %534
  %538 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %553

540:                                              ; preds = %537
  %541 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %542 = icmp slt i32 %541, 13
  br i1 %542, label %543, label %551

543:                                              ; preds = %540
  %544 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* @KeyboardCommands.bbuft, align 4
  %546 = sext i32 %544 to i64
  %547 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %546
  store i32 56, i32* %547, align 4
  %548 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %549
  store i32 0, i32* %550, align 4
  br label %551

551:                                              ; preds = %543, %540
  %552 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %561

553:                                              ; preds = %537
  %554 = load i32, i32* %1, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %558

556:                                              ; preds = %553
  %557 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 8, i32 1)
  br label %560

558:                                              ; preds = %553
  %559 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 8, i32 1)
  br label %560

560:                                              ; preds = %558, %556
  br label %561

561:                                              ; preds = %560, %551
  br label %562

562:                                              ; preds = %561, %534
  %563 = call i64 @keyonly(i32 9)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %590

565:                                              ; preds = %562
  %566 = load i32, i32* @KeyboardCommands.barcoder, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %581

568:                                              ; preds = %565
  %569 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %570 = icmp slt i32 %569, 13
  br i1 %570, label %571, label %579

571:                                              ; preds = %568
  %572 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* @KeyboardCommands.bbuft, align 4
  %574 = sext i32 %572 to i64
  %575 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %574
  store i32 57, i32* %575, align 4
  %576 = load i32, i32* @KeyboardCommands.bbuft, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 %577
  store i32 0, i32* %578, align 4
  br label %579

579:                                              ; preds = %571, %568
  %580 = call i32 (i8*, ...) @FCEUI_DispMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([32 x i32], [32 x i32]* @KeyboardCommands.bbuf, i64 0, i64 0))
  br label %589

581:                                              ; preds = %565
  %582 = load i32, i32* %1, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %586

584:                                              ; preds = %581
  %585 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectMovie to i32 (i32, i32, ...)*)(i32 9, i32 1)
  br label %588

586:                                              ; preds = %581
  %587 = call i32 (i32, i32, ...) bitcast (i32 (...)* @FCEUI_SelectState to i32 (i32, i32, ...)*)(i32 9, i32 1)
  br label %588

588:                                              ; preds = %586, %584
  br label %589

589:                                              ; preds = %588, %579
  br label %590

590:                                              ; preds = %589, %562
  br label %591

591:                                              ; preds = %24, %590, %236
  ret void
}

declare dso_local i32 @GetKeyboard(...) #1

declare dso_local i64 @keyonly(i32) #1

declare dso_local i32 @FCEUI_DispMessage(i8*, ...) #1

declare dso_local i32 @KEY(i32) #1

declare dso_local i32 @FCEUI_SetRenderDisable(i32, i32) #1

declare dso_local i32 @FCEUI_FDSSelect(...) #1

declare dso_local i32 @FCEUI_FDSInsert(...) #1

declare dso_local i32 @FCEUI_SaveSnapshot(...) #1

declare dso_local i32 @DoCheatSeq(...) #1

declare dso_local i32 @FCEUI_SaveMovie(i32*, i32, i32*) #1

declare dso_local i32 @FCEUI_SaveState(i32*) #1

declare dso_local i32 @FCEUI_LoadMovie(i32*, i32) #1

declare dso_local i32 @FCEUI_LoadState(i32*) #1

declare dso_local i32 @FCEUI_ToggleTileView(...) #1

declare dso_local i32 @DecreaseEmulationSpeed(...) #1

declare dso_local i32 @IncreaseEmulationSpeed(...) #1

declare dso_local i32 @FCEUI_MovieToggleFrameDisplay(...) #1

declare dso_local i32 @FCEUI_ToggleEmulationPause(...) #1

declare dso_local i32 @FCEUI_FrameAdvance(...) #1

declare dso_local i32 @FCEUI_ResetNES(...) #1

declare dso_local i32 @FCEUI_PowerNES(...) #1

declare dso_local i32 @CloseGame(...) #1

declare dso_local i32 @FCEUI_VSUniCoin(...) #1

declare dso_local i32 @FCEUI_VSUniToggleDIPView(...) #1

declare dso_local i32 @FCEUI_VSUniToggleDIP(i32) #1

declare dso_local i32 @FCEUI_NTSCSELHUE(...) #1

declare dso_local i32 @FCEUI_NTSCSELTINT(...) #1

declare dso_local i32 @FCEUI_NTSCDEC(...) #1

declare dso_local i32 @FCEUI_NTSCINC(...) #1

declare dso_local i32 @strcpy(i32*, i32*) #1

declare dso_local i32 @FCEUI_DatachSet(i32*) #1

declare dso_local i32 @FCEUI_SelectMovie(...) #1

declare dso_local i32 @FCEUI_SelectState(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
