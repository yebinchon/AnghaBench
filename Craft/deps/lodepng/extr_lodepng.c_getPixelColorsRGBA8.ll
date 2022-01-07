; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getPixelColorsRGBA8.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getPixelColorsRGBA8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8, i8, i8, i32, i8*, i64 }

@LCT_GREY = common dso_local global i64 0, align 8
@LCT_RGB = common dso_local global i64 0, align 8
@LCT_PALETTE = common dso_local global i64 0, align 8
@LCT_GREY_ALPHA = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i8*, %struct.TYPE_3__*, i32)* @getPixelColorsRGBA8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getPixelColorsRGBA8(i8* %0, i64 %1, i32 %2, i8* %3, %struct.TYPE_3__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 4, i32 3
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LCT_GREY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %211

30:                                               ; preds = %6
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %35, label %85

35:                                               ; preds = %30
  store i64 0, i64* %15, align 8
  br label %36

36:                                               ; preds = %77, %35
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* %15, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %44, i8* %48, align 1
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 %44, i8* %50, align 1
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %40
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i8, i8* %65, align 4
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %63, %67
  br label %69

69:                                               ; preds = %58, %53
  %70 = phi i1 [ false, %53 ], [ %68, %58 ]
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 255
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  store i8 %73, i8* %75, align 1
  br label %76

76:                                               ; preds = %69, %40
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %15, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %15, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %8, align 8
  br label %36

84:                                               ; preds = %36
  br label %210

85:                                               ; preds = %30
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 16
  br i1 %89, label %90, label %152

90:                                               ; preds = %85
  store i64 0, i64* %15, align 8
  br label %91

91:                                               ; preds = %144, %90
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %151

95:                                               ; preds = %91
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %15, align 8
  %98 = mul i64 %97, 2
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  store i8 %100, i8* %102, align 1
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8 %100, i8* %104, align 1
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  store i8 %100, i8* %106, align 1
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %143

109:                                              ; preds = %95
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %109
  %115 = load i8*, i8** %11, align 8
  %116 = load i64, i64* %15, align 8
  %117 = mul i64 %116, 2
  %118 = add i64 %117, 0
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = mul i32 256, %121
  %123 = load i8*, i8** %11, align 8
  %124 = load i64, i64* %15, align 8
  %125 = mul i64 %124, 2
  %126 = add i64 %125, 1
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = add i32 %122, %129
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i8, i8* %132, align 4
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %130, %134
  br label %136

136:                                              ; preds = %114, %109
  %137 = phi i1 [ false, %109 ], [ %135, %114 ]
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 0, i32 255
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 3
  store i8 %140, i8* %142, align 1
  br label %143

143:                                              ; preds = %136, %95
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %15, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %15, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %8, align 8
  br label %91

151:                                              ; preds = %91
  br label %209

152:                                              ; preds = %85
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = shl i32 1, %155
  %157 = sub i32 %156, 1
  store i32 %157, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %15, align 8
  br label %158

158:                                              ; preds = %201, %152
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* %9, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %208

162:                                              ; preds = %158
  %163 = load i8*, i8** %11, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @readBitsFromReversedStream(i64* %17, i8* %163, i32 %166)
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = mul i32 %168, 255
  %170 = load i32, i32* %16, align 4
  %171 = udiv i32 %169, %170
  %172 = trunc i32 %171 to i8
  %173 = load i8*, i8** %8, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  store i8 %172, i8* %174, align 1
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  store i8 %172, i8* %176, align 1
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  store i8 %172, i8* %178, align 1
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %162
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load i32, i32* %18, align 4
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load i8, i8* %189, align 4
  %191 = zext i8 %190 to i32
  %192 = icmp eq i32 %187, %191
  br label %193

193:                                              ; preds = %186, %181
  %194 = phi i1 [ false, %181 ], [ %192, %186 ]
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 0, i32 255
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 3
  store i8 %197, i8* %199, align 1
  br label %200

200:                                              ; preds = %193, %162
  br label %201

201:                                              ; preds = %200
  %202 = load i64, i64* %15, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %15, align 8
  %204 = load i32, i32* %14, align 4
  %205 = load i8*, i8** %8, align 8
  %206 = zext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8* %207, i8** %8, align 8
  br label %158

208:                                              ; preds = %158
  br label %209

209:                                              ; preds = %208, %151
  br label %210

210:                                              ; preds = %209, %84
  br label %744

211:                                              ; preds = %6
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @LCT_RGB, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %425

217:                                              ; preds = %211
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 8
  br i1 %221, label %222, label %305

222:                                              ; preds = %217
  store i64 0, i64* %15, align 8
  br label %223

223:                                              ; preds = %297, %222
  %224 = load i64, i64* %15, align 8
  %225 = load i64, i64* %9, align 8
  %226 = icmp ult i64 %224, %225
  br i1 %226, label %227, label %304

227:                                              ; preds = %223
  %228 = load i8*, i8** %11, align 8
  %229 = load i64, i64* %15, align 8
  %230 = mul i64 %229, 3
  %231 = add i64 %230, 0
  %232 = getelementptr inbounds i8, i8* %228, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = load i8*, i8** %8, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  store i8 %233, i8* %235, align 1
  %236 = load i8*, i8** %11, align 8
  %237 = load i64, i64* %15, align 8
  %238 = mul i64 %237, 3
  %239 = add i64 %238, 1
  %240 = getelementptr inbounds i8, i8* %236, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = load i8*, i8** %8, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  store i8 %241, i8* %243, align 1
  %244 = load i8*, i8** %11, align 8
  %245 = load i64, i64* %15, align 8
  %246 = mul i64 %245, 3
  %247 = add i64 %246, 2
  %248 = getelementptr inbounds i8, i8* %244, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = load i8*, i8** %8, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 2
  store i8 %249, i8* %251, align 1
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %296

254:                                              ; preds = %227
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 7
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %289

259:                                              ; preds = %254
  %260 = load i8*, i8** %8, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 2
  %266 = load i8, i8* %265, align 4
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %263, %267
  br i1 %268, label %269, label %289

269:                                              ; preds = %259
  %270 = load i8*, i8** %8, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 1
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 3
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp eq i32 %273, %277
  br i1 %278, label %279, label %289

279:                                              ; preds = %269
  %280 = load i8*, i8** %8, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 2
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 4
  %286 = load i8, i8* %285, align 2
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %283, %287
  br label %289

289:                                              ; preds = %279, %269, %259, %254
  %290 = phi i1 [ false, %269 ], [ false, %259 ], [ false, %254 ], [ %288, %279 ]
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i32 0, i32 255
  %293 = trunc i32 %292 to i8
  %294 = load i8*, i8** %8, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 3
  store i8 %293, i8* %295, align 1
  br label %296

296:                                              ; preds = %289, %227
  br label %297

297:                                              ; preds = %296
  %298 = load i64, i64* %15, align 8
  %299 = add i64 %298, 1
  store i64 %299, i64* %15, align 8
  %300 = load i32, i32* %14, align 4
  %301 = load i8*, i8** %8, align 8
  %302 = zext i32 %300 to i64
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  store i8* %303, i8** %8, align 8
  br label %223

304:                                              ; preds = %223
  br label %424

305:                                              ; preds = %217
  store i64 0, i64* %15, align 8
  br label %306

306:                                              ; preds = %416, %305
  %307 = load i64, i64* %15, align 8
  %308 = load i64, i64* %9, align 8
  %309 = icmp ult i64 %307, %308
  br i1 %309, label %310, label %423

310:                                              ; preds = %306
  %311 = load i8*, i8** %11, align 8
  %312 = load i64, i64* %15, align 8
  %313 = mul i64 %312, 6
  %314 = add i64 %313, 0
  %315 = getelementptr inbounds i8, i8* %311, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = load i8*, i8** %8, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 0
  store i8 %316, i8* %318, align 1
  %319 = load i8*, i8** %11, align 8
  %320 = load i64, i64* %15, align 8
  %321 = mul i64 %320, 6
  %322 = add i64 %321, 2
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = load i8*, i8** %8, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 1
  store i8 %324, i8* %326, align 1
  %327 = load i8*, i8** %11, align 8
  %328 = load i64, i64* %15, align 8
  %329 = mul i64 %328, 6
  %330 = add i64 %329, 4
  %331 = getelementptr inbounds i8, i8* %327, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = load i8*, i8** %8, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 2
  store i8 %332, i8* %334, align 1
  %335 = load i32, i32* %10, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %415

337:                                              ; preds = %310
  %338 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 7
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %408

342:                                              ; preds = %337
  %343 = load i8*, i8** %11, align 8
  %344 = load i64, i64* %15, align 8
  %345 = mul i64 %344, 6
  %346 = add i64 %345, 0
  %347 = getelementptr inbounds i8, i8* %343, i64 %346
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = mul i32 256, %349
  %351 = load i8*, i8** %11, align 8
  %352 = load i64, i64* %15, align 8
  %353 = mul i64 %352, 6
  %354 = add i64 %353, 1
  %355 = getelementptr inbounds i8, i8* %351, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = add i32 %350, %357
  %359 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 2
  %361 = load i8, i8* %360, align 4
  %362 = zext i8 %361 to i32
  %363 = icmp eq i32 %358, %362
  br i1 %363, label %364, label %408

364:                                              ; preds = %342
  %365 = load i8*, i8** %11, align 8
  %366 = load i64, i64* %15, align 8
  %367 = mul i64 %366, 6
  %368 = add i64 %367, 2
  %369 = getelementptr inbounds i8, i8* %365, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i32
  %372 = mul i32 256, %371
  %373 = load i8*, i8** %11, align 8
  %374 = load i64, i64* %15, align 8
  %375 = mul i64 %374, 6
  %376 = add i64 %375, 3
  %377 = getelementptr inbounds i8, i8* %373, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = add i32 %372, %379
  %381 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 3
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = icmp eq i32 %380, %384
  br i1 %385, label %386, label %408

386:                                              ; preds = %364
  %387 = load i8*, i8** %11, align 8
  %388 = load i64, i64* %15, align 8
  %389 = mul i64 %388, 6
  %390 = add i64 %389, 4
  %391 = getelementptr inbounds i8, i8* %387, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = mul i32 256, %393
  %395 = load i8*, i8** %11, align 8
  %396 = load i64, i64* %15, align 8
  %397 = mul i64 %396, 6
  %398 = add i64 %397, 5
  %399 = getelementptr inbounds i8, i8* %395, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i32
  %402 = add i32 %394, %401
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 4
  %405 = load i8, i8* %404, align 2
  %406 = zext i8 %405 to i32
  %407 = icmp eq i32 %402, %406
  br label %408

408:                                              ; preds = %386, %364, %342, %337
  %409 = phi i1 [ false, %364 ], [ false, %342 ], [ false, %337 ], [ %407, %386 ]
  %410 = zext i1 %409 to i64
  %411 = select i1 %409, i32 0, i32 255
  %412 = trunc i32 %411 to i8
  %413 = load i8*, i8** %8, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 3
  store i8 %412, i8* %414, align 1
  br label %415

415:                                              ; preds = %408, %310
  br label %416

416:                                              ; preds = %415
  %417 = load i64, i64* %15, align 8
  %418 = add i64 %417, 1
  store i64 %418, i64* %15, align 8
  %419 = load i32, i32* %14, align 4
  %420 = load i8*, i8** %8, align 8
  %421 = zext i32 %419 to i64
  %422 = getelementptr inbounds i8, i8* %420, i64 %421
  store i8* %422, i8** %8, align 8
  br label %306

423:                                              ; preds = %306
  br label %424

424:                                              ; preds = %423, %304
  br label %743

425:                                              ; preds = %211
  %426 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @LCT_PALETTE, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %540

431:                                              ; preds = %425
  store i64 0, i64* %20, align 8
  store i64 0, i64* %15, align 8
  br label %432

432:                                              ; preds = %532, %431
  %433 = load i64, i64* %15, align 8
  %434 = load i64, i64* %9, align 8
  %435 = icmp ult i64 %433, %434
  br i1 %435, label %436, label %539

436:                                              ; preds = %432
  %437 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = icmp eq i32 %439, 8
  br i1 %440, label %441, label %447

441:                                              ; preds = %436
  %442 = load i8*, i8** %11, align 8
  %443 = load i64, i64* %15, align 8
  %444 = getelementptr inbounds i8, i8* %442, i64 %443
  %445 = load i8, i8* %444, align 1
  %446 = zext i8 %445 to i32
  store i32 %446, i32* %19, align 4
  br label %453

447:                                              ; preds = %436
  %448 = load i8*, i8** %11, align 8
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @readBitsFromReversedStream(i64* %20, i8* %448, i32 %451)
  store i32 %452, i32* %19, align 4
  br label %453

453:                                              ; preds = %447, %441
  %454 = load i32, i32* %19, align 4
  %455 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 5
  %457 = load i32, i32* %456, align 8
  %458 = icmp uge i32 %454, %457
  br i1 %458, label %459, label %482

459:                                              ; preds = %453
  %460 = load i32, i32* %13, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %469, label %462

462:                                              ; preds = %459
  %463 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %464 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 8
  %466 = icmp eq i32 %465, 8
  %467 = zext i1 %466 to i64
  %468 = select i1 %466, i32 46, i32 47
  store i32 %468, i32* %7, align 4
  br label %745

469:                                              ; preds = %459
  %470 = load i8*, i8** %8, align 8
  %471 = getelementptr inbounds i8, i8* %470, i64 2
  store i8 0, i8* %471, align 1
  %472 = load i8*, i8** %8, align 8
  %473 = getelementptr inbounds i8, i8* %472, i64 1
  store i8 0, i8* %473, align 1
  %474 = load i8*, i8** %8, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 0
  store i8 0, i8* %475, align 1
  %476 = load i32, i32* %10, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %469
  %479 = load i8*, i8** %8, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 3
  store i8 -1, i8* %480, align 1
  br label %481

481:                                              ; preds = %478, %469
  br label %531

482:                                              ; preds = %453
  %483 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 6
  %485 = load i8*, i8** %484, align 8
  %486 = load i32, i32* %19, align 4
  %487 = mul i32 %486, 4
  %488 = add i32 %487, 0
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %485, i64 %489
  %491 = load i8, i8* %490, align 1
  %492 = load i8*, i8** %8, align 8
  %493 = getelementptr inbounds i8, i8* %492, i64 0
  store i8 %491, i8* %493, align 1
  %494 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %495 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %494, i32 0, i32 6
  %496 = load i8*, i8** %495, align 8
  %497 = load i32, i32* %19, align 4
  %498 = mul i32 %497, 4
  %499 = add i32 %498, 1
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds i8, i8* %496, i64 %500
  %502 = load i8, i8* %501, align 1
  %503 = load i8*, i8** %8, align 8
  %504 = getelementptr inbounds i8, i8* %503, i64 1
  store i8 %502, i8* %504, align 1
  %505 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i32 0, i32 6
  %507 = load i8*, i8** %506, align 8
  %508 = load i32, i32* %19, align 4
  %509 = mul i32 %508, 4
  %510 = add i32 %509, 2
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds i8, i8* %507, i64 %511
  %513 = load i8, i8* %512, align 1
  %514 = load i8*, i8** %8, align 8
  %515 = getelementptr inbounds i8, i8* %514, i64 2
  store i8 %513, i8* %515, align 1
  %516 = load i32, i32* %10, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %530

518:                                              ; preds = %482
  %519 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %520 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %519, i32 0, i32 6
  %521 = load i8*, i8** %520, align 8
  %522 = load i32, i32* %19, align 4
  %523 = mul i32 %522, 4
  %524 = add i32 %523, 3
  %525 = zext i32 %524 to i64
  %526 = getelementptr inbounds i8, i8* %521, i64 %525
  %527 = load i8, i8* %526, align 1
  %528 = load i8*, i8** %8, align 8
  %529 = getelementptr inbounds i8, i8* %528, i64 3
  store i8 %527, i8* %529, align 1
  br label %530

530:                                              ; preds = %518, %482
  br label %531

531:                                              ; preds = %530, %481
  br label %532

532:                                              ; preds = %531
  %533 = load i64, i64* %15, align 8
  %534 = add i64 %533, 1
  store i64 %534, i64* %15, align 8
  %535 = load i32, i32* %14, align 4
  %536 = load i8*, i8** %8, align 8
  %537 = zext i32 %535 to i64
  %538 = getelementptr inbounds i8, i8* %536, i64 %537
  store i8* %538, i8** %8, align 8
  br label %432

539:                                              ; preds = %432
  br label %742

540:                                              ; preds = %425
  %541 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %542 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = load i64, i64* @LCT_GREY_ALPHA, align 8
  %545 = icmp eq i64 %543, %544
  br i1 %545, label %546, label %628

546:                                              ; preds = %540
  %547 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %548 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 8
  %550 = icmp eq i32 %549, 8
  br i1 %550, label %551, label %589

551:                                              ; preds = %546
  store i64 0, i64* %15, align 8
  br label %552

552:                                              ; preds = %581, %551
  %553 = load i64, i64* %15, align 8
  %554 = load i64, i64* %9, align 8
  %555 = icmp ult i64 %553, %554
  br i1 %555, label %556, label %588

556:                                              ; preds = %552
  %557 = load i8*, i8** %11, align 8
  %558 = load i64, i64* %15, align 8
  %559 = mul i64 %558, 2
  %560 = add i64 %559, 0
  %561 = getelementptr inbounds i8, i8* %557, i64 %560
  %562 = load i8, i8* %561, align 1
  %563 = load i8*, i8** %8, align 8
  %564 = getelementptr inbounds i8, i8* %563, i64 2
  store i8 %562, i8* %564, align 1
  %565 = load i8*, i8** %8, align 8
  %566 = getelementptr inbounds i8, i8* %565, i64 1
  store i8 %562, i8* %566, align 1
  %567 = load i8*, i8** %8, align 8
  %568 = getelementptr inbounds i8, i8* %567, i64 0
  store i8 %562, i8* %568, align 1
  %569 = load i32, i32* %10, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %580

571:                                              ; preds = %556
  %572 = load i8*, i8** %11, align 8
  %573 = load i64, i64* %15, align 8
  %574 = mul i64 %573, 2
  %575 = add i64 %574, 1
  %576 = getelementptr inbounds i8, i8* %572, i64 %575
  %577 = load i8, i8* %576, align 1
  %578 = load i8*, i8** %8, align 8
  %579 = getelementptr inbounds i8, i8* %578, i64 3
  store i8 %577, i8* %579, align 1
  br label %580

580:                                              ; preds = %571, %556
  br label %581

581:                                              ; preds = %580
  %582 = load i64, i64* %15, align 8
  %583 = add i64 %582, 1
  store i64 %583, i64* %15, align 8
  %584 = load i32, i32* %14, align 4
  %585 = load i8*, i8** %8, align 8
  %586 = zext i32 %584 to i64
  %587 = getelementptr inbounds i8, i8* %585, i64 %586
  store i8* %587, i8** %8, align 8
  br label %552

588:                                              ; preds = %552
  br label %627

589:                                              ; preds = %546
  store i64 0, i64* %15, align 8
  br label %590

590:                                              ; preds = %619, %589
  %591 = load i64, i64* %15, align 8
  %592 = load i64, i64* %9, align 8
  %593 = icmp ult i64 %591, %592
  br i1 %593, label %594, label %626

594:                                              ; preds = %590
  %595 = load i8*, i8** %11, align 8
  %596 = load i64, i64* %15, align 8
  %597 = mul i64 %596, 4
  %598 = add i64 %597, 0
  %599 = getelementptr inbounds i8, i8* %595, i64 %598
  %600 = load i8, i8* %599, align 1
  %601 = load i8*, i8** %8, align 8
  %602 = getelementptr inbounds i8, i8* %601, i64 2
  store i8 %600, i8* %602, align 1
  %603 = load i8*, i8** %8, align 8
  %604 = getelementptr inbounds i8, i8* %603, i64 1
  store i8 %600, i8* %604, align 1
  %605 = load i8*, i8** %8, align 8
  %606 = getelementptr inbounds i8, i8* %605, i64 0
  store i8 %600, i8* %606, align 1
  %607 = load i32, i32* %10, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %618

609:                                              ; preds = %594
  %610 = load i8*, i8** %11, align 8
  %611 = load i64, i64* %15, align 8
  %612 = mul i64 %611, 4
  %613 = add i64 %612, 2
  %614 = getelementptr inbounds i8, i8* %610, i64 %613
  %615 = load i8, i8* %614, align 1
  %616 = load i8*, i8** %8, align 8
  %617 = getelementptr inbounds i8, i8* %616, i64 3
  store i8 %615, i8* %617, align 1
  br label %618

618:                                              ; preds = %609, %594
  br label %619

619:                                              ; preds = %618
  %620 = load i64, i64* %15, align 8
  %621 = add i64 %620, 1
  store i64 %621, i64* %15, align 8
  %622 = load i32, i32* %14, align 4
  %623 = load i8*, i8** %8, align 8
  %624 = zext i32 %622 to i64
  %625 = getelementptr inbounds i8, i8* %623, i64 %624
  store i8* %625, i8** %8, align 8
  br label %590

626:                                              ; preds = %590
  br label %627

627:                                              ; preds = %626, %588
  br label %741

628:                                              ; preds = %540
  %629 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %630 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %629, i32 0, i32 0
  %631 = load i64, i64* %630, align 8
  %632 = load i64, i64* @LCT_RGBA, align 8
  %633 = icmp eq i64 %631, %632
  br i1 %633, label %634, label %740

634:                                              ; preds = %628
  %635 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %636 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 8
  %638 = icmp eq i32 %637, 8
  br i1 %638, label %639, label %689

639:                                              ; preds = %634
  store i64 0, i64* %15, align 8
  br label %640

640:                                              ; preds = %681, %639
  %641 = load i64, i64* %15, align 8
  %642 = load i64, i64* %9, align 8
  %643 = icmp ult i64 %641, %642
  br i1 %643, label %644, label %688

644:                                              ; preds = %640
  %645 = load i8*, i8** %11, align 8
  %646 = load i64, i64* %15, align 8
  %647 = mul i64 %646, 4
  %648 = add i64 %647, 0
  %649 = getelementptr inbounds i8, i8* %645, i64 %648
  %650 = load i8, i8* %649, align 1
  %651 = load i8*, i8** %8, align 8
  %652 = getelementptr inbounds i8, i8* %651, i64 0
  store i8 %650, i8* %652, align 1
  %653 = load i8*, i8** %11, align 8
  %654 = load i64, i64* %15, align 8
  %655 = mul i64 %654, 4
  %656 = add i64 %655, 1
  %657 = getelementptr inbounds i8, i8* %653, i64 %656
  %658 = load i8, i8* %657, align 1
  %659 = load i8*, i8** %8, align 8
  %660 = getelementptr inbounds i8, i8* %659, i64 1
  store i8 %658, i8* %660, align 1
  %661 = load i8*, i8** %11, align 8
  %662 = load i64, i64* %15, align 8
  %663 = mul i64 %662, 4
  %664 = add i64 %663, 2
  %665 = getelementptr inbounds i8, i8* %661, i64 %664
  %666 = load i8, i8* %665, align 1
  %667 = load i8*, i8** %8, align 8
  %668 = getelementptr inbounds i8, i8* %667, i64 2
  store i8 %666, i8* %668, align 1
  %669 = load i32, i32* %10, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %680

671:                                              ; preds = %644
  %672 = load i8*, i8** %11, align 8
  %673 = load i64, i64* %15, align 8
  %674 = mul i64 %673, 4
  %675 = add i64 %674, 3
  %676 = getelementptr inbounds i8, i8* %672, i64 %675
  %677 = load i8, i8* %676, align 1
  %678 = load i8*, i8** %8, align 8
  %679 = getelementptr inbounds i8, i8* %678, i64 3
  store i8 %677, i8* %679, align 1
  br label %680

680:                                              ; preds = %671, %644
  br label %681

681:                                              ; preds = %680
  %682 = load i64, i64* %15, align 8
  %683 = add i64 %682, 1
  store i64 %683, i64* %15, align 8
  %684 = load i32, i32* %14, align 4
  %685 = load i8*, i8** %8, align 8
  %686 = zext i32 %684 to i64
  %687 = getelementptr inbounds i8, i8* %685, i64 %686
  store i8* %687, i8** %8, align 8
  br label %640

688:                                              ; preds = %640
  br label %739

689:                                              ; preds = %634
  store i64 0, i64* %15, align 8
  br label %690

690:                                              ; preds = %731, %689
  %691 = load i64, i64* %15, align 8
  %692 = load i64, i64* %9, align 8
  %693 = icmp ult i64 %691, %692
  br i1 %693, label %694, label %738

694:                                              ; preds = %690
  %695 = load i8*, i8** %11, align 8
  %696 = load i64, i64* %15, align 8
  %697 = mul i64 %696, 8
  %698 = add i64 %697, 0
  %699 = getelementptr inbounds i8, i8* %695, i64 %698
  %700 = load i8, i8* %699, align 1
  %701 = load i8*, i8** %8, align 8
  %702 = getelementptr inbounds i8, i8* %701, i64 0
  store i8 %700, i8* %702, align 1
  %703 = load i8*, i8** %11, align 8
  %704 = load i64, i64* %15, align 8
  %705 = mul i64 %704, 8
  %706 = add i64 %705, 2
  %707 = getelementptr inbounds i8, i8* %703, i64 %706
  %708 = load i8, i8* %707, align 1
  %709 = load i8*, i8** %8, align 8
  %710 = getelementptr inbounds i8, i8* %709, i64 1
  store i8 %708, i8* %710, align 1
  %711 = load i8*, i8** %11, align 8
  %712 = load i64, i64* %15, align 8
  %713 = mul i64 %712, 8
  %714 = add i64 %713, 4
  %715 = getelementptr inbounds i8, i8* %711, i64 %714
  %716 = load i8, i8* %715, align 1
  %717 = load i8*, i8** %8, align 8
  %718 = getelementptr inbounds i8, i8* %717, i64 2
  store i8 %716, i8* %718, align 1
  %719 = load i32, i32* %10, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %721, label %730

721:                                              ; preds = %694
  %722 = load i8*, i8** %11, align 8
  %723 = load i64, i64* %15, align 8
  %724 = mul i64 %723, 8
  %725 = add i64 %724, 6
  %726 = getelementptr inbounds i8, i8* %722, i64 %725
  %727 = load i8, i8* %726, align 1
  %728 = load i8*, i8** %8, align 8
  %729 = getelementptr inbounds i8, i8* %728, i64 3
  store i8 %727, i8* %729, align 1
  br label %730

730:                                              ; preds = %721, %694
  br label %731

731:                                              ; preds = %730
  %732 = load i64, i64* %15, align 8
  %733 = add i64 %732, 1
  store i64 %733, i64* %15, align 8
  %734 = load i32, i32* %14, align 4
  %735 = load i8*, i8** %8, align 8
  %736 = zext i32 %734 to i64
  %737 = getelementptr inbounds i8, i8* %735, i64 %736
  store i8* %737, i8** %8, align 8
  br label %690

738:                                              ; preds = %690
  br label %739

739:                                              ; preds = %738, %688
  br label %740

740:                                              ; preds = %739, %628
  br label %741

741:                                              ; preds = %740, %627
  br label %742

742:                                              ; preds = %741, %539
  br label %743

743:                                              ; preds = %742, %424
  br label %744

744:                                              ; preds = %743, %210
  store i32 0, i32* %7, align 4
  br label %745

745:                                              ; preds = %744, %462
  %746 = load i32, i32* %7, align 4
  ret i32 %746
}

declare dso_local i32 @readBitsFromReversedStream(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
