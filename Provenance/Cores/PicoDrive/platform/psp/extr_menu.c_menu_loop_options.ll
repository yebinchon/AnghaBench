; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_loop_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_menu_loop_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

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
@PBTN_X = common dso_local global i64 0, align 8
@PBTN_CIRCLE = common dso_local global i64 0, align 8
@PicoOpt = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PsndRate = common dso_local global i32 0, align 4
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

28:                                               ; preds = %27, %318
  %29 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %30 = call i32 @draw_menu_options(i32 %29)
  %31 = load i64, i64* @PBTN_UP, align 8
  %32 = load i64, i64* @PBTN_DOWN, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* @PBTN_LEFT, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @PBTN_RIGHT, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @PBTN_X, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* @PBTN_CIRCLE, align 8
  %41 = or i64 %39, %40
  %42 = call i64 @in_menu_wait(i64 %41, i32 0)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @PBTN_UP, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %28
  %48 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @menu_loop_options.menu_sel, align 4
  %50 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %2, align 4
  store i32 %53, i32* @menu_loop_options.menu_sel, align 4
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @PBTN_DOWN, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @menu_loop_options.menu_sel, align 4
  %63 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %64 = load i32, i32* %2, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* @menu_loop_options.menu_sel, align 4
  br label %67

67:                                               ; preds = %66, %60
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32, i32* @opt_entries, align 4
  %70 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %71 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %72 = call i32 @me_index2id(i32 %69, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @PBTN_LEFT, align 8
  %75 = load i64, i64* @PBTN_RIGHT, align 8
  %76 = or i64 %74, %75
  %77 = and i64 %73, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %246

79:                                               ; preds = %68
  %80 = load i32, i32* @opt_entries, align 4
  %81 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @PBTN_RIGHT, align 8
  %85 = and i64 %83, %84
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  %89 = call i32 @me_process(i32 %80, i32 %81, i32 %82, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %245, label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %5, align 4
  switch i32 %92, label %243 [
    i32 133, label %93
    i32 128, label %112
    i32 134, label %118
    i32 138, label %123
    i32 130, label %160
    i32 137, label %180
    i32 132, label %208
    i32 131, label %208
    i32 135, label %208
  ]

93:                                               ; preds = %91
  %94 = load i32, i32* @PicoOpt, align 4
  %95 = and i32 %94, 16
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %99 = and i32 %98, 128
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97, %93
  %102 = load i32, i32* @PicoOpt, align 4
  %103 = and i32 %102, -17
  store i32 %103, i32* @PicoOpt, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %105 = or i32 %104, 128
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %111

106:                                              ; preds = %97
  %107 = load i32, i32* @PicoOpt, align 4
  %108 = or i32 %107, 16
  store i32 %108, i32* @PicoOpt, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %110 = and i32 %109, -129
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %111

111:                                              ; preds = %106, %101
  br label %244

112:                                              ; preds = %91
  %113 = load i32, i32* @PsndRate, align 4
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @PBTN_RIGHT, align 8
  %116 = and i64 %114, %115
  %117 = call i32 @sndrate_prevnext(i32 %113, i64 %116)
  store i32 %117, i32* @PsndRate, align 4
  br label %244

118:                                              ; preds = %91
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* @PBTN_RIGHT, align 8
  %121 = and i64 %119, %120
  %122 = call i32 @region_prevnext(i64 %121)
  br label %244

123:                                              ; preds = %91
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %125 = ashr i32 %124, 9
  %126 = and i32 %125, 1
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %128 = ashr i32 %127, 10
  %129 = and i32 %128, 2
  %130 = or i32 %126, %129
  store i32 %130, i32* %6, align 4
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* @PBTN_LEFT, align 8
  %133 = and i64 %131, %132
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 -1, i32 1
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %147

142:                                              ; preds = %123
  %143 = load i32, i32* %6, align 4
  %144 = icmp sgt i32 %143, 3
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 3, i32* %6, align 4
  br label %146

146:                                              ; preds = %145, %142
  br label %147

147:                                              ; preds = %146, %141
  %148 = load i32, i32* %6, align 4
  %149 = shl i32 %148, 1
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %152, -3
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %155 = and i32 %154, -2561
  store i32 %155, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %156 = load i32, i32* %6, align 4
  %157 = shl i32 %156, 9
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %244

160:                                              ; preds = %91
  %161 = load i64, i64* %4, align 8
  %162 = load i64, i64* @PBTN_RIGHT, align 8
  %163 = and i64 %161, %162
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32, i32* @state_slot, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @state_slot, align 4
  %168 = load i32, i32* @state_slot, align 4
  %169 = icmp sgt i32 %168, 9
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  store i32 0, i32* @state_slot, align 4
  br label %171

171:                                              ; preds = %170, %165
  br label %179

172:                                              ; preds = %160
  %173 = load i32, i32* @state_slot, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* @state_slot, align 4
  %175 = load i32, i32* @state_slot, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 9, i32* @state_slot, align 4
  br label %178

178:                                              ; preds = %177, %172
  br label %179

179:                                              ; preds = %178, %171
  br label %244

180:                                              ; preds = %91
  br label %181

181:                                              ; preds = %204, %180
  %182 = call i64 @psp_pad_read(i32 0)
  store i64 %182, i64* %4, align 8
  %183 = load i64, i64* @PBTN_LEFT, align 8
  %184 = load i64, i64* @PBTN_RIGHT, align 8
  %185 = or i64 %183, %184
  %186 = and i64 %182, %185
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %181
  %189 = load i64, i64* %4, align 8
  %190 = load i64, i64* @PBTN_LEFT, align 8
  %191 = and i64 %189, %190
  %192 = icmp ne i64 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 -1, i32 1
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 4
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 4
  %198 = icmp slt i32 %197, 19
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  store i32 19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 4
  br label %200

200:                                              ; preds = %199, %188
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 4
  %202 = icmp sgt i32 %201, 333
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 333, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), align 4
  br label %204

204:                                              ; preds = %203, %200
  %205 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %206 = call i32 @draw_menu_options(i32 %205)
  br label %181

207:                                              ; preds = %181
  br label %244

208:                                              ; preds = %91, %91, %91
  %209 = load i64, i64* %4, align 8
  %210 = load i64, i64* @PBTN_RIGHT, align 8
  %211 = and i64 %209, %210
  %212 = icmp ne i64 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 1, i32 -1
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* @config_slot, align 8
  %217 = add nsw i64 %216, %215
  store i64 %217, i64* @config_slot, align 8
  %218 = load i64, i64* @config_slot, align 8
  %219 = icmp sgt i64 %218, 9
  br i1 %219, label %220, label %221

220:                                              ; preds = %208
  store i64 0, i64* @config_slot, align 8
  br label %221

221:                                              ; preds = %220, %208
  %222 = load i64, i64* @config_slot, align 8
  %223 = icmp slt i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  store i64 9, i64* @config_slot, align 8
  br label %225

225:                                              ; preds = %224, %221
  %226 = load i32, i32* @opt_entries, align 4
  %227 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %228 = load i64, i64* @config_slot, align 8
  %229 = load i64, i64* @config_slot_current, align 8
  %230 = icmp ne i64 %228, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @me_enable(i32 %226, i32 %227, i32 135, i32 %231)
  %233 = load i32, i32* @opt_entries, align 4
  %234 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %235 = call i32 @me_count_enabled(i32 %233, i32 %234)
  %236 = sub nsw i32 %235, 1
  store i32 %236, i32* %2, align 4
  %237 = load i32, i32* @menu_loop_options.menu_sel, align 4
  %238 = load i32, i32* %2, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %225
  %241 = load i32, i32* %2, align 4
  store i32 %241, i32* @menu_loop_options.menu_sel, align 4
  br label %242

242:                                              ; preds = %240, %225
  br label %244

243:                                              ; preds = %91
  br label %244

244:                                              ; preds = %243, %242, %207, %179, %147, %118, %112, %111
  br label %245

245:                                              ; preds = %244, %79
  br label %246

246:                                              ; preds = %245, %68
  %247 = load i64, i64* %4, align 8
  %248 = load i64, i64* @PBTN_CIRCLE, align 8
  %249 = and i64 %247, %248
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %311

251:                                              ; preds = %246
  %252 = load i32, i32* @opt_entries, align 4
  %253 = load i32, i32* @OPT_ENTRY_COUNT, align 4
  %254 = load i32, i32* %5, align 4
  %255 = call i32 @me_process(i32 %252, i32 %253, i32 %254, i32 1)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %310, label %257

257:                                              ; preds = %251
  %258 = load i32, i32* %5, align 4
  switch i32 %258, label %308 [
    i32 136, label %259
    i32 129, label %261
    i32 139, label %268
    i32 132, label %270
    i32 131, label %281
    i32 135, label %292
  ]

259:                                              ; preds = %257
  %260 = call i32 (...) @dispmenu_loop_options()
  br label %309

261:                                              ; preds = %257
  %262 = call i32 (...) @cd_menu_loop_options()
  %263 = load i32, i32* @engineState, align 4
  %264 = load i32, i32* @PGS_ReloadRom, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i32 0, i32* %1, align 4
  br label %319

267:                                              ; preds = %261
  br label %309

268:                                              ; preds = %257
  %269 = call i32 (...) @amenu_loop_options()
  br label %309

270:                                              ; preds = %257
  %271 = call i32 (...) @menu_options_save()
  %272 = call i32 @emu_WriteConfig(i32 0)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %270
  %275 = load i32, i32* @menuErrorMsg, align 4
  %276 = call i32 @strcpy(i32 %275, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %280

277:                                              ; preds = %270
  %278 = load i32, i32* @menuErrorMsg, align 4
  %279 = call i32 @strcpy(i32 %278, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %274
  store i32 1, i32* %1, align 4
  br label %319

281:                                              ; preds = %257
  %282 = call i32 (...) @menu_options_save()
  %283 = call i32 @emu_WriteConfig(i32 1)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = load i32, i32* @menuErrorMsg, align 4
  %287 = call i32 @strcpy(i32 %286, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %291

288:                                              ; preds = %281
  %289 = load i32, i32* @menuErrorMsg, align 4
  %290 = call i32 @strcpy(i32 %289, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %291

291:                                              ; preds = %288, %285
  store i32 1, i32* %1, align 4
  br label %319

292:                                              ; preds = %257
  %293 = call i32 @emu_ReadConfig(i32 1, i32 1)
  store i32 %293, i32* %3, align 4
  %294 = load i32, i32* %3, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %292
  %297 = call i32 @emu_ReadConfig(i32 0, i32 1)
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %296, %292
  %299 = load i32, i32* %3, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i32, i32* @menuErrorMsg, align 4
  %303 = call i32 @strcpy(i32 %302, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %307

304:                                              ; preds = %298
  %305 = load i32, i32* @menuErrorMsg, align 4
  %306 = call i32 @strcpy(i32 %305, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %307

307:                                              ; preds = %304, %301
  store i32 1, i32* %1, align 4
  br label %319

308:                                              ; preds = %257
  br label %309

309:                                              ; preds = %308, %268, %267, %259
  br label %310

310:                                              ; preds = %309, %251
  br label %311

311:                                              ; preds = %310, %246
  %312 = load i64, i64* %4, align 8
  %313 = load i64, i64* @PBTN_X, align 8
  %314 = and i64 %312, %313
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = call i32 (...) @menu_options_save()
  store i32 0, i32* %1, align 4
  br label %319

318:                                              ; preds = %311
  br label %28

319:                                              ; preds = %316, %307, %291, %280, %266
  %320 = load i32, i32* %1, align 4
  ret i32 %320
}

declare dso_local i32 @me_enable(i32, i32, i32, i32) #1

declare dso_local i32 @me_count_enabled(i32, i32) #1

declare dso_local i32 @draw_menu_options(i32) #1

declare dso_local i64 @in_menu_wait(i64, i32) #1

declare dso_local i32 @me_index2id(i32, i32, i32) #1

declare dso_local i32 @me_process(i32, i32, i32, i32) #1

declare dso_local i32 @sndrate_prevnext(i32, i64) #1

declare dso_local i32 @region_prevnext(i64) #1

declare dso_local i64 @psp_pad_read(i32) #1

declare dso_local i32 @dispmenu_loop_options(...) #1

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
