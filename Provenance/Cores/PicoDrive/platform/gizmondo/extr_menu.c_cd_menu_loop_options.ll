; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_cd_menu_loop_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_cd_menu_loop_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_names_t = type { i64*, i64*, i64* }

@cd_menu_loop_options.menu_sel = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"NOT FOUND\00", align 1
@PBTN_UP = common dso_local global i64 0, align 8
@PBTN_DOWN = common dso_local global i64 0, align 8
@PBTN_LEFT = common dso_local global i64 0, align 8
@PBTN_RIGHT = common dso_local global i64 0, align 8
@PBTN_PLAY = common dso_local global i64 0, align 8
@PBTN_STOP = common dso_local global i64 0, align 8
@PBTN_REW = common dso_local global i64 0, align 8
@cdopt_entries = common dso_local global i32 0, align 4
@CDOPT_ENTRY_COUNT = common dso_local global i32 0, align 4
@MA_CDOPT_READAHEAD = common dso_local global i32 0, align 4
@PicoCDBuffers = common dso_local global i32 0, align 4
@MA_CDOPT_DONE = common dso_local global i32 0, align 4
@romFileName = common dso_local global i64* null, align 8
@PGS_ReloadRom = common dso_local global i32 0, align 4
@engineState = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cd_menu_loop_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cd_menu_loop_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.bios_names_t, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 10, i32* %1, align 4
  store i64 0, i64* %2, align 8
  %7 = call i64 @emu_findBios(i32 4, i8** %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %0
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %28, %9
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ugt i8* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 47
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i1 [ false, %16 ], [ %24, %20 ]
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %30, i8** %6, align 8
  br label %16

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %3, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strncpy(i64* %41, i8* %42, i32 8)
  %44 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %3, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 7
  store i64 0, i64* %46, align 8
  br label %51

47:                                               ; preds = %0
  %48 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %3, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = call i32 @strcpy(i64* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %47, %39
  %52 = call i64 @emu_findBios(i32 8, i8** %5)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %73, %54
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ugt i8* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 47
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i1 [ false, %61 ], [ %69, %65 ]
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %75, i8** %6, align 8
  br label %61

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 47
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %6, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %3, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @strncpy(i64* %86, i8* %87, i32 8)
  %89 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %3, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 7
  store i64 0, i64* %91, align 8
  br label %96

92:                                               ; preds = %51
  %93 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %3, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @strcpy(i64* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %92, %84
  %97 = call i64 @emu_findBios(i32 1, i8** %5)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %137

99:                                               ; preds = %96
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = getelementptr inbounds i8, i8* %104, i64 -1
  store i8* %105, i8** %6, align 8
  br label %106

106:                                              ; preds = %118, %99
  %107 = load i8*, i8** %6, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = icmp ugt i8* %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 47
  br label %115

115:                                              ; preds = %110, %106
  %116 = phi i1 [ false, %106 ], [ %114, %110 ]
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 -1
  store i8* %120, i8** %6, align 8
  br label %106

121:                                              ; preds = %115
  %122 = load i8*, i8** %6, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 47
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i8*, i8** %6, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %6, align 8
  br label %129

129:                                              ; preds = %126, %121
  %130 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %3, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @strncpy(i64* %131, i8* %132, i32 8)
  %134 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %3, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 7
  store i64 0, i64* %136, align 8
  br label %141

137:                                              ; preds = %96
  %138 = getelementptr inbounds %struct.bios_names_t, %struct.bios_names_t* %3, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = call i32 @strcpy(i64* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %129
  br label %142

142:                                              ; preds = %292, %141
  %143 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %144 = call i32 @draw_cd_menu_options(i32 %143, %struct.bios_names_t* %3)
  %145 = load i64, i64* @PBTN_UP, align 8
  %146 = load i64, i64* @PBTN_DOWN, align 8
  %147 = or i64 %145, %146
  %148 = load i64, i64* @PBTN_LEFT, align 8
  %149 = or i64 %147, %148
  %150 = load i64, i64* @PBTN_RIGHT, align 8
  %151 = or i64 %149, %150
  %152 = load i64, i64* @PBTN_PLAY, align 8
  %153 = or i64 %151, %152
  %154 = load i64, i64* @PBTN_STOP, align 8
  %155 = or i64 %153, %154
  %156 = load i64, i64* @PBTN_REW, align 8
  %157 = or i64 %155, %156
  %158 = call i64 @in_menu_wait(i64 %157)
  store i64 %158, i64* %2, align 8
  %159 = load i64, i64* %2, align 8
  %160 = load i64, i64* @PBTN_UP, align 8
  %161 = and i64 %159, %160
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %142
  %164 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* @cd_menu_loop_options.menu_sel, align 4
  %166 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* %1, align 4
  store i32 %169, i32* @cd_menu_loop_options.menu_sel, align 4
  br label %170

170:                                              ; preds = %168, %163
  br label %171

171:                                              ; preds = %170, %142
  %172 = load i64, i64* %2, align 8
  %173 = load i64, i64* @PBTN_DOWN, align 8
  %174 = and i64 %172, %173
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @cd_menu_loop_options.menu_sel, align 4
  %179 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %180 = load i32, i32* %1, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i32 0, i32* @cd_menu_loop_options.menu_sel, align 4
  br label %183

183:                                              ; preds = %182, %176
  br label %184

184:                                              ; preds = %183, %171
  %185 = load i32, i32* @cdopt_entries, align 4
  %186 = load i32, i32* @CDOPT_ENTRY_COUNT, align 4
  %187 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %188 = call i32 @me_index2id(i32 %185, i32 %186, i32 %187)
  store i32 %188, i32* %4, align 4
  %189 = load i64, i64* %2, align 8
  %190 = load i64, i64* @PBTN_LEFT, align 8
  %191 = load i64, i64* @PBTN_RIGHT, align 8
  %192 = or i64 %190, %191
  %193 = and i64 %189, %192
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %237

195:                                              ; preds = %184
  %196 = load i32, i32* @cdopt_entries, align 4
  %197 = load i32, i32* @CDOPT_ENTRY_COUNT, align 4
  %198 = load i32, i32* %4, align 4
  %199 = load i64, i64* %2, align 8
  %200 = load i64, i64* @PBTN_RIGHT, align 8
  %201 = and i64 %199, %200
  %202 = icmp ne i64 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 1, i32 0
  %205 = call i32 @me_process(i32 %196, i32 %197, i32 %198, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %236, label %207

207:                                              ; preds = %195
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @MA_CDOPT_READAHEAD, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %236

211:                                              ; preds = %207
  %212 = load i64, i64* %2, align 8
  %213 = load i64, i64* @PBTN_LEFT, align 8
  %214 = and i64 %212, %213
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %211
  %217 = load i32, i32* @PicoCDBuffers, align 4
  %218 = ashr i32 %217, 1
  store i32 %218, i32* @PicoCDBuffers, align 4
  %219 = load i32, i32* @PicoCDBuffers, align 4
  %220 = icmp slt i32 %219, 2
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  store i32 0, i32* @PicoCDBuffers, align 4
  br label %222

222:                                              ; preds = %221, %216
  br label %235

223:                                              ; preds = %211
  %224 = load i32, i32* @PicoCDBuffers, align 4
  %225 = icmp slt i32 %224, 2
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 2, i32* @PicoCDBuffers, align 4
  br label %230

227:                                              ; preds = %223
  %228 = load i32, i32* @PicoCDBuffers, align 4
  %229 = shl i32 %228, 1
  store i32 %229, i32* @PicoCDBuffers, align 4
  br label %230

230:                                              ; preds = %227, %226
  %231 = load i32, i32* @PicoCDBuffers, align 4
  %232 = icmp sgt i32 %231, 8192
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  store i32 8192, i32* @PicoCDBuffers, align 4
  br label %234

234:                                              ; preds = %233, %230
  br label %235

235:                                              ; preds = %234, %222
  br label %236

236:                                              ; preds = %235, %207, %195
  br label %237

237:                                              ; preds = %236, %184
  %238 = load i64, i64* %2, align 8
  %239 = load i64, i64* @PBTN_PLAY, align 8
  %240 = and i64 %238, %239
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %284

242:                                              ; preds = %237
  %243 = load i32, i32* @cdopt_entries, align 4
  %244 = load i32, i32* @CDOPT_ENTRY_COUNT, align 4
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @me_process(i32 %243, i32 %244, i32 %245, i32 1)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %242
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @MA_CDOPT_DONE, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %293

253:                                              ; preds = %248, %242
  %254 = load i32, i32* %4, align 4
  switch i32 %254, label %282 [
    i32 128, label %255
    i32 130, label %264
    i32 129, label %273
  ]

255:                                              ; preds = %253
  %256 = call i64 @emu_findBios(i32 4, i8** %5)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load i64*, i64** @romFileName, align 8
  %260 = load i8*, i8** %5, align 8
  %261 = call i32 @strcpy(i64* %259, i8* %260)
  %262 = load i32, i32* @PGS_ReloadRom, align 4
  store i32 %262, i32* @engineState, align 4
  br label %293

263:                                              ; preds = %255
  br label %283

264:                                              ; preds = %253
  %265 = call i64 @emu_findBios(i32 8, i8** %5)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = load i64*, i64** @romFileName, align 8
  %269 = load i8*, i8** %5, align 8
  %270 = call i32 @strcpy(i64* %268, i8* %269)
  %271 = load i32, i32* @PGS_ReloadRom, align 4
  store i32 %271, i32* @engineState, align 4
  br label %293

272:                                              ; preds = %264
  br label %283

273:                                              ; preds = %253
  %274 = call i64 @emu_findBios(i32 1, i8** %5)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i64*, i64** @romFileName, align 8
  %278 = load i8*, i8** %5, align 8
  %279 = call i32 @strcpy(i64* %277, i8* %278)
  %280 = load i32, i32* @PGS_ReloadRom, align 4
  store i32 %280, i32* @engineState, align 4
  br label %293

281:                                              ; preds = %273
  br label %283

282:                                              ; preds = %253
  br label %283

283:                                              ; preds = %282, %281, %272, %263
  br label %284

284:                                              ; preds = %283, %237
  %285 = load i64, i64* %2, align 8
  %286 = load i64, i64* @PBTN_STOP, align 8
  %287 = load i64, i64* @PBTN_REW, align 8
  %288 = or i64 %286, %287
  %289 = and i64 %285, %288
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %284
  br label %293

292:                                              ; preds = %284
  br label %142

293:                                              ; preds = %291, %276, %267, %258, %252
  ret void
}

declare dso_local i64 @emu_findBios(i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @draw_cd_menu_options(i32, %struct.bios_names_t*) #1

declare dso_local i64 @in_menu_wait(i64) #1

declare dso_local i32 @me_index2id(i32, i32, i32) #1

declare dso_local i32 @me_process(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
