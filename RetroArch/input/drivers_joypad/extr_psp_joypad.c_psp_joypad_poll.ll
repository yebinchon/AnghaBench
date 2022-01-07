; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_psp_joypad.c_psp_joypad_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_psp_joypad.c_psp_joypad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64* }
%struct.TYPE_27__ = type { i64* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@DEFAULT_SAMPLING_MODE = common dso_local global i32 0, align 4
@lifecycle_state = common dso_local global i32 0, align 4
@RARCH_MENU_TOGGLE = common dso_local global i32 0, align 4
@pad_state = common dso_local global i32* null, align 8
@analog_state = common dso_local global i32*** null, align 8
@PSP_CTRL_LEFT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_LEFT = common dso_local global i32 0, align 4
@PSP_CTRL_DOWN = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_DOWN = common dso_local global i32 0, align 4
@PSP_CTRL_RIGHT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_RIGHT = common dso_local global i32 0, align 4
@PSP_CTRL_UP = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_UP = common dso_local global i32 0, align 4
@PSP_CTRL_START = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_START = common dso_local global i32 0, align 4
@PSP_CTRL_SELECT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_SELECT = common dso_local global i32 0, align 4
@PSP_CTRL_TRIANGLE = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_X = common dso_local global i32 0, align 4
@PSP_CTRL_SQUARE = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_Y = common dso_local global i32 0, align 4
@PSP_CTRL_CROSS = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_B = common dso_local global i32 0, align 4
@PSP_CTRL_CIRCLE = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_A = common dso_local global i32 0, align 4
@PSP_CTRL_R = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R = common dso_local global i32 0, align 4
@PSP_CTRL_L = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L = common dso_local global i32 0, align 4
@RETRO_DEVICE_INDEX_ANALOG_LEFT = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_X = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_Y = common dso_local global i64 0, align 8
@PSP_CTRL_L2 = common dso_local global i32 0, align 4
@PSP_CTRL_L3 = common dso_local global i32 0, align 4
@PSP_CTRL_NOTE = common dso_local global i32 0, align 4
@PSP_CTRL_R2 = common dso_local global i32 0, align 4
@PSP_CTRL_R3 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L2 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L3 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R2 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R3 = common dso_local global i32 0, align 4
@RETRO_DEVICE_INDEX_ANALOG_RIGHT = common dso_local global i64 0, align 8
@SCE_CTRL_TYPE_UNPAIRED = common dso_local global i64 0, align 8
@SCE_KERNEL_MODEL_VITA = common dso_local global i64 0, align 8
@SCE_KERNEL_MODEL_VITATV = common dso_local global i64 0, align 8
@SCE_TOUCH_PORT_BACK = common dso_local global i32 0, align 4
@SCE_TOUCH_PORT_FRONT = common dso_local global i32 0, align 4
@SCREEN_HEIGHT = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@TOUCH_MAX_HEIGHT = common dso_local global i32 0, align 4
@TOUCH_MAX_WIDTH = common dso_local global i32 0, align 4
@actuators = common dso_local global i32* null, align 8
@curr_ctrl_info = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@old_ctrl_info = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@psp2_model = common dso_local global i64 0, align 8
@psp_joypad = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @psp_joypad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psp_joypad_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* @DEFAULT_SAMPLING_MODE, align 4
  %11 = call i32 @CtrlSetSamplingMode(i32 %10)
  %12 = load i32, i32* @lifecycle_state, align 4
  %13 = load i32, i32* @RARCH_MENU_TOGGLE, align 4
  %14 = call i32 @BIT64_CLEAR(i32 %12, i32 %13)
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %362, %0
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %365

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %1, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @CtrlPeekBufferPositive(i32 %22, %struct.TYPE_24__* %5, i32 1)
  store i64 %23, i64* %8, align 8
  %24 = load i32*, i32** @pad_state, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 0, i32* %27, align 4
  %28 = load i32***, i32**** @analog_state, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32**, i32*** %28, i64 %30
  %32 = load i32**, i32*** %31, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 0, i32* %35, align 4
  %36 = load i32***, i32**** @analog_state, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32**, i32*** %36, i64 %38
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 0, i32* %43, align 4
  %44 = load i32***, i32**** @analog_state, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32**, i32*** %44, i64 %46
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 0, i32* %51, align 4
  %52 = load i32***, i32**** @analog_state, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32**, i32*** %52, i64 %54
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 0, i32* %59, align 4
  %60 = bitcast %struct.TYPE_24__* %5 to i64*
  %61 = load i64, i64* %60, align 4
  %62 = call i32 @STATE_BUTTON(i64 %61)
  %63 = load i32, i32* @PSP_CTRL_LEFT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %19
  %67 = call i32 @UINT64_C(i32 1)
  %68 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_LEFT, align 4
  %69 = shl i32 %67, %68
  br label %71

70:                                               ; preds = %19
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32 [ %69, %66 ], [ 0, %70 ]
  %73 = load i32*, i32** @pad_state, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %72
  store i32 %78, i32* %76, align 4
  %79 = bitcast %struct.TYPE_24__* %5 to i64*
  %80 = load i64, i64* %79, align 4
  %81 = call i32 @STATE_BUTTON(i64 %80)
  %82 = load i32, i32* @PSP_CTRL_DOWN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = call i32 @UINT64_C(i32 1)
  %87 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_DOWN, align 4
  %88 = shl i32 %86, %87
  br label %90

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi i32 [ %88, %85 ], [ 0, %89 ]
  %92 = load i32*, i32** @pad_state, align 8
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 4
  %98 = bitcast %struct.TYPE_24__* %5 to i64*
  %99 = load i64, i64* %98, align 4
  %100 = call i32 @STATE_BUTTON(i64 %99)
  %101 = load i32, i32* @PSP_CTRL_RIGHT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %90
  %105 = call i32 @UINT64_C(i32 1)
  %106 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_RIGHT, align 4
  %107 = shl i32 %105, %106
  br label %109

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %104
  %110 = phi i32 [ %107, %104 ], [ 0, %108 ]
  %111 = load i32*, i32** @pad_state, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %110
  store i32 %116, i32* %114, align 4
  %117 = bitcast %struct.TYPE_24__* %5 to i64*
  %118 = load i64, i64* %117, align 4
  %119 = call i32 @STATE_BUTTON(i64 %118)
  %120 = load i32, i32* @PSP_CTRL_UP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %109
  %124 = call i32 @UINT64_C(i32 1)
  %125 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  %126 = shl i32 %124, %125
  br label %128

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127, %123
  %129 = phi i32 [ %126, %123 ], [ 0, %127 ]
  %130 = load i32*, i32** @pad_state, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 4
  %136 = bitcast %struct.TYPE_24__* %5 to i64*
  %137 = load i64, i64* %136, align 4
  %138 = call i32 @STATE_BUTTON(i64 %137)
  %139 = load i32, i32* @PSP_CTRL_START, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %128
  %143 = call i32 @UINT64_C(i32 1)
  %144 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_START, align 4
  %145 = shl i32 %143, %144
  br label %147

146:                                              ; preds = %128
  br label %147

147:                                              ; preds = %146, %142
  %148 = phi i32 [ %145, %142 ], [ 0, %146 ]
  %149 = load i32*, i32** @pad_state, align 8
  %150 = load i32, i32* %6, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %148
  store i32 %154, i32* %152, align 4
  %155 = bitcast %struct.TYPE_24__* %5 to i64*
  %156 = load i64, i64* %155, align 4
  %157 = call i32 @STATE_BUTTON(i64 %156)
  %158 = load i32, i32* @PSP_CTRL_SELECT, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %147
  %162 = call i32 @UINT64_C(i32 1)
  %163 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_SELECT, align 4
  %164 = shl i32 %162, %163
  br label %166

165:                                              ; preds = %147
  br label %166

166:                                              ; preds = %165, %161
  %167 = phi i32 [ %164, %161 ], [ 0, %165 ]
  %168 = load i32*, i32** @pad_state, align 8
  %169 = load i32, i32* %6, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %167
  store i32 %173, i32* %171, align 4
  %174 = bitcast %struct.TYPE_24__* %5 to i64*
  %175 = load i64, i64* %174, align 4
  %176 = call i32 @STATE_BUTTON(i64 %175)
  %177 = load i32, i32* @PSP_CTRL_TRIANGLE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %166
  %181 = call i32 @UINT64_C(i32 1)
  %182 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_X, align 4
  %183 = shl i32 %181, %182
  br label %185

184:                                              ; preds = %166
  br label %185

185:                                              ; preds = %184, %180
  %186 = phi i32 [ %183, %180 ], [ 0, %184 ]
  %187 = load i32*, i32** @pad_state, align 8
  %188 = load i32, i32* %6, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %186
  store i32 %192, i32* %190, align 4
  %193 = bitcast %struct.TYPE_24__* %5 to i64*
  %194 = load i64, i64* %193, align 4
  %195 = call i32 @STATE_BUTTON(i64 %194)
  %196 = load i32, i32* @PSP_CTRL_SQUARE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %185
  %200 = call i32 @UINT64_C(i32 1)
  %201 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_Y, align 4
  %202 = shl i32 %200, %201
  br label %204

203:                                              ; preds = %185
  br label %204

204:                                              ; preds = %203, %199
  %205 = phi i32 [ %202, %199 ], [ 0, %203 ]
  %206 = load i32*, i32** @pad_state, align 8
  %207 = load i32, i32* %6, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %205
  store i32 %211, i32* %209, align 4
  %212 = bitcast %struct.TYPE_24__* %5 to i64*
  %213 = load i64, i64* %212, align 4
  %214 = call i32 @STATE_BUTTON(i64 %213)
  %215 = load i32, i32* @PSP_CTRL_CROSS, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %204
  %219 = call i32 @UINT64_C(i32 1)
  %220 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_B, align 4
  %221 = shl i32 %219, %220
  br label %223

222:                                              ; preds = %204
  br label %223

223:                                              ; preds = %222, %218
  %224 = phi i32 [ %221, %218 ], [ 0, %222 ]
  %225 = load i32*, i32** @pad_state, align 8
  %226 = load i32, i32* %6, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %224
  store i32 %230, i32* %228, align 4
  %231 = bitcast %struct.TYPE_24__* %5 to i64*
  %232 = load i64, i64* %231, align 4
  %233 = call i32 @STATE_BUTTON(i64 %232)
  %234 = load i32, i32* @PSP_CTRL_CIRCLE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %223
  %238 = call i32 @UINT64_C(i32 1)
  %239 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_A, align 4
  %240 = shl i32 %238, %239
  br label %242

241:                                              ; preds = %223
  br label %242

242:                                              ; preds = %241, %237
  %243 = phi i32 [ %240, %237 ], [ 0, %241 ]
  %244 = load i32*, i32** @pad_state, align 8
  %245 = load i32, i32* %6, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %243
  store i32 %249, i32* %247, align 4
  %250 = bitcast %struct.TYPE_24__* %5 to i64*
  %251 = load i64, i64* %250, align 4
  %252 = call i32 @STATE_BUTTON(i64 %251)
  %253 = load i32, i32* @PSP_CTRL_R, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %242
  %257 = call i32 @UINT64_C(i32 1)
  %258 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R, align 4
  %259 = shl i32 %257, %258
  br label %261

260:                                              ; preds = %242
  br label %261

261:                                              ; preds = %260, %256
  %262 = phi i32 [ %259, %256 ], [ 0, %260 ]
  %263 = load i32*, i32** @pad_state, align 8
  %264 = load i32, i32* %6, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %262
  store i32 %268, i32* %266, align 4
  %269 = bitcast %struct.TYPE_24__* %5 to i64*
  %270 = load i64, i64* %269, align 4
  %271 = call i32 @STATE_BUTTON(i64 %270)
  %272 = load i32, i32* @PSP_CTRL_L, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %261
  %276 = call i32 @UINT64_C(i32 1)
  %277 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L, align 4
  %278 = shl i32 %276, %277
  br label %280

279:                                              ; preds = %261
  br label %280

280:                                              ; preds = %279, %275
  %281 = phi i32 [ %278, %275 ], [ 0, %279 ]
  %282 = load i32*, i32** @pad_state, align 8
  %283 = load i32, i32* %6, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %281
  store i32 %287, i32* %285, align 4
  %288 = bitcast %struct.TYPE_24__* %5 to i64*
  %289 = load i64, i64* %288, align 4
  %290 = call i32 @STATE_ANALOGLX(i64 %289)
  %291 = sub nsw i32 %290, 128
  %292 = mul nsw i32 %291, 256
  %293 = load i32***, i32**** @analog_state, align 8
  %294 = load i32, i32* %6, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds i32**, i32*** %293, i64 %295
  %297 = load i32**, i32*** %296, align 8
  %298 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %299 = getelementptr inbounds i32*, i32** %297, i64 %298
  %300 = load i32*, i32** %299, align 8
  %301 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  store i32 %292, i32* %302, align 4
  %303 = bitcast %struct.TYPE_24__* %5 to i64*
  %304 = load i64, i64* %303, align 4
  %305 = call i32 @STATE_ANALOGLY(i64 %304)
  %306 = sub nsw i32 %305, 128
  %307 = mul nsw i32 %306, 256
  %308 = load i32***, i32**** @analog_state, align 8
  %309 = load i32, i32* %6, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32**, i32*** %308, i64 %310
  %312 = load i32**, i32*** %311, align 8
  %313 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %314 = getelementptr inbounds i32*, i32** %312, i64 %313
  %315 = load i32*, i32** %314, align 8
  %316 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %317 = getelementptr inbounds i32, i32* %315, i64 %316
  store i32 %307, i32* %317, align 4
  store i32 0, i32* %3, align 4
  br label %318

318:                                              ; preds = %358, %280
  %319 = load i32, i32* %3, align 4
  %320 = icmp ult i32 %319, 2
  br i1 %320, label %321, label %361

321:                                              ; preds = %318
  store i32 0, i32* %4, align 4
  br label %322

322:                                              ; preds = %354, %321
  %323 = load i32, i32* %4, align 4
  %324 = icmp ult i32 %323, 2
  br i1 %324, label %325, label %357

325:                                              ; preds = %322
  %326 = load i32***, i32**** @analog_state, align 8
  %327 = load i32, i32* %6, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds i32**, i32*** %326, i64 %328
  %330 = load i32**, i32*** %329, align 8
  %331 = load i32, i32* %3, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i32*, i32** %330, i64 %332
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %4, align 4
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, -32768
  br i1 %339, label %340, label %353

340:                                              ; preds = %325
  %341 = load i32***, i32**** @analog_state, align 8
  %342 = load i32, i32* %6, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds i32**, i32*** %341, i64 %343
  %345 = load i32**, i32*** %344, align 8
  %346 = load i32, i32* %3, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds i32*, i32** %345, i64 %347
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %4, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  store i32 -32767, i32* %352, align 4
  br label %353

353:                                              ; preds = %340, %325
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %4, align 4
  %356 = add i32 %355, 1
  store i32 %356, i32* %4, align 4
  br label %322

357:                                              ; preds = %322
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %3, align 4
  %360 = add i32 %359, 1
  store i32 %360, i32* %3, align 4
  br label %318

361:                                              ; preds = %318
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %1, align 4
  %364 = add i32 %363, 1
  store i32 %364, i32* %1, align 4
  br label %15

365:                                              ; preds = %15
  ret void
}

declare dso_local i32 @CtrlSetSamplingMode(i32) #1

declare dso_local i32 @BIT64_CLEAR(i32, i32) #1

declare dso_local i64 @CtrlPeekBufferPositive(i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @STATE_BUTTON(i64) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @STATE_ANALOGLX(i64) #1

declare dso_local i32 @STATE_ANALOGLY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
