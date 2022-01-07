; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_udev_input.c_udev_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32 }
%struct.TYPE_8__ = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.retro_keybind**, i32, i32, i32, i32)* @udev_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udev_input_state(i8* %0, i32 %1, %struct.retro_keybind** %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.retro_keybind**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.retro_keybind** %2, %struct.retro_keybind*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %16, align 8
  %24 = load i32, i32* %13, align 4
  switch i32 %24, label %315 [
    i32 132, label %25
    i32 150, label %77
    i32 131, label %111
    i32 129, label %123
    i32 152, label %128
    i32 128, label %133
    i32 151, label %142
    i32 130, label %151
  ]

25:                                               ; preds = %7
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %37, i64 %39
  %41 = load %struct.retro_keybind*, %struct.retro_keybind** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @udev_is_pressed(%struct.TYPE_8__* %35, i32 %36, %struct.retro_keybind* %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* %17, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %18, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %18, align 4
  br label %52

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %17, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %17, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %8, align 4
  br label %316

57:                                               ; preds = %25
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @RARCH_BIND_LIST_END, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %64, i64 %66
  %68 = load %struct.retro_keybind*, %struct.retro_keybind** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @udev_is_pressed(%struct.TYPE_8__* %62, i32 %63, %struct.retro_keybind* %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  store i32 1, i32* %8, align 4
  br label %316

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75
  br label %315

77:                                               ; preds = %7
  %78 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %78, i64 %80
  %82 = load %struct.retro_keybind*, %struct.retro_keybind** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @udev_analog_pressed(%struct.retro_keybind* %82, i32 %83, i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %77
  %89 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %89, i64 %91
  %93 = load %struct.retro_keybind*, %struct.retro_keybind** %92, align 8
  %94 = icmp ne %struct.retro_keybind* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %88
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %103, i64 %105
  %107 = load %struct.retro_keybind*, %struct.retro_keybind** %106, align 8
  %108 = call i32 @input_joypad_analog(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, %struct.retro_keybind* %107)
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %95, %88, %77
  %110 = load i32, i32* %19, align 4
  store i32 %110, i32* %8, align 4
  br label %316

111:                                              ; preds = %7
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @RETROK_LAST, align 4
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @udev_keyboard_pressed(%struct.TYPE_8__* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br label %120

120:                                              ; preds = %115, %111
  %121 = phi i1 [ false, %111 ], [ %119, %115 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %8, align 4
  br label %316

123:                                              ; preds = %7
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @udev_mouse_state(%struct.TYPE_8__* %124, i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %8, align 4
  br label %316

128:                                              ; preds = %7
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @udev_mouse_state(%struct.TYPE_8__* %129, i32 %130, i32 %131, i32 1)
  store i32 %132, i32* %8, align 4
  br label %316

133:                                              ; preds = %7
  %134 = load i32, i32* %14, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @udev_pointer_state(%struct.TYPE_8__* %137, i32 %138, i32 %139, i32 0)
  store i32 %140, i32* %8, align 4
  br label %316

141:                                              ; preds = %133
  br label %315

142:                                              ; preds = %7
  %143 = load i32, i32* %14, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @udev_pointer_state(%struct.TYPE_8__* %146, i32 %147, i32 %148, i32 1)
  store i32 %149, i32* %8, align 4
  br label %316

150:                                              ; preds = %142
  br label %315

151:                                              ; preds = %7
  %152 = load i32, i32* %15, align 4
  switch i32 %152, label %314 [
    i32 139, label %153
    i32 138, label %153
    i32 142, label %153
    i32 135, label %158
    i32 140, label %169
    i32 149, label %180
    i32 148, label %191
    i32 147, label %202
    i32 136, label %213
    i32 137, label %224
    i32 143, label %235
    i32 146, label %246
    i32 145, label %257
    i32 144, label %268
    i32 134, label %279
    i32 133, label %291
    i32 141, label %303
  ]

153:                                              ; preds = %151, %151, %151
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @udev_lightgun_aiming_state(%struct.TYPE_8__* %154, i32 %155, i32 %156)
  store i32 %157, i32* %8, align 4
  br label %316

158:                                              ; preds = %151
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %162 = load i32, i32* %12, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %161, i64 %163
  %165 = load %struct.retro_keybind*, %struct.retro_keybind** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @RARCH_LIGHTGUN_TRIGGER, align 4
  %168 = call i32 @udev_is_pressed(%struct.TYPE_8__* %159, i32 %160, %struct.retro_keybind* %165, i32 %166, i32 %167)
  store i32 %168, i32* %8, align 4
  br label %316

169:                                              ; preds = %151
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %173 = load i32, i32* %12, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %172, i64 %174
  %176 = load %struct.retro_keybind*, %struct.retro_keybind** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @RARCH_LIGHTGUN_RELOAD, align 4
  %179 = call i32 @udev_is_pressed(%struct.TYPE_8__* %170, i32 %171, %struct.retro_keybind* %176, i32 %177, i32 %178)
  store i32 %179, i32* %8, align 4
  br label %316

180:                                              ; preds = %151
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %184 = load i32, i32* %12, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %183, i64 %185
  %187 = load %struct.retro_keybind*, %struct.retro_keybind** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @RARCH_LIGHTGUN_AUX_A, align 4
  %190 = call i32 @udev_is_pressed(%struct.TYPE_8__* %181, i32 %182, %struct.retro_keybind* %187, i32 %188, i32 %189)
  store i32 %190, i32* %8, align 4
  br label %316

191:                                              ; preds = %151
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %193 = load i32, i32* %10, align 4
  %194 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %195 = load i32, i32* %12, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %194, i64 %196
  %198 = load %struct.retro_keybind*, %struct.retro_keybind** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @RARCH_LIGHTGUN_AUX_B, align 4
  %201 = call i32 @udev_is_pressed(%struct.TYPE_8__* %192, i32 %193, %struct.retro_keybind* %198, i32 %199, i32 %200)
  store i32 %201, i32* %8, align 4
  br label %316

202:                                              ; preds = %151
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %206 = load i32, i32* %12, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %205, i64 %207
  %209 = load %struct.retro_keybind*, %struct.retro_keybind** %208, align 8
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* @RARCH_LIGHTGUN_AUX_C, align 4
  %212 = call i32 @udev_is_pressed(%struct.TYPE_8__* %203, i32 %204, %struct.retro_keybind* %209, i32 %210, i32 %211)
  store i32 %212, i32* %8, align 4
  br label %316

213:                                              ; preds = %151
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %215 = load i32, i32* %10, align 4
  %216 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %217 = load i32, i32* %12, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %216, i64 %218
  %220 = load %struct.retro_keybind*, %struct.retro_keybind** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @RARCH_LIGHTGUN_START, align 4
  %223 = call i32 @udev_is_pressed(%struct.TYPE_8__* %214, i32 %215, %struct.retro_keybind* %220, i32 %221, i32 %222)
  store i32 %223, i32* %8, align 4
  br label %316

224:                                              ; preds = %151
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %228 = load i32, i32* %12, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %227, i64 %229
  %231 = load %struct.retro_keybind*, %struct.retro_keybind** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @RARCH_LIGHTGUN_SELECT, align 4
  %234 = call i32 @udev_is_pressed(%struct.TYPE_8__* %225, i32 %226, %struct.retro_keybind* %231, i32 %232, i32 %233)
  store i32 %234, i32* %8, align 4
  br label %316

235:                                              ; preds = %151
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %239 = load i32, i32* %12, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %238, i64 %240
  %242 = load %struct.retro_keybind*, %struct.retro_keybind** %241, align 8
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* @RARCH_LIGHTGUN_DPAD_UP, align 4
  %245 = call i32 @udev_is_pressed(%struct.TYPE_8__* %236, i32 %237, %struct.retro_keybind* %242, i32 %243, i32 %244)
  store i32 %245, i32* %8, align 4
  br label %316

246:                                              ; preds = %151
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %250 = load i32, i32* %12, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %249, i64 %251
  %253 = load %struct.retro_keybind*, %struct.retro_keybind** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* @RARCH_LIGHTGUN_DPAD_DOWN, align 4
  %256 = call i32 @udev_is_pressed(%struct.TYPE_8__* %247, i32 %248, %struct.retro_keybind* %253, i32 %254, i32 %255)
  store i32 %256, i32* %8, align 4
  br label %316

257:                                              ; preds = %151
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %259 = load i32, i32* %10, align 4
  %260 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %261 = load i32, i32* %12, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %260, i64 %262
  %264 = load %struct.retro_keybind*, %struct.retro_keybind** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* @RARCH_LIGHTGUN_DPAD_LEFT, align 4
  %267 = call i32 @udev_is_pressed(%struct.TYPE_8__* %258, i32 %259, %struct.retro_keybind* %264, i32 %265, i32 %266)
  store i32 %267, i32* %8, align 4
  br label %316

268:                                              ; preds = %151
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %272 = load i32, i32* %12, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %271, i64 %273
  %275 = load %struct.retro_keybind*, %struct.retro_keybind** %274, align 8
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* @RARCH_LIGHTGUN_DPAD_RIGHT, align 4
  %278 = call i32 @udev_is_pressed(%struct.TYPE_8__* %269, i32 %270, %struct.retro_keybind* %275, i32 %276, i32 %277)
  store i32 %278, i32* %8, align 4
  br label %316

279:                                              ; preds = %151
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %281 = load i32, i32* %12, align 4
  %282 = call i32* @udev_get_mouse(%struct.TYPE_8__* %280, i32 %281)
  store i32* %282, i32** %20, align 8
  %283 = load i32*, i32** %20, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %279
  %286 = load i32*, i32** %20, align 8
  %287 = call i32 @udev_mouse_get_x(i32* %286)
  br label %289

288:                                              ; preds = %279
  br label %289

289:                                              ; preds = %288, %285
  %290 = phi i32 [ %287, %285 ], [ 0, %288 ]
  store i32 %290, i32* %8, align 4
  br label %316

291:                                              ; preds = %151
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %293 = load i32, i32* %12, align 4
  %294 = call i32* @udev_get_mouse(%struct.TYPE_8__* %292, i32 %293)
  store i32* %294, i32** %21, align 8
  %295 = load i32*, i32** %21, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %291
  %298 = load i32*, i32** %21, align 8
  %299 = call i32 @udev_mouse_get_y(i32* %298)
  br label %301

300:                                              ; preds = %291
  br label %301

301:                                              ; preds = %300, %297
  %302 = phi i32 [ %299, %297 ], [ 0, %300 ]
  store i32 %302, i32* %8, align 4
  br label %316

303:                                              ; preds = %151
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %305 = load i32, i32* %10, align 4
  %306 = load %struct.retro_keybind**, %struct.retro_keybind*** %11, align 8
  %307 = load i32, i32* %12, align 4
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %306, i64 %308
  %310 = load %struct.retro_keybind*, %struct.retro_keybind** %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = load i32, i32* @RARCH_LIGHTGUN_START, align 4
  %313 = call i32 @udev_is_pressed(%struct.TYPE_8__* %304, i32 %305, %struct.retro_keybind* %310, i32 %311, i32 %312)
  store i32 %313, i32* %8, align 4
  br label %316

314:                                              ; preds = %151
  br label %315

315:                                              ; preds = %7, %314, %150, %141, %76
  store i32 0, i32* %8, align 4
  br label %316

316:                                              ; preds = %315, %303, %301, %289, %268, %257, %246, %235, %224, %213, %202, %191, %180, %169, %158, %153, %145, %136, %128, %123, %120, %109, %73, %55
  %317 = load i32, i32* %8, align 4
  ret i32 %317
}

declare dso_local i32 @udev_is_pressed(%struct.TYPE_8__*, i32, %struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @udev_analog_pressed(%struct.retro_keybind*, i32, i32) #1

declare dso_local i32 @input_joypad_analog(i32, i32, i32, i32, i32, %struct.retro_keybind*) #1

declare dso_local i32 @udev_keyboard_pressed(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @udev_mouse_state(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @udev_pointer_state(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @udev_lightgun_aiming_state(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32* @udev_get_mouse(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @udev_mouse_get_x(i32*) #1

declare dso_local i32 @udev_mouse_get_y(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
