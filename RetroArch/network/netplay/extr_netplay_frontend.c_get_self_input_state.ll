; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_get_self_input_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_get_self_input_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32*, i64, i64, i32, i64, %struct.netplay_connection*, i32, i64*, i32*, %struct.TYPE_10__, %struct.delta_frame* }
%struct.netplay_connection = type { i64, i64 }
%struct.TYPE_10__ = type { i32 (i32, i32, i32, i32)* }
%struct.delta_frame = type { i32, i32*, i32* }
%struct.TYPE_12__ = type { i32*, i32 }

@MAX_INPUT_DEVICES = common dso_local global i32 0, align 4
@RETRO_DEVICE_MASK = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_SLAVE = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i64 0, align 8
@RETRO_DEVICE_ID_JOYPAD_R3 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_MOUSE_HORIZ_WHEELDOWN = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_LIGHTGUN_START = common dso_local global i32 0, align 4
@NETPLAY_KEY_LAST = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_PLAYING = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @get_self_input_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_self_input_state(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.delta_frame*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32 (i32, i32, i32, i32)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 12
  %27 = load %struct.delta_frame*, %struct.delta_frame** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %27, i64 %30
  store %struct.delta_frame* %31, %struct.delta_frame** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store i32 0, i32* %8, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @netplay_delta_frame_ready(%struct.TYPE_11__* %32, %struct.delta_frame* %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %395

40:                                               ; preds = %1
  %41 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %42 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %395

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %307, %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %310

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %307

61:                                               ; preds = %54
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RETRO_DEVICE_MASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %96, %61
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %11, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %96

82:                                               ; preds = %75
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @RETRO_DEVICE_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  br label %99

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %81
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %71

99:                                               ; preds = %94, %71
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @MAX_INPUT_DEVICES, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %99
  %105 = load i32, i32* %11, align 4
  %106 = shl i32 1, %105
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %110 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NETPLAY_CONNECTION_SLAVE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %104
  %121 = load i64, i64* @MAX_CLIENTS, align 8
  br label %126

122:                                              ; preds = %104
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  br label %126

126:                                              ; preds = %122, %120
  %127 = phi i64 [ %121, %120 ], [ %125, %122 ]
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = load i32, i32* %9, align 4
  %130 = shl i32 1, %129
  %131 = call i32 @netplay_expected_input_size(%struct.TYPE_11__* %128, i32 %130)
  %132 = call %struct.TYPE_12__* @netplay_input_state_for(i32* %114, i64 %127, i32 %131, i32 1, i32 0)
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %6, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = icmp ne %struct.TYPE_12__* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  br label %307

136:                                              ; preds = %126
  %137 = call i32 (...) @input_driver_is_libretro_input_blocked()
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %306, label %139

139:                                              ; preds = %136
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 8
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %306

144:                                              ; preds = %139
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  store i32* %147, i32** %12, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 11
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %150, align 8
  store i32 (i32, i32, i32, i32)* %151, i32 (i32, i32, i32, i32)** %13, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @RETRO_DEVICE_MASK, align 4
  %160 = and i32 %158, %159
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  switch i32 %161, label %305 [
    i32 132, label %162
    i32 131, label %188
    i32 128, label %214
    i32 129, label %214
    i32 130, label %262
  ]

162:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %184, %162
  %164 = load i32, i32* %4, align 4
  %165 = icmp ult i32 %164, 2
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %13, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 %167(i32 %168, i32 132, i32 %169, i32 0)
  store i32 %170, i32* %15, align 4
  %171 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %13, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i32 %171(i32 %172, i32 132, i32 %173, i32 1)
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %16, align 4
  %177 = shl i32 %176, 16
  %178 = or i32 %175, %177
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %4, align 4
  %181 = add i32 1, %180
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 %178, i32* %183, align 4
  br label %184

184:                                              ; preds = %166
  %185 = load i32, i32* %4, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %163

187:                                              ; preds = %163
  br label %188

188:                                              ; preds = %144, %187
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %210, %188
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R3, align 4
  %192 = icmp ule i32 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %189
  %194 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %13, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %4, align 4
  %197 = call i32 %194(i32 %195, i32 131, i32 0, i32 %196)
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %17, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i32, i32* %4, align 4
  %202 = shl i32 1, %201
  br label %204

203:                                              ; preds = %193
  br label %204

204:                                              ; preds = %203, %200
  %205 = phi i32 [ %202, %200 ], [ 0, %203 ]
  %206 = load i32*, i32** %12, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %204
  %211 = load i32, i32* %4, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %4, align 4
  br label %189

213:                                              ; preds = %189
  br label %305

214:                                              ; preds = %144, %144
  %215 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %13, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %14, align 4
  %218 = call i32 %215(i32 %216, i32 %217, i32 0, i32 0)
  store i32 %218, i32* %18, align 4
  %219 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %13, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %14, align 4
  %222 = call i32 %219(i32 %220, i32 %221, i32 0, i32 1)
  store i32 %222, i32* %19, align 4
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* %19, align 4
  %225 = shl i32 %224, 16
  %226 = or i32 %223, %225
  %227 = load i32*, i32** %12, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  store i32 %226, i32* %228, align 4
  store i32 2, i32* %4, align 4
  br label %229

229:                                              ; preds = %258, %214
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* %14, align 4
  %232 = icmp eq i32 %231, 128
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i32, i32* @RETRO_DEVICE_ID_MOUSE_HORIZ_WHEELDOWN, align 4
  br label %237

235:                                              ; preds = %229
  %236 = load i32, i32* @RETRO_DEVICE_ID_LIGHTGUN_START, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  %239 = icmp ule i32 %230, %238
  br i1 %239, label %240, label %261

240:                                              ; preds = %237
  %241 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %13, align 8
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %4, align 4
  %245 = call i32 %241(i32 %242, i32 %243, i32 0, i32 %244)
  store i32 %245, i32* %20, align 4
  %246 = load i32, i32* %20, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %240
  %249 = load i32, i32* %4, align 4
  %250 = shl i32 1, %249
  br label %252

251:                                              ; preds = %240
  br label %252

252:                                              ; preds = %251, %248
  %253 = phi i32 [ %250, %248 ], [ 0, %251 ]
  %254 = load i32*, i32** %12, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %252
  %259 = load i32, i32* %4, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %4, align 4
  br label %229

261:                                              ; preds = %237
  br label %305

262:                                              ; preds = %144
  store i32 0, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i32 1, i32* %21, align 4
  br label %263

263:                                              ; preds = %301, %262
  %264 = load i32, i32* %21, align 4
  %265 = load i32, i32* @NETPLAY_KEY_LAST, align 4
  %266 = icmp ult i32 %264, %265
  br i1 %266, label %267, label %304

267:                                              ; preds = %263
  %268 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %13, align 8
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* %21, align 4
  %271 = call i32 @netplay_key_ntoh(i32 %270)
  %272 = call i32 %268(i32 %269, i32 130, i32 0, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %267
  %275 = load i32, i32* %23, align 4
  %276 = shl i32 1, %275
  br label %278

277:                                              ; preds = %267
  br label %278

278:                                              ; preds = %277, %274
  %279 = phi i32 [ %276, %274 ], [ 0, %277 ]
  %280 = load i32*, i32** %12, align 8
  %281 = load i32, i32* %22, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %279
  store i32 %285, i32* %283, align 4
  %286 = load i32, i32* %23, align 4
  %287 = add i32 %286, 1
  store i32 %287, i32* %23, align 4
  %288 = load i32, i32* %23, align 4
  %289 = icmp uge i32 %288, 32
  br i1 %289, label %290, label %300

290:                                              ; preds = %278
  store i32 0, i32* %23, align 4
  %291 = load i32, i32* %22, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %22, align 4
  %293 = load i32, i32* %22, align 4
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = icmp uge i32 %293, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %290
  br label %304

299:                                              ; preds = %290
  br label %300

300:                                              ; preds = %299, %278
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %21, align 4
  %303 = add i32 %302, 1
  store i32 %303, i32* %21, align 4
  br label %263

304:                                              ; preds = %298, %263
  br label %305

305:                                              ; preds = %144, %304, %261, %213
  br label %306

306:                                              ; preds = %305, %139, %136
  br label %307

307:                                              ; preds = %306, %135, %60
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %9, align 4
  br label %50

310:                                              ; preds = %50
  %311 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %312 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %311, i32 0, i32 0
  store i32 1, i32* %312, align 8
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %349

318:                                              ; preds = %310
  %319 = load %struct.delta_frame*, %struct.delta_frame** %5, align 8
  %320 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i32 0, i32 4
  %324 = load i64, i64* %323, align 8
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  store i32 1, i32* %325, align 4
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @NEXT_PTR(i64 %328)
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 10
  %332 = load i32*, i32** %331, align 8
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 4
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  store i32 %329, i32* %336, align 4
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 8
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 9
  %344 = load i64*, i64** %343, align 8
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = getelementptr inbounds i64, i64* %344, i64 %347
  store i64 %341, i64* %348, align 8
  br label %349

349:                                              ; preds = %318, %310
  store i32 0, i32* %4, align 4
  br label %350

350:                                              ; preds = %383, %349
  %351 = load i32, i32* %4, align 4
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = icmp ult i32 %351, %354
  br i1 %355, label %356, label %386

356:                                              ; preds = %350
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 7
  %359 = load %struct.netplay_connection*, %struct.netplay_connection** %358, align 8
  %360 = load i32, i32* %4, align 4
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %359, i64 %361
  store %struct.netplay_connection* %362, %struct.netplay_connection** %24, align 8
  %363 = load %struct.netplay_connection*, %struct.netplay_connection** %24, align 8
  %364 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %382

367:                                              ; preds = %356
  %368 = load %struct.netplay_connection*, %struct.netplay_connection** %24, align 8
  %369 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %372 = icmp sge i64 %370, %371
  br i1 %372, label %373, label %382

373:                                              ; preds = %367
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 7
  %377 = load %struct.netplay_connection*, %struct.netplay_connection** %376, align 8
  %378 = load i32, i32* %4, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %377, i64 %379
  %381 = call i32 @netplay_send_cur_input(%struct.TYPE_11__* %374, %struct.netplay_connection* %380)
  br label %382

382:                                              ; preds = %373, %367, %356
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %4, align 4
  %385 = add i32 %384, 1
  store i32 %385, i32* %4, align 4
  br label %350

386:                                              ; preds = %350
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 6
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %386
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %393 = call i32 @netplay_delayed_state_change(%struct.TYPE_11__* %392)
  br label %394

394:                                              ; preds = %391, %386
  store i32 1, i32* %2, align 4
  br label %395

395:                                              ; preds = %394, %45, %39
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local i32 @netplay_delta_frame_ready(%struct.TYPE_11__*, %struct.delta_frame*, i32) #1

declare dso_local %struct.TYPE_12__* @netplay_input_state_for(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @netplay_expected_input_size(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @input_driver_is_libretro_input_blocked(...) #1

declare dso_local i32 @netplay_key_ntoh(i32) #1

declare dso_local i32 @NEXT_PTR(i64) #1

declare dso_local i32 @netplay_send_cur_input(%struct.TYPE_11__*, %struct.netplay_connection*) #1

declare dso_local i32 @netplay_delayed_state_change(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
