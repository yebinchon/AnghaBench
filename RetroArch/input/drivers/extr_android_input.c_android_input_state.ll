; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_keybind = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { float, i32, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@RETRO_DEVICE_ID_JOYPAD_MASK = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@android_key_state = common dso_local global i32* null, align 8
@ANDROID_KEYBOARD_PORT = common dso_local global i64 0, align 8
@rarch_keysym_lut = common dso_local global i32* null, align 8
@input_autoconf_binds = common dso_local global %struct.retro_keybind** null, align 8
@RARCH_MENU_TOGGLE = common dso_local global i64 0, align 8
@AKEYCODE_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.TYPE_10__*, %struct.retro_keybind**, i32, i32, i32, i32)* @android_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_input_state(i8* %0, i64 %1, %struct.TYPE_10__* %2, %struct.retro_keybind** %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.retro_keybind**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.retro_keybind*, align 8
  %25 = alloca %struct.retro_keybind*, align 8
  %26 = bitcast %struct.TYPE_12__* %10 to { i64, %struct.TYPE_10__* }*
  %27 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %26, i32 0, i32 0
  store i64 %1, i64* %27, align 8
  %28 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %26, i32 0, i32 1
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %28, align 8
  store i8* %0, i8** %11, align 8
  store %struct.retro_keybind** %3, %struct.retro_keybind*** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %17, align 8
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %468 [
    i32 132, label %32
    i32 137, label %279
    i32 131, label %305
    i32 129, label %324
    i32 130, label %328
    i32 128, label %332
    i32 138, label %400
  ]

32:                                               ; preds = %8
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_MASK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %168

36:                                               ; preds = %32
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %37

37:                                               ; preds = %163, %36
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %166

41:                                               ; preds = %37
  %42 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %42, i64 %44
  %46 = load %struct.retro_keybind*, %struct.retro_keybind** %45, align 8
  %47 = load i32, i32* %18, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %46, i64 %48
  %50 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NO_BTN, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %41
  %55 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %55, i64 %57
  %59 = load %struct.retro_keybind*, %struct.retro_keybind** %58, align 8
  %60 = load i32, i32* %18, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %59, i64 %61
  %63 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  br label %73

65:                                               ; preds = %41
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* %18, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  br label %73

73:                                               ; preds = %65, %54
  %74 = phi i32 [ %64, %54 ], [ %72, %65 ]
  store i32 %74, i32* %20, align 4
  %75 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %75, i64 %77
  %79 = load %struct.retro_keybind*, %struct.retro_keybind** %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %79, i64 %81
  %83 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AXIS_NONE, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %73
  %88 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %88, i64 %90
  %92 = load %struct.retro_keybind*, %struct.retro_keybind** %91, align 8
  %93 = load i32, i32* %18, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %92, i64 %94
  %96 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  br label %106

98:                                               ; preds = %73
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = load i32, i32* %18, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  br label %106

106:                                              ; preds = %98, %87
  %107 = phi i32 [ %97, %87 ], [ %105, %98 ]
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* @NO_BTN, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %106
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32 (i32, i32)*, i32 (i32, i32)** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %20, align 4
  %120 = call i32 %116(i32 %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %111
  %123 = load i32, i32* %18, align 4
  %124 = shl i32 1, %123
  %125 = load i32, i32* %19, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %19, align 4
  br label %163

127:                                              ; preds = %111, %106
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32 (i32, i32)*, i32 (i32, i32)** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %21, align 4
  %136 = call i32 %132(i32 %134, i32 %135)
  %137 = call i64 @abs(i32 %136)
  %138 = sitofp i64 %137 to float
  %139 = fdiv float %138, 3.276800e+04
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %141 = load float, float* %140, align 8
  %142 = fcmp ogt float %139, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %127
  %144 = load i32, i32* %18, align 4
  %145 = shl i32 1, %144
  %146 = load i32, i32* %19, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %19, align 4
  br label %163

148:                                              ; preds = %127
  %149 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %150 = load i32, i32* %13, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %149, i64 %151
  %153 = load %struct.retro_keybind*, %struct.retro_keybind** %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = call i32 @android_keyboard_port_input_pressed(%struct.retro_keybind* %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load i32, i32* %18, align 4
  %159 = shl i32 1, %158
  %160 = load i32, i32* %19, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %19, align 4
  br label %162

162:                                              ; preds = %157, %148
  br label %163

163:                                              ; preds = %162, %143, %122
  %164 = load i32, i32* %18, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %18, align 4
  br label %37

166:                                              ; preds = %37
  %167 = load i32, i32* %19, align 4
  store i32 %167, i32* %9, align 4
  br label %469

168:                                              ; preds = %32
  %169 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %170 = load i32, i32* %13, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %169, i64 %171
  %173 = load %struct.retro_keybind*, %struct.retro_keybind** %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %173, i64 %175
  %177 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @NO_BTN, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %168
  %182 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %183 = load i32, i32* %13, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %182, i64 %184
  %186 = load %struct.retro_keybind*, %struct.retro_keybind** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %186, i64 %188
  %190 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  br label %200

192:                                              ; preds = %168
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  br label %200

200:                                              ; preds = %192, %181
  %201 = phi i32 [ %191, %181 ], [ %199, %192 ]
  store i32 %201, i32* %22, align 4
  %202 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %203 = load i32, i32* %13, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %202, i64 %204
  %206 = load %struct.retro_keybind*, %struct.retro_keybind** %205, align 8
  %207 = load i32, i32* %16, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %206, i64 %208
  %210 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @AXIS_NONE, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %200
  %215 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %216 = load i32, i32* %13, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %215, i64 %217
  %219 = load %struct.retro_keybind*, %struct.retro_keybind** %218, align 8
  %220 = load i32, i32* %16, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %219, i64 %221
  %223 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  br label %233

225:                                              ; preds = %200
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = load i32, i32* %16, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  br label %233

233:                                              ; preds = %225, %214
  %234 = phi i32 [ %224, %214 ], [ %232, %225 ]
  store i32 %234, i32* %23, align 4
  %235 = load i32, i32* %22, align 4
  %236 = load i32, i32* @NO_BTN, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %250

238:                                              ; preds = %233
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 1
  %243 = load i32 (i32, i32)*, i32 (i32, i32)** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %22, align 4
  %247 = call i32 %243(i32 %245, i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  store i32 1, i32* %9, align 4
  br label %469

250:                                              ; preds = %238, %233
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i32 (i32, i32)*, i32 (i32, i32)** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %23, align 4
  %259 = call i32 %255(i32 %257, i32 %258)
  %260 = call i64 @abs(i32 %259)
  %261 = sitofp i64 %260 to float
  %262 = fdiv float %261, 3.276800e+04
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %264 = load float, float* %263, align 8
  %265 = fcmp ogt float %262, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %250
  store i32 1, i32* %9, align 4
  br label %469

267:                                              ; preds = %250
  %268 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %269 = load i32, i32* %13, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %268, i64 %270
  %272 = load %struct.retro_keybind*, %struct.retro_keybind** %271, align 8
  %273 = load i32, i32* %16, align 4
  %274 = call i32 @android_keyboard_port_input_pressed(%struct.retro_keybind* %272, i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %267
  store i32 1, i32* %9, align 4
  br label %469

277:                                              ; preds = %267
  br label %278

278:                                              ; preds = %277
  br label %468

279:                                              ; preds = %8
  %280 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %281 = load i32, i32* %13, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %280, i64 %282
  %284 = load %struct.retro_keybind*, %struct.retro_keybind** %283, align 8
  %285 = icmp ne %struct.retro_keybind* %284, null
  br i1 %285, label %286, label %304

286:                                              ; preds = %279
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %288, align 8
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %16, align 4
  %293 = load %struct.retro_keybind**, %struct.retro_keybind*** %12, align 8
  %294 = load i32, i32* %13, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %293, i64 %295
  %297 = load %struct.retro_keybind*, %struct.retro_keybind** %296, align 8
  %298 = bitcast %struct.TYPE_12__* %10 to { i64, %struct.TYPE_10__* }*
  %299 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds { i64, %struct.TYPE_10__* }, { i64, %struct.TYPE_10__* }* %298, i32 0, i32 1
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %301, align 8
  %303 = call i32 @input_joypad_analog(%struct.TYPE_14__* %289, i64 %300, %struct.TYPE_10__* %302, i32 %290, i32 %291, i32 %292, %struct.retro_keybind* %297)
  store i32 %303, i32* %9, align 4
  br label %469

304:                                              ; preds = %279
  br label %468

305:                                              ; preds = %8
  %306 = load i32, i32* %16, align 4
  %307 = load i32, i32* @RETROK_LAST, align 4
  %308 = icmp ult i32 %306, %307
  br i1 %308, label %309, label %321

309:                                              ; preds = %305
  %310 = load i32*, i32** @android_key_state, align 8
  %311 = load i64, i64* @ANDROID_KEYBOARD_PORT, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** @rarch_keysym_lut, align 8
  %315 = load i32, i32* %16, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @BIT_GET(i32 %313, i32 %318)
  %320 = icmp ne i32 %319, 0
  br label %321

321:                                              ; preds = %309, %305
  %322 = phi i1 [ false, %305 ], [ %320, %309 ]
  %323 = zext i1 %322 to i32
  store i32 %323, i32* %9, align 4
  br label %469

324:                                              ; preds = %8
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %326 = load i32, i32* %16, align 4
  %327 = call i32 @android_mouse_state(%struct.TYPE_13__* %325, i32 %326)
  store i32 %327, i32* %9, align 4
  br label %469

328:                                              ; preds = %8
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %330 = load i32, i32* %16, align 4
  %331 = call i32 @android_lightgun_device_state(%struct.TYPE_13__* %329, i32 %330)
  store i32 %331, i32* %9, align 4
  br label %469

332:                                              ; preds = %8
  %333 = load i32, i32* %16, align 4
  switch i32 %333, label %399 [
    i32 134, label %334
    i32 133, label %343
    i32 135, label %352
    i32 136, label %381
    i32 139, label %385
  ]

334:                                              ; preds = %332
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  store i32 %342, i32* %9, align 4
  br label %469

343:                                              ; preds = %332
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 1
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %345, align 8
  %347 = load i32, i32* %15, align 4
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %9, align 4
  br label %469

352:                                              ; preds = %332
  %353 = load i32, i32* %15, align 4
  %354 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp ult i32 %353, %356
  br i1 %357, label %358, label %378

358:                                              ; preds = %352
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 1
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** %360, align 8
  %362 = load i32, i32* %15, align 4
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, -32768
  br i1 %367, label %368, label %378

368:                                              ; preds = %358
  %369 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %370, align 8
  %372 = load i32, i32* %15, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, -32768
  br label %378

378:                                              ; preds = %368, %358, %352
  %379 = phi i1 [ false, %358 ], [ false, %352 ], [ %377, %368 ]
  %380 = zext i1 %379 to i32
  store i32 %380, i32* %9, align 4
  br label %469

381:                                              ; preds = %332
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  store i32 %384, i32* %9, align 4
  br label %469

385:                                              ; preds = %332
  %386 = load %struct.retro_keybind**, %struct.retro_keybind*** @input_autoconf_binds, align 8
  %387 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %386, i64 0
  %388 = load %struct.retro_keybind*, %struct.retro_keybind** %387, align 8
  %389 = load i64, i64* @RARCH_MENU_TOGGLE, align 8
  %390 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %388, i64 %389
  store %struct.retro_keybind* %390, %struct.retro_keybind** %24, align 8
  %391 = load %struct.retro_keybind*, %struct.retro_keybind** %24, align 8
  %392 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %385
  %396 = load i32, i32* @AKEYCODE_BACK, align 4
  %397 = call i32 @android_keyboard_input_pressed(i32 %396)
  store i32 %397, i32* %9, align 4
  br label %469

398:                                              ; preds = %385
  br label %399

399:                                              ; preds = %398, %332
  br label %468

400:                                              ; preds = %8
  %401 = load i32, i32* %16, align 4
  switch i32 %401, label %467 [
    i32 134, label %402
    i32 133, label %411
    i32 135, label %420
    i32 136, label %449
    i32 139, label %453
  ]

402:                                              ; preds = %400
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 1
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %404, align 8
  %406 = load i32, i32* %15, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 4
  store i32 %410, i32* %9, align 4
  br label %469

411:                                              ; preds = %400
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 1
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %413, align 8
  %415 = load i32, i32* %15, align 4
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  store i32 %419, i32* %9, align 4
  br label %469

420:                                              ; preds = %400
  %421 = load i32, i32* %15, align 4
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = icmp ult i32 %421, %424
  br i1 %425, label %426, label %446

426:                                              ; preds = %420
  %427 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 1
  %429 = load %struct.TYPE_11__*, %struct.TYPE_11__** %428, align 8
  %430 = load i32, i32* %15, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %429, i64 %431
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = icmp ne i32 %434, -32768
  br i1 %435, label %436, label %446

436:                                              ; preds = %426
  %437 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %438 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %437, i32 0, i32 1
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %438, align 8
  %440 = load i32, i32* %15, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, -32768
  br label %446

446:                                              ; preds = %436, %426, %420
  %447 = phi i1 [ false, %426 ], [ false, %420 ], [ %445, %436 ]
  %448 = zext i1 %447 to i32
  store i32 %448, i32* %9, align 4
  br label %469

449:                                              ; preds = %400
  %450 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %451 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  store i32 %452, i32* %9, align 4
  br label %469

453:                                              ; preds = %400
  %454 = load %struct.retro_keybind**, %struct.retro_keybind*** @input_autoconf_binds, align 8
  %455 = getelementptr inbounds %struct.retro_keybind*, %struct.retro_keybind** %454, i64 0
  %456 = load %struct.retro_keybind*, %struct.retro_keybind** %455, align 8
  %457 = load i64, i64* @RARCH_MENU_TOGGLE, align 8
  %458 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %456, i64 %457
  store %struct.retro_keybind* %458, %struct.retro_keybind** %25, align 8
  %459 = load %struct.retro_keybind*, %struct.retro_keybind** %25, align 8
  %460 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %453
  %464 = load i32, i32* @AKEYCODE_BACK, align 4
  %465 = call i32 @android_keyboard_input_pressed(i32 %464)
  store i32 %465, i32* %9, align 4
  br label %469

466:                                              ; preds = %453
  br label %467

467:                                              ; preds = %466, %400
  br label %468

468:                                              ; preds = %8, %467, %399, %304, %278
  store i32 0, i32* %9, align 4
  br label %469

469:                                              ; preds = %468, %463, %449, %446, %411, %402, %395, %381, %378, %343, %334, %328, %324, %321, %286, %276, %266, %249, %166
  %470 = load i32, i32* %9, align 4
  ret i32 %470
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @android_keyboard_port_input_pressed(%struct.retro_keybind*, i32) #1

declare dso_local i32 @input_joypad_analog(%struct.TYPE_14__*, i64, %struct.TYPE_10__*, i32, i32, i32, %struct.retro_keybind*) #1

declare dso_local i32 @BIT_GET(i32, i32) #1

declare dso_local i32 @android_mouse_state(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @android_lightgun_device_state(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @android_keyboard_input_pressed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
