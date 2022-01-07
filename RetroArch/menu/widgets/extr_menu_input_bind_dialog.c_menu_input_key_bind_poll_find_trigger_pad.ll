; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_find_trigger_pad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_find_trigger_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_bind_state = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32*, i64* }
%struct.retro_keybind = type { i32, i32, i8* }
%struct.menu_bind_state_port = type { i64*, i32*, i64*, i64* }

@MENU_MAX_MBUTTONS = common dso_local global i32 0, align 4
@MENU_MAX_BUTTONS = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i8* null, align 8
@MENU_MAX_AXES = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@MENU_MAX_HATS = common dso_local global i32 0, align 4
@HAT_UP_MASK = common dso_local global i32 0, align 4
@HAT_DOWN_MASK = common dso_local global i32 0, align 4
@HAT_LEFT_MASK = common dso_local global i32 0, align 4
@HAT_RIGHT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu_bind_state*, %struct.menu_bind_state*, %struct.retro_keybind*, i32)* @menu_input_key_bind_poll_find_trigger_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_input_key_bind_poll_find_trigger_pad(%struct.menu_bind_state* %0, %struct.menu_bind_state* %1, %struct.retro_keybind* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.menu_bind_state*, align 8
  %7 = alloca %struct.menu_bind_state*, align 8
  %8 = alloca %struct.retro_keybind*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.menu_bind_state_port*, align 8
  %14 = alloca %struct.menu_bind_state_port*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.menu_bind_state* %0, %struct.menu_bind_state** %6, align 8
  store %struct.menu_bind_state* %1, %struct.menu_bind_state** %7, align 8
  store %struct.retro_keybind* %2, %struct.retro_keybind** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.menu_bind_state*, %struct.menu_bind_state** %7, align 8
  %22 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = bitcast i32* %26 to %struct.menu_bind_state_port*
  store %struct.menu_bind_state_port* %27, %struct.menu_bind_state_port** %13, align 8
  %28 = load %struct.menu_bind_state*, %struct.menu_bind_state** %6, align 8
  %29 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = bitcast i32* %33 to %struct.menu_bind_state_port*
  store %struct.menu_bind_state_port* %34, %struct.menu_bind_state_port** %14, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %71, %4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MENU_MAX_MBUTTONS, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %35
  %40 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %13, align 8
  %41 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %14, align 8
  %50 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %48, %39
  %59 = phi i1 [ false, %39 ], [ %57, %48 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  switch i32 %65, label %70 [
    i32 132, label %66
    i32 130, label %66
    i32 131, label %66
    i32 136, label %66
    i32 135, label %66
    i32 128, label %66
    i32 129, label %66
    i32 133, label %66
    i32 134, label %66
  ]

66:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %69 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  store i32 1, i32* %5, align 4
  br label %309

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %35

74:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %111, %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @MENU_MAX_BUTTONS, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %75
  %80 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %13, align 8
  %81 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %79
  %89 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %14, align 8
  %90 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %88, %79
  %99 = phi i1 [ false, %79 ], [ %97, %88 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %111

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %107 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i8*, i8** @AXIS_NONE, align 8
  %109 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %110 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  store i32 1, i32* %5, align 4
  br label %309

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %75

114:                                              ; preds = %75
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %237, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @MENU_MAX_AXES, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %240

119:                                              ; preds = %115
  %120 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %13, align 8
  %121 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.menu_bind_state*, %struct.menu_bind_state** %7, align 8
  %128 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %126, %139
  %141 = call i32 @abs(i64 %140)
  store i32 %141, i32* %17, align 4
  %142 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %13, align 8
  %143 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.menu_bind_state*, %struct.menu_bind_state** %7, align 8
  %150 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %148, %160
  %162 = call i32 @abs(i64 %161)
  store i32 %162, i32* %18, align 4
  %163 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %13, align 8
  %164 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %10, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @abs(i64 %169)
  %171 = icmp sge i32 %170, 20000
  br i1 %171, label %172, label %221

172:                                              ; preds = %119
  %173 = load i32, i32* %17, align 4
  %174 = icmp sge i32 %173, 20000
  br i1 %174, label %175, label %221

175:                                              ; preds = %172
  %176 = load i32, i32* %18, align 4
  %177 = icmp sge i32 %176, 20000
  br i1 %177, label %178, label %221

178:                                              ; preds = %175
  %179 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %13, align 8
  %180 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %178
  %188 = load i32, i32* %10, align 4
  %189 = call i8* @AXIS_POS(i32 %188)
  br label %193

190:                                              ; preds = %178
  %191 = load i32, i32* %10, align 4
  %192 = call i8* @AXIS_NEG(i32 %191)
  br label %193

193:                                              ; preds = %190, %187
  %194 = phi i8* [ %189, %187 ], [ %192, %190 ]
  %195 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %196 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load i32, i32* @NO_BTN, align 4
  %198 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %199 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %13, align 8
  %201 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp sgt i64 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 32767, i32 -32767
  %210 = load %struct.menu_bind_state*, %struct.menu_bind_state** %7, align 8
  %211 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %209, i32* %220, align 4
  store i32 1, i32* %5, align 4
  br label %309

221:                                              ; preds = %175, %172, %119
  %222 = load i32, i32* %17, align 4
  %223 = icmp sge i32 %222, 20000
  br i1 %223, label %224, label %236

224:                                              ; preds = %221
  %225 = load %struct.menu_bind_state*, %struct.menu_bind_state** %7, align 8
  %226 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %225, i32 0, i32 0
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 0, i32* %235, align 4
  br label %236

236:                                              ; preds = %224, %221
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %10, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %115

240:                                              ; preds = %115
  store i32 0, i32* %12, align 4
  br label %241

241:                                              ; preds = %305, %240
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* @MENU_MAX_HATS, align 4
  %244 = icmp ult i32 %242, %243
  br i1 %244, label %245, label %308

245:                                              ; preds = %241
  %246 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %13, align 8
  %247 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %12, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %14, align 8
  %254 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = xor i32 %259, -1
  %261 = and i32 %252, %260
  store i32 %261, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* @HAT_UP_MASK, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %245
  %267 = load i32, i32* @HAT_UP_MASK, align 4
  store i32 %267, i32* %20, align 4
  br label %292

268:                                              ; preds = %245
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* @HAT_DOWN_MASK, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* @HAT_DOWN_MASK, align 4
  store i32 %274, i32* %20, align 4
  br label %291

275:                                              ; preds = %268
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* @HAT_LEFT_MASK, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = load i32, i32* @HAT_LEFT_MASK, align 4
  store i32 %281, i32* %20, align 4
  br label %290

282:                                              ; preds = %275
  %283 = load i32, i32* %19, align 4
  %284 = load i32, i32* @HAT_RIGHT_MASK, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %282
  %288 = load i32, i32* @HAT_RIGHT_MASK, align 4
  store i32 %288, i32* %20, align 4
  br label %289

289:                                              ; preds = %287, %282
  br label %290

290:                                              ; preds = %289, %280
  br label %291

291:                                              ; preds = %290, %273
  br label %292

292:                                              ; preds = %291, %266
  %293 = load i32, i32* %20, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* %20, align 4
  %298 = call i32 @HAT_MAP(i32 %296, i32 %297)
  %299 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %300 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load i8*, i8** @AXIS_NONE, align 8
  %302 = load %struct.retro_keybind*, %struct.retro_keybind** %8, align 8
  %303 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  store i32 1, i32* %5, align 4
  br label %309

304:                                              ; preds = %292
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %12, align 4
  %307 = add i32 %306, 1
  store i32 %307, i32* %12, align 4
  br label %241

308:                                              ; preds = %241
  store i32 0, i32* %5, align 4
  br label %309

309:                                              ; preds = %308, %295, %193, %104, %66
  %310 = load i32, i32* %5, align 4
  ret i32 %310
}

declare dso_local i32 @abs(i64) #1

declare dso_local i8* @AXIS_POS(i32) #1

declare dso_local i8* @AXIS_NEG(i32) #1

declare dso_local i32 @HAT_MAP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
