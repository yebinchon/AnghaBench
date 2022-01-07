; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_cd_menu_loop_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_cd_menu_loop_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_names_t = type { i64*, i64*, i64* }

@cd_menu_loop_options.menu_sel = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"NOT FOUND\00", align 1
@menuErrorMsg = common dso_local global i64* null, align 8
@PBTN_UP = common dso_local global i64 0, align 8
@PBTN_DOWN = common dso_local global i64 0, align 8
@PBTN_LEFT = common dso_local global i64 0, align 8
@PBTN_RIGHT = common dso_local global i64 0, align 8
@PBTN_X = common dso_local global i64 0, align 8
@PBTN_CIRCLE = common dso_local global i64 0, align 8
@PBTN_START = common dso_local global i64 0, align 8
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
  %142 = load i64*, i64** @menuErrorMsg, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  store i64 0, i64* %143, align 8
  br label %144

144:                                              ; preds = %298, %141
  %145 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %146 = call i32 @draw_cd_menu_options(i32 %145, %struct.bios_names_t* %3)
  %147 = load i64, i64* @PBTN_UP, align 8
  %148 = load i64, i64* @PBTN_DOWN, align 8
  %149 = or i64 %147, %148
  %150 = load i64, i64* @PBTN_LEFT, align 8
  %151 = or i64 %149, %150
  %152 = load i64, i64* @PBTN_RIGHT, align 8
  %153 = or i64 %151, %152
  %154 = load i64, i64* @PBTN_X, align 8
  %155 = or i64 %153, %154
  %156 = load i64, i64* @PBTN_CIRCLE, align 8
  %157 = or i64 %155, %156
  %158 = load i64, i64* @PBTN_START, align 8
  %159 = or i64 %157, %158
  %160 = call i64 @in_menu_wait(i64 %159, i32 0)
  store i64 %160, i64* %2, align 8
  %161 = load i64, i64* %2, align 8
  %162 = load i64, i64* @PBTN_UP, align 8
  %163 = and i64 %161, %162
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %144
  %166 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* @cd_menu_loop_options.menu_sel, align 4
  %168 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* %1, align 4
  store i32 %171, i32* @cd_menu_loop_options.menu_sel, align 4
  br label %172

172:                                              ; preds = %170, %165
  br label %173

173:                                              ; preds = %172, %144
  %174 = load i64, i64* %2, align 8
  %175 = load i64, i64* @PBTN_DOWN, align 8
  %176 = and i64 %174, %175
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @cd_menu_loop_options.menu_sel, align 4
  %181 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %182 = load i32, i32* %1, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  store i32 0, i32* @cd_menu_loop_options.menu_sel, align 4
  br label %185

185:                                              ; preds = %184, %178
  br label %186

186:                                              ; preds = %185, %173
  %187 = load i32, i32* @cdopt_entries, align 4
  %188 = load i32, i32* @CDOPT_ENTRY_COUNT, align 4
  %189 = load i32, i32* @cd_menu_loop_options.menu_sel, align 4
  %190 = call i32 @me_index2id(i32 %187, i32 %188, i32 %189)
  store i32 %190, i32* %4, align 4
  %191 = load i64, i64* %2, align 8
  %192 = load i64, i64* @PBTN_LEFT, align 8
  %193 = load i64, i64* @PBTN_RIGHT, align 8
  %194 = or i64 %192, %193
  %195 = and i64 %191, %194
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %239

197:                                              ; preds = %186
  %198 = load i32, i32* @cdopt_entries, align 4
  %199 = load i32, i32* @CDOPT_ENTRY_COUNT, align 4
  %200 = load i32, i32* %4, align 4
  %201 = load i64, i64* %2, align 8
  %202 = load i64, i64* @PBTN_RIGHT, align 8
  %203 = and i64 %201, %202
  %204 = icmp ne i64 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 1, i32 0
  %207 = call i32 @me_process(i32 %198, i32 %199, i32 %200, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %238, label %209

209:                                              ; preds = %197
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @MA_CDOPT_READAHEAD, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %238

213:                                              ; preds = %209
  %214 = load i64, i64* %2, align 8
  %215 = load i64, i64* @PBTN_LEFT, align 8
  %216 = and i64 %214, %215
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load i32, i32* @PicoCDBuffers, align 4
  %220 = ashr i32 %219, 1
  store i32 %220, i32* @PicoCDBuffers, align 4
  %221 = load i32, i32* @PicoCDBuffers, align 4
  %222 = icmp slt i32 %221, 2
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store i32 0, i32* @PicoCDBuffers, align 4
  br label %224

224:                                              ; preds = %223, %218
  br label %237

225:                                              ; preds = %213
  %226 = load i32, i32* @PicoCDBuffers, align 4
  %227 = icmp slt i32 %226, 2
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 2, i32* @PicoCDBuffers, align 4
  br label %232

229:                                              ; preds = %225
  %230 = load i32, i32* @PicoCDBuffers, align 4
  %231 = shl i32 %230, 1
  store i32 %231, i32* @PicoCDBuffers, align 4
  br label %232

232:                                              ; preds = %229, %228
  %233 = load i32, i32* @PicoCDBuffers, align 4
  %234 = icmp sgt i32 %233, 8192
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  store i32 8192, i32* @PicoCDBuffers, align 4
  br label %236

236:                                              ; preds = %235, %232
  br label %237

237:                                              ; preds = %236, %224
  br label %238

238:                                              ; preds = %237, %209, %197
  br label %239

239:                                              ; preds = %238, %186
  %240 = load i64, i64* %2, align 8
  %241 = load i64, i64* @PBTN_CIRCLE, align 8
  %242 = and i64 %240, %241
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %239
  %245 = load i32, i32* @cdopt_entries, align 4
  %246 = load i32, i32* @CDOPT_ENTRY_COUNT, align 4
  %247 = load i32, i32* %4, align 4
  %248 = call i32 @me_process(i32 %245, i32 %246, i32 %247, i32 1)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %244
  %251 = load i32, i32* %4, align 4
  %252 = load i32, i32* @MA_CDOPT_DONE, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  br label %299

255:                                              ; preds = %250, %244
  br label %256

256:                                              ; preds = %255, %239
  %257 = load i64, i64* %2, align 8
  %258 = load i64, i64* @PBTN_START, align 8
  %259 = and i64 %257, %258
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %292

261:                                              ; preds = %256
  %262 = load i32, i32* %4, align 4
  switch i32 %262, label %290 [
    i32 128, label %263
    i32 130, label %272
    i32 129, label %281
  ]

263:                                              ; preds = %261
  %264 = call i64 @emu_findBios(i32 4, i8** %5)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load i64*, i64** @romFileName, align 8
  %268 = load i8*, i8** %5, align 8
  %269 = call i32 @strcpy(i64* %267, i8* %268)
  %270 = load i32, i32* @PGS_ReloadRom, align 4
  store i32 %270, i32* @engineState, align 4
  br label %299

271:                                              ; preds = %263
  br label %291

272:                                              ; preds = %261
  %273 = call i64 @emu_findBios(i32 8, i8** %5)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load i64*, i64** @romFileName, align 8
  %277 = load i8*, i8** %5, align 8
  %278 = call i32 @strcpy(i64* %276, i8* %277)
  %279 = load i32, i32* @PGS_ReloadRom, align 4
  store i32 %279, i32* @engineState, align 4
  br label %299

280:                                              ; preds = %272
  br label %291

281:                                              ; preds = %261
  %282 = call i64 @emu_findBios(i32 1, i8** %5)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = load i64*, i64** @romFileName, align 8
  %286 = load i8*, i8** %5, align 8
  %287 = call i32 @strcpy(i64* %285, i8* %286)
  %288 = load i32, i32* @PGS_ReloadRom, align 4
  store i32 %288, i32* @engineState, align 4
  br label %299

289:                                              ; preds = %281
  br label %291

290:                                              ; preds = %261
  br label %291

291:                                              ; preds = %290, %289, %280, %271
  br label %292

292:                                              ; preds = %291, %256
  %293 = load i64, i64* %2, align 8
  %294 = load i64, i64* @PBTN_X, align 8
  %295 = and i64 %293, %294
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %299

298:                                              ; preds = %292
  br label %144

299:                                              ; preds = %297, %284, %275, %266, %254
  ret void
}

declare dso_local i64 @emu_findBios(i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @strcpy(i64*, i8*) #1

declare dso_local i32 @draw_cd_menu_options(i32, %struct.bios_names_t*) #1

declare dso_local i64 @in_menu_wait(i64, i32) #1

declare dso_local i32 @me_index2id(i32, i32, i32) #1

declare dso_local i32 @me_process(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
