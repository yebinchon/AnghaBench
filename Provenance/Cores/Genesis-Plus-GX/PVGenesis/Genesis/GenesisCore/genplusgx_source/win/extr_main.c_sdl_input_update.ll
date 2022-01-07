; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_input_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/win/extr_main.c_sdl_input_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32**, i64* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@input = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@joynum = common dso_local global i64 0, align 8
@VIDEO_WIDTH = common dso_local global i32 0, align 4
@bitmap = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@VIDEO_HEIGHT = common dso_local global i32 0, align 4
@SDL_BUTTON_LMASK = common dso_local global i32 0, align 4
@INPUT_A = common dso_local global i64 0, align 8
@SDL_BUTTON_RMASK = common dso_local global i32 0, align 4
@INPUT_B = common dso_local global i64 0, align 8
@SDL_BUTTON_MMASK = common dso_local global i32 0, align 4
@INPUT_C = common dso_local global i64 0, align 8
@SDLK_f = common dso_local global i64 0, align 8
@INPUT_START = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SDLK_a = common dso_local global i64 0, align 8
@SDLK_s = common dso_local global i64 0, align 8
@SDLK_d = common dso_local global i64 0, align 8
@INPUT_Y = common dso_local global i64 0, align 8
@SDLK_z = common dso_local global i64 0, align 8
@SDLK_x = common dso_local global i64 0, align 8
@INPUT_X = common dso_local global i64 0, align 8
@SDLK_c = common dso_local global i64 0, align 8
@INPUT_MODE = common dso_local global i64 0, align 8
@SDLK_v = common dso_local global i64 0, align 8
@INPUT_Z = common dso_local global i64 0, align 8
@SDLK_UP = common dso_local global i64 0, align 8
@SDLK_DOWN = common dso_local global i64 0, align 8
@SDLK_LEFT = common dso_local global i64 0, align 8
@SDLK_RIGHT = common dso_local global i64 0, align 8
@SDLK_KP8 = common dso_local global i64 0, align 8
@SDLK_KP2 = common dso_local global i64 0, align 8
@SDLK_KP4 = common dso_local global i64 0, align 8
@SDLK_KP6 = common dso_local global i64 0, align 8
@pico_current = common dso_local global i32 0, align 4
@INPUT_PICO_RED = common dso_local global i64 0, align 8
@INPUT_PICO_PEN = common dso_local global i64 0, align 8
@SDLK_g = common dso_local global i64 0, align 8
@INPUT_ACTIVATOR_7L = common dso_local global i64 0, align 8
@SDLK_h = common dso_local global i64 0, align 8
@INPUT_ACTIVATOR_7U = common dso_local global i64 0, align 8
@SDLK_j = common dso_local global i64 0, align 8
@INPUT_ACTIVATOR_8L = common dso_local global i64 0, align 8
@SDLK_k = common dso_local global i64 0, align 8
@INPUT_ACTIVATOR_8U = common dso_local global i64 0, align 8
@INPUT_UP = common dso_local global i64 0, align 8
@INPUT_DOWN = common dso_local global i64 0, align 8
@INPUT_LEFT = common dso_local global i64 0, align 8
@INPUT_RIGHT = common dso_local global i64 0, align 8

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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = call i32* @SDL_GetKeyState(i32* null)
  store i32* %19, i32** %1, align 8
  %20 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %21 = load i64, i64* @joynum, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 0), align 8
  %24 = load i64, i64* @joynum, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %752 [
    i32 134, label %27
    i32 132, label %100
    i32 130, label %123
    i32 133, label %169
    i32 128, label %250
    i32 131, label %619
    i32 129, label %670
    i32 135, label %699
  ]

27:                                               ; preds = %0
  %28 = call i32 @SDL_GetMouseState(i32* %2, i32* %3)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @VIDEO_WIDTH, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 0), align 4
  %32 = sub nsw i32 %30, %31
  %33 = sdiv i32 %32, 2
  %34 = sub nsw i32 %29, %33
  %35 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %36 = load i64, i64* @joynum, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @VIDEO_HEIGHT, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bitmap, i32 0, i32 0, i32 1), align 4
  %43 = sub nsw i32 %41, %42
  %44 = sdiv i32 %43, 2
  %45 = sub nsw i32 %40, %44
  %46 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %47 = load i64, i64* @joynum, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %45, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %27
  %56 = load i64, i64* @INPUT_A, align 8
  %57 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %58 = load i64, i64* @joynum, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %56
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %55, %27
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i64, i64* @INPUT_B, align 8
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %70 = load i64, i64* @joynum, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = or i64 %72, %68
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @SDL_BUTTON_MMASK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i64, i64* @INPUT_C, align 8
  %81 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %82 = load i64, i64* @joynum, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = or i64 %84, %80
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %79, %74
  %87 = load i32*, i32** %1, align 8
  %88 = load i64, i64* @SDLK_f, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load i64, i64* @INPUT_START, align 8
  %94 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %95 = load i64, i64* @joynum, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = or i64 %97, %93
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %92, %86
  br label %911

100:                                              ; preds = %0
  %101 = call i32 @SDL_GetMouseState(i32* %5, i32* null)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %5, align 4
  %103 = mul nsw i32 %102, 256
  %104 = load i32, i32* @VIDEO_WIDTH, align 4
  %105 = sdiv i32 %103, %104
  %106 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %107 = load i64, i64* @joynum, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %100
  %116 = load i64, i64* @INPUT_B, align 8
  %117 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %118 = load i64, i64* @joynum, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %120, %116
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %115, %100
  br label %911

123:                                              ; preds = %0
  %124 = call i32 @SDL_GetRelativeMouseState(i32* %7, i32* %8)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 0, %125
  %127 = and i32 %126, 255
  %128 = trunc i32 %127 to i8
  %129 = zext i8 %128 to i32
  %130 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %131 = load i64, i64* @joynum, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %129, i32* %134, align 4
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 0, %135
  %137 = and i32 %136, 255
  %138 = trunc i32 %137 to i8
  %139 = zext i8 %138 to i32
  %140 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %141 = load i64, i64* @joynum, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %139, i32* %144, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %123
  %150 = load i64, i64* @INPUT_B, align 8
  %151 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %152 = load i64, i64* @joynum, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = or i64 %154, %150
  store i64 %155, i64* %153, align 8
  br label %156

156:                                              ; preds = %149, %123
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load i64, i64* @INPUT_C, align 8
  %163 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %164 = load i64, i64* @joynum, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = or i64 %166, %162
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %161, %156
  br label %911

169:                                              ; preds = %0
  %170 = call i32 @SDL_GetRelativeMouseState(i32* %10, i32* %11)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %10, align 4
  %172 = mul nsw i32 %171, 2
  %173 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %174 = load i64, i64* @joynum, align 8
  %175 = getelementptr inbounds i32*, i32** %173, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  store i32 %172, i32* %177, align 4
  %178 = load i32, i32* %11, align 4
  %179 = mul nsw i32 %178, 2
  %180 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %181 = load i64, i64* @joynum, align 8
  %182 = getelementptr inbounds i32*, i32** %180, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  store i32 %179, i32* %184, align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %169
  %188 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %189 = load i64, i64* @joynum, align 8
  %190 = getelementptr inbounds i32*, i32** %188, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 0, %193
  %195 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %196 = load i64, i64* @joynum, align 8
  %197 = getelementptr inbounds i32*, i32** %195, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  store i32 %194, i32* %199, align 4
  br label %200

200:                                              ; preds = %187, %169
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load i64, i64* @INPUT_B, align 8
  %207 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %208 = load i64, i64* @joynum, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = or i64 %210, %206
  store i64 %211, i64* %209, align 8
  br label %212

212:                                              ; preds = %205, %200
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load i64, i64* @INPUT_C, align 8
  %219 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %220 = load i64, i64* @joynum, align 8
  %221 = getelementptr inbounds i64, i64* %219, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = or i64 %222, %218
  store i64 %223, i64* %221, align 8
  br label %224

224:                                              ; preds = %217, %212
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* @SDL_BUTTON_MMASK, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = load i64, i64* @INPUT_A, align 8
  %231 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %232 = load i64, i64* @joynum, align 8
  %233 = getelementptr inbounds i64, i64* %231, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = or i64 %234, %230
  store i64 %235, i64* %233, align 8
  br label %236

236:                                              ; preds = %229, %224
  %237 = load i32*, i32** %1, align 8
  %238 = load i64, i64* @SDLK_f, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %236
  %243 = load i64, i64* @INPUT_START, align 8
  %244 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %245 = load i64, i64* @joynum, align 8
  %246 = getelementptr inbounds i64, i64* %244, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = or i64 %247, %243
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %242, %236
  br label %911

250:                                              ; preds = %0
  %251 = load i32*, i32** %1, align 8
  %252 = load i64, i64* @SDLK_a, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %250
  %257 = load i64, i64* @INPUT_START, align 8
  %258 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %259 = load i64, i64* @joynum, align 8
  %260 = getelementptr inbounds i64, i64* %258, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = or i64 %261, %257
  store i64 %262, i64* %260, align 8
  br label %263

263:                                              ; preds = %256, %250
  %264 = load i32*, i32** %1, align 8
  %265 = load i64, i64* @SDLK_s, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %263
  %270 = load i64, i64* @INPUT_A, align 8
  %271 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %272 = load i64, i64* @joynum, align 8
  %273 = getelementptr inbounds i64, i64* %271, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = or i64 %274, %270
  store i64 %275, i64* %273, align 8
  br label %276

276:                                              ; preds = %269, %263
  %277 = load i32*, i32** %1, align 8
  %278 = load i64, i64* @SDLK_d, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load i64, i64* @INPUT_C, align 8
  %284 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %285 = load i64, i64* @joynum, align 8
  %286 = getelementptr inbounds i64, i64* %284, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = or i64 %287, %283
  store i64 %288, i64* %286, align 8
  br label %289

289:                                              ; preds = %282, %276
  %290 = load i32*, i32** %1, align 8
  %291 = load i64, i64* @SDLK_f, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %289
  %296 = load i64, i64* @INPUT_Y, align 8
  %297 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %298 = load i64, i64* @joynum, align 8
  %299 = getelementptr inbounds i64, i64* %297, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = or i64 %300, %296
  store i64 %301, i64* %299, align 8
  br label %302

302:                                              ; preds = %295, %289
  %303 = load i32*, i32** %1, align 8
  %304 = load i64, i64* @SDLK_z, align 8
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %302
  %309 = load i64, i64* @INPUT_B, align 8
  %310 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %311 = load i64, i64* @joynum, align 8
  %312 = getelementptr inbounds i64, i64* %310, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = or i64 %313, %309
  store i64 %314, i64* %312, align 8
  br label %315

315:                                              ; preds = %308, %302
  %316 = load i32*, i32** %1, align 8
  %317 = load i64, i64* @SDLK_x, align 8
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %315
  %322 = load i64, i64* @INPUT_X, align 8
  %323 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %324 = load i64, i64* @joynum, align 8
  %325 = getelementptr inbounds i64, i64* %323, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = or i64 %326, %322
  store i64 %327, i64* %325, align 8
  br label %328

328:                                              ; preds = %321, %315
  %329 = load i32*, i32** %1, align 8
  %330 = load i64, i64* @SDLK_c, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %328
  %335 = load i64, i64* @INPUT_MODE, align 8
  %336 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %337 = load i64, i64* @joynum, align 8
  %338 = getelementptr inbounds i64, i64* %336, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = or i64 %339, %335
  store i64 %340, i64* %338, align 8
  br label %341

341:                                              ; preds = %334, %328
  %342 = load i32*, i32** %1, align 8
  %343 = load i64, i64* @SDLK_v, align 8
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %354

347:                                              ; preds = %341
  %348 = load i64, i64* @INPUT_Z, align 8
  %349 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %350 = load i64, i64* @joynum, align 8
  %351 = getelementptr inbounds i64, i64* %349, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = or i64 %352, %348
  store i64 %353, i64* %351, align 8
  br label %354

354:                                              ; preds = %347, %341
  %355 = load i32*, i32** %1, align 8
  %356 = load i64, i64* @SDLK_UP, align 8
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %368

360:                                              ; preds = %354
  %361 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %362 = load i64, i64* @joynum, align 8
  %363 = getelementptr inbounds i32*, i32** %361, i64 %362
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 1
  %366 = load i32, i32* %365, align 4
  %367 = sub nsw i32 %366, 2
  store i32 %367, i32* %365, align 4
  br label %389

368:                                              ; preds = %354
  %369 = load i32*, i32** %1, align 8
  %370 = load i64, i64* @SDLK_DOWN, align 8
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %382

374:                                              ; preds = %368
  %375 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %376 = load i64, i64* @joynum, align 8
  %377 = getelementptr inbounds i32*, i32** %375, i64 %376
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 1
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %380, 2
  store i32 %381, i32* %379, align 4
  br label %388

382:                                              ; preds = %368
  %383 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %384 = load i64, i64* @joynum, align 8
  %385 = getelementptr inbounds i32*, i32** %383, i64 %384
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 1
  store i32 128, i32* %387, align 4
  br label %388

388:                                              ; preds = %382, %374
  br label %389

389:                                              ; preds = %388, %360
  %390 = load i32*, i32** %1, align 8
  %391 = load i64, i64* @SDLK_LEFT, align 8
  %392 = getelementptr inbounds i32, i32* %390, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %389
  %396 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %397 = load i64, i64* @joynum, align 8
  %398 = getelementptr inbounds i32*, i32** %396, i64 %397
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 0
  %401 = load i32, i32* %400, align 4
  %402 = sub nsw i32 %401, 2
  store i32 %402, i32* %400, align 4
  br label %424

403:                                              ; preds = %389
  %404 = load i32*, i32** %1, align 8
  %405 = load i64, i64* @SDLK_RIGHT, align 8
  %406 = getelementptr inbounds i32, i32* %404, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %417

409:                                              ; preds = %403
  %410 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %411 = load i64, i64* @joynum, align 8
  %412 = getelementptr inbounds i32*, i32** %410, i64 %411
  %413 = load i32*, i32** %412, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 0
  %415 = load i32, i32* %414, align 4
  %416 = add nsw i32 %415, 2
  store i32 %416, i32* %414, align 4
  br label %423

417:                                              ; preds = %403
  %418 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %419 = load i64, i64* @joynum, align 8
  %420 = getelementptr inbounds i32*, i32** %418, i64 %419
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 0
  store i32 128, i32* %422, align 4
  br label %423

423:                                              ; preds = %417, %409
  br label %424

424:                                              ; preds = %423, %395
  %425 = load i32*, i32** %1, align 8
  %426 = load i64, i64* @SDLK_KP8, align 8
  %427 = getelementptr inbounds i32, i32* %425, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %439

430:                                              ; preds = %424
  %431 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %432 = load i64, i64* @joynum, align 8
  %433 = add i64 %432, 1
  %434 = getelementptr inbounds i32*, i32** %431, i64 %433
  %435 = load i32*, i32** %434, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 0
  %437 = load i32, i32* %436, align 4
  %438 = sub nsw i32 %437, 2
  store i32 %438, i32* %436, align 4
  br label %494

439:                                              ; preds = %424
  %440 = load i32*, i32** %1, align 8
  %441 = load i64, i64* @SDLK_KP2, align 8
  %442 = getelementptr inbounds i32, i32* %440, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %454

445:                                              ; preds = %439
  %446 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %447 = load i64, i64* @joynum, align 8
  %448 = add i64 %447, 1
  %449 = getelementptr inbounds i32*, i32** %446, i64 %448
  %450 = load i32*, i32** %449, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 0
  %452 = load i32, i32* %451, align 4
  %453 = add nsw i32 %452, 2
  store i32 %453, i32* %451, align 4
  br label %493

454:                                              ; preds = %439
  %455 = load i32*, i32** %1, align 8
  %456 = load i64, i64* @SDLK_KP4, align 8
  %457 = getelementptr inbounds i32, i32* %455, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %469

460:                                              ; preds = %454
  %461 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %462 = load i64, i64* @joynum, align 8
  %463 = add i64 %462, 1
  %464 = getelementptr inbounds i32*, i32** %461, i64 %463
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  %467 = load i32, i32* %466, align 4
  %468 = sub nsw i32 %467, 2
  store i32 %468, i32* %466, align 4
  br label %492

469:                                              ; preds = %454
  %470 = load i32*, i32** %1, align 8
  %471 = load i64, i64* @SDLK_KP6, align 8
  %472 = getelementptr inbounds i32, i32* %470, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %484

475:                                              ; preds = %469
  %476 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %477 = load i64, i64* @joynum, align 8
  %478 = add i64 %477, 1
  %479 = getelementptr inbounds i32*, i32** %476, i64 %478
  %480 = load i32*, i32** %479, align 8
  %481 = getelementptr inbounds i32, i32* %480, i64 0
  %482 = load i32, i32* %481, align 4
  %483 = add nsw i32 %482, 2
  store i32 %483, i32* %481, align 4
  br label %491

484:                                              ; preds = %469
  %485 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %486 = load i64, i64* @joynum, align 8
  %487 = add i64 %486, 1
  %488 = getelementptr inbounds i32*, i32** %485, i64 %487
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 0
  store i32 128, i32* %490, align 4
  br label %491

491:                                              ; preds = %484, %475
  br label %492

492:                                              ; preds = %491, %460
  br label %493

493:                                              ; preds = %492, %445
  br label %494

494:                                              ; preds = %493, %430
  %495 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %496 = load i64, i64* @joynum, align 8
  %497 = getelementptr inbounds i32*, i32** %495, i64 %496
  %498 = load i32*, i32** %497, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 0
  %500 = load i32, i32* %499, align 4
  %501 = icmp sgt i32 %500, 255
  br i1 %501, label %502, label %508

502:                                              ; preds = %494
  %503 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %504 = load i64, i64* @joynum, align 8
  %505 = getelementptr inbounds i32*, i32** %503, i64 %504
  %506 = load i32*, i32** %505, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 0
  store i32 255, i32* %507, align 4
  br label %523

508:                                              ; preds = %494
  %509 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %510 = load i64, i64* @joynum, align 8
  %511 = getelementptr inbounds i32*, i32** %509, i64 %510
  %512 = load i32*, i32** %511, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 0
  %514 = load i32, i32* %513, align 4
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %516, label %522

516:                                              ; preds = %508
  %517 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %518 = load i64, i64* @joynum, align 8
  %519 = getelementptr inbounds i32*, i32** %517, i64 %518
  %520 = load i32*, i32** %519, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 0
  store i32 0, i32* %521, align 4
  br label %522

522:                                              ; preds = %516, %508
  br label %523

523:                                              ; preds = %522, %502
  %524 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %525 = load i64, i64* @joynum, align 8
  %526 = getelementptr inbounds i32*, i32** %524, i64 %525
  %527 = load i32*, i32** %526, align 8
  %528 = getelementptr inbounds i32, i32* %527, i64 1
  %529 = load i32, i32* %528, align 4
  %530 = icmp sgt i32 %529, 255
  br i1 %530, label %531, label %537

531:                                              ; preds = %523
  %532 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %533 = load i64, i64* @joynum, align 8
  %534 = getelementptr inbounds i32*, i32** %532, i64 %533
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 1
  store i32 255, i32* %536, align 4
  br label %552

537:                                              ; preds = %523
  %538 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %539 = load i64, i64* @joynum, align 8
  %540 = getelementptr inbounds i32*, i32** %538, i64 %539
  %541 = load i32*, i32** %540, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 1
  %543 = load i32, i32* %542, align 4
  %544 = icmp slt i32 %543, 0
  br i1 %544, label %545, label %551

545:                                              ; preds = %537
  %546 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %547 = load i64, i64* @joynum, align 8
  %548 = getelementptr inbounds i32*, i32** %546, i64 %547
  %549 = load i32*, i32** %548, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 1
  store i32 0, i32* %550, align 4
  br label %551

551:                                              ; preds = %545, %537
  br label %552

552:                                              ; preds = %551, %531
  %553 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %554 = load i64, i64* @joynum, align 8
  %555 = add i64 %554, 1
  %556 = getelementptr inbounds i32*, i32** %553, i64 %555
  %557 = load i32*, i32** %556, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 0
  %559 = load i32, i32* %558, align 4
  %560 = icmp sgt i32 %559, 255
  br i1 %560, label %561, label %568

561:                                              ; preds = %552
  %562 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %563 = load i64, i64* @joynum, align 8
  %564 = add i64 %563, 1
  %565 = getelementptr inbounds i32*, i32** %562, i64 %564
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 0
  store i32 255, i32* %567, align 4
  br label %585

568:                                              ; preds = %552
  %569 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %570 = load i64, i64* @joynum, align 8
  %571 = add i64 %570, 1
  %572 = getelementptr inbounds i32*, i32** %569, i64 %571
  %573 = load i32*, i32** %572, align 8
  %574 = getelementptr inbounds i32, i32* %573, i64 0
  %575 = load i32, i32* %574, align 4
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %577, label %584

577:                                              ; preds = %568
  %578 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %579 = load i64, i64* @joynum, align 8
  %580 = add i64 %579, 1
  %581 = getelementptr inbounds i32*, i32** %578, i64 %580
  %582 = load i32*, i32** %581, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 0
  store i32 0, i32* %583, align 4
  br label %584

584:                                              ; preds = %577, %568
  br label %585

585:                                              ; preds = %584, %561
  %586 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %587 = load i64, i64* @joynum, align 8
  %588 = add i64 %587, 1
  %589 = getelementptr inbounds i32*, i32** %586, i64 %588
  %590 = load i32*, i32** %589, align 8
  %591 = getelementptr inbounds i32, i32* %590, i64 1
  %592 = load i32, i32* %591, align 4
  %593 = icmp sgt i32 %592, 255
  br i1 %593, label %594, label %601

594:                                              ; preds = %585
  %595 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %596 = load i64, i64* @joynum, align 8
  %597 = add i64 %596, 1
  %598 = getelementptr inbounds i32*, i32** %595, i64 %597
  %599 = load i32*, i32** %598, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 1
  store i32 255, i32* %600, align 4
  br label %618

601:                                              ; preds = %585
  %602 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %603 = load i64, i64* @joynum, align 8
  %604 = add i64 %603, 1
  %605 = getelementptr inbounds i32*, i32** %602, i64 %604
  %606 = load i32*, i32** %605, align 8
  %607 = getelementptr inbounds i32, i32* %606, i64 1
  %608 = load i32, i32* %607, align 4
  %609 = icmp slt i32 %608, 0
  br i1 %609, label %610, label %617

610:                                              ; preds = %601
  %611 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %612 = load i64, i64* @joynum, align 8
  %613 = add i64 %612, 1
  %614 = getelementptr inbounds i32*, i32** %611, i64 %613
  %615 = load i32*, i32** %614, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 1
  store i32 0, i32* %616, align 4
  br label %617

617:                                              ; preds = %610, %601
  br label %618

618:                                              ; preds = %617, %594
  br label %911

619:                                              ; preds = %0
  %620 = call i32 @SDL_GetMouseState(i32* %13, i32* %14)
  store i32 %620, i32* %15, align 4
  %621 = load i32, i32* %13, align 4
  %622 = mul nsw i32 %621, 321
  %623 = load i32, i32* @VIDEO_WIDTH, align 4
  %624 = sdiv i32 %622, %623
  %625 = add nsw i32 60, %624
  %626 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %627 = getelementptr inbounds i32*, i32** %626, i64 0
  %628 = load i32*, i32** %627, align 8
  %629 = getelementptr inbounds i32, i32* %628, i64 0
  store i32 %625, i32* %629, align 4
  %630 = load i32, i32* %14, align 4
  %631 = mul nsw i32 %630, 252
  %632 = load i32, i32* @VIDEO_HEIGHT, align 4
  %633 = sdiv i32 %631, %632
  %634 = add nsw i32 508, %633
  %635 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %636 = getelementptr inbounds i32*, i32** %635, i64 0
  %637 = load i32*, i32** %636, align 8
  %638 = getelementptr inbounds i32, i32* %637, i64 1
  store i32 %634, i32* %638, align 4
  %639 = load i32, i32* %15, align 4
  %640 = load i32, i32* @SDL_BUTTON_MMASK, align 4
  %641 = and i32 %639, %640
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %647

643:                                              ; preds = %619
  %644 = load i32, i32* @pico_current, align 4
  %645 = add nsw i32 %644, 1
  %646 = and i32 %645, 7
  store i32 %646, i32* @pico_current, align 4
  br label %647

647:                                              ; preds = %643, %619
  %648 = load i32, i32* %15, align 4
  %649 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %650 = and i32 %648, %649
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %658

652:                                              ; preds = %647
  %653 = load i64, i64* @INPUT_PICO_RED, align 8
  %654 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %655 = getelementptr inbounds i64, i64* %654, i64 0
  %656 = load i64, i64* %655, align 8
  %657 = or i64 %656, %653
  store i64 %657, i64* %655, align 8
  br label %658

658:                                              ; preds = %652, %647
  %659 = load i32, i32* %15, align 4
  %660 = load i32, i32* @SDL_BUTTON_LMASK, align 4
  %661 = and i32 %659, %660
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %669

663:                                              ; preds = %658
  %664 = load i64, i64* @INPUT_PICO_PEN, align 8
  %665 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %666 = getelementptr inbounds i64, i64* %665, i64 0
  %667 = load i64, i64* %666, align 8
  %668 = or i64 %667, %664
  store i64 %668, i64* %666, align 8
  br label %669

669:                                              ; preds = %663, %658
  br label %911

670:                                              ; preds = %0
  %671 = call i32 @SDL_GetMouseState(i32* %16, i32* %17)
  store i32 %671, i32* %18, align 4
  %672 = load i32, i32* %16, align 4
  %673 = mul nsw i32 %672, 250
  %674 = load i32, i32* @VIDEO_WIDTH, align 4
  %675 = sdiv i32 %673, %674
  %676 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %677 = getelementptr inbounds i32*, i32** %676, i64 0
  %678 = load i32*, i32** %677, align 8
  %679 = getelementptr inbounds i32, i32* %678, i64 0
  store i32 %675, i32* %679, align 4
  %680 = load i32, i32* %17, align 4
  %681 = mul nsw i32 %680, 250
  %682 = load i32, i32* @VIDEO_HEIGHT, align 4
  %683 = sdiv i32 %681, %682
  %684 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 1), align 8
  %685 = getelementptr inbounds i32*, i32** %684, i64 0
  %686 = load i32*, i32** %685, align 8
  %687 = getelementptr inbounds i32, i32* %686, i64 1
  store i32 %683, i32* %687, align 4
  %688 = load i32, i32* %18, align 4
  %689 = load i32, i32* @SDL_BUTTON_RMASK, align 4
  %690 = and i32 %688, %689
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %698

692:                                              ; preds = %670
  %693 = load i64, i64* @INPUT_B, align 8
  %694 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %695 = getelementptr inbounds i64, i64* %694, i64 0
  %696 = load i64, i64* %695, align 8
  %697 = or i64 %696, %693
  store i64 %697, i64* %695, align 8
  br label %698

698:                                              ; preds = %692, %670
  br label %911

699:                                              ; preds = %0
  %700 = load i32*, i32** %1, align 8
  %701 = load i64, i64* @SDLK_g, align 8
  %702 = getelementptr inbounds i32, i32* %700, i64 %701
  %703 = load i32, i32* %702, align 4
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %712

705:                                              ; preds = %699
  %706 = load i64, i64* @INPUT_ACTIVATOR_7L, align 8
  %707 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %708 = load i64, i64* @joynum, align 8
  %709 = getelementptr inbounds i64, i64* %707, i64 %708
  %710 = load i64, i64* %709, align 8
  %711 = or i64 %710, %706
  store i64 %711, i64* %709, align 8
  br label %712

712:                                              ; preds = %705, %699
  %713 = load i32*, i32** %1, align 8
  %714 = load i64, i64* @SDLK_h, align 8
  %715 = getelementptr inbounds i32, i32* %713, i64 %714
  %716 = load i32, i32* %715, align 4
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %725

718:                                              ; preds = %712
  %719 = load i64, i64* @INPUT_ACTIVATOR_7U, align 8
  %720 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %721 = load i64, i64* @joynum, align 8
  %722 = getelementptr inbounds i64, i64* %720, i64 %721
  %723 = load i64, i64* %722, align 8
  %724 = or i64 %723, %719
  store i64 %724, i64* %722, align 8
  br label %725

725:                                              ; preds = %718, %712
  %726 = load i32*, i32** %1, align 8
  %727 = load i64, i64* @SDLK_j, align 8
  %728 = getelementptr inbounds i32, i32* %726, i64 %727
  %729 = load i32, i32* %728, align 4
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %731, label %738

731:                                              ; preds = %725
  %732 = load i64, i64* @INPUT_ACTIVATOR_8L, align 8
  %733 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %734 = load i64, i64* @joynum, align 8
  %735 = getelementptr inbounds i64, i64* %733, i64 %734
  %736 = load i64, i64* %735, align 8
  %737 = or i64 %736, %732
  store i64 %737, i64* %735, align 8
  br label %738

738:                                              ; preds = %731, %725
  %739 = load i32*, i32** %1, align 8
  %740 = load i64, i64* @SDLK_k, align 8
  %741 = getelementptr inbounds i32, i32* %739, i64 %740
  %742 = load i32, i32* %741, align 4
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %751

744:                                              ; preds = %738
  %745 = load i64, i64* @INPUT_ACTIVATOR_8U, align 8
  %746 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %747 = load i64, i64* @joynum, align 8
  %748 = getelementptr inbounds i64, i64* %746, i64 %747
  %749 = load i64, i64* %748, align 8
  %750 = or i64 %749, %745
  store i64 %750, i64* %748, align 8
  br label %751

751:                                              ; preds = %744, %738
  br label %752

752:                                              ; preds = %0, %751
  %753 = load i32*, i32** %1, align 8
  %754 = load i64, i64* @SDLK_a, align 8
  %755 = getelementptr inbounds i32, i32* %753, i64 %754
  %756 = load i32, i32* %755, align 4
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %765

758:                                              ; preds = %752
  %759 = load i64, i64* @INPUT_A, align 8
  %760 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %761 = load i64, i64* @joynum, align 8
  %762 = getelementptr inbounds i64, i64* %760, i64 %761
  %763 = load i64, i64* %762, align 8
  %764 = or i64 %763, %759
  store i64 %764, i64* %762, align 8
  br label %765

765:                                              ; preds = %758, %752
  %766 = load i32*, i32** %1, align 8
  %767 = load i64, i64* @SDLK_s, align 8
  %768 = getelementptr inbounds i32, i32* %766, i64 %767
  %769 = load i32, i32* %768, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %778

771:                                              ; preds = %765
  %772 = load i64, i64* @INPUT_B, align 8
  %773 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %774 = load i64, i64* @joynum, align 8
  %775 = getelementptr inbounds i64, i64* %773, i64 %774
  %776 = load i64, i64* %775, align 8
  %777 = or i64 %776, %772
  store i64 %777, i64* %775, align 8
  br label %778

778:                                              ; preds = %771, %765
  %779 = load i32*, i32** %1, align 8
  %780 = load i64, i64* @SDLK_d, align 8
  %781 = getelementptr inbounds i32, i32* %779, i64 %780
  %782 = load i32, i32* %781, align 4
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %784, label %791

784:                                              ; preds = %778
  %785 = load i64, i64* @INPUT_C, align 8
  %786 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %787 = load i64, i64* @joynum, align 8
  %788 = getelementptr inbounds i64, i64* %786, i64 %787
  %789 = load i64, i64* %788, align 8
  %790 = or i64 %789, %785
  store i64 %790, i64* %788, align 8
  br label %791

791:                                              ; preds = %784, %778
  %792 = load i32*, i32** %1, align 8
  %793 = load i64, i64* @SDLK_f, align 8
  %794 = getelementptr inbounds i32, i32* %792, i64 %793
  %795 = load i32, i32* %794, align 4
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %797, label %804

797:                                              ; preds = %791
  %798 = load i64, i64* @INPUT_START, align 8
  %799 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %800 = load i64, i64* @joynum, align 8
  %801 = getelementptr inbounds i64, i64* %799, i64 %800
  %802 = load i64, i64* %801, align 8
  %803 = or i64 %802, %798
  store i64 %803, i64* %801, align 8
  br label %804

804:                                              ; preds = %797, %791
  %805 = load i32*, i32** %1, align 8
  %806 = load i64, i64* @SDLK_z, align 8
  %807 = getelementptr inbounds i32, i32* %805, i64 %806
  %808 = load i32, i32* %807, align 4
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %817

810:                                              ; preds = %804
  %811 = load i64, i64* @INPUT_X, align 8
  %812 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %813 = load i64, i64* @joynum, align 8
  %814 = getelementptr inbounds i64, i64* %812, i64 %813
  %815 = load i64, i64* %814, align 8
  %816 = or i64 %815, %811
  store i64 %816, i64* %814, align 8
  br label %817

817:                                              ; preds = %810, %804
  %818 = load i32*, i32** %1, align 8
  %819 = load i64, i64* @SDLK_x, align 8
  %820 = getelementptr inbounds i32, i32* %818, i64 %819
  %821 = load i32, i32* %820, align 4
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %823, label %830

823:                                              ; preds = %817
  %824 = load i64, i64* @INPUT_Y, align 8
  %825 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %826 = load i64, i64* @joynum, align 8
  %827 = getelementptr inbounds i64, i64* %825, i64 %826
  %828 = load i64, i64* %827, align 8
  %829 = or i64 %828, %824
  store i64 %829, i64* %827, align 8
  br label %830

830:                                              ; preds = %823, %817
  %831 = load i32*, i32** %1, align 8
  %832 = load i64, i64* @SDLK_c, align 8
  %833 = getelementptr inbounds i32, i32* %831, i64 %832
  %834 = load i32, i32* %833, align 4
  %835 = icmp ne i32 %834, 0
  br i1 %835, label %836, label %843

836:                                              ; preds = %830
  %837 = load i64, i64* @INPUT_Z, align 8
  %838 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %839 = load i64, i64* @joynum, align 8
  %840 = getelementptr inbounds i64, i64* %838, i64 %839
  %841 = load i64, i64* %840, align 8
  %842 = or i64 %841, %837
  store i64 %842, i64* %840, align 8
  br label %843

843:                                              ; preds = %836, %830
  %844 = load i32*, i32** %1, align 8
  %845 = load i64, i64* @SDLK_v, align 8
  %846 = getelementptr inbounds i32, i32* %844, i64 %845
  %847 = load i32, i32* %846, align 4
  %848 = icmp ne i32 %847, 0
  br i1 %848, label %849, label %856

849:                                              ; preds = %843
  %850 = load i64, i64* @INPUT_MODE, align 8
  %851 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %852 = load i64, i64* @joynum, align 8
  %853 = getelementptr inbounds i64, i64* %851, i64 %852
  %854 = load i64, i64* %853, align 8
  %855 = or i64 %854, %850
  store i64 %855, i64* %853, align 8
  br label %856

856:                                              ; preds = %849, %843
  %857 = load i32*, i32** %1, align 8
  %858 = load i64, i64* @SDLK_UP, align 8
  %859 = getelementptr inbounds i32, i32* %857, i64 %858
  %860 = load i32, i32* %859, align 4
  %861 = icmp ne i32 %860, 0
  br i1 %861, label %862, label %869

862:                                              ; preds = %856
  %863 = load i64, i64* @INPUT_UP, align 8
  %864 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %865 = load i64, i64* @joynum, align 8
  %866 = getelementptr inbounds i64, i64* %864, i64 %865
  %867 = load i64, i64* %866, align 8
  %868 = or i64 %867, %863
  store i64 %868, i64* %866, align 8
  br label %883

869:                                              ; preds = %856
  %870 = load i32*, i32** %1, align 8
  %871 = load i64, i64* @SDLK_DOWN, align 8
  %872 = getelementptr inbounds i32, i32* %870, i64 %871
  %873 = load i32, i32* %872, align 4
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %875, label %882

875:                                              ; preds = %869
  %876 = load i64, i64* @INPUT_DOWN, align 8
  %877 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %878 = load i64, i64* @joynum, align 8
  %879 = getelementptr inbounds i64, i64* %877, i64 %878
  %880 = load i64, i64* %879, align 8
  %881 = or i64 %880, %876
  store i64 %881, i64* %879, align 8
  br label %882

882:                                              ; preds = %875, %869
  br label %883

883:                                              ; preds = %882, %862
  %884 = load i32*, i32** %1, align 8
  %885 = load i64, i64* @SDLK_LEFT, align 8
  %886 = getelementptr inbounds i32, i32* %884, i64 %885
  %887 = load i32, i32* %886, align 4
  %888 = icmp ne i32 %887, 0
  br i1 %888, label %889, label %896

889:                                              ; preds = %883
  %890 = load i64, i64* @INPUT_LEFT, align 8
  %891 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %892 = load i64, i64* @joynum, align 8
  %893 = getelementptr inbounds i64, i64* %891, i64 %892
  %894 = load i64, i64* %893, align 8
  %895 = or i64 %894, %890
  store i64 %895, i64* %893, align 8
  br label %910

896:                                              ; preds = %883
  %897 = load i32*, i32** %1, align 8
  %898 = load i64, i64* @SDLK_RIGHT, align 8
  %899 = getelementptr inbounds i32, i32* %897, i64 %898
  %900 = load i32, i32* %899, align 4
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %909

902:                                              ; preds = %896
  %903 = load i64, i64* @INPUT_RIGHT, align 8
  %904 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @input, i32 0, i32 2), align 8
  %905 = load i64, i64* @joynum, align 8
  %906 = getelementptr inbounds i64, i64* %904, i64 %905
  %907 = load i64, i64* %906, align 8
  %908 = or i64 %907, %903
  store i64 %908, i64* %906, align 8
  br label %909

909:                                              ; preds = %902, %896
  br label %910

910:                                              ; preds = %909, %889
  br label %911

911:                                              ; preds = %910, %698, %669, %618, %249, %168, %122, %99
  ret i32 1
}

declare dso_local i32* @SDL_GetKeyState(i32*) #1

declare dso_local i32 @SDL_GetMouseState(i32*, i32*) #1

declare dso_local i32 @SDL_GetRelativeMouseState(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
