; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_debug_menu_loop.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_menu_pico.c_debug_menu_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_menuscreen_w = common dso_local global i32 0, align 4
@me_sfont_h = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@me_mfont_h = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"dumped\00", align 1
@g_menuscreen_ptr = common dso_local global i64 0, align 8
@PBTN_MOK = common dso_local global i32 0, align 4
@PBTN_MBACK = common dso_local global i32 0, align 4
@PBTN_MA2 = common dso_local global i32 0, align 4
@PBTN_MA3 = common dso_local global i32 0, align 4
@PBTN_L = common dso_local global i32 0, align 4
@PBTN_R = common dso_local global i32 0, align 4
@PBTN_UP = common dso_local global i32 0, align 4
@PBTN_DOWN = common dso_local global i32 0, align 4
@PBTN_LEFT = common dso_local global i32 0, align 4
@PBTN_RIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dumps\00", align 1
@PDRAW_LAYERB_ON = common dso_local global i32 0, align 4
@PicoDrawMask = common dso_local global i32 0, align 4
@PDRAW_LAYERA_ON = common dso_local global i32 0, align 4
@PDRAW_SPRITES_LOW_ON = common dso_local global i32 0, align 4
@PDRAW_SPRITES_HI_ON = common dso_local global i32 0, align 4
@PDRAW_32X_ON = common dso_local global i32 0, align 4
@PsndOut = common dso_local global i32* null, align 8
@PicoSkipFrame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @debug_menu_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_menu_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %0, %258
  %7 = call i32 @menu_draw_begin(i32 1, i32 0)
  %8 = load i32, i32* %2, align 4
  switch i32 %8, label %79 [
    i32 0, label %9
    i32 1, label %27
    i32 2, label %29
    i32 3, label %48
    i32 4, label %75
  ]

9:                                                ; preds = %6
  %10 = call i8* (...) @PDebugMain()
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @plat_debug_cat(i8* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @draw_text_debug(i8* %13, i32 0, i32 0)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load i32, i32* @g_menuscreen_w, align 4
  %19 = load i32, i32* @me_sfont_h, align 4
  %20 = mul nsw i32 6, %19
  %21 = sub nsw i32 %18, %20
  %22 = load i32, i32* @g_menuscreen_h, align 4
  %23 = load i32, i32* @me_mfont_h, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @smalltext_out16(i32 %21, i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 65535)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %9
  br label %79

27:                                               ; preds = %6
  %28 = call i32 (...) @draw_frame_debug()
  br label %79

29:                                               ; preds = %6
  %30 = call i32 @pemu_forced_frame(i32 1, i32 0)
  %31 = call i32 @make_bg(i32 1)
  %32 = load i64, i64* @g_menuscreen_ptr, align 8
  %33 = inttoptr i64 %32 to i16*
  %34 = load i32, i32* @g_menuscreen_h, align 4
  %35 = sdiv i32 %34, 2
  %36 = sub nsw i32 %35, 120
  %37 = load i32, i32* @g_menuscreen_w, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39
  %41 = load i32, i32* @g_menuscreen_w, align 4
  %42 = sdiv i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %40, i64 %43
  %45 = getelementptr inbounds i16, i16* %44, i64 -160
  %46 = load i32, i32* @g_menuscreen_w, align 4
  %47 = call i32 @PDebugShowSpriteStats(i16* %45, i32 %46)
  br label %79

48:                                               ; preds = %6
  %49 = load i64, i64* @g_menuscreen_ptr, align 8
  %50 = load i32, i32* @g_menuscreen_w, align 4
  %51 = load i32, i32* @g_menuscreen_h, align 4
  %52 = mul nsw i32 %50, %51
  %53 = mul nsw i32 %52, 2
  %54 = call i32 @memset(i64 %49, i32 0, i32 %53)
  %55 = load i64, i64* @g_menuscreen_ptr, align 8
  %56 = load i32, i32* @g_menuscreen_w, align 4
  %57 = call i32 @PDebugShowPalette(i64 %55, i32 %56)
  %58 = load i64, i64* @g_menuscreen_ptr, align 8
  %59 = inttoptr i64 %58 to i16*
  %60 = load i32, i32* @g_menuscreen_w, align 4
  %61 = mul nsw i32 %60, 120
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %59, i64 %62
  %64 = load i32, i32* @g_menuscreen_w, align 4
  %65 = sdiv i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, i16* %63, i64 %66
  %68 = getelementptr inbounds i16, i16* %67, i64 16
  %69 = load i32, i32* @g_menuscreen_w, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @PDebugShowSprite(i16* %68, i32 %69, i32 %70)
  %72 = call i8* (...) @PDebugSpriteList()
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @draw_text_debug(i8* %72, i32 %73, i32 6)
  br label %79

75:                                               ; preds = %6
  %76 = call i8* (...) @PDebug32x()
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @draw_text_debug(i8* %77, i32 0, i32 0)
  br label %79

79:                                               ; preds = %6, %75, %48, %29, %27, %26
  %80 = call i32 (...) @menu_draw_end()
  %81 = load i32, i32* @PBTN_MOK, align 4
  %82 = load i32, i32* @PBTN_MBACK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PBTN_MA2, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @PBTN_MA3, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PBTN_L, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PBTN_R, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PBTN_UP, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @PBTN_DOWN, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @PBTN_LEFT, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @PBTN_RIGHT, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @in_menu_wait(i32 %99, i32* null, i32 70)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @PBTN_MBACK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %79
  ret void

106:                                              ; preds = %79
  %107 = load i32, i32* %1, align 4
  %108 = load i32, i32* @PBTN_L, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32, i32* %2, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %2, align 4
  %114 = load i32, i32* %2, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 4, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %111
  br label %118

118:                                              ; preds = %117, %106
  %119 = load i32, i32* %1, align 4
  %120 = load i32, i32* @PBTN_R, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* %2, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %2, align 4
  %126 = load i32, i32* %2, align 4
  %127 = icmp sgt i32 %126, 4
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %123
  br label %130

130:                                              ; preds = %129, %118
  %131 = load i32, i32* %2, align 4
  switch i32 %131, label %258 [
    i32 0, label %132
    i32 1, label %176
    i32 3, label %237
  ]

132:                                              ; preds = %130
  %133 = load i32, i32* %1, align 4
  %134 = load i32, i32* @PBTN_MOK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 (...) @PDebugCPUStep()
  br label %139

139:                                              ; preds = %137, %132
  %140 = load i32, i32* %1, align 4
  %141 = load i32, i32* @PBTN_MA3, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %150, %144
  %146 = load i32, i32* %1, align 4
  %147 = load i32, i32* @PBTN_MA3, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 @in_menu_wait_any(i32* null, i32 -1)
  store i32 %151, i32* %1, align 4
  br label %145

152:                                              ; preds = %145
  %153 = call i32 (...) @mplayer_loop()
  br label %154

154:                                              ; preds = %152, %139
  %155 = load i32, i32* %1, align 4
  %156 = load i32, i32* @PBTN_MA2, align 4
  %157 = load i32, i32* @PBTN_LEFT, align 4
  %158 = or i32 %156, %157
  %159 = and i32 %155, %158
  %160 = load i32, i32* @PBTN_MA2, align 4
  %161 = load i32, i32* @PBTN_LEFT, align 4
  %162 = or i32 %160, %161
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %154
  %165 = call i32 @mkdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %166 = call i32 (...) @PDebugDumpMem()
  br label %167

167:                                              ; preds = %172, %164
  %168 = load i32, i32* %1, align 4
  %169 = load i32, i32* @PBTN_MA2, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 @in_menu_wait_any(i32* null, i32 -1)
  store i32 %173, i32* %1, align 4
  br label %167

174:                                              ; preds = %167
  store i32 1, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %154
  br label %258

176:                                              ; preds = %130
  %177 = load i32, i32* %1, align 4
  %178 = load i32, i32* @PBTN_LEFT, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load i32, i32* @PDRAW_LAYERB_ON, align 4
  %183 = load i32, i32* @PicoDrawMask, align 4
  %184 = xor i32 %183, %182
  store i32 %184, i32* @PicoDrawMask, align 4
  br label %185

185:                                              ; preds = %181, %176
  %186 = load i32, i32* %1, align 4
  %187 = load i32, i32* @PBTN_RIGHT, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* @PDRAW_LAYERA_ON, align 4
  %192 = load i32, i32* @PicoDrawMask, align 4
  %193 = xor i32 %192, %191
  store i32 %193, i32* @PicoDrawMask, align 4
  br label %194

194:                                              ; preds = %190, %185
  %195 = load i32, i32* %1, align 4
  %196 = load i32, i32* @PBTN_DOWN, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* @PDRAW_SPRITES_LOW_ON, align 4
  %201 = load i32, i32* @PicoDrawMask, align 4
  %202 = xor i32 %201, %200
  store i32 %202, i32* @PicoDrawMask, align 4
  br label %203

203:                                              ; preds = %199, %194
  %204 = load i32, i32* %1, align 4
  %205 = load i32, i32* @PBTN_UP, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load i32, i32* @PDRAW_SPRITES_HI_ON, align 4
  %210 = load i32, i32* @PicoDrawMask, align 4
  %211 = xor i32 %210, %209
  store i32 %211, i32* @PicoDrawMask, align 4
  br label %212

212:                                              ; preds = %208, %203
  %213 = load i32, i32* %1, align 4
  %214 = load i32, i32* @PBTN_MA2, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i32, i32* @PDRAW_32X_ON, align 4
  %219 = load i32, i32* @PicoDrawMask, align 4
  %220 = xor i32 %219, %218
  store i32 %220, i32* @PicoDrawMask, align 4
  br label %221

221:                                              ; preds = %217, %212
  %222 = load i32, i32* %1, align 4
  %223 = load i32, i32* @PBTN_MOK, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %221
  store i32* null, i32** @PsndOut, align 8
  store i32 1, i32* @PicoSkipFrame, align 4
  %227 = call i32 (...) @PicoFrame()
  store i32 0, i32* @PicoSkipFrame, align 4
  br label %228

228:                                              ; preds = %233, %226
  %229 = load i32, i32* %1, align 4
  %230 = load i32, i32* @PBTN_MOK, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = call i32 @in_menu_wait_any(i32* null, i32 -1)
  store i32 %234, i32* %1, align 4
  br label %228

235:                                              ; preds = %228
  br label %236

236:                                              ; preds = %235, %221
  br label %258

237:                                              ; preds = %130
  %238 = load i32, i32* %1, align 4
  %239 = load i32, i32* @PBTN_DOWN, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i32, i32* %3, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %242, %237
  %246 = load i32, i32* %1, align 4
  %247 = load i32, i32* @PBTN_UP, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load i32, i32* %3, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %250, %245
  %254 = load i32, i32* %3, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  store i32 0, i32* %3, align 4
  br label %257

257:                                              ; preds = %256, %253
  br label %258

258:                                              ; preds = %130, %257, %236, %175
  br label %6
}

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i8* @PDebugMain(...) #1

declare dso_local i32 @plat_debug_cat(i8*) #1

declare dso_local i32 @draw_text_debug(i8*, i32, i32) #1

declare dso_local i32 @smalltext_out16(i32, i32, i8*, i32) #1

declare dso_local i32 @draw_frame_debug(...) #1

declare dso_local i32 @pemu_forced_frame(i32, i32) #1

declare dso_local i32 @make_bg(i32) #1

declare dso_local i32 @PDebugShowSpriteStats(i16*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @PDebugShowPalette(i64, i32) #1

declare dso_local i32 @PDebugShowSprite(i16*, i32, i32) #1

declare dso_local i8* @PDebugSpriteList(...) #1

declare dso_local i8* @PDebug32x(...) #1

declare dso_local i32 @menu_draw_end(...) #1

declare dso_local i32 @in_menu_wait(i32, i32*, i32) #1

declare dso_local i32 @PDebugCPUStep(...) #1

declare dso_local i32 @in_menu_wait_any(i32*, i32) #1

declare dso_local i32 @mplayer_loop(...) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @PDebugDumpMem(...) #1

declare dso_local i32 @PicoFrame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
