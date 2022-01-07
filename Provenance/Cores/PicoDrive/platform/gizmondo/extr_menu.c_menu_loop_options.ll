; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_menu_loop_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_menu_loop_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@menu_loop_options.menu_sel = internal global i32 0, align 4
@opt_entries = common dso_local global i32 0, align 4
@OPT_ENTRY_COUNT = common dso_local global i32 0, align 4
@rom_loaded = common dso_local global i32 0, align 4
@config_slot = common dso_local global i64 0, align 8
@config_slot_current = common dso_local global i64 0, align 8
@PBTN_UP = common dso_local global i64 0, align 8
@PBTN_DOWN = common dso_local global i64 0, align 8
@PBTN_LEFT = common dso_local global i64 0, align 8
@PBTN_RIGHT = common dso_local global i64 0, align 8
@PBTN_PLAY = common dso_local global i64 0, align 8
@PBTN_STOP = common dso_local global i64 0, align 8
@PBTN_REW = common dso_local global i64 0, align 8
@PicoOpt = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PsndRate = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i32 0, align 4
@state_slot = common dso_local global i32 0, align 4
@engineState = common dso_local global i32 0, align 4
@PGS_ReloadRom = common dso_local global i32 0, align 4
@menuErrorMsg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"config saved\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to write config\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"config loaded\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to load config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @menu_loop_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_loop_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* @opt_entries, align 4
  %8 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %9 = load i32, i32* @rom_loaded, align 4
  %10 = call i32 @me_enable(i32 %7, i32 %8, i32 131, i32 %9)
  %11 = load i32, i32* @opt_entries, align 4
  %12 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %13 = load i64, i64* @config_slot, align 8
  %14 = load i64, i64* @config_slot_current, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @me_enable(i32 %11, i32 %12, i32 135, i32 %16)
  %18 = load i32, i32* @opt_entries, align 4
  %19 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %20 = call i32 @me_count_enabled(i32 %18, i32 %19)
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* @menu_loop_options.menu_sel, align 4
  br label %27

27:                                               ; preds = %25, %0
  br label %28

28:                                               ; preds = %27, %343
  %29 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %30 = call i32 @draw_menu_options(i32 %29)
  %31 = load i64, i64* @PBTN_UP, align 8
  %32 = load i64, i64* @PBTN_DOWN, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* @PBTN_LEFT, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @PBTN_RIGHT, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @PBTN_PLAY, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* @PBTN_STOP, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @PBTN_REW, align 8
  %43 = or i64 %41, %42
  %44 = call i64 @in_menu_wait(i64 %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @PBTN_UP, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %28
  %50 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* @menu_loop_options.menu_sel, align 4
  %52 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* @menu_loop_options.menu_sel, align 4
  br label %56

56:                                               ; preds = %54, %49
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @PBTN_DOWN, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @menu_loop_options.menu_sel, align 4
  %65 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %66 = load i32, i32* %2, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* @menu_loop_options.menu_sel, align 4
  br label %69

69:                                               ; preds = %68, %62
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i32, i32* @opt_entries, align 4
  %72 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %73 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %74 = call i32 @me_index2id(i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @PBTN_LEFT, align 8
  %77 = load i64, i64* @PBTN_RIGHT, align 8
  %78 = or i64 %76, %77
  %79 = and i64 %75, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %271

81:                                               ; preds = %70
  %82 = load i32, i32* @opt_entries, align 4
  %83 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i64, i64* %4, align 8
  %86 = load i64, i64* @PBTN_RIGHT, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = call i32 @me_process(i32 %82, i32 %83, i32 %84, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %270, label %93

93:                                               ; preds = %81
  %94 = load i32, i32* %5, align 4
  switch i32 %94, label %268 [
    i32 133, label %95
    i32 128, label %129
    i32 134, label %171
    i32 136, label %176
    i32 130, label %213
    i32 132, label %233
    i32 131, label %233
    i32 135, label %233
  ]

95:                                               ; preds = %93
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @PBTN_LEFT, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load i32, i32* @PicoOpt, align 4
  %102 = and i32 %101, 16
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* @PicoOpt, align 4
  %110 = and i32 %109, -17
  store i32 %110, i32* @PicoOpt, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %112 = or i32 %111, 128
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %113

113:                                              ; preds = %108, %104
  br label %128

114:                                              ; preds = %95
  %115 = load i32, i32* @PicoOpt, align 4
  %116 = and i32 %115, 16
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %120 = and i32 %119, 128
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118, %114
  %123 = load i32, i32* @PicoOpt, align 4
  %124 = or i32 %123, 16
  store i32 %124, i32* @PicoOpt, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %126 = and i32 %125, -129
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %127

127:                                              ; preds = %122, %118
  br label %128

128:                                              ; preds = %127, %113
  br label %269

129:                                              ; preds = %93
  %130 = load i64, i64* %4, align 8
  %131 = load i64, i64* @PBTN_RIGHT, align 8
  %132 = and i64 %130, %131
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load i32, i32* @PsndRate, align 4
  %136 = icmp eq i32 %135, 44100
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i32, i32* @PicoOpt, align 4
  %139 = and i32 %138, 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  store i32 11025, i32* @PsndRate, align 4
  %142 = load i32, i32* @PicoOpt, align 4
  %143 = or i32 %142, 8
  store i32 %143, i32* @PicoOpt, align 4
  br label %170

144:                                              ; preds = %137, %134, %129
  %145 = load i64, i64* %4, align 8
  %146 = load i64, i64* @PBTN_LEFT, align 8
  %147 = and i64 %145, %146
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %144
  %150 = load i32, i32* @PsndRate, align 4
  %151 = icmp eq i32 %150, 11025
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load i32, i32* @PicoOpt, align 4
  %154 = and i32 %153, 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load i32, i32* @PicoAHW, align 4
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  store i32 44100, i32* @PsndRate, align 4
  %161 = load i32, i32* @PicoOpt, align 4
  %162 = and i32 %161, -9
  store i32 %162, i32* @PicoOpt, align 4
  br label %169

163:                                              ; preds = %156, %152, %149, %144
  %164 = load i32, i32* @PsndRate, align 4
  %165 = load i64, i64* %4, align 8
  %166 = load i64, i64* @PBTN_RIGHT, align 8
  %167 = and i64 %165, %166
  %168 = call i32 @sndrate_prevnext(i32 %164, i64 %167)
  store i32 %168, i32* @PsndRate, align 4
  br label %169

169:                                              ; preds = %163, %160
  br label %170

170:                                              ; preds = %169, %141
  br label %269

171:                                              ; preds = %93
  %172 = load i64, i64* %4, align 8
  %173 = load i64, i64* @PBTN_RIGHT, align 8
  %174 = and i64 %172, %173
  %175 = call i32 @region_prevnext(i64 %174)
  br label %269

176:                                              ; preds = %93
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %178 = ashr i32 %177, 9
  %179 = and i32 %178, 1
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %181 = ashr i32 %180, 10
  %182 = and i32 %181, 2
  %183 = or i32 %179, %182
  store i32 %183, i32* %6, align 4
  %184 = load i64, i64* %4, align 8
  %185 = load i64, i64* @PBTN_LEFT, align 8
  %186 = and i64 %184, %185
  %187 = icmp ne i64 %186, 0
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i32 -1, i32 1
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %176
  store i32 0, i32* %6, align 4
  br label %200

195:                                              ; preds = %176
  %196 = load i32, i32* %6, align 4
  %197 = icmp sgt i32 %196, 3
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 3, i32* %6, align 4
  br label %199

199:                                              ; preds = %198, %195
  br label %200

200:                                              ; preds = %199, %194
  %201 = load i32, i32* %6, align 4
  %202 = shl i32 %201, 1
  %203 = load i32, i32* %6, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = and i32 %205, -3
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %208 = and i32 %207, -2561
  store i32 %208, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %209 = load i32, i32* %6, align 4
  %210 = shl i32 %209, 9
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %269

213:                                              ; preds = %93
  %214 = load i64, i64* %4, align 8
  %215 = load i64, i64* @PBTN_RIGHT, align 8
  %216 = and i64 %214, %215
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load i32, i32* @state_slot, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* @state_slot, align 4
  %221 = load i32, i32* @state_slot, align 4
  %222 = icmp sgt i32 %221, 9
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store i32 0, i32* @state_slot, align 4
  br label %224

224:                                              ; preds = %223, %218
  br label %232

225:                                              ; preds = %213
  %226 = load i32, i32* @state_slot, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* @state_slot, align 4
  %228 = load i32, i32* @state_slot, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  store i32 9, i32* @state_slot, align 4
  br label %231

231:                                              ; preds = %230, %225
  br label %232

232:                                              ; preds = %231, %224
  br label %269

233:                                              ; preds = %93, %93, %93
  %234 = load i64, i64* %4, align 8
  %235 = load i64, i64* @PBTN_RIGHT, align 8
  %236 = and i64 %234, %235
  %237 = icmp ne i64 %236, 0
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i32 1, i32 -1
  %240 = sext i32 %239 to i64
  %241 = load i64, i64* @config_slot, align 8
  %242 = add nsw i64 %241, %240
  store i64 %242, i64* @config_slot, align 8
  %243 = load i64, i64* @config_slot, align 8
  %244 = icmp sgt i64 %243, 9
  br i1 %244, label %245, label %246

245:                                              ; preds = %233
  store i64 0, i64* @config_slot, align 8
  br label %246

246:                                              ; preds = %245, %233
  %247 = load i64, i64* @config_slot, align 8
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  store i64 9, i64* @config_slot, align 8
  br label %250

250:                                              ; preds = %249, %246
  %251 = load i32, i32* @opt_entries, align 4
  %252 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %253 = load i64, i64* @config_slot, align 8
  %254 = load i64, i64* @config_slot_current, align 8
  %255 = icmp ne i64 %253, %254
  %256 = zext i1 %255 to i32
  %257 = call i32 @me_enable(i32 %251, i32 %252, i32 135, i32 %256)
  %258 = load i32, i32* @opt_entries, align 4
  %259 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %260 = call i32 @me_count_enabled(i32 %258, i32 %259)
  %261 = sub nsw i32 %260, 1
  store i32 %261, i32* %2, align 4
  %262 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %263 = load i32, i32* %2, align 4
  %264 = icmp sgt i32 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %250
  %266 = load i32, i32* %2, align 4
  store i32 %266, i32* @menu_loop_options.menu_sel, align 4
  br label %267

267:                                              ; preds = %265, %250
  br label %269

268:                                              ; preds = %93
  br label %269

269:                                              ; preds = %268, %267, %232, %200, %171, %170, %128
  br label %270

270:                                              ; preds = %269, %81
  br label %271

271:                                              ; preds = %270, %70
  %272 = load i64, i64* %4, align 8
  %273 = load i64, i64* @PBTN_PLAY, align 8
  %274 = and i64 %272, %273
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %334

276:                                              ; preds = %271
  %277 = load i32, i32* @opt_entries, align 4
  %278 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %279 = load i32, i32* %5, align 4
  %280 = call i32 @me_process(i32 %277, i32 %278, i32 %279, i32 1)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %333, label %282

282:                                              ; preds = %276
  %283 = load i32, i32* %5, align 4
  switch i32 %283, label %331 [
    i32 129, label %284
    i32 137, label %291
    i32 132, label %293
    i32 131, label %304
    i32 135, label %315
  ]

284:                                              ; preds = %282
  %285 = call i32 (...) @cd_menu_loop_options()
  %286 = load i32, i32* @engineState, align 4
  %287 = load i32, i32* @PGS_ReloadRom, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  store i32 0, i32* %1, align 4
  br label %344

290:                                              ; preds = %284
  br label %332

291:                                              ; preds = %282
  %292 = call i32 (...) @amenu_loop_options()
  br label %332

293:                                              ; preds = %282
  %294 = call i32 (...) @menu_options_save()
  %295 = call i32 @emu_WriteConfig(i32 0)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load i32, i32* @menuErrorMsg, align 4
  %299 = call i32 @strcpy(i32 %298, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %303

300:                                              ; preds = %293
  %301 = load i32, i32* @menuErrorMsg, align 4
  %302 = call i32 @strcpy(i32 %301, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %297
  store i32 1, i32* %1, align 4
  br label %344

304:                                              ; preds = %282
  %305 = call i32 (...) @menu_options_save()
  %306 = call i32 @emu_WriteConfig(i32 1)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = load i32, i32* @menuErrorMsg, align 4
  %310 = call i32 @strcpy(i32 %309, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %314

311:                                              ; preds = %304
  %312 = load i32, i32* @menuErrorMsg, align 4
  %313 = call i32 @strcpy(i32 %312, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %314

314:                                              ; preds = %311, %308
  store i32 1, i32* %1, align 4
  br label %344

315:                                              ; preds = %282
  %316 = call i32 @emu_ReadConfig(i32 1, i32 1)
  store i32 %316, i32* %3, align 4
  %317 = load i32, i32* %3, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %321, label %319

319:                                              ; preds = %315
  %320 = call i32 @emu_ReadConfig(i32 0, i32 1)
  store i32 %320, i32* %3, align 4
  br label %321

321:                                              ; preds = %319, %315
  %322 = load i32, i32* %3, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i32, i32* @menuErrorMsg, align 4
  %326 = call i32 @strcpy(i32 %325, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %330

327:                                              ; preds = %321
  %328 = load i32, i32* @menuErrorMsg, align 4
  %329 = call i32 @strcpy(i32 %328, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %330

330:                                              ; preds = %327, %324
  store i32 1, i32* %1, align 4
  br label %344

331:                                              ; preds = %282
  br label %332

332:                                              ; preds = %331, %291, %290
  br label %333

333:                                              ; preds = %332, %276
  br label %334

334:                                              ; preds = %333, %271
  %335 = load i64, i64* %4, align 8
  %336 = load i64, i64* @PBTN_STOP, align 8
  %337 = load i64, i64* @PBTN_REW, align 8
  %338 = or i64 %336, %337
  %339 = and i64 %335, %338
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %334
  %342 = call i32 (...) @menu_options_save()
  store i32 0, i32* %1, align 4
  br label %344

343:                                              ; preds = %334
  br label %28

344:                                              ; preds = %341, %330, %314, %303, %289
  %345 = load i32, i32* %1, align 4
  ret i32 %345
}

declare dso_local i32 @me_enable(i32, i32, i32, i32) #1

declare dso_local i32 @me_count_enabled(i32, i32) #1

declare dso_local i32 @draw_menu_options(i32) #1

declare dso_local i64 @in_menu_wait(i64) #1

declare dso_local i32 @me_index2id(i32, i32, i32) #1

declare dso_local i32 @me_process(i32, i32, i32, i32) #1

declare dso_local i32 @sndrate_prevnext(i32, i64) #1

declare dso_local i32 @region_prevnext(i64) #1

declare dso_local i32 @cd_menu_loop_options(...) #1

declare dso_local i32 @amenu_loop_options(...) #1

declare dso_local i32 @menu_options_save(...) #1

declare dso_local i32 @emu_WriteConfig(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @emu_ReadConfig(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
