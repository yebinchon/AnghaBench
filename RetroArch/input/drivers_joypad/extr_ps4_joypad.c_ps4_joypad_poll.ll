; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_ps4_joypad.c_ps4_joypad_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_ps4_joypad.c_ps4_joypad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@num_players = common dso_local global i32 0, align 4
@ds_joypad_states = common dso_local global %struct.TYPE_5__* null, align 8
@pad_state = common dso_local global i32* null, align 8
@ORBISPAD_LEFT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_LEFT = common dso_local global i32 0, align 4
@ORBISPAD_DOWN = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_DOWN = common dso_local global i32 0, align 4
@ORBISPAD_RIGHT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_RIGHT = common dso_local global i32 0, align 4
@ORBISPAD_UP = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_UP = common dso_local global i32 0, align 4
@ORBISPAD_OPTIONS = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_START = common dso_local global i32 0, align 4
@ORBISPAD_TOUCH_PAD = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_SELECT = common dso_local global i32 0, align 4
@ORBISPAD_TRIANGLE = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_X = common dso_local global i32 0, align 4
@ORBISPAD_SQUARE = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_Y = common dso_local global i32 0, align 4
@ORBISPAD_CROSS = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_B = common dso_local global i32 0, align 4
@ORBISPAD_CIRCLE = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_A = common dso_local global i32 0, align 4
@ORBISPAD_R1 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R = common dso_local global i32 0, align 4
@ORBISPAD_L1 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L = common dso_local global i32 0, align 4
@ORBISPAD_R2 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R2 = common dso_local global i32 0, align 4
@ORBISPAD_L2 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L2 = common dso_local global i32 0, align 4
@ORBISPAD_R3 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R3 = common dso_local global i32 0, align 4
@ORBISPAD_L3 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ps4_joypad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps4_joypad_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @num_players, align 4
  store i32 %10, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %307, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %310

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %1, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ds_joypad_states, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @scePadReadState(i32 %23, %struct.TYPE_4__* %3)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %306

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** @pad_state, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @ORBISPAD_LEFT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = call i32 @UINT64_C(i32 1)
  %40 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_LEFT, align 4
  %41 = shl i32 %39, %40
  br label %43

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  %45 = load i32*, i32** @pad_state, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ORBISPAD_DOWN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = call i32 @UINT64_C(i32 1)
  %57 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_DOWN, align 4
  %58 = shl i32 %56, %57
  br label %60

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ 0, %59 ]
  %62 = load i32*, i32** @pad_state, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @ORBISPAD_RIGHT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = call i32 @UINT64_C(i32 1)
  %74 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_RIGHT, align 4
  %75 = shl i32 %73, %74
  br label %77

76:                                               ; preds = %60
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i32 [ %75, %72 ], [ 0, %76 ]
  %79 = load i32*, i32** @pad_state, align 8
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %78
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @ORBISPAD_UP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %77
  %90 = call i32 @UINT64_C(i32 1)
  %91 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  %92 = shl i32 %90, %91
  br label %94

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32 [ %92, %89 ], [ 0, %93 ]
  %96 = load i32*, i32** @pad_state, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %95
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @ORBISPAD_OPTIONS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %94
  %107 = call i32 @UINT64_C(i32 1)
  %108 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_START, align 4
  %109 = shl i32 %107, %108
  br label %111

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %106
  %112 = phi i32 [ %109, %106 ], [ 0, %110 ]
  %113 = load i32*, i32** @pad_state, align 8
  %114 = load i32, i32* %6, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %112
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @ORBISPAD_TOUCH_PAD, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %111
  %124 = call i32 @UINT64_C(i32 1)
  %125 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_SELECT, align 4
  %126 = shl i32 %124, %125
  br label %128

127:                                              ; preds = %111
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
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @ORBISPAD_TRIANGLE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %128
  %141 = call i32 @UINT64_C(i32 1)
  %142 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_X, align 4
  %143 = shl i32 %141, %142
  br label %145

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %140
  %146 = phi i32 [ %143, %140 ], [ 0, %144 ]
  %147 = load i32*, i32** @pad_state, align 8
  %148 = load i32, i32* %6, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %146
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @ORBISPAD_SQUARE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %145
  %158 = call i32 @UINT64_C(i32 1)
  %159 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_Y, align 4
  %160 = shl i32 %158, %159
  br label %162

161:                                              ; preds = %145
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi i32 [ %160, %157 ], [ 0, %161 ]
  %164 = load i32*, i32** @pad_state, align 8
  %165 = load i32, i32* %6, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %163
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @ORBISPAD_CROSS, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %162
  %175 = call i32 @UINT64_C(i32 1)
  %176 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_B, align 4
  %177 = shl i32 %175, %176
  br label %179

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178, %174
  %180 = phi i32 [ %177, %174 ], [ 0, %178 ]
  %181 = load i32*, i32** @pad_state, align 8
  %182 = load i32, i32* %6, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %180
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @ORBISPAD_CIRCLE, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %179
  %192 = call i32 @UINT64_C(i32 1)
  %193 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_A, align 4
  %194 = shl i32 %192, %193
  br label %196

195:                                              ; preds = %179
  br label %196

196:                                              ; preds = %195, %191
  %197 = phi i32 [ %194, %191 ], [ 0, %195 ]
  %198 = load i32*, i32** @pad_state, align 8
  %199 = load i32, i32* %6, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %197
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* @ORBISPAD_R1, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %196
  %209 = call i32 @UINT64_C(i32 1)
  %210 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R, align 4
  %211 = shl i32 %209, %210
  br label %213

212:                                              ; preds = %196
  br label %213

213:                                              ; preds = %212, %208
  %214 = phi i32 [ %211, %208 ], [ 0, %212 ]
  %215 = load i32*, i32** @pad_state, align 8
  %216 = load i32, i32* %6, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %214
  store i32 %220, i32* %218, align 4
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* @ORBISPAD_L1, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %213
  %226 = call i32 @UINT64_C(i32 1)
  %227 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L, align 4
  %228 = shl i32 %226, %227
  br label %230

229:                                              ; preds = %213
  br label %230

230:                                              ; preds = %229, %225
  %231 = phi i32 [ %228, %225 ], [ 0, %229 ]
  %232 = load i32*, i32** @pad_state, align 8
  %233 = load i32, i32* %6, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %231
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @ORBISPAD_R2, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %230
  %243 = call i32 @UINT64_C(i32 1)
  %244 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R2, align 4
  %245 = shl i32 %243, %244
  br label %247

246:                                              ; preds = %230
  br label %247

247:                                              ; preds = %246, %242
  %248 = phi i32 [ %245, %242 ], [ 0, %246 ]
  %249 = load i32*, i32** @pad_state, align 8
  %250 = load i32, i32* %6, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %248
  store i32 %254, i32* %252, align 4
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* @ORBISPAD_L2, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %247
  %260 = call i32 @UINT64_C(i32 1)
  %261 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L2, align 4
  %262 = shl i32 %260, %261
  br label %264

263:                                              ; preds = %247
  br label %264

264:                                              ; preds = %263, %259
  %265 = phi i32 [ %262, %259 ], [ 0, %263 ]
  %266 = load i32*, i32** @pad_state, align 8
  %267 = load i32, i32* %6, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %265
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @ORBISPAD_R3, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %264
  %277 = call i32 @UINT64_C(i32 1)
  %278 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R3, align 4
  %279 = shl i32 %277, %278
  br label %281

280:                                              ; preds = %264
  br label %281

281:                                              ; preds = %280, %276
  %282 = phi i32 [ %279, %276 ], [ 0, %280 ]
  %283 = load i32*, i32** @pad_state, align 8
  %284 = load i32, i32* %6, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %282
  store i32 %288, i32* %286, align 4
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* @ORBISPAD_L3, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %281
  %294 = call i32 @UINT64_C(i32 1)
  %295 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L3, align 4
  %296 = shl i32 %294, %295
  br label %298

297:                                              ; preds = %281
  br label %298

298:                                              ; preds = %297, %293
  %299 = phi i32 [ %296, %293 ], [ 0, %297 ]
  %300 = load i32*, i32** @pad_state, align 8
  %301 = load i32, i32* %6, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = or i32 %304, %299
  store i32 %305, i32* %303, align 4
  br label %306

306:                                              ; preds = %298, %15
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %1, align 4
  %309 = add i32 %308, 1
  store i32 %309, i32* %1, align 4
  br label %11

310:                                              ; preds = %11
  ret void
}

declare dso_local i32 @scePadReadState(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @UINT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
