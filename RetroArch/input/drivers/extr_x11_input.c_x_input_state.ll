; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_x11_input.c_x_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_x11_input.c_x_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RARCH_BIND_LIST_END = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.retro_keybind**, i32, i32, i32, i32)* @x_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x_input_state(i8* %0, i32 %1, %struct.retro_keybind** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.retro_keybind**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.retro_keybind** %2, %struct.retro_keybind*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %16, align 8
  %22 = load i32, i32* %13, align 4
  switch i32 %22, label %298 [
    i32 132, label %23
    i32 150, label %75
    i32 131, label %110
    i32 129, label %122
    i32 152, label %126
    i32 128, label %130
    i32 151, label %130
    i32 130, label %142
  ]

23:                                               ; preds = %7
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %23
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %35, i64 %37
  %39 = load %struct.retro_keybind*, %struct.retro_keybind** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @x_is_pressed(%struct.TYPE_9__* %33, i32 %34, %struct.retro_keybind* %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load i32, i32* %17, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %18, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %18, align 4
  br label %50

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i32, i32* %17, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %28

53:                                               ; preds = %28
  %54 = load i32, i32* %18, align 4
  store i32 %54, i32* %8, align 4
  br label %299

55:                                               ; preds = %23
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %62, i64 %64
  %66 = load %struct.retro_keybind*, %struct.retro_keybind** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @x_is_pressed(%struct.TYPE_9__* %60, i32 %61, %struct.retro_keybind* %66, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 1, i32* %8, align 4
  br label %299

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73
  br label %298

75:                                               ; preds = %7
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %77 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %77, i64 %79
  %81 = load %struct.retro_keybind*, %struct.retro_keybind** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @x_pressed_analog(%struct.TYPE_9__* %76, %struct.retro_keybind* %81, i32 %82, i32 %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %108, label %87

87:                                               ; preds = %75
  %88 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %88, i64 %90
  %92 = load %struct.retro_keybind*, %struct.retro_keybind** %91, align 8
  %93 = icmp ne %struct.retro_keybind* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %102, i64 %104
  %106 = load %struct.retro_keybind*, %struct.retro_keybind** %105, align 8
  %107 = call i32 @input_joypad_analog(i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, %struct.retro_keybind* %106)
  store i32 %107, i32* %19, align 4
  br label %108

108:                                              ; preds = %94, %87, %75
  %109 = load i32, i32* %19, align 4
  store i32 %109, i32* %8, align 4
  br label %299

110:                                              ; preds = %7
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @RETROK_LAST, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @x_keyboard_pressed(%struct.TYPE_9__* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %114, %110
  %120 = phi i1 [ false, %110 ], [ %118, %114 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %8, align 4
  br label %299

122:                                              ; preds = %7
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @x_mouse_state(%struct.TYPE_9__* %123, i32 %124)
  store i32 %125, i32* %8, align 4
  br label %299

126:                                              ; preds = %7
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @x_mouse_state_screen(%struct.TYPE_9__* %127, i32 %128)
  store i32 %129, i32* %8, align 4
  br label %299

130:                                              ; preds = %7, %7
  %131 = load i32, i32* %14, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %137, 151
  %139 = zext i1 %138 to i32
  %140 = call i32 @x_pointer_state(%struct.TYPE_9__* %134, i32 %135, i32 %136, i32 %139)
  store i32 %140, i32* %8, align 4
  br label %299

141:                                              ; preds = %130
  br label %298

142:                                              ; preds = %7
  %143 = load i32, i32* %15, align 4
  switch i32 %143, label %297 [
    i32 139, label %144
    i32 138, label %144
    i32 142, label %144
    i32 135, label %149
    i32 140, label %160
    i32 149, label %171
    i32 148, label %182
    i32 147, label %193
    i32 136, label %204
    i32 137, label %215
    i32 143, label %226
    i32 146, label %237
    i32 145, label %248
    i32 144, label %259
    i32 134, label %270
    i32 133, label %278
    i32 141, label %286
  ]

144:                                              ; preds = %142, %142, %142
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @x_lightgun_aiming_state(%struct.TYPE_9__* %145, i32 %146, i32 %147)
  store i32 %148, i32* %8, align 4
  br label %299

149:                                              ; preds = %142
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %153 = load i32, i32* %12, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %152, i64 %154
  %156 = load %struct.retro_keybind*, %struct.retro_keybind** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @RARCH_LIGHTGUN_TRIGGER, align 4
  %159 = call i32 @x_is_pressed(%struct.TYPE_9__* %150, i32 %151, %struct.retro_keybind* %156, i32 %157, i32 %158)
  store i32 %159, i32* %8, align 4
  br label %299

160:                                              ; preds = %142
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %164 = load i32, i32* %12, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %163, i64 %165
  %167 = load %struct.retro_keybind*, %struct.retro_keybind** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @RARCH_LIGHTGUN_RELOAD, align 4
  %170 = call i32 @x_is_pressed(%struct.TYPE_9__* %161, i32 %162, %struct.retro_keybind* %167, i32 %168, i32 %169)
  store i32 %170, i32* %8, align 4
  br label %299

171:                                              ; preds = %142
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %175 = load i32, i32* %12, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %174, i64 %176
  %178 = load %struct.retro_keybind*, %struct.retro_keybind** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @RARCH_LIGHTGUN_AUX_A, align 4
  %181 = call i32 @x_is_pressed(%struct.TYPE_9__* %172, i32 %173, %struct.retro_keybind* %178, i32 %179, i32 %180)
  store i32 %181, i32* %8, align 4
  br label %299

182:                                              ; preds = %142
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %186 = load i32, i32* %12, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %185, i64 %187
  %189 = load %struct.retro_keybind*, %struct.retro_keybind** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* @RARCH_LIGHTGUN_AUX_B, align 4
  %192 = call i32 @x_is_pressed(%struct.TYPE_9__* %183, i32 %184, %struct.retro_keybind* %189, i32 %190, i32 %191)
  store i32 %192, i32* %8, align 4
  br label %299

193:                                              ; preds = %142
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %197 = load i32, i32* %12, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %196, i64 %198
  %200 = load %struct.retro_keybind*, %struct.retro_keybind** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @RARCH_LIGHTGUN_AUX_C, align 4
  %203 = call i32 @x_is_pressed(%struct.TYPE_9__* %194, i32 %195, %struct.retro_keybind* %200, i32 %201, i32 %202)
  store i32 %203, i32* %8, align 4
  br label %299

204:                                              ; preds = %142
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %206 = load i32, i32* %10, align 4
  %207 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %208 = load i32, i32* %12, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %207, i64 %209
  %211 = load %struct.retro_keybind*, %struct.retro_keybind** %210, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* @RARCH_LIGHTGUN_START, align 4
  %214 = call i32 @x_is_pressed(%struct.TYPE_9__* %205, i32 %206, %struct.retro_keybind* %211, i32 %212, i32 %213)
  store i32 %214, i32* %8, align 4
  br label %299

215:                                              ; preds = %142
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %219 = load i32, i32* %12, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %218, i64 %220
  %222 = load %struct.retro_keybind*, %struct.retro_keybind** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @RARCH_LIGHTGUN_SELECT, align 4
  %225 = call i32 @x_is_pressed(%struct.TYPE_9__* %216, i32 %217, %struct.retro_keybind* %222, i32 %223, i32 %224)
  store i32 %225, i32* %8, align 4
  br label %299

226:                                              ; preds = %142
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %228 = load i32, i32* %10, align 4
  %229 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %230 = load i32, i32* %12, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %229, i64 %231
  %233 = load %struct.retro_keybind*, %struct.retro_keybind** %232, align 8
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* @RARCH_LIGHTGUN_DPAD_UP, align 4
  %236 = call i32 @x_is_pressed(%struct.TYPE_9__* %227, i32 %228, %struct.retro_keybind* %233, i32 %234, i32 %235)
  store i32 %236, i32* %8, align 4
  br label %299

237:                                              ; preds = %142
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %239 = load i32, i32* %10, align 4
  %240 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %241 = load i32, i32* %12, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %240, i64 %242
  %244 = load %struct.retro_keybind*, %struct.retro_keybind** %243, align 8
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* @RARCH_LIGHTGUN_DPAD_DOWN, align 4
  %247 = call i32 @x_is_pressed(%struct.TYPE_9__* %238, i32 %239, %struct.retro_keybind* %244, i32 %245, i32 %246)
  store i32 %247, i32* %8, align 4
  br label %299

248:                                              ; preds = %142
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %250 = load i32, i32* %10, align 4
  %251 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %252 = load i32, i32* %12, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %251, i64 %253
  %255 = load %struct.retro_keybind*, %struct.retro_keybind** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = load i32, i32* @RARCH_LIGHTGUN_DPAD_LEFT, align 4
  %258 = call i32 @x_is_pressed(%struct.TYPE_9__* %249, i32 %250, %struct.retro_keybind* %255, i32 %256, i32 %257)
  store i32 %258, i32* %8, align 4
  br label %299

259:                                              ; preds = %142
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %263 = load i32, i32* %12, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %262, i64 %264
  %266 = load %struct.retro_keybind*, %struct.retro_keybind** %265, align 8
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* @RARCH_LIGHTGUN_DPAD_RIGHT, align 4
  %269 = call i32 @x_is_pressed(%struct.TYPE_9__* %260, i32 %261, %struct.retro_keybind* %266, i32 %267, i32 %268)
  store i32 %269, i32* %8, align 4
  br label %299

270:                                              ; preds = %142
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sub nsw i32 %273, %276
  store i32 %277, i32* %8, align 4
  br label %299

278:                                              ; preds = %142
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %281, %284
  store i32 %285, i32* %8, align 4
  br label %299

286:                                              ; preds = %142
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %288 = load i32, i32* %10, align 4
  %289 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %290 = load i32, i32* %12, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %289, i64 %291
  %293 = load %struct.retro_keybind*, %struct.retro_keybind** %292, align 8
  %294 = load i32, i32* %12, align 4
  %295 = load i32, i32* @RARCH_LIGHTGUN_START, align 4
  %296 = call i32 @x_is_pressed(%struct.TYPE_9__* %287, i32 %288, %struct.retro_keybind* %293, i32 %294, i32 %295)
  store i32 %296, i32* %8, align 4
  br label %299

297:                                              ; preds = %142
  br label %298

298:                                              ; preds = %7, %297, %141, %74
  store i32 0, i32* %8, align 4
  br label %299

299:                                              ; preds = %298, %286, %278, %270, %259, %248, %237, %226, %215, %204, %193, %182, %171, %160, %149, %144, %133, %126, %122, %119, %108, %71, %53
  %300 = load i32, i32* %8, align 4
  ret i32 %300
}

declare dso_local i32 @x_is_pressed(%struct.TYPE_9__*, i32, %struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @x_pressed_analog(%struct.TYPE_9__*, %struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @input_joypad_analog(i32, i32, i32, i32, i32, %struct.retro_keybind*) #1

declare dso_local i32 @x_keyboard_pressed(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @x_mouse_state(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @x_mouse_state_screen(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @x_pointer_state(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @x_lightgun_aiming_state(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
