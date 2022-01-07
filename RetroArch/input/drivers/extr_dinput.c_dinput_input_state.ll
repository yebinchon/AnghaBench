; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.retro_keybind = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { float, i32, %struct.TYPE_7__* }
%struct.dinput_input = type { i32*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@rarch_keysym_lut = common dso_local global i64* null, align 8
@RARCH_GAME_FOCUS_TOGGLE = common dso_local global i32 0, align 4
@input_dinput = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_TRIGGER = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_RELOAD = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_AUX_A = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_AUX_B = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_AUX_C = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_START = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_SELECT = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_DPAD_UP = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_DPAD_DOWN = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_DPAD_LEFT = common dso_local global i32 0, align 4
@RARCH_LIGHTGUN_DPAD_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_7__*, %struct.retro_keybind**, i32, i32, i32, i32)* @dinput_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dinput_input_state(i8* %0, i64 %1, %struct.TYPE_7__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.retro_keybind**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dinput_input*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = bitcast %struct.TYPE_8__* %10 to { i64, %struct.TYPE_7__* }*
  %29 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %28, i32 0, i32 0
  store i64 %1, i64* %29, align 8
  %30 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %28, i32 0, i32 1
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %30, align 8
  store i8* %0, i8** %11, align 8
  store %struct.retro_keybind** %3, %struct.retro_keybind*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = bitcast i8* %31 to %struct.dinput_input*
  store %struct.dinput_input* %32, %struct.dinput_input** %17, align 8
  %33 = load i32, i32* %14, align 4
  switch i32 %33, label %712 [
    i32 132, label %34
    i32 131, label %418
    i32 150, label %438
    i32 129, label %478
    i32 152, label %483
    i32 128, label %488
    i32 151, label %488
    i32 130, label %496
  ]

34:                                               ; preds = %8
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %238

38:                                               ; preds = %34
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %233, %38
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %236

43:                                               ; preds = %39
  %44 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %44, i64 %46
  %48 = load %struct.retro_keybind*, %struct.retro_keybind** %47, align 8
  %49 = load i32, i32* %18, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %48, i64 %50
  %52 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @RETROK_LAST, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %43
  %57 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %58 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64*, i64** @rarch_keysym_lut, align 8
  %61 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %61, i64 %63
  %65 = load %struct.retro_keybind*, %struct.retro_keybind** %64, align 8
  %66 = load i32, i32* %18, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %65, i64 %67
  %69 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %60, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32, i32* %59, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 128
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %56
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* @RARCH_GAME_FOCUS_TOGGLE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @input_dinput, i32 0, i32 0), align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %18, align 4
  %87 = shl i32 1, %86
  %88 = load i32, i32* %19, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %19, align 4
  br label %233

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %56
  br label %92

92:                                               ; preds = %91, %43
  %93 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %93, i64 %95
  %97 = load %struct.retro_keybind*, %struct.retro_keybind** %96, align 8
  %98 = load i32, i32* %18, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %97, i64 %99
  %101 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %232

104:                                              ; preds = %92
  %105 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %106 = load i32, i32* %13, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %105, i64 %107
  %109 = load %struct.retro_keybind*, %struct.retro_keybind** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %109, i64 %111
  %113 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @NO_BTN, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %104
  %118 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %118, i64 %120
  %122 = load %struct.retro_keybind*, %struct.retro_keybind** %121, align 8
  %123 = load i32, i32* %18, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %122, i64 %124
  %126 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  br label %136

128:                                              ; preds = %104
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load i32, i32* %18, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  br label %136

136:                                              ; preds = %128, %117
  %137 = phi i32 [ %127, %117 ], [ %135, %128 ]
  store i32 %137, i32* %20, align 4
  %138 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %138, i64 %140
  %142 = load %struct.retro_keybind*, %struct.retro_keybind** %141, align 8
  %143 = load i32, i32* %18, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %142, i64 %144
  %146 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AXIS_NONE, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %136
  %151 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %152 = load i32, i32* %13, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %151, i64 %153
  %155 = load %struct.retro_keybind*, %struct.retro_keybind** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %155, i64 %157
  %159 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  br label %169

161:                                              ; preds = %136
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  br label %169

169:                                              ; preds = %161, %150
  %170 = phi i32 [ %160, %150 ], [ %168, %161 ]
  store i32 %170, i32* %21, align 4
  %171 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %174 = load i32, i32* %13, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %173, i64 %175
  %177 = load %struct.retro_keybind*, %struct.retro_keybind** %176, align 8
  %178 = load i32, i32* %18, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %177, i64 %179
  %181 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @dinput_mouse_button_pressed(%struct.dinput_input* %171, i32 %172, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %169
  %186 = load i32, i32* %18, align 4
  %187 = shl i32 1, %186
  %188 = load i32, i32* %19, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %19, align 4
  br label %233

190:                                              ; preds = %169
  %191 = load i32, i32* %20, align 4
  %192 = load i32, i32* @NO_BTN, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %190
  %195 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %196 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %195, i32 0, i32 3
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32 (i32, i32)*, i32 (i32, i32)** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %20, align 4
  %203 = call i32 %199(i32 %201, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %194
  %206 = load i32, i32* %18, align 4
  %207 = shl i32 1, %206
  %208 = load i32, i32* %19, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %19, align 4
  br label %233

210:                                              ; preds = %194, %190
  %211 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %212 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %211, i32 0, i32 3
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32 (i32, i32)*, i32 (i32, i32)** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %21, align 4
  %219 = call i32 %215(i32 %217, i32 %218)
  %220 = call i64 @abs(i32 %219)
  %221 = sitofp i64 %220 to float
  %222 = fdiv float %221, 3.276800e+04
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %224 = load float, float* %223, align 8
  %225 = fcmp ogt float %222, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %210
  %227 = load i32, i32* %18, align 4
  %228 = shl i32 1, %227
  %229 = load i32, i32* %19, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %19, align 4
  br label %233

231:                                              ; preds = %210
  br label %232

232:                                              ; preds = %231, %92
  br label %233

233:                                              ; preds = %232, %226, %205, %185, %85
  %234 = load i32, i32* %18, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %18, align 4
  br label %39

236:                                              ; preds = %39
  %237 = load i32, i32* %19, align 4
  store i32 %237, i32* %9, align 4
  br label %713

238:                                              ; preds = %34
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %241 = icmp ult i32 %239, %240
  br i1 %241, label %242, label %416

242:                                              ; preds = %238
  %243 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %244 = load i32, i32* %13, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %243, i64 %245
  %247 = load %struct.retro_keybind*, %struct.retro_keybind** %246, align 8
  %248 = load i32, i32* %16, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %247, i64 %249
  %251 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @RETROK_LAST, align 4
  %254 = icmp ult i32 %252, %253
  br i1 %254, label %255, label %287

255:                                              ; preds = %242
  %256 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %257 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i64*, i64** @rarch_keysym_lut, align 8
  %260 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %261 = load i32, i32* %13, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %260, i64 %262
  %264 = load %struct.retro_keybind*, %struct.retro_keybind** %263, align 8
  %265 = load i32, i32* %16, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %264, i64 %266
  %268 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %259, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i32, i32* %258, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, 128
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %255
  %278 = load i32, i32* %16, align 4
  %279 = load i32, i32* @RARCH_GAME_FOCUS_TOGGLE, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @input_dinput, i32 0, i32 0), align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %281, %277
  store i32 1, i32* %9, align 4
  br label %713

285:                                              ; preds = %281
  br label %286

286:                                              ; preds = %285, %255
  br label %287

287:                                              ; preds = %286, %242
  %288 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %289 = load i32, i32* %13, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %288, i64 %290
  %292 = load %struct.retro_keybind*, %struct.retro_keybind** %291, align 8
  %293 = load i32, i32* %16, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %292, i64 %294
  %296 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %415

299:                                              ; preds = %287
  %300 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %301 = load i32, i32* %13, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %300, i64 %302
  %304 = load %struct.retro_keybind*, %struct.retro_keybind** %303, align 8
  %305 = load i32, i32* %16, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %304, i64 %306
  %308 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @NO_BTN, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %323

312:                                              ; preds = %299
  %313 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %314 = load i32, i32* %13, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %313, i64 %315
  %317 = load %struct.retro_keybind*, %struct.retro_keybind** %316, align 8
  %318 = load i32, i32* %16, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %317, i64 %319
  %321 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  br label %331

323:                                              ; preds = %299
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %324, align 8
  %326 = load i32, i32* %16, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  br label %331

331:                                              ; preds = %323, %312
  %332 = phi i32 [ %322, %312 ], [ %330, %323 ]
  store i32 %332, i32* %22, align 4
  %333 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %334 = load i32, i32* %13, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %333, i64 %335
  %337 = load %struct.retro_keybind*, %struct.retro_keybind** %336, align 8
  %338 = load i32, i32* %16, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %337, i64 %339
  %341 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @AXIS_NONE, align 4
  %344 = icmp ne i32 %342, %343
  br i1 %344, label %345, label %356

345:                                              ; preds = %331
  %346 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %347 = load i32, i32* %13, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %346, i64 %348
  %350 = load %struct.retro_keybind*, %struct.retro_keybind** %349, align 8
  %351 = load i32, i32* %16, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %350, i64 %352
  %354 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 4
  br label %364

356:                                              ; preds = %331
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %357, align 8
  %359 = load i32, i32* %16, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  br label %364

364:                                              ; preds = %356, %345
  %365 = phi i32 [ %355, %345 ], [ %363, %356 ]
  store i32 %365, i32* %23, align 4
  %366 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %367 = load i32, i32* %13, align 4
  %368 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %369 = load i32, i32* %13, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %368, i64 %370
  %372 = load %struct.retro_keybind*, %struct.retro_keybind** %371, align 8
  %373 = load i32, i32* %16, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %372, i64 %374
  %376 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @dinput_mouse_button_pressed(%struct.dinput_input* %366, i32 %367, i32 %377)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %364
  store i32 1, i32* %9, align 4
  br label %713

381:                                              ; preds = %364
  %382 = load i32, i32* %22, align 4
  %383 = load i32, i32* @NO_BTN, align 4
  %384 = icmp ne i32 %382, %383
  br i1 %384, label %385, label %397

385:                                              ; preds = %381
  %386 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %387 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %386, i32 0, i32 3
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 1
  %390 = load i32 (i32, i32)*, i32 (i32, i32)** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* %22, align 4
  %394 = call i32 %390(i32 %392, i32 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %385
  store i32 1, i32* %9, align 4
  br label %713

397:                                              ; preds = %385, %381
  %398 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %399 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %398, i32 0, i32 3
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 0
  %402 = load i32 (i32, i32)*, i32 (i32, i32)** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %23, align 4
  %406 = call i32 %402(i32 %404, i32 %405)
  %407 = call i64 @abs(i32 %406)
  %408 = sitofp i64 %407 to float
  %409 = fdiv float %408, 3.276800e+04
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %411 = load float, float* %410, align 8
  %412 = fcmp ogt float %409, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %397
  store i32 1, i32* %9, align 4
  br label %713

414:                                              ; preds = %397
  br label %415

415:                                              ; preds = %414, %287
  br label %416

416:                                              ; preds = %415, %238
  br label %417

417:                                              ; preds = %416
  br label %712

418:                                              ; preds = %8
  %419 = load i32, i32* %16, align 4
  %420 = load i32, i32* @RETROK_LAST, align 4
  %421 = icmp ult i32 %419, %420
  br i1 %421, label %422, label %435

422:                                              ; preds = %418
  %423 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %424 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = load i64*, i64** @rarch_keysym_lut, align 8
  %427 = load i32, i32* %16, align 4
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds i64, i64* %426, i64 %428
  %430 = load i64, i64* %429, align 8
  %431 = getelementptr inbounds i32, i32* %425, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = and i32 %432, 128
  %434 = icmp ne i32 %433, 0
  br label %435

435:                                              ; preds = %422, %418
  %436 = phi i1 [ false, %418 ], [ %434, %422 ]
  %437 = zext i1 %436 to i32
  store i32 %437, i32* %9, align 4
  br label %713

438:                                              ; preds = %8
  %439 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %440 = load i32, i32* %13, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %439, i64 %441
  %443 = load %struct.retro_keybind*, %struct.retro_keybind** %442, align 8
  %444 = icmp ne %struct.retro_keybind* %443, null
  br i1 %444, label %445, label %477

445:                                              ; preds = %438
  %446 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %447 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %448 = load i32, i32* %13, align 4
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %447, i64 %449
  %451 = load %struct.retro_keybind*, %struct.retro_keybind** %450, align 8
  %452 = load i32, i32* %15, align 4
  %453 = load i32, i32* %16, align 4
  %454 = call i32 @dinput_pressed_analog(%struct.dinput_input* %446, %struct.retro_keybind* %451, i32 %452, i32 %453)
  store i32 %454, i32* %24, align 4
  %455 = load i32, i32* %24, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %475, label %457

457:                                              ; preds = %445
  %458 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %459 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %458, i32 0, i32 3
  %460 = load %struct.TYPE_9__*, %struct.TYPE_9__** %459, align 8
  %461 = load i32, i32* %13, align 4
  %462 = load i32, i32* %15, align 4
  %463 = load i32, i32* %16, align 4
  %464 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %465 = load i32, i32* %13, align 4
  %466 = zext i32 %465 to i64
  %467 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %464, i64 %466
  %468 = load %struct.retro_keybind*, %struct.retro_keybind** %467, align 8
  %469 = bitcast %struct.TYPE_8__* %10 to { i64, %struct.TYPE_7__* }*
  %470 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %469, i32 0, i32 0
  %471 = load i64, i64* %470, align 8
  %472 = getelementptr inbounds { i64, %struct.TYPE_7__* }, { i64, %struct.TYPE_7__* }* %469, i32 0, i32 1
  %473 = load %struct.TYPE_7__*, %struct.TYPE_7__** %472, align 8
  %474 = call i32 @input_joypad_analog(%struct.TYPE_9__* %460, i64 %471, %struct.TYPE_7__* %473, i32 %461, i32 %462, i32 %463, %struct.retro_keybind* %468)
  store i32 %474, i32* %24, align 4
  br label %475

475:                                              ; preds = %457, %445
  %476 = load i32, i32* %24, align 4
  store i32 %476, i32* %9, align 4
  br label %713

477:                                              ; preds = %438
  store i32 0, i32* %9, align 4
  br label %713

478:                                              ; preds = %8
  %479 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %480 = load i32, i32* %13, align 4
  %481 = load i32, i32* %16, align 4
  %482 = call i32 @dinput_mouse_state(%struct.dinput_input* %479, i32 %480, i32 %481)
  store i32 %482, i32* %9, align 4
  br label %713

483:                                              ; preds = %8
  %484 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %485 = load i32, i32* %13, align 4
  %486 = load i32, i32* %16, align 4
  %487 = call i32 @dinput_mouse_state_screen(%struct.dinput_input* %484, i32 %485, i32 %486)
  store i32 %487, i32* %9, align 4
  br label %713

488:                                              ; preds = %8, %8
  %489 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %490 = load i32, i32* %15, align 4
  %491 = load i32, i32* %16, align 4
  %492 = load i32, i32* %14, align 4
  %493 = icmp eq i32 %492, 151
  %494 = zext i1 %493 to i32
  %495 = call i32 @dinput_pointer_state(%struct.dinput_input* %489, i32 %490, i32 %491, i32 %494)
  store i32 %495, i32* %9, align 4
  br label %713

496:                                              ; preds = %8
  %497 = load i32, i32* %16, align 4
  switch i32 %497, label %711 [
    i32 139, label %498
    i32 138, label %498
    i32 142, label %498
    i32 135, label %503
    i32 140, label %503
    i32 149, label %503
    i32 148, label %503
    i32 147, label %503
    i32 136, label %503
    i32 137, label %503
    i32 143, label %503
    i32 146, label %503
    i32 145, label %503
    i32 144, label %503
    i32 141, label %503
    i32 134, label %703
    i32 133, label %707
  ]

498:                                              ; preds = %496, %496, %496
  %499 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %500 = load i32, i32* %15, align 4
  %501 = load i32, i32* %16, align 4
  %502 = call i32 @dinput_lightgun_aiming_state(%struct.dinput_input* %499, i32 %500, i32 %501)
  store i32 %502, i32* %9, align 4
  br label %713

503:                                              ; preds = %496, %496, %496, %496, %496, %496, %496, %496, %496, %496, %496, %496
  store i32 0, i32* %25, align 4
  %504 = load i32, i32* %16, align 4
  switch i32 %504, label %529 [
    i32 135, label %505
    i32 140, label %507
    i32 149, label %509
    i32 148, label %511
    i32 147, label %513
    i32 136, label %515
    i32 137, label %517
    i32 143, label %519
    i32 146, label %521
    i32 145, label %523
    i32 144, label %525
    i32 141, label %527
  ]

505:                                              ; preds = %503
  %506 = load i32, i32* @RARCH_LIGHTGUN_TRIGGER, align 4
  store i32 %506, i32* %25, align 4
  br label %529

507:                                              ; preds = %503
  %508 = load i32, i32* @RARCH_LIGHTGUN_RELOAD, align 4
  store i32 %508, i32* %25, align 4
  br label %529

509:                                              ; preds = %503
  %510 = load i32, i32* @RARCH_LIGHTGUN_AUX_A, align 4
  store i32 %510, i32* %25, align 4
  br label %529

511:                                              ; preds = %503
  %512 = load i32, i32* @RARCH_LIGHTGUN_AUX_B, align 4
  store i32 %512, i32* %25, align 4
  br label %529

513:                                              ; preds = %503
  %514 = load i32, i32* @RARCH_LIGHTGUN_AUX_C, align 4
  store i32 %514, i32* %25, align 4
  br label %529

515:                                              ; preds = %503
  %516 = load i32, i32* @RARCH_LIGHTGUN_START, align 4
  store i32 %516, i32* %25, align 4
  br label %529

517:                                              ; preds = %503
  %518 = load i32, i32* @RARCH_LIGHTGUN_SELECT, align 4
  store i32 %518, i32* %25, align 4
  br label %529

519:                                              ; preds = %503
  %520 = load i32, i32* @RARCH_LIGHTGUN_DPAD_UP, align 4
  store i32 %520, i32* %25, align 4
  br label %529

521:                                              ; preds = %503
  %522 = load i32, i32* @RARCH_LIGHTGUN_DPAD_DOWN, align 4
  store i32 %522, i32* %25, align 4
  br label %529

523:                                              ; preds = %503
  %524 = load i32, i32* @RARCH_LIGHTGUN_DPAD_LEFT, align 4
  store i32 %524, i32* %25, align 4
  br label %529

525:                                              ; preds = %503
  %526 = load i32, i32* @RARCH_LIGHTGUN_DPAD_RIGHT, align 4
  store i32 %526, i32* %25, align 4
  br label %529

527:                                              ; preds = %503
  %528 = load i32, i32* @RARCH_LIGHTGUN_START, align 4
  store i32 %528, i32* %25, align 4
  br label %529

529:                                              ; preds = %503, %527, %525, %523, %521, %519, %517, %515, %513, %511, %509, %507, %505
  %530 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %531 = load i32, i32* %13, align 4
  %532 = zext i32 %531 to i64
  %533 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %530, i64 %532
  %534 = load %struct.retro_keybind*, %struct.retro_keybind** %533, align 8
  %535 = load i32, i32* %25, align 4
  %536 = zext i32 %535 to i64
  %537 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %534, i64 %536
  %538 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* @RETROK_LAST, align 4
  %541 = icmp ult i32 %539, %540
  br i1 %541, label %542, label %574

542:                                              ; preds = %529
  %543 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %544 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %543, i32 0, i32 0
  %545 = load i32*, i32** %544, align 8
  %546 = load i64*, i64** @rarch_keysym_lut, align 8
  %547 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %548 = load i32, i32* %13, align 4
  %549 = zext i32 %548 to i64
  %550 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %547, i64 %549
  %551 = load %struct.retro_keybind*, %struct.retro_keybind** %550, align 8
  %552 = load i32, i32* %25, align 4
  %553 = zext i32 %552 to i64
  %554 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %551, i64 %553
  %555 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 4
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds i64, i64* %546, i64 %557
  %559 = load i64, i64* %558, align 8
  %560 = getelementptr inbounds i32, i32* %545, i64 %559
  %561 = load i32, i32* %560, align 4
  %562 = and i32 %561, 128
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %573

564:                                              ; preds = %542
  %565 = load i32, i32* %25, align 4
  %566 = load i32, i32* @RARCH_GAME_FOCUS_TOGGLE, align 4
  %567 = icmp eq i32 %565, %566
  br i1 %567, label %571, label %568

568:                                              ; preds = %564
  %569 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @input_dinput, i32 0, i32 0), align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %572, label %571

571:                                              ; preds = %568, %564
  store i32 1, i32* %9, align 4
  br label %713

572:                                              ; preds = %568
  br label %573

573:                                              ; preds = %572, %542
  br label %574

574:                                              ; preds = %573, %529
  %575 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %576 = load i32, i32* %13, align 4
  %577 = zext i32 %576 to i64
  %578 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %575, i64 %577
  %579 = load %struct.retro_keybind*, %struct.retro_keybind** %578, align 8
  %580 = load i32, i32* %25, align 4
  %581 = zext i32 %580 to i64
  %582 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %579, i64 %581
  %583 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %582, i32 0, i32 4
  %584 = load i32, i32* %583, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %702

586:                                              ; preds = %574
  %587 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %588 = load i32, i32* %13, align 4
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %587, i64 %589
  %591 = load %struct.retro_keybind*, %struct.retro_keybind** %590, align 8
  %592 = load i32, i32* %25, align 4
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %591, i64 %593
  %595 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %594, i32 0, i32 3
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* @NO_BTN, align 4
  %598 = icmp ne i32 %596, %597
  br i1 %598, label %599, label %610

599:                                              ; preds = %586
  %600 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %601 = load i32, i32* %13, align 4
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %600, i64 %602
  %604 = load %struct.retro_keybind*, %struct.retro_keybind** %603, align 8
  %605 = load i32, i32* %25, align 4
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %604, i64 %606
  %608 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %607, i32 0, i32 3
  %609 = load i32, i32* %608, align 4
  br label %618

610:                                              ; preds = %586
  %611 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %612 = load %struct.TYPE_7__*, %struct.TYPE_7__** %611, align 8
  %613 = load i32, i32* %25, align 4
  %614 = zext i32 %613 to i64
  %615 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %612, i64 %614
  %616 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 4
  br label %618

618:                                              ; preds = %610, %599
  %619 = phi i32 [ %609, %599 ], [ %617, %610 ]
  store i32 %619, i32* %26, align 4
  %620 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %621 = load i32, i32* %13, align 4
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %620, i64 %622
  %624 = load %struct.retro_keybind*, %struct.retro_keybind** %623, align 8
  %625 = load i32, i32* %25, align 4
  %626 = zext i32 %625 to i64
  %627 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %624, i64 %626
  %628 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %627, i32 0, i32 2
  %629 = load i32, i32* %628, align 4
  %630 = load i32, i32* @AXIS_NONE, align 4
  %631 = icmp ne i32 %629, %630
  br i1 %631, label %632, label %643

632:                                              ; preds = %618
  %633 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %634 = load i32, i32* %13, align 4
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %633, i64 %635
  %637 = load %struct.retro_keybind*, %struct.retro_keybind** %636, align 8
  %638 = load i32, i32* %25, align 4
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %637, i64 %639
  %641 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %640, i32 0, i32 2
  %642 = load i32, i32* %641, align 4
  br label %651

643:                                              ; preds = %618
  %644 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %645 = load %struct.TYPE_7__*, %struct.TYPE_7__** %644, align 8
  %646 = load i32, i32* %25, align 4
  %647 = zext i32 %646 to i64
  %648 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %645, i64 %647
  %649 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %648, i32 0, i32 0
  %650 = load i32, i32* %649, align 4
  br label %651

651:                                              ; preds = %643, %632
  %652 = phi i32 [ %642, %632 ], [ %650, %643 ]
  store i32 %652, i32* %27, align 4
  %653 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %654 = load i32, i32* %13, align 4
  %655 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %656 = load i32, i32* %13, align 4
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %655, i64 %657
  %659 = load %struct.retro_keybind*, %struct.retro_keybind** %658, align 8
  %660 = load i32, i32* %25, align 4
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %659, i64 %661
  %663 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 4
  %665 = call i32 @dinput_mouse_button_pressed(%struct.dinput_input* %653, i32 %654, i32 %664)
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %668

667:                                              ; preds = %651
  store i32 1, i32* %9, align 4
  br label %713

668:                                              ; preds = %651
  %669 = load i32, i32* %26, align 4
  %670 = load i32, i32* @NO_BTN, align 4
  %671 = icmp ne i32 %669, %670
  br i1 %671, label %672, label %684

672:                                              ; preds = %668
  %673 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %674 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %673, i32 0, i32 3
  %675 = load %struct.TYPE_9__*, %struct.TYPE_9__** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %675, i32 0, i32 1
  %677 = load i32 (i32, i32)*, i32 (i32, i32)** %676, align 8
  %678 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %679 = load i32, i32* %678, align 4
  %680 = load i32, i32* %26, align 4
  %681 = call i32 %677(i32 %679, i32 %680)
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %684

683:                                              ; preds = %672
  store i32 1, i32* %9, align 4
  br label %713

684:                                              ; preds = %672, %668
  %685 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %686 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %685, i32 0, i32 3
  %687 = load %struct.TYPE_9__*, %struct.TYPE_9__** %686, align 8
  %688 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %687, i32 0, i32 0
  %689 = load i32 (i32, i32)*, i32 (i32, i32)** %688, align 8
  %690 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %691 = load i32, i32* %690, align 4
  %692 = load i32, i32* %27, align 4
  %693 = call i32 %689(i32 %691, i32 %692)
  %694 = call i64 @abs(i32 %693)
  %695 = sitofp i64 %694 to float
  %696 = fdiv float %695, 3.276800e+04
  %697 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %698 = load float, float* %697, align 8
  %699 = fcmp ogt float %696, %698
  br i1 %699, label %700, label %701

700:                                              ; preds = %684
  store i32 1, i32* %9, align 4
  br label %713

701:                                              ; preds = %684
  br label %702

702:                                              ; preds = %701, %574
  br label %711

703:                                              ; preds = %496
  %704 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %705 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %704, i32 0, i32 1
  %706 = load i32, i32* %705, align 8
  store i32 %706, i32* %9, align 4
  br label %713

707:                                              ; preds = %496
  %708 = load %struct.dinput_input*, %struct.dinput_input** %17, align 8
  %709 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %708, i32 0, i32 2
  %710 = load i32, i32* %709, align 4
  store i32 %710, i32* %9, align 4
  br label %713

711:                                              ; preds = %496, %702
  br label %712

712:                                              ; preds = %8, %711, %417
  store i32 0, i32* %9, align 4
  br label %713

713:                                              ; preds = %712, %707, %703, %700, %683, %667, %571, %498, %488, %483, %478, %477, %475, %435, %413, %396, %380, %284, %236
  %714 = load i32, i32* %9, align 4
  ret i32 %714
}

declare dso_local i32 @dinput_mouse_button_pressed(%struct.dinput_input*, i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @dinput_pressed_analog(%struct.dinput_input*, %struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_9__*, i64, %struct.TYPE_7__*, i32, i32, i32, %struct.retro_keybind*) #1

declare dso_local i32 @dinput_mouse_state(%struct.dinput_input*, i32, i32) #1

declare dso_local i32 @dinput_mouse_state_screen(%struct.dinput_input*, i32, i32) #1

declare dso_local i32 @dinput_pointer_state(%struct.dinput_input*, i32, i32, i32) #1

declare dso_local i32 @dinput_lightgun_aiming_state(%struct.dinput_input*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
