; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_gx_joypad.c_gx_joypad_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_gx_joypad.c_gx_joypad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pad_state = common dso_local global i32* null, align 8
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@WPAD_EXP_NOCONTROLLER = common dso_local global i32 0, align 4
@PAD_BUTTON_A = common dso_local global i32 0, align 4
@GX_GC_A = common dso_local global i32 0, align 4
@PAD_BUTTON_B = common dso_local global i32 0, align 4
@GX_GC_B = common dso_local global i32 0, align 4
@PAD_BUTTON_X = common dso_local global i32 0, align 4
@GX_GC_X = common dso_local global i32 0, align 4
@PAD_BUTTON_Y = common dso_local global i32 0, align 4
@GX_GC_Y = common dso_local global i32 0, align 4
@PAD_BUTTON_UP = common dso_local global i32 0, align 4
@GX_GC_UP = common dso_local global i32 0, align 4
@PAD_BUTTON_DOWN = common dso_local global i32 0, align 4
@GX_GC_DOWN = common dso_local global i32 0, align 4
@PAD_BUTTON_LEFT = common dso_local global i32 0, align 4
@GX_GC_LEFT = common dso_local global i32 0, align 4
@PAD_BUTTON_RIGHT = common dso_local global i32 0, align 4
@GX_GC_RIGHT = common dso_local global i32 0, align 4
@PAD_BUTTON_START = common dso_local global i32 0, align 4
@GX_GC_START = common dso_local global i32 0, align 4
@PAD_TRIGGER_Z = common dso_local global i32 0, align 4
@GX_GC_Z_TRIGGER = common dso_local global i32 0, align 4
@PAD_TRIGGER_L = common dso_local global i32 0, align 4
@GX_GC_L_TRIGGER = common dso_local global i32 0, align 4
@PAD_TRIGGER_R = common dso_local global i32 0, align 4
@GX_GC_R_TRIGGER = common dso_local global i32 0, align 4
@analog_state = common dso_local global i32*** null, align 8
@RETRO_DEVICE_INDEX_ANALOG_LEFT = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_X = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_ANALOG_Y = common dso_local global i64 0, align 8
@RETRO_DEVICE_INDEX_ANALOG_RIGHT = common dso_local global i64 0, align 8
@GX_GC_HOME = common dso_local global i32 0, align 4
@WPAD_EXP_GAMECUBE = common dso_local global i32 0, align 4
@pad_type = common dso_local global i32* null, align 8
@lifecycle_state = common dso_local global i32 0, align 4
@RARCH_MENU_TOGGLE = common dso_local global i32 0, align 4
@g_menu = common dso_local global i32 0, align 4
@GX_CLASSIC_A = common dso_local global i32 0, align 4
@GX_CLASSIC_B = common dso_local global i32 0, align 4
@GX_CLASSIC_DOWN = common dso_local global i32 0, align 4
@GX_CLASSIC_HOME = common dso_local global i32 0, align 4
@GX_CLASSIC_LEFT = common dso_local global i32 0, align 4
@GX_CLASSIC_L_TRIGGER = common dso_local global i32 0, align 4
@GX_CLASSIC_MINUS = common dso_local global i32 0, align 4
@GX_CLASSIC_PLUS = common dso_local global i32 0, align 4
@GX_CLASSIC_RIGHT = common dso_local global i32 0, align 4
@GX_CLASSIC_R_TRIGGER = common dso_local global i32 0, align 4
@GX_CLASSIC_UP = common dso_local global i32 0, align 4
@GX_CLASSIC_X = common dso_local global i32 0, align 4
@GX_CLASSIC_Y = common dso_local global i32 0, align 4
@GX_CLASSIC_ZL_TRIGGER = common dso_local global i32 0, align 4
@GX_CLASSIC_ZR_TRIGGER = common dso_local global i32 0, align 4
@GX_NUNCHUK_C = common dso_local global i32 0, align 4
@GX_NUNCHUK_Z = common dso_local global i32 0, align 4
@GX_WIIMOTE_1 = common dso_local global i32 0, align 4
@GX_WIIMOTE_2 = common dso_local global i32 0, align 4
@GX_WIIMOTE_A = common dso_local global i32 0, align 4
@GX_WIIMOTE_B = common dso_local global i32 0, align 4
@GX_WIIMOTE_DOWN = common dso_local global i32 0, align 4
@GX_WIIMOTE_HOME = common dso_local global i32 0, align 4
@GX_WIIMOTE_LEFT = common dso_local global i32 0, align 4
@GX_WIIMOTE_MINUS = common dso_local global i32 0, align 4
@GX_WIIMOTE_PLUS = common dso_local global i32 0, align 4
@GX_WIIMOTE_RIGHT = common dso_local global i32 0, align 4
@GX_WIIMOTE_UP = common dso_local global i32 0, align 4
@RARCH_CTL_SET_SHUTDOWN = common dso_local global i32 0, align 4
@WPAD_BUTTON_1 = common dso_local global i32 0, align 4
@WPAD_BUTTON_2 = common dso_local global i32 0, align 4
@WPAD_BUTTON_A = common dso_local global i32 0, align 4
@WPAD_BUTTON_B = common dso_local global i32 0, align 4
@WPAD_BUTTON_DOWN = common dso_local global i32 0, align 4
@WPAD_BUTTON_HOME = common dso_local global i32 0, align 4
@WPAD_BUTTON_LEFT = common dso_local global i32 0, align 4
@WPAD_BUTTON_MINUS = common dso_local global i32 0, align 4
@WPAD_BUTTON_PLUS = common dso_local global i32 0, align 4
@WPAD_BUTTON_RIGHT = common dso_local global i32 0, align 4
@WPAD_BUTTON_UP = common dso_local global i32 0, align 4
@WPAD_CHAN_0 = common dso_local global i32 0, align 4
@WPAD_CHAN_1 = common dso_local global i32 0, align 4
@WPAD_CHAN_ALL = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_A = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_B = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_DOWN = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_FULL_L = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_FULL_R = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_HOME = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_LEFT = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_MINUS = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_PLUS = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_RIGHT = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_UP = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_X = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_Y = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_ZL = common dso_local global i32 0, align 4
@WPAD_CLASSIC_BUTTON_ZR = common dso_local global i32 0, align 4
@WPAD_ERR_NONE = common dso_local global i64 0, align 8
@WPAD_EXP_CLASSIC = common dso_local global i32 0, align 4
@WPAD_EXP_NONE = common dso_local global i32 0, align 4
@WPAD_EXP_NUNCHUK = common dso_local global i32 0, align 4
@WPAD_NUNCHUK_BUTTON_C = common dso_local global i32 0, align 4
@WPAD_NUNCHUK_BUTTON_Z = common dso_local global i32 0, align 4
@g_quit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gx_joypad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gx_joypad_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load i32*, i32** @pad_state, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** @pad_state, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** @pad_state, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** @pad_state, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 0, i32* %23, align 4
  %24 = call i32 (...) @PAD_ScanPads()
  store i32 %24, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %375, %0
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %378

29:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  %30 = load i32, i32* @WPAD_EXP_NOCONTROLLER, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** @pad_state, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %10, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %3, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %309

40:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @PAD_ButtonsHeld(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PAD_BUTTON_A, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = call i32 @UINT64_C(i32 1)
  %49 = load i32, i32* @GX_GC_A, align 4
  %50 = shl i32 %48, %49
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i32 [ %50, %47 ], [ 0, %51 ]
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PAD_BUTTON_B, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = call i32 @UINT64_C(i32 1)
  %63 = load i32, i32* @GX_GC_B, align 4
  %64 = shl i32 %62, %63
  br label %66

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ 0, %65 ]
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PAD_BUTTON_X, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = call i32 @UINT64_C(i32 1)
  %77 = load i32, i32* @GX_GC_X, align 4
  %78 = shl i32 %76, %77
  br label %80

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ %78, %75 ], [ 0, %79 ]
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @PAD_BUTTON_Y, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = call i32 @UINT64_C(i32 1)
  %91 = load i32, i32* @GX_GC_Y, align 4
  %92 = shl i32 %90, %91
  br label %94

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ %92, %89 ], [ 0, %93 ]
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @PAD_BUTTON_UP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = call i32 @UINT64_C(i32 1)
  %105 = load i32, i32* @GX_GC_UP, align 4
  %106 = shl i32 %104, %105
  br label %108

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi i32 [ %106, %103 ], [ 0, %107 ]
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @PAD_BUTTON_DOWN, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = call i32 @UINT64_C(i32 1)
  %119 = load i32, i32* @GX_GC_DOWN, align 4
  %120 = shl i32 %118, %119
  br label %122

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %117
  %123 = phi i32 [ %120, %117 ], [ 0, %121 ]
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @PAD_BUTTON_LEFT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  %132 = call i32 @UINT64_C(i32 1)
  %133 = load i32, i32* @GX_GC_LEFT, align 4
  %134 = shl i32 %132, %133
  br label %136

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %131
  %137 = phi i32 [ %134, %131 ], [ 0, %135 ]
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %137
  store i32 %140, i32* %138, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @PAD_BUTTON_RIGHT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = call i32 @UINT64_C(i32 1)
  %147 = load i32, i32* @GX_GC_RIGHT, align 4
  %148 = shl i32 %146, %147
  br label %150

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149, %145
  %151 = phi i32 [ %148, %145 ], [ 0, %149 ]
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %151
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @PAD_BUTTON_START, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %150
  %160 = call i32 @UINT64_C(i32 1)
  %161 = load i32, i32* @GX_GC_START, align 4
  %162 = shl i32 %160, %161
  br label %164

163:                                              ; preds = %150
  br label %164

164:                                              ; preds = %163, %159
  %165 = phi i32 [ %162, %159 ], [ 0, %163 ]
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %165
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @PAD_TRIGGER_Z, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %164
  %174 = call i32 @UINT64_C(i32 1)
  %175 = load i32, i32* @GX_GC_Z_TRIGGER, align 4
  %176 = shl i32 %174, %175
  br label %178

177:                                              ; preds = %164
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i32 [ %176, %173 ], [ 0, %177 ]
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %179
  store i32 %182, i32* %180, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @PAD_TRIGGER_L, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %178
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @PAD_TriggerL(i32 %188)
  %190 = icmp sgt i32 %189, 127
  br i1 %190, label %191, label %195

191:                                              ; preds = %187, %178
  %192 = call i32 @UINT64_C(i32 1)
  %193 = load i32, i32* @GX_GC_L_TRIGGER, align 4
  %194 = shl i32 %192, %193
  br label %196

195:                                              ; preds = %187
  br label %196

196:                                              ; preds = %195, %191
  %197 = phi i32 [ %194, %191 ], [ 0, %195 ]
  %198 = load i32*, i32** %10, align 8
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %197
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* @PAD_TRIGGER_R, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %196
  %206 = load i32, i32* %3, align 4
  %207 = call i32 @PAD_TriggerR(i32 %206)
  %208 = icmp sgt i32 %207, 127
  br i1 %208, label %209, label %213

209:                                              ; preds = %205, %196
  %210 = call i32 @UINT64_C(i32 1)
  %211 = load i32, i32* @GX_GC_R_TRIGGER, align 4
  %212 = shl i32 %210, %211
  br label %214

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %209
  %215 = phi i32 [ %212, %209 ], [ 0, %213 ]
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %215
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* %3, align 4
  %220 = call i64 @PAD_StickX(i32 %219)
  %221 = trunc i64 %220 to i32
  %222 = mul nsw i32 %221, 256
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %3, align 4
  %224 = call i64 @PAD_StickY(i32 %223)
  %225 = trunc i64 %224 to i32
  %226 = mul nsw i32 %225, -256
  store i32 %226, i32* %12, align 4
  %227 = load i32, i32* %3, align 4
  %228 = call i64 @PAD_SubStickX(i32 %227)
  %229 = trunc i64 %228 to i32
  %230 = mul nsw i32 %229, 256
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %3, align 4
  %232 = call i64 @PAD_SubStickY(i32 %231)
  %233 = trunc i64 %232 to i32
  %234 = mul nsw i32 %233, -256
  store i32 %234, i32* %14, align 4
  %235 = load i32, i32* %11, align 4
  %236 = load i32***, i32**** @analog_state, align 8
  %237 = load i32, i32* %3, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32**, i32*** %236, i64 %238
  %240 = load i32**, i32*** %239, align 8
  %241 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %242 = getelementptr inbounds i32*, i32** %240, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32 %235, i32* %245, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32***, i32**** @analog_state, align 8
  %248 = load i32, i32* %3, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32**, i32*** %247, i64 %249
  %251 = load i32**, i32*** %250, align 8
  %252 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_LEFT, align 8
  %253 = getelementptr inbounds i32*, i32** %251, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32 %246, i32* %256, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load i32***, i32**** @analog_state, align 8
  %259 = load i32, i32* %3, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32**, i32*** %258, i64 %260
  %262 = load i32**, i32*** %261, align 8
  %263 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %264 = getelementptr inbounds i32*, i32** %262, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_X, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32 %257, i32* %267, align 4
  %268 = load i32, i32* %14, align 4
  %269 = load i32***, i32**** @analog_state, align 8
  %270 = load i32, i32* %3, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i32**, i32*** %269, i64 %271
  %273 = load i32**, i32*** %272, align 8
  %274 = load i64, i64* @RETRO_DEVICE_INDEX_ANALOG_RIGHT, align 8
  %275 = getelementptr inbounds i32*, i32** %273, i64 %274
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @RETRO_DEVICE_ID_ANALOG_Y, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32 %268, i32* %278, align 4
  %279 = call i32 @UINT64_C(i32 1)
  %280 = load i32, i32* @GX_GC_START, align 4
  %281 = shl i32 %279, %280
  %282 = call i32 @UINT64_C(i32 1)
  %283 = load i32, i32* @GX_GC_Z_TRIGGER, align 4
  %284 = shl i32 %282, %283
  %285 = or i32 %281, %284
  %286 = call i32 @UINT64_C(i32 1)
  %287 = load i32, i32* @GX_GC_L_TRIGGER, align 4
  %288 = shl i32 %286, %287
  %289 = or i32 %285, %288
  %290 = call i32 @UINT64_C(i32 1)
  %291 = load i32, i32* @GX_GC_R_TRIGGER, align 4
  %292 = shl i32 %290, %291
  %293 = or i32 %289, %292
  store i32 %293, i32* %15, align 4
  %294 = load i32*, i32** %10, align 8
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %15, align 4
  %297 = and i32 %295, %296
  %298 = load i32, i32* %15, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %307

300:                                              ; preds = %214
  %301 = call i32 @UINT64_C(i32 1)
  %302 = load i32, i32* @GX_GC_HOME, align 4
  %303 = shl i32 %301, %302
  %304 = load i32*, i32** %10, align 8
  %305 = load i32, i32* %304, align 4
  %306 = or i32 %305, %303
  store i32 %306, i32* %304, align 4
  br label %307

307:                                              ; preds = %300, %214
  %308 = load i32, i32* @WPAD_EXP_GAMECUBE, align 4
  store i32 %308, i32* %9, align 4
  br label %309

309:                                              ; preds = %307, %29
  %310 = load i32, i32* %3, align 4
  %311 = call i64 @gx_joypad_query_pad(i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %309
  %314 = load i32, i32* %4, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %4, align 4
  br label %316

316:                                              ; preds = %313, %309
  %317 = load i32, i32* %4, align 4
  %318 = call i32 @check_port0_active(i32 %317)
  %319 = load i32, i32* %9, align 4
  %320 = load i32*, i32** @pad_type, align 8
  %321 = load i32, i32* %3, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %319, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %316
  %327 = load i32, i32* %3, align 4
  %328 = load i32, i32* %9, align 4
  %329 = call i32 @handle_hotplug(i32 %327, i32 %328)
  br label %330

330:                                              ; preds = %326, %316
  store i32 0, i32* %1, align 4
  br label %331

331:                                              ; preds = %371, %330
  %332 = load i32, i32* %1, align 4
  %333 = icmp ult i32 %332, 2
  br i1 %333, label %334, label %374

334:                                              ; preds = %331
  store i32 0, i32* %2, align 4
  br label %335

335:                                              ; preds = %367, %334
  %336 = load i32, i32* %2, align 4
  %337 = icmp ult i32 %336, 2
  br i1 %337, label %338, label %370

338:                                              ; preds = %335
  %339 = load i32***, i32**** @analog_state, align 8
  %340 = load i32, i32* %3, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i32**, i32*** %339, i64 %341
  %343 = load i32**, i32*** %342, align 8
  %344 = load i32, i32* %1, align 4
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds i32*, i32** %343, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %2, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %351, -32768
  br i1 %352, label %353, label %366

353:                                              ; preds = %338
  %354 = load i32***, i32**** @analog_state, align 8
  %355 = load i32, i32* %3, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds i32**, i32*** %354, i64 %356
  %358 = load i32**, i32*** %357, align 8
  %359 = load i32, i32* %1, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i32*, i32** %358, i64 %360
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %2, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  store i32 -32767, i32* %365, align 4
  br label %366

366:                                              ; preds = %353, %338
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %2, align 4
  %369 = add i32 %368, 1
  store i32 %369, i32* %2, align 4
  br label %335

370:                                              ; preds = %335
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %1, align 4
  %373 = add i32 %372, 1
  store i32 %373, i32* %1, align 4
  br label %331

374:                                              ; preds = %331
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %3, align 4
  %377 = add i32 %376, 1
  store i32 %377, i32* %3, align 4
  br label %25

378:                                              ; preds = %25
  %379 = load i32*, i32** @pad_state, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 0
  %381 = load i32, i32* %380, align 4
  store i32 %381, i32* %6, align 4
  %382 = load i32, i32* @lifecycle_state, align 4
  %383 = load i32, i32* @RARCH_MENU_TOGGLE, align 4
  %384 = call i32 @BIT64_CLEAR(i32 %382, i32 %383)
  %385 = load i32, i32* @g_menu, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %378
  %388 = call i32 @UINT64_C(i32 1)
  %389 = load i32, i32* @GX_GC_HOME, align 4
  %390 = shl i32 %388, %389
  %391 = load i32, i32* %6, align 4
  %392 = or i32 %391, %390
  store i32 %392, i32* %6, align 4
  store i32 0, i32* @g_menu, align 4
  br label %393

393:                                              ; preds = %387, %378
  %394 = call i32 @UINT64_C(i32 1)
  %395 = load i32, i32* @GX_GC_HOME, align 4
  %396 = shl i32 %394, %395
  store i32 %396, i32* %7, align 4
  %397 = load i32, i32* %7, align 4
  %398 = load i32, i32* %6, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %393
  %402 = load i32, i32* @lifecycle_state, align 4
  %403 = load i32, i32* @RARCH_MENU_TOGGLE, align 4
  %404 = call i32 @BIT64_SET(i32 %402, i32 %403)
  br label %405

405:                                              ; preds = %401, %393
  ret void
}

declare dso_local i32 @PAD_ScanPads(...) #1

declare dso_local i32 @PAD_ButtonsHeld(i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @PAD_TriggerL(i32) #1

declare dso_local i32 @PAD_TriggerR(i32) #1

declare dso_local i64 @PAD_StickX(i32) #1

declare dso_local i64 @PAD_StickY(i32) #1

declare dso_local i64 @PAD_SubStickX(i32) #1

declare dso_local i64 @PAD_SubStickY(i32) #1

declare dso_local i64 @gx_joypad_query_pad(i32) #1

declare dso_local i32 @check_port0_active(i32) #1

declare dso_local i32 @handle_hotplug(i32, i32) #1

declare dso_local i32 @BIT64_CLEAR(i32, i32) #1

declare dso_local i32 @BIT64_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
