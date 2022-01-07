; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_input_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/win/extr_main.c_sdl_input_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32**, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@input = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@joynum = common dso_local global i64 0, align 8
@bitmap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@VIDEO_WIDTH = common dso_local global i32 0, align 4
@VIDEO_HEIGHT = common dso_local global i32 0, align 4
@SDL_BUTTON_LMASK = common dso_local global i32 0, align 4
@INPUT_B = common dso_local global i32 0, align 4
@SDL_BUTTON_RMASK = common dso_local global i32 0, align 4
@INPUT_C = common dso_local global i32 0, align 4
@SDL_BUTTON_MMASK = common dso_local global i32 0, align 4
@INPUT_A = common dso_local global i32 0, align 4
@SDLK_f = common dso_local global i64 0, align 8
@INPUT_START = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SDLK_a = common dso_local global i64 0, align 8
@SDLK_s = common dso_local global i64 0, align 8
@SDLK_d = common dso_local global i64 0, align 8
@INPUT_Y = common dso_local global i32 0, align 4
@SDLK_z = common dso_local global i64 0, align 8
@SDLK_x = common dso_local global i64 0, align 8
@INPUT_X = common dso_local global i32 0, align 4
@SDLK_c = common dso_local global i64 0, align 8
@INPUT_MODE = common dso_local global i32 0, align 4
@SDLK_v = common dso_local global i64 0, align 8
@INPUT_Z = common dso_local global i32 0, align 4
@SDLK_UP = common dso_local global i64 0, align 8
@SDLK_DOWN = common dso_local global i64 0, align 8
@SDLK_LEFT = common dso_local global i64 0, align 8
@SDLK_RIGHT = common dso_local global i64 0, align 8
@SDLK_KP8 = common dso_local global i64 0, align 8
@SDLK_KP2 = common dso_local global i64 0, align 8
@SDLK_KP4 = common dso_local global i64 0, align 8
@SDLK_KP6 = common dso_local global i64 0, align 8
@SDLK_g = common dso_local global i64 0, align 8
@INPUT_ACTIVATOR_7L = common dso_local global i32 0, align 4
@SDLK_h = common dso_local global i64 0, align 8
@INPUT_ACTIVATOR_7U = common dso_local global i32 0, align 4
@SDLK_j = common dso_local global i64 0, align 8
@INPUT_ACTIVATOR_8L = common dso_local global i32 0, align 4
@SDLK_k = common dso_local global i64 0, align 8
@INPUT_ACTIVATOR_8U = common dso_local global i32 0, align 4
@INPUT_UP = common dso_local global i32 0, align 4
@INPUT_DOWN = common dso_local global i32 0, align 4
@INPUT_LEFT = common dso_local global i32 0, align 4
@INPUT_RIGHT = common dso_local global i32 0, align 4
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_PICO = common dso_local global i64 0, align 8
@pico_current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdl_input_update() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = call i32* @SDL_GetKeyState(i32* null)
  store i32* %16, i32** %1, align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %18 = load i64, i64* @joynum, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 0), align 8
  %21 = load i64, i64* @joynum, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %667 [
    i32 132, label %24
    i32 130, label %95
    i32 129, label %118
    i32 131, label %164
    i32 128, label %245
    i32 133, label %614
  ]

24:                                               ; preds = %0
  %25 = call i32 @SDL_GetMouseState(i32* %2, i32* %3)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 0), align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @VIDEO_WIDTH, align 4
  %30 = sdiv i32 %28, %29
  %31 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %32 = load i64, i64* @joynum, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 1), align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* @VIDEO_HEIGHT, align 4
  %40 = sdiv i32 %38, %39
  %41 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %42 = load i64, i64* @joynum, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %24
  %51 = load i32, i32* @INPUT_B, align 4
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %53 = load i64, i64* @joynum, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %24
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* @INPUT_C, align 4
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %65 = load i64, i64* @joynum, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SDL_BUTTON_MMASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* @INPUT_A, align 4
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %77 = load i64, i64* @joynum, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %74, %69
  %82 = load i32*, i32** %1, align 8
  %83 = load i64, i64* @SDLK_f, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i32, i32* @INPUT_START, align 4
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %90 = load i64, i64* @joynum, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %81
  br label %826

95:                                               ; preds = %0
  %96 = call i32 @SDL_GetMouseState(i32* %5, i32* null)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 %97, 256
  %99 = load i32, i32* @VIDEO_WIDTH, align 4
  %100 = sdiv i32 %98, %99
  %101 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %102 = load i64, i64* @joynum, align 8
  %103 = getelementptr inbounds i32*, i32** %101, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %95
  %111 = load i32, i32* @INPUT_B, align 4
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %113 = load i64, i64* @joynum, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %111
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110, %95
  br label %826

118:                                              ; preds = %0
  %119 = call i32 @SDL_GetRelativeMouseState(i32* %7, i32* %8)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 0, %120
  %122 = and i32 %121, 255
  %123 = trunc i32 %122 to i8
  %124 = zext i8 %123 to i32
  %125 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %126 = load i64, i64* @joynum, align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %124, i32* %129, align 4
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 0, %130
  %132 = and i32 %131, 255
  %133 = trunc i32 %132 to i8
  %134 = zext i8 %133 to i32
  %135 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %136 = load i64, i64* @joynum, align 8
  %137 = getelementptr inbounds i32*, i32** %135, i64 %136
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 %134, i32* %139, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %118
  %145 = load i32, i32* @INPUT_B, align 4
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %147 = load i64, i64* @joynum, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %145
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %144, %118
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load i32, i32* @INPUT_C, align 4
  %158 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %159 = load i64, i64* @joynum, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %157
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %156, %151
  br label %826

164:                                              ; preds = %0
  %165 = call i32 @SDL_GetRelativeMouseState(i32* %10, i32* %11)
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %10, align 4
  %167 = mul nsw i32 %166, 2
  %168 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %169 = load i64, i64* @joynum, align 8
  %170 = getelementptr inbounds i32*, i32** %168, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  store i32 %167, i32* %172, align 4
  %173 = load i32, i32* %11, align 4
  %174 = mul nsw i32 %173, 2
  %175 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %176 = load i64, i64* @joynum, align 8
  %177 = getelementptr inbounds i32*, i32** %175, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %174, i32* %179, align 4
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %195, label %182

182:                                              ; preds = %164
  %183 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %184 = load i64, i64* @joynum, align 8
  %185 = getelementptr inbounds i32*, i32** %183, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 0, %188
  %190 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %191 = load i64, i64* @joynum, align 8
  %192 = getelementptr inbounds i32*, i32** %190, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 1
  store i32 %189, i32* %194, align 4
  br label %195

195:                                              ; preds = %182, %164
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load i32, i32* @INPUT_B, align 4
  %202 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %203 = load i64, i64* @joynum, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %201
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %200, %195
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load i32, i32* @INPUT_C, align 4
  %214 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %215 = load i64, i64* @joynum, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %213
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %212, %207
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* @SDL_BUTTON_MMASK, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %219
  %225 = load i32, i32* @INPUT_A, align 4
  %226 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %227 = load i64, i64* @joynum, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %225
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %224, %219
  %232 = load i32*, i32** %1, align 8
  %233 = load i64, i64* @SDLK_f, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %231
  %238 = load i32, i32* @INPUT_START, align 4
  %239 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %240 = load i64, i64* @joynum, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %238
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %237, %231
  br label %826

245:                                              ; preds = %0
  %246 = load i32*, i32** %1, align 8
  %247 = load i64, i64* @SDLK_a, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %245
  %252 = load i32, i32* @INPUT_START, align 4
  %253 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %254 = load i64, i64* @joynum, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %252
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %251, %245
  %259 = load i32*, i32** %1, align 8
  %260 = load i64, i64* @SDLK_s, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %258
  %265 = load i32, i32* @INPUT_A, align 4
  %266 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %267 = load i64, i64* @joynum, align 8
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %265
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %264, %258
  %272 = load i32*, i32** %1, align 8
  %273 = load i64, i64* @SDLK_d, align 8
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %271
  %278 = load i32, i32* @INPUT_C, align 4
  %279 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %280 = load i64, i64* @joynum, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %278
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %277, %271
  %285 = load i32*, i32** %1, align 8
  %286 = load i64, i64* @SDLK_f, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %284
  %291 = load i32, i32* @INPUT_Y, align 4
  %292 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %293 = load i64, i64* @joynum, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %295, %291
  store i32 %296, i32* %294, align 4
  br label %297

297:                                              ; preds = %290, %284
  %298 = load i32*, i32** %1, align 8
  %299 = load i64, i64* @SDLK_z, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %297
  %304 = load i32, i32* @INPUT_B, align 4
  %305 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %306 = load i64, i64* @joynum, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %304
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %303, %297
  %311 = load i32*, i32** %1, align 8
  %312 = load i64, i64* @SDLK_x, align 8
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %310
  %317 = load i32, i32* @INPUT_X, align 4
  %318 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %319 = load i64, i64* @joynum, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %317
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %316, %310
  %324 = load i32*, i32** %1, align 8
  %325 = load i64, i64* @SDLK_c, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %323
  %330 = load i32, i32* @INPUT_MODE, align 4
  %331 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %332 = load i64, i64* @joynum, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = or i32 %334, %330
  store i32 %335, i32* %333, align 4
  br label %336

336:                                              ; preds = %329, %323
  %337 = load i32*, i32** %1, align 8
  %338 = load i64, i64* @SDLK_v, align 8
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %336
  %343 = load i32, i32* @INPUT_Z, align 4
  %344 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %345 = load i64, i64* @joynum, align 8
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = or i32 %347, %343
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %342, %336
  %350 = load i32*, i32** %1, align 8
  %351 = load i64, i64* @SDLK_UP, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %363

355:                                              ; preds = %349
  %356 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %357 = load i64, i64* @joynum, align 8
  %358 = getelementptr inbounds i32*, i32** %356, i64 %357
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 1
  %361 = load i32, i32* %360, align 4
  %362 = sub nsw i32 %361, 2
  store i32 %362, i32* %360, align 4
  br label %384

363:                                              ; preds = %349
  %364 = load i32*, i32** %1, align 8
  %365 = load i64, i64* @SDLK_DOWN, align 8
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %363
  %370 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %371 = load i64, i64* @joynum, align 8
  %372 = getelementptr inbounds i32*, i32** %370, i64 %371
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 1
  %375 = load i32, i32* %374, align 4
  %376 = add nsw i32 %375, 2
  store i32 %376, i32* %374, align 4
  br label %383

377:                                              ; preds = %363
  %378 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %379 = load i64, i64* @joynum, align 8
  %380 = getelementptr inbounds i32*, i32** %378, i64 %379
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 1
  store i32 128, i32* %382, align 4
  br label %383

383:                                              ; preds = %377, %369
  br label %384

384:                                              ; preds = %383, %355
  %385 = load i32*, i32** %1, align 8
  %386 = load i64, i64* @SDLK_LEFT, align 8
  %387 = getelementptr inbounds i32, i32* %385, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %398

390:                                              ; preds = %384
  %391 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %392 = load i64, i64* @joynum, align 8
  %393 = getelementptr inbounds i32*, i32** %391, i64 %392
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 0
  %396 = load i32, i32* %395, align 4
  %397 = sub nsw i32 %396, 2
  store i32 %397, i32* %395, align 4
  br label %419

398:                                              ; preds = %384
  %399 = load i32*, i32** %1, align 8
  %400 = load i64, i64* @SDLK_RIGHT, align 8
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %412

404:                                              ; preds = %398
  %405 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %406 = load i64, i64* @joynum, align 8
  %407 = getelementptr inbounds i32*, i32** %405, i64 %406
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 0
  %410 = load i32, i32* %409, align 4
  %411 = add nsw i32 %410, 2
  store i32 %411, i32* %409, align 4
  br label %418

412:                                              ; preds = %398
  %413 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %414 = load i64, i64* @joynum, align 8
  %415 = getelementptr inbounds i32*, i32** %413, i64 %414
  %416 = load i32*, i32** %415, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 0
  store i32 128, i32* %417, align 4
  br label %418

418:                                              ; preds = %412, %404
  br label %419

419:                                              ; preds = %418, %390
  %420 = load i32*, i32** %1, align 8
  %421 = load i64, i64* @SDLK_KP8, align 8
  %422 = getelementptr inbounds i32, i32* %420, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %434

425:                                              ; preds = %419
  %426 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %427 = load i64, i64* @joynum, align 8
  %428 = add i64 %427, 1
  %429 = getelementptr inbounds i32*, i32** %426, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 0
  %432 = load i32, i32* %431, align 4
  %433 = sub nsw i32 %432, 2
  store i32 %433, i32* %431, align 4
  br label %489

434:                                              ; preds = %419
  %435 = load i32*, i32** %1, align 8
  %436 = load i64, i64* @SDLK_KP2, align 8
  %437 = getelementptr inbounds i32, i32* %435, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %449

440:                                              ; preds = %434
  %441 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %442 = load i64, i64* @joynum, align 8
  %443 = add i64 %442, 1
  %444 = getelementptr inbounds i32*, i32** %441, i64 %443
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, 2
  store i32 %448, i32* %446, align 4
  br label %488

449:                                              ; preds = %434
  %450 = load i32*, i32** %1, align 8
  %451 = load i64, i64* @SDLK_KP4, align 8
  %452 = getelementptr inbounds i32, i32* %450, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %449
  %456 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %457 = load i64, i64* @joynum, align 8
  %458 = add i64 %457, 1
  %459 = getelementptr inbounds i32*, i32** %456, i64 %458
  %460 = load i32*, i32** %459, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 0
  %462 = load i32, i32* %461, align 4
  %463 = sub nsw i32 %462, 2
  store i32 %463, i32* %461, align 4
  br label %487

464:                                              ; preds = %449
  %465 = load i32*, i32** %1, align 8
  %466 = load i64, i64* @SDLK_KP6, align 8
  %467 = getelementptr inbounds i32, i32* %465, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %479

470:                                              ; preds = %464
  %471 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %472 = load i64, i64* @joynum, align 8
  %473 = add i64 %472, 1
  %474 = getelementptr inbounds i32*, i32** %471, i64 %473
  %475 = load i32*, i32** %474, align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 0
  %477 = load i32, i32* %476, align 4
  %478 = add nsw i32 %477, 2
  store i32 %478, i32* %476, align 4
  br label %486

479:                                              ; preds = %464
  %480 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %481 = load i64, i64* @joynum, align 8
  %482 = add i64 %481, 1
  %483 = getelementptr inbounds i32*, i32** %480, i64 %482
  %484 = load i32*, i32** %483, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 0
  store i32 128, i32* %485, align 4
  br label %486

486:                                              ; preds = %479, %470
  br label %487

487:                                              ; preds = %486, %455
  br label %488

488:                                              ; preds = %487, %440
  br label %489

489:                                              ; preds = %488, %425
  %490 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %491 = load i64, i64* @joynum, align 8
  %492 = getelementptr inbounds i32*, i32** %490, i64 %491
  %493 = load i32*, i32** %492, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 0
  %495 = load i32, i32* %494, align 4
  %496 = icmp sgt i32 %495, 255
  br i1 %496, label %497, label %503

497:                                              ; preds = %489
  %498 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %499 = load i64, i64* @joynum, align 8
  %500 = getelementptr inbounds i32*, i32** %498, i64 %499
  %501 = load i32*, i32** %500, align 8
  %502 = getelementptr inbounds i32, i32* %501, i64 0
  store i32 255, i32* %502, align 4
  br label %518

503:                                              ; preds = %489
  %504 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %505 = load i64, i64* @joynum, align 8
  %506 = getelementptr inbounds i32*, i32** %504, i64 %505
  %507 = load i32*, i32** %506, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 0
  %509 = load i32, i32* %508, align 4
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %517

511:                                              ; preds = %503
  %512 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %513 = load i64, i64* @joynum, align 8
  %514 = getelementptr inbounds i32*, i32** %512, i64 %513
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 0
  store i32 0, i32* %516, align 4
  br label %517

517:                                              ; preds = %511, %503
  br label %518

518:                                              ; preds = %517, %497
  %519 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %520 = load i64, i64* @joynum, align 8
  %521 = getelementptr inbounds i32*, i32** %519, i64 %520
  %522 = load i32*, i32** %521, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 1
  %524 = load i32, i32* %523, align 4
  %525 = icmp sgt i32 %524, 255
  br i1 %525, label %526, label %532

526:                                              ; preds = %518
  %527 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %528 = load i64, i64* @joynum, align 8
  %529 = getelementptr inbounds i32*, i32** %527, i64 %528
  %530 = load i32*, i32** %529, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 1
  store i32 255, i32* %531, align 4
  br label %547

532:                                              ; preds = %518
  %533 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %534 = load i64, i64* @joynum, align 8
  %535 = getelementptr inbounds i32*, i32** %533, i64 %534
  %536 = load i32*, i32** %535, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 1
  %538 = load i32, i32* %537, align 4
  %539 = icmp slt i32 %538, 0
  br i1 %539, label %540, label %546

540:                                              ; preds = %532
  %541 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %542 = load i64, i64* @joynum, align 8
  %543 = getelementptr inbounds i32*, i32** %541, i64 %542
  %544 = load i32*, i32** %543, align 8
  %545 = getelementptr inbounds i32, i32* %544, i64 1
  store i32 0, i32* %545, align 4
  br label %546

546:                                              ; preds = %540, %532
  br label %547

547:                                              ; preds = %546, %526
  %548 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %549 = load i64, i64* @joynum, align 8
  %550 = add i64 %549, 1
  %551 = getelementptr inbounds i32*, i32** %548, i64 %550
  %552 = load i32*, i32** %551, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 0
  %554 = load i32, i32* %553, align 4
  %555 = icmp sgt i32 %554, 255
  br i1 %555, label %556, label %563

556:                                              ; preds = %547
  %557 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %558 = load i64, i64* @joynum, align 8
  %559 = add i64 %558, 1
  %560 = getelementptr inbounds i32*, i32** %557, i64 %559
  %561 = load i32*, i32** %560, align 8
  %562 = getelementptr inbounds i32, i32* %561, i64 0
  store i32 255, i32* %562, align 4
  br label %580

563:                                              ; preds = %547
  %564 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %565 = load i64, i64* @joynum, align 8
  %566 = add i64 %565, 1
  %567 = getelementptr inbounds i32*, i32** %564, i64 %566
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 0
  %570 = load i32, i32* %569, align 4
  %571 = icmp slt i32 %570, 0
  br i1 %571, label %572, label %579

572:                                              ; preds = %563
  %573 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %574 = load i64, i64* @joynum, align 8
  %575 = add i64 %574, 1
  %576 = getelementptr inbounds i32*, i32** %573, i64 %575
  %577 = load i32*, i32** %576, align 8
  %578 = getelementptr inbounds i32, i32* %577, i64 0
  store i32 0, i32* %578, align 4
  br label %579

579:                                              ; preds = %572, %563
  br label %580

580:                                              ; preds = %579, %556
  %581 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %582 = load i64, i64* @joynum, align 8
  %583 = add i64 %582, 1
  %584 = getelementptr inbounds i32*, i32** %581, i64 %583
  %585 = load i32*, i32** %584, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 1
  %587 = load i32, i32* %586, align 4
  %588 = icmp sgt i32 %587, 255
  br i1 %588, label %589, label %596

589:                                              ; preds = %580
  %590 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %591 = load i64, i64* @joynum, align 8
  %592 = add i64 %591, 1
  %593 = getelementptr inbounds i32*, i32** %590, i64 %592
  %594 = load i32*, i32** %593, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 1
  store i32 255, i32* %595, align 4
  br label %613

596:                                              ; preds = %580
  %597 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %598 = load i64, i64* @joynum, align 8
  %599 = add i64 %598, 1
  %600 = getelementptr inbounds i32*, i32** %597, i64 %599
  %601 = load i32*, i32** %600, align 8
  %602 = getelementptr inbounds i32, i32* %601, i64 1
  %603 = load i32, i32* %602, align 4
  %604 = icmp slt i32 %603, 0
  br i1 %604, label %605, label %612

605:                                              ; preds = %596
  %606 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %607 = load i64, i64* @joynum, align 8
  %608 = add i64 %607, 1
  %609 = getelementptr inbounds i32*, i32** %606, i64 %608
  %610 = load i32*, i32** %609, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 1
  store i32 0, i32* %611, align 4
  br label %612

612:                                              ; preds = %605, %596
  br label %613

613:                                              ; preds = %612, %589
  br label %826

614:                                              ; preds = %0
  %615 = load i32*, i32** %1, align 8
  %616 = load i64, i64* @SDLK_g, align 8
  %617 = getelementptr inbounds i32, i32* %615, i64 %616
  %618 = load i32, i32* %617, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %627

620:                                              ; preds = %614
  %621 = load i32, i32* @INPUT_ACTIVATOR_7L, align 4
  %622 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %623 = load i64, i64* @joynum, align 8
  %624 = getelementptr inbounds i32, i32* %622, i64 %623
  %625 = load i32, i32* %624, align 4
  %626 = or i32 %625, %621
  store i32 %626, i32* %624, align 4
  br label %627

627:                                              ; preds = %620, %614
  %628 = load i32*, i32** %1, align 8
  %629 = load i64, i64* @SDLK_h, align 8
  %630 = getelementptr inbounds i32, i32* %628, i64 %629
  %631 = load i32, i32* %630, align 4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %640

633:                                              ; preds = %627
  %634 = load i32, i32* @INPUT_ACTIVATOR_7U, align 4
  %635 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %636 = load i64, i64* @joynum, align 8
  %637 = getelementptr inbounds i32, i32* %635, i64 %636
  %638 = load i32, i32* %637, align 4
  %639 = or i32 %638, %634
  store i32 %639, i32* %637, align 4
  br label %640

640:                                              ; preds = %633, %627
  %641 = load i32*, i32** %1, align 8
  %642 = load i64, i64* @SDLK_j, align 8
  %643 = getelementptr inbounds i32, i32* %641, i64 %642
  %644 = load i32, i32* %643, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %653

646:                                              ; preds = %640
  %647 = load i32, i32* @INPUT_ACTIVATOR_8L, align 4
  %648 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %649 = load i64, i64* @joynum, align 8
  %650 = getelementptr inbounds i32, i32* %648, i64 %649
  %651 = load i32, i32* %650, align 4
  %652 = or i32 %651, %647
  store i32 %652, i32* %650, align 4
  br label %653

653:                                              ; preds = %646, %640
  %654 = load i32*, i32** %1, align 8
  %655 = load i64, i64* @SDLK_k, align 8
  %656 = getelementptr inbounds i32, i32* %654, i64 %655
  %657 = load i32, i32* %656, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %666

659:                                              ; preds = %653
  %660 = load i32, i32* @INPUT_ACTIVATOR_8U, align 4
  %661 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %662 = load i64, i64* @joynum, align 8
  %663 = getelementptr inbounds i32, i32* %661, i64 %662
  %664 = load i32, i32* %663, align 4
  %665 = or i32 %664, %660
  store i32 %665, i32* %663, align 4
  br label %666

666:                                              ; preds = %659, %653
  br label %667

667:                                              ; preds = %0, %666
  %668 = load i32*, i32** %1, align 8
  %669 = load i64, i64* @SDLK_a, align 8
  %670 = getelementptr inbounds i32, i32* %668, i64 %669
  %671 = load i32, i32* %670, align 4
  %672 = icmp ne i32 %671, 0
  br i1 %672, label %673, label %680

673:                                              ; preds = %667
  %674 = load i32, i32* @INPUT_A, align 4
  %675 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %676 = load i64, i64* @joynum, align 8
  %677 = getelementptr inbounds i32, i32* %675, i64 %676
  %678 = load i32, i32* %677, align 4
  %679 = or i32 %678, %674
  store i32 %679, i32* %677, align 4
  br label %680

680:                                              ; preds = %673, %667
  %681 = load i32*, i32** %1, align 8
  %682 = load i64, i64* @SDLK_s, align 8
  %683 = getelementptr inbounds i32, i32* %681, i64 %682
  %684 = load i32, i32* %683, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %693

686:                                              ; preds = %680
  %687 = load i32, i32* @INPUT_B, align 4
  %688 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %689 = load i64, i64* @joynum, align 8
  %690 = getelementptr inbounds i32, i32* %688, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = or i32 %691, %687
  store i32 %692, i32* %690, align 4
  br label %693

693:                                              ; preds = %686, %680
  %694 = load i32*, i32** %1, align 8
  %695 = load i64, i64* @SDLK_d, align 8
  %696 = getelementptr inbounds i32, i32* %694, i64 %695
  %697 = load i32, i32* %696, align 4
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %706

699:                                              ; preds = %693
  %700 = load i32, i32* @INPUT_C, align 4
  %701 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %702 = load i64, i64* @joynum, align 8
  %703 = getelementptr inbounds i32, i32* %701, i64 %702
  %704 = load i32, i32* %703, align 4
  %705 = or i32 %704, %700
  store i32 %705, i32* %703, align 4
  br label %706

706:                                              ; preds = %699, %693
  %707 = load i32*, i32** %1, align 8
  %708 = load i64, i64* @SDLK_f, align 8
  %709 = getelementptr inbounds i32, i32* %707, i64 %708
  %710 = load i32, i32* %709, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %719

712:                                              ; preds = %706
  %713 = load i32, i32* @INPUT_START, align 4
  %714 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %715 = load i64, i64* @joynum, align 8
  %716 = getelementptr inbounds i32, i32* %714, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = or i32 %717, %713
  store i32 %718, i32* %716, align 4
  br label %719

719:                                              ; preds = %712, %706
  %720 = load i32*, i32** %1, align 8
  %721 = load i64, i64* @SDLK_z, align 8
  %722 = getelementptr inbounds i32, i32* %720, i64 %721
  %723 = load i32, i32* %722, align 4
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %725, label %732

725:                                              ; preds = %719
  %726 = load i32, i32* @INPUT_X, align 4
  %727 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %728 = load i64, i64* @joynum, align 8
  %729 = getelementptr inbounds i32, i32* %727, i64 %728
  %730 = load i32, i32* %729, align 4
  %731 = or i32 %730, %726
  store i32 %731, i32* %729, align 4
  br label %732

732:                                              ; preds = %725, %719
  %733 = load i32*, i32** %1, align 8
  %734 = load i64, i64* @SDLK_x, align 8
  %735 = getelementptr inbounds i32, i32* %733, i64 %734
  %736 = load i32, i32* %735, align 4
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %738, label %745

738:                                              ; preds = %732
  %739 = load i32, i32* @INPUT_Y, align 4
  %740 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %741 = load i64, i64* @joynum, align 8
  %742 = getelementptr inbounds i32, i32* %740, i64 %741
  %743 = load i32, i32* %742, align 4
  %744 = or i32 %743, %739
  store i32 %744, i32* %742, align 4
  br label %745

745:                                              ; preds = %738, %732
  %746 = load i32*, i32** %1, align 8
  %747 = load i64, i64* @SDLK_c, align 8
  %748 = getelementptr inbounds i32, i32* %746, i64 %747
  %749 = load i32, i32* %748, align 4
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %751, label %758

751:                                              ; preds = %745
  %752 = load i32, i32* @INPUT_Z, align 4
  %753 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %754 = load i64, i64* @joynum, align 8
  %755 = getelementptr inbounds i32, i32* %753, i64 %754
  %756 = load i32, i32* %755, align 4
  %757 = or i32 %756, %752
  store i32 %757, i32* %755, align 4
  br label %758

758:                                              ; preds = %751, %745
  %759 = load i32*, i32** %1, align 8
  %760 = load i64, i64* @SDLK_v, align 8
  %761 = getelementptr inbounds i32, i32* %759, i64 %760
  %762 = load i32, i32* %761, align 4
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %764, label %771

764:                                              ; preds = %758
  %765 = load i32, i32* @INPUT_MODE, align 4
  %766 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %767 = load i64, i64* @joynum, align 8
  %768 = getelementptr inbounds i32, i32* %766, i64 %767
  %769 = load i32, i32* %768, align 4
  %770 = or i32 %769, %765
  store i32 %770, i32* %768, align 4
  br label %771

771:                                              ; preds = %764, %758
  %772 = load i32*, i32** %1, align 8
  %773 = load i64, i64* @SDLK_UP, align 8
  %774 = getelementptr inbounds i32, i32* %772, i64 %773
  %775 = load i32, i32* %774, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %784

777:                                              ; preds = %771
  %778 = load i32, i32* @INPUT_UP, align 4
  %779 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %780 = load i64, i64* @joynum, align 8
  %781 = getelementptr inbounds i32, i32* %779, i64 %780
  %782 = load i32, i32* %781, align 4
  %783 = or i32 %782, %778
  store i32 %783, i32* %781, align 4
  br label %798

784:                                              ; preds = %771
  %785 = load i32*, i32** %1, align 8
  %786 = load i64, i64* @SDLK_DOWN, align 8
  %787 = getelementptr inbounds i32, i32* %785, i64 %786
  %788 = load i32, i32* %787, align 4
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %797

790:                                              ; preds = %784
  %791 = load i32, i32* @INPUT_DOWN, align 4
  %792 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %793 = load i64, i64* @joynum, align 8
  %794 = getelementptr inbounds i32, i32* %792, i64 %793
  %795 = load i32, i32* %794, align 4
  %796 = or i32 %795, %791
  store i32 %796, i32* %794, align 4
  br label %797

797:                                              ; preds = %790, %784
  br label %798

798:                                              ; preds = %797, %777
  %799 = load i32*, i32** %1, align 8
  %800 = load i64, i64* @SDLK_LEFT, align 8
  %801 = getelementptr inbounds i32, i32* %799, i64 %800
  %802 = load i32, i32* %801, align 4
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %804, label %811

804:                                              ; preds = %798
  %805 = load i32, i32* @INPUT_LEFT, align 4
  %806 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %807 = load i64, i64* @joynum, align 8
  %808 = getelementptr inbounds i32, i32* %806, i64 %807
  %809 = load i32, i32* %808, align 4
  %810 = or i32 %809, %805
  store i32 %810, i32* %808, align 4
  br label %825

811:                                              ; preds = %798
  %812 = load i32*, i32** %1, align 8
  %813 = load i64, i64* @SDLK_RIGHT, align 8
  %814 = getelementptr inbounds i32, i32* %812, i64 %813
  %815 = load i32, i32* %814, align 4
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %824

817:                                              ; preds = %811
  %818 = load i32, i32* @INPUT_RIGHT, align 4
  %819 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %820 = load i64, i64* @joynum, align 8
  %821 = getelementptr inbounds i32, i32* %819, i64 %820
  %822 = load i32, i32* %821, align 4
  %823 = or i32 %822, %818
  store i32 %823, i32* %821, align 4
  br label %824

824:                                              ; preds = %817, %811
  br label %825

825:                                              ; preds = %824, %804
  br label %826

826:                                              ; preds = %825, %613, %244, %163, %117, %94
  %827 = load i64, i64* @system_hw, align 8
  %828 = load i64, i64* @SYSTEM_PICO, align 8
  %829 = icmp eq i64 %827, %828
  br i1 %829, label %830, label %882

830:                                              ; preds = %826
  %831 = call i32 @SDL_GetMouseState(i32* %13, i32* %14)
  store i32 %831, i32* %15, align 4
  %832 = load i32, i32* %13, align 4
  %833 = mul nsw i32 %832, 321
  %834 = load i32, i32* @VIDEO_WIDTH, align 4
  %835 = sdiv i32 %833, %834
  %836 = add nsw i32 60, %835
  %837 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %838 = getelementptr inbounds i32*, i32** %837, i64 0
  %839 = load i32*, i32** %838, align 8
  %840 = getelementptr inbounds i32, i32* %839, i64 0
  store i32 %836, i32* %840, align 4
  %841 = load i32, i32* %14, align 4
  %842 = mul nsw i32 %841, 252
  %843 = load i32, i32* @VIDEO_HEIGHT, align 4
  %844 = sdiv i32 %842, %843
  %845 = add nsw i32 508, %844
  %846 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %847 = getelementptr inbounds i32*, i32** %846, i64 0
  %848 = load i32*, i32** %847, align 8
  %849 = getelementptr inbounds i32, i32* %848, i64 1
  store i32 %845, i32* %849, align 4
  %850 = load i32, i32* %15, align 4
  %851 = load i32, i32* @SDL_BUTTON_MMASK, align 4
  %852 = and i32 %850, %851
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %857

854:                                              ; preds = %830
  %855 = load i32, i32* @pico_current, align 4
  %856 = add nsw i32 %855, 1
  store i32 %856, i32* @pico_current, align 4
  br label %857

857:                                              ; preds = %854, %830
  %858 = load i32, i32* %15, align 4
  %859 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %860 = and i32 %858, %859
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %862, label %869

862:                                              ; preds = %857
  %863 = load i32, i32* @INPUT_B, align 4
  %864 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %865 = load i64, i64* @joynum, align 8
  %866 = getelementptr inbounds i32, i32* %864, i64 %865
  %867 = load i32, i32* %866, align 4
  %868 = or i32 %867, %863
  store i32 %868, i32* %866, align 4
  br label %869

869:                                              ; preds = %862, %857
  %870 = load i32, i32* %15, align 4
  %871 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %872 = and i32 %870, %871
  %873 = icmp ne i32 %872, 0
  br i1 %873, label %874, label %881

874:                                              ; preds = %869
  %875 = load i32, i32* @INPUT_A, align 4
  %876 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %877 = load i64, i64* @joynum, align 8
  %878 = getelementptr inbounds i32, i32* %876, i64 %877
  %879 = load i32, i32* %878, align 4
  %880 = or i32 %879, %875
  store i32 %880, i32* %878, align 4
  br label %881

881:                                              ; preds = %874, %869
  br label %882

882:                                              ; preds = %881, %826
  %883 = load i32*, i32** %1, align 8
  %884 = call i32 @free(i32* %883)
  ret i32 1
}

declare dso_local i32* @SDL_GetKeyState(i32*) #1

declare dso_local i32 @SDL_GetMouseState(i32*, i32*) #1

declare dso_local i32 @SDL_GetRelativeMouseState(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
