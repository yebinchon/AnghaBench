; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_input_state_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_input_state_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32**, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_14__ = type { i32**, i32* }
%struct.TYPE_22__ = type { i32*, i32, i32* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32*, i32 }
%struct.TYPE_18__ = type { i32** }

@configuration_settings = common dso_local global %struct.TYPE_17__* null, align 8
@RARCH_FIRST_META_KEY = common dso_local global i32 0, align 4
@libretro_input_binds = common dso_local global %struct.TYPE_21__** null, align 8
@input_driver_mapper = common dso_local global %struct.TYPE_14__* null, align 8
@RETRO_DEVICE_ID_JOYPAD_UP = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_RIGHT = common dso_local global i32 0, align 4
@input_driver_turbo_btns = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@RETROK_LAST = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_ANALOG_Y = common dso_local global i32 0, align 4
@RETRO_DEVICE_INDEX_ANALOG_RIGHT = common dso_local global i32 0, align 4
@input_driver_remote = common dso_local global i32 0, align 4
@overlay_ptr = common dso_local global %struct.TYPE_20__* null, align 8
@remote_st_ptr = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @input_state_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_state_device(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** @configuration_settings, align 8
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %14, align 8
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %520 [
    i32 132, label %28
    i32 129, label %191
    i32 131, label %239
    i32 130, label %264
    i32 133, label %312
    i32 128, label %472
  ]

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @RARCH_FIRST_META_KEY, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %28
  %33 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %33, i64 %35
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = icmp ne %struct.TYPE_21__* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %40, i64 %42
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %39, %32
  %52 = phi i1 [ false, %32 ], [ %50, %39 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %60, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %97

75:                                               ; preds = %59, %51
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  store i32 0, i32* %13, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %11, align 4
  %84 = shl i32 1, %83
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 1, %88
  %90 = load i32, i32* %13, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %87, %81
  br label %95

93:                                               ; preds = %78
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %93, %92
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %28
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %98
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** @input_driver_mapper, align 8
  %106 = icmp ne %struct.TYPE_14__* %105, null
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** @input_driver_mapper, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @BIT256_GET(i32 %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  store i32 1, i32* %13, align 4
  br label %119

119:                                              ; preds = %118, %107
  br label %120

120:                                              ; preds = %119, %104, %98
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_RIGHT, align 4
  %127 = icmp ugt i32 %125, %126
  br i1 %127, label %128, label %190

128:                                              ; preds = %124, %120
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @input_driver_turbo_btns, i32 0, i32 2), align 8
  %133 = load i32, i32* %8, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %131
  %139 = load i32, i32* %11, align 4
  %140 = shl i32 1, %139
  %141 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @input_driver_turbo_btns, i32 0, i32 0), align 8
  %142 = load i32, i32* %8, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %140
  store i32 %146, i32* %144, align 4
  br label %161

147:                                              ; preds = %131, %128
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %11, align 4
  %152 = shl i32 1, %151
  %153 = xor i32 %152, -1
  %154 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @input_driver_turbo_btns, i32 0, i32 0), align 8
  %155 = load i32, i32* %8, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %153
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %150, %147
  br label %161

161:                                              ; preds = %160, %138
  %162 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @input_driver_turbo_btns, i32 0, i32 0), align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %11, align 4
  %168 = shl i32 1, %167
  %169 = and i32 %166, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %161
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @input_driver_turbo_btns, i32 0, i32 1), align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = srem i32 %175, %179
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %180, %184
  br label %186

186:                                              ; preds = %174, %171
  %187 = phi i1 [ false, %171 ], [ %185, %174 ]
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %13, align 4
  br label %189

189:                                              ; preds = %186, %161
  br label %190

190:                                              ; preds = %189, %124
  br label %520

191:                                              ; preds = %6
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @RARCH_FIRST_META_KEY, align 4
  %194 = icmp ult i32 %192, %193
  br i1 %194, label %195, label %238

195:                                              ; preds = %191
  %196 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %197 = load i32, i32* %8, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %196, i64 %198
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %199, align 8
  %201 = icmp ne %struct.TYPE_21__* %200, null
  br i1 %201, label %202, label %214

202:                                              ; preds = %195
  %203 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %204 = load i32, i32* %8, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %203, i64 %205
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br label %214

214:                                              ; preds = %202, %195
  %215 = phi i1 [ false, %195 ], [ %213, %202 ]
  %216 = zext i1 %215 to i32
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %214
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %219
  store i32 0, i32* %13, align 4
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %11, align 4
  %225 = shl i32 1, %224
  %226 = and i32 %223, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %222
  %229 = load i32, i32* %11, align 4
  %230 = shl i32 1, %229
  %231 = load i32, i32* %13, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %13, align 4
  br label %233

233:                                              ; preds = %228, %222
  br label %236

234:                                              ; preds = %219
  %235 = load i32, i32* %7, align 4
  store i32 %235, i32* %13, align 4
  br label %236

236:                                              ; preds = %234, %233
  br label %237

237:                                              ; preds = %236, %214
  br label %238

238:                                              ; preds = %237, %191
  br label %520

239:                                              ; preds = %6
  %240 = load i32, i32* %7, align 4
  store i32 %240, i32* %13, align 4
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %263

246:                                              ; preds = %239
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** @input_driver_mapper, align 8
  %248 = icmp ne %struct.TYPE_14__* %247, null
  br i1 %248, label %249, label %263

249:                                              ; preds = %246
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* @RETROK_LAST, align 4
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %253, label %262

253:                                              ; preds = %249
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** @input_driver_mapper, align 8
  %255 = load i32, i32* %11, align 4
  %256 = call i32 @MAPPER_GET_KEY(%struct.TYPE_14__* %254, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* %13, align 4
  %260 = or i32 %259, 1
  store i32 %260, i32* %13, align 4
  br label %261

261:                                              ; preds = %258, %253
  br label %262

262:                                              ; preds = %261, %249
  br label %263

263:                                              ; preds = %262, %246, %239
  br label %520

264:                                              ; preds = %6
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @RARCH_FIRST_META_KEY, align 4
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %268, label %311

268:                                              ; preds = %264
  %269 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %270 = load i32, i32* %8, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %269, i64 %271
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %272, align 8
  %274 = icmp ne %struct.TYPE_21__* %273, null
  br i1 %274, label %275, label %287

275:                                              ; preds = %268
  %276 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %277 = load i32, i32* %8, align 4
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %276, i64 %278
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %279, align 8
  %281 = load i32, i32* %11, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br label %287

287:                                              ; preds = %275, %268
  %288 = phi i1 [ false, %268 ], [ %286, %275 ]
  %289 = zext i1 %288 to i32
  store i32 %289, i32* %17, align 4
  %290 = load i32, i32* %17, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %310

292:                                              ; preds = %287
  %293 = load i32, i32* %12, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %292
  store i32 0, i32* %13, align 4
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* %11, align 4
  %298 = shl i32 1, %297
  %299 = and i32 %296, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %295
  %302 = load i32, i32* %11, align 4
  %303 = shl i32 1, %302
  %304 = load i32, i32* %13, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %13, align 4
  br label %306

306:                                              ; preds = %301, %295
  br label %309

307:                                              ; preds = %292
  %308 = load i32, i32* %7, align 4
  store i32 %308, i32* %13, align 4
  br label %309

309:                                              ; preds = %307, %306
  br label %310

310:                                              ; preds = %309, %287
  br label %311

311:                                              ; preds = %310, %264
  br label %520

312:                                              ; preds = %6
  %313 = load i32, i32* %11, align 4
  %314 = load i32, i32* @RARCH_FIRST_META_KEY, align 4
  %315 = icmp ult i32 %313, %314
  br i1 %315, label %316, label %404

316:                                              ; preds = %312
  %317 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %318 = load i32, i32* %8, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %317, i64 %319
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %320, align 8
  %322 = icmp ne %struct.TYPE_21__* %321, null
  br i1 %322, label %323, label %335

323:                                              ; preds = %316
  %324 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %325 = load i32, i32* %8, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %324, i64 %326
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %327, align 8
  %329 = load i32, i32* %11, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %333, 0
  br label %335

335:                                              ; preds = %323, %316
  %336 = phi i1 [ false, %316 ], [ %334, %323 ]
  %337 = zext i1 %336 to i32
  store i32 %337, i32* %18, align 4
  %338 = load i32, i32* %18, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %403

340:                                              ; preds = %335
  store i32 0, i32* %19, align 4
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %396

346:                                              ; preds = %340
  %347 = load i32, i32* %10, align 4
  %348 = icmp ult i32 %347, 2
  br i1 %348, label %349, label %395

349:                                              ; preds = %346
  %350 = load i32, i32* %11, align 4
  %351 = icmp ult i32 %350, 2
  br i1 %351, label %352, label %395

352:                                              ; preds = %349
  %353 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %354 = load i32, i32* %10, align 4
  %355 = mul i32 %354, 4
  %356 = add i32 %353, %355
  %357 = load i32, i32* %11, align 4
  %358 = mul i32 %357, 2
  %359 = add i32 %356, %358
  store i32 %359, i32* %20, align 4
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load i32**, i32*** %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds i32*, i32** %363, i64 %365
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %20, align 4
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %20, align 4
  %373 = icmp ne i32 %371, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %352
  store i32 1, i32* %19, align 4
  br label %394

375:                                              ; preds = %352
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i32 0, i32 0
  %379 = load i32**, i32*** %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds i32*, i32** %379, i64 %381
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %20, align 4
  %385 = add i32 %384, 1
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %20, align 4
  %390 = add i32 %389, 1
  %391 = icmp ne i32 %388, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %375
  store i32 1, i32* %19, align 4
  br label %393

393:                                              ; preds = %392, %375
  br label %394

394:                                              ; preds = %393, %374
  br label %395

395:                                              ; preds = %394, %349, %346
  br label %396

396:                                              ; preds = %395, %340
  %397 = load i32, i32* %19, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %396
  %400 = load i32, i32* %7, align 4
  store i32 %400, i32* %13, align 4
  br label %402

401:                                              ; preds = %396
  store i32 0, i32* %13, align 4
  br label %402

402:                                              ; preds = %401, %399
  br label %403

403:                                              ; preds = %402, %335
  br label %404

404:                                              ; preds = %403, %312
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %471

410:                                              ; preds = %404
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** @input_driver_mapper, align 8
  %412 = icmp ne %struct.TYPE_14__* %411, null
  br i1 %412, label %413, label %471

413:                                              ; preds = %410
  %414 = load i32, i32* %10, align 4
  %415 = icmp ult i32 %414, 2
  br i1 %415, label %416, label %470

416:                                              ; preds = %413
  %417 = load i32, i32* %11, align 4
  %418 = icmp ult i32 %417, 2
  br i1 %418, label %419, label %470

419:                                              ; preds = %416
  store i32 0, i32* %21, align 4
  %420 = load i32, i32* %10, align 4
  %421 = mul i32 %420, 4
  %422 = add i32 0, %421
  %423 = load i32, i32* %11, align 4
  %424 = mul i32 %423, 2
  %425 = add i32 %422, %424
  store i32 %425, i32* %22, align 4
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** @input_driver_mapper, align 8
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 0
  %428 = load i32**, i32*** %427, align 8
  %429 = load i32, i32* %8, align 4
  %430 = zext i32 %429 to i64
  %431 = getelementptr inbounds i32*, i32** %428, i64 %430
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %22, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  store i32 %436, i32* %23, align 4
  %437 = load %struct.TYPE_14__*, %struct.TYPE_14__** @input_driver_mapper, align 8
  %438 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i32 0, i32 0
  %439 = load i32**, i32*** %438, align 8
  %440 = load i32, i32* %8, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds i32*, i32** %439, i64 %441
  %443 = load i32*, i32** %442, align 8
  %444 = load i32, i32* %22, align 4
  %445 = add i32 %444, 1
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %443, i64 %446
  %448 = load i32, i32* %447, align 4
  store i32 %448, i32* %24, align 4
  %449 = load i32, i32* %23, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %419
  %452 = load i32, i32* %23, align 4
  store i32 %452, i32* %21, align 4
  br label %459

453:                                              ; preds = %419
  %454 = load i32, i32* %24, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %453
  %457 = load i32, i32* %24, align 4
  store i32 %457, i32* %21, align 4
  br label %458

458:                                              ; preds = %456, %453
  br label %459

459:                                              ; preds = %458, %451
  %460 = load i32, i32* %23, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %465, label %462

462:                                              ; preds = %459
  %463 = load i32, i32* %24, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %469

465:                                              ; preds = %462, %459
  %466 = load i32, i32* %21, align 4
  %467 = load i32, i32* %13, align 4
  %468 = or i32 %467, %466
  store i32 %468, i32* %13, align 4
  br label %469

469:                                              ; preds = %465, %462
  br label %470

470:                                              ; preds = %469, %416, %413
  br label %471

471:                                              ; preds = %470, %410, %404
  br label %520

472:                                              ; preds = %6
  %473 = load i32, i32* %11, align 4
  %474 = load i32, i32* @RARCH_FIRST_META_KEY, align 4
  %475 = icmp ult i32 %473, %474
  br i1 %475, label %476, label %519

476:                                              ; preds = %472
  %477 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %478 = load i32, i32* %8, align 4
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %477, i64 %479
  %481 = load %struct.TYPE_21__*, %struct.TYPE_21__** %480, align 8
  %482 = icmp ne %struct.TYPE_21__* %481, null
  br i1 %482, label %483, label %495

483:                                              ; preds = %476
  %484 = load %struct.TYPE_21__**, %struct.TYPE_21__*** @libretro_input_binds, align 8
  %485 = load i32, i32* %8, align 4
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %484, i64 %486
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %487, align 8
  %489 = load i32, i32* %11, align 4
  %490 = zext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = icmp ne i32 %493, 0
  br label %495

495:                                              ; preds = %483, %476
  %496 = phi i1 [ false, %476 ], [ %494, %483 ]
  %497 = zext i1 %496 to i32
  store i32 %497, i32* %25, align 4
  %498 = load i32, i32* %25, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %518

500:                                              ; preds = %495
  %501 = load i32, i32* %12, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %515

503:                                              ; preds = %500
  store i32 0, i32* %13, align 4
  %504 = load i32, i32* %7, align 4
  %505 = load i32, i32* %11, align 4
  %506 = shl i32 1, %505
  %507 = and i32 %504, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %514

509:                                              ; preds = %503
  %510 = load i32, i32* %11, align 4
  %511 = shl i32 1, %510
  %512 = load i32, i32* %13, align 4
  %513 = or i32 %512, %511
  store i32 %513, i32* %13, align 4
  br label %514

514:                                              ; preds = %509, %503
  br label %517

515:                                              ; preds = %500
  %516 = load i32, i32* %7, align 4
  store i32 %516, i32* %13, align 4
  br label %517

517:                                              ; preds = %515, %514
  br label %518

518:                                              ; preds = %517, %495
  br label %519

519:                                              ; preds = %518, %472
  br label %520

520:                                              ; preds = %6, %519, %471, %311, %263, %238, %190
  %521 = load i32, i32* %13, align 4
  ret i32 %521
}

declare dso_local i32 @BIT256_GET(i32, i32) #1

declare dso_local i32 @MAPPER_GET_KEY(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
