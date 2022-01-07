; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..inputinput_mapper.c_input_mapper_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..inputinput_mapper.c_input_mapper_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32**, i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32*, i32**, i32** }
%struct.TYPE_11__ = type { i32*, i32* }

@RETRO_DEVICE_MASK = common dso_local global i32 0, align 4
@RARCH_CUSTOM_BIND_LIST_END = common dso_local global i32 0, align 4
@RETROK_UNKNOWN = common dso_local global i32 0, align 4
@RARCH_FIRST_CUSTOM_BIND = common dso_local global i32 0, align 4
@RARCH_UNMAPPED = common dso_local global i32 0, align 4
@INPUT_ACTION_AXIS_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_mapper_poll(%struct.TYPE_10__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %15, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %34, %struct.TYPE_11__** %16, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memset(i32 %37, i32 0, i32 4)
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %344, %6
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %347

43:                                               ; preds = %39
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RETRO_DEVICE_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %17, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 1
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %16, align 8
  %56 = bitcast %struct.TYPE_11__* %18 to i8*
  %57 = bitcast %struct.TYPE_11__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load i32, i32* %17, align 4
  switch i32 %58, label %342 [
    i32 128, label %59
    i32 129, label %111
    i32 130, label %111
  ]

59:                                               ; preds = %43
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %107, %59
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @RARCH_CUSTOM_BIND_LIST_END, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %110

64:                                               ; preds = %60
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* @RETROK_UNKNOWN, align 4
  %79 = icmp ne i32 %77, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %64
  %84 = load i32, i32* %14, align 4
  %85 = bitcast %struct.TYPE_11__* %18 to { i32*, i32* }*
  %86 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %85, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @BIT256_GET(i32* %87, i32* %89, i32 %84)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %103

93:                                               ; preds = %83
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call i32 @MAPPER_SET_KEY(%struct.TYPE_10__* %98, i32 %99)
  %101 = load i32, i32* %19, align 4
  %102 = call i32 @input_keyboard_event(i32 1, i32 %101, i32 0, i32 0, i32 128)
  br label %107

103:                                              ; preds = %93, %83
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @input_keyboard_event(i32 0, i32 %104, i32 0, i32 0, i32 128)
  br label %106

106:                                              ; preds = %103, %64
  br label %107

107:                                              ; preds = %106, %97
  %108 = load i32, i32* %14, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %14, align 4
  br label %60

110:                                              ; preds = %60
  br label %343

111:                                              ; preds = %43, %43
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @BIT256_CLEAR_ALL(i32 %118)
  store i32 0, i32* %14, align 4
  br label %120

120:                                              ; preds = %134, %111
  %121 = load i32, i32* %14, align 4
  %122 = icmp ult i32 %121, 8
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %14, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %120

137:                                              ; preds = %120
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %235, %137
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %238

142:                                              ; preds = %138
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 2
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %23, align 4
  %155 = load i32, i32* %14, align 4
  %156 = bitcast %struct.TYPE_11__* %18 to { i32*, i32* }*
  %157 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %156, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @BIT256_GET(i32* %158, i32* %160, i32 %155)
  store i32 %161, i32* %24, align 4
  %162 = load i32, i32* %24, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %172

164:                                              ; preds = %142
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %23, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* @RARCH_UNMAPPED, align 4
  %171 = icmp ne i32 %169, %170
  br label %172

172:                                              ; preds = %168, %164, %142
  %173 = phi i1 [ false, %164 ], [ false, %142 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %22, align 4
  %175 = load i32, i32* %22, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %234

177:                                              ; preds = %172
  %178 = load i32, i32* %23, align 4
  %179 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %23, align 4
  %190 = call i32 @BIT256_SET(i32 %188, i32 %189)
  br label %233

191:                                              ; preds = %177
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %194 = icmp uge i32 %192, %193
  br i1 %194, label %195, label %232

195:                                              ; preds = %191
  store i32 1, i32* %25, align 4
  %196 = load i32, i32* %23, align 4
  %197 = urem i32 %196, 2
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store i32 -1, i32* %25, align 4
  br label %200

200:                                              ; preds = %199, %195
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %200
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  br label %216

215:                                              ; preds = %200
  br label %216

216:                                              ; preds = %215, %208
  %217 = phi i32 [ %214, %208 ], [ 32767, %215 ]
  %218 = load i32, i32* %25, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32**, i32*** %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %222, i64 %224
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %23, align 4
  %228 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %229 = sub i32 %227, %228
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %226, i64 %230
  store i32 %219, i32* %231, align 4
  br label %232

232:                                              ; preds = %216, %191
  br label %233

233:                                              ; preds = %232, %181
  br label %234

234:                                              ; preds = %233, %172
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %14, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %14, align 4
  br label %138

238:                                              ; preds = %138
  store i32 0, i32* %14, align 4
  br label %239

239:                                              ; preds = %338, %238
  %240 = load i32, i32* %14, align 4
  %241 = icmp ult i32 %240, 8
  br i1 %241, label %242, label %341

242:                                              ; preds = %239
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %245 = add i32 %243, %244
  store i32 %245, i32* %26, align 4
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %14, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %27, align 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  %255 = load i32**, i32*** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %26, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %28, align 4
  %264 = load i32, i32* %27, align 4
  %265 = call i32 @abs(i32 %264) #4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %337

267:                                              ; preds = %242
  %268 = load i32, i32* %26, align 4
  %269 = load i32, i32* %28, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %337

271:                                              ; preds = %267
  %272 = load i32, i32* %28, align 4
  %273 = load i32, i32* @RARCH_UNMAPPED, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %337

275:                                              ; preds = %271
  %276 = load i32, i32* %28, align 4
  %277 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %278 = icmp ult i32 %276, %277
  br i1 %278, label %279, label %297

279:                                              ; preds = %275
  %280 = load i32, i32* %27, align 4
  %281 = call i32 @abs(i32 %280) #4
  %282 = load i32, i32* @INPUT_ACTION_AXIS_THRESHOLD, align 4
  %283 = call i32* @input_driver_get_float(i32 %282)
  %284 = load i32, i32* %283, align 4
  %285 = mul nsw i32 %284, 32767
  %286 = icmp sgt i32 %281, %285
  br i1 %286, label %287, label %297

287:                                              ; preds = %279
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %13, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %28, align 4
  %296 = call i32 @BIT256_SET(i32 %294, i32 %295)
  br label %336

297:                                              ; preds = %279, %275
  %298 = load i32, i32* %28, align 4
  %299 = load i32, i32* @RARCH_FIRST_CUSTOM_BIND, align 4
  %300 = sub i32 %298, %299
  store i32 %300, i32* %29, align 4
  %301 = load i32, i32* %29, align 4
  %302 = zext i32 %301 to i64
  %303 = icmp ult i64 %302, 8
  br i1 %303, label %304, label %335

304:                                              ; preds = %297
  store i32 1, i32* %30, align 4
  %305 = load i32, i32* %26, align 4
  %306 = urem i32 %305, 2
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load i32, i32* %28, align 4
  %310 = urem i32 %309, 2
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %320, label %312

312:                                              ; preds = %308, %304
  %313 = load i32, i32* %26, align 4
  %314 = urem i32 %313, 2
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %312
  %317 = load i32, i32* %28, align 4
  %318 = urem i32 %317, 2
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %316, %308
  store i32 -1, i32* %30, align 4
  br label %321

321:                                              ; preds = %320, %316, %312
  %322 = load i32, i32* %27, align 4
  %323 = load i32, i32* %30, align 4
  %324 = mul nsw i32 %322, %323
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 0
  %327 = load i32**, i32*** %326, align 8
  %328 = load i32, i32* %13, align 4
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds i32*, i32** %327, i64 %329
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %29, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %324, i32* %334, align 4
  br label %335

335:                                              ; preds = %321, %297
  br label %336

336:                                              ; preds = %335, %287
  br label %337

337:                                              ; preds = %336, %271, %267, %242
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %14, align 4
  %340 = add i32 %339, 1
  store i32 %340, i32* %14, align 4
  br label %239

341:                                              ; preds = %239
  br label %343

342:                                              ; preds = %43
  br label %343

343:                                              ; preds = %342, %341, %110
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %13, align 4
  %346 = add i32 %345, 1
  store i32 %346, i32* %13, align 4
  br label %39

347:                                              ; preds = %39
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BIT256_GET(i32*, i32*, i32) #1

declare dso_local i32 @MAPPER_SET_KEY(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @input_keyboard_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT256_CLEAR_ALL(i32) #1

declare dso_local i32 @BIT256_SET(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

declare dso_local i32* @input_driver_get_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
