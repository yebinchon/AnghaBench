; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getPixelColorRGBA8.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getPixelColorRGBA8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8, i8, i8, i32, i8*, i64 }

@LCT_GREY = common dso_local global i64 0, align 8
@LCT_RGB = common dso_local global i64 0, align 8
@LCT_PALETTE = common dso_local global i64 0, align 8
@LCT_GREY_ALPHA = common dso_local global i64 0, align 8
@LCT_RGBA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*, i64, %struct.TYPE_3__*, i32)* @getPixelColorRGBA8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getPixelColorRGBA8(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 %5, %struct.TYPE_3__* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LCT_GREY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %149

28:                                               ; preds = %8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load i8*, i8** %14, align 8
  %35 = load i64, i64* %15, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %12, align 8
  store i8 %37, i8* %38, align 1
  %39 = load i8*, i8** %11, align 8
  store i8 %37, i8* %39, align 1
  %40 = load i8*, i8** %10, align 8
  store i8 %37, i8* %40, align 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i8, i8* %50, align 4
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i8*, i8** %13, align 8
  store i8 0, i8* %55, align 1
  br label %58

56:                                               ; preds = %45, %33
  %57 = load i8*, i8** %13, align 8
  store i8 -1, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %54
  br label %148

59:                                               ; preds = %28
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 16
  br i1 %63, label %64, label %105

64:                                               ; preds = %59
  %65 = load i8*, i8** %14, align 8
  %66 = load i64, i64* %15, align 8
  %67 = mul i64 %66, 2
  %68 = add i64 %67, 0
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %12, align 8
  store i8 %70, i8* %71, align 1
  %72 = load i8*, i8** %11, align 8
  store i8 %70, i8* %72, align 1
  %73 = load i8*, i8** %10, align 8
  store i8 %70, i8* %73, align 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %64
  %79 = load i8*, i8** %14, align 8
  %80 = load i64, i64* %15, align 8
  %81 = mul i64 %80, 2
  %82 = add i64 %81, 0
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = mul i32 256, %85
  %87 = load i8*, i8** %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = mul i64 %88, 2
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add i32 %86, %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i8, i8* %96, align 4
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %78
  %101 = load i8*, i8** %13, align 8
  store i8 0, i8* %101, align 1
  br label %104

102:                                              ; preds = %78, %64
  %103 = load i8*, i8** %13, align 8
  store i8 -1, i8* %103, align 1
  br label %104

104:                                              ; preds = %102, %100
  br label %147

105:                                              ; preds = %59
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 1, %108
  %110 = sub i32 %109, 1
  store i32 %110, i32* %18, align 4
  %111 = load i64, i64* %15, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = mul i64 %111, %115
  store i64 %116, i64* %19, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = call i32 @readBitsFromReversedStream(i64* %19, i8* %117, i64 %121)
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %20, align 4
  %124 = mul i32 %123, 255
  %125 = load i32, i32* %18, align 4
  %126 = udiv i32 %124, %125
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %12, align 8
  store i8 %127, i8* %128, align 1
  %129 = load i8*, i8** %11, align 8
  store i8 %127, i8* %129, align 1
  %130 = load i8*, i8** %10, align 8
  store i8 %127, i8* %130, align 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %105
  %136 = load i32, i32* %20, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i8, i8* %138, align 4
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %136, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i8*, i8** %13, align 8
  store i8 0, i8* %143, align 1
  br label %146

144:                                              ; preds = %135, %105
  %145 = load i8*, i8** %13, align 8
  store i8 -1, i8* %145, align 1
  br label %146

146:                                              ; preds = %144, %142
  br label %147

147:                                              ; preds = %146, %104
  br label %148

148:                                              ; preds = %147, %58
  br label %529

149:                                              ; preds = %8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @LCT_RGB, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %316

155:                                              ; preds = %149
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 8
  br i1 %159, label %160, label %218

160:                                              ; preds = %155
  %161 = load i8*, i8** %14, align 8
  %162 = load i64, i64* %15, align 8
  %163 = mul i64 %162, 3
  %164 = add i64 %163, 0
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i8*, i8** %10, align 8
  store i8 %166, i8* %167, align 1
  %168 = load i8*, i8** %14, align 8
  %169 = load i64, i64* %15, align 8
  %170 = mul i64 %169, 3
  %171 = add i64 %170, 1
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = load i8*, i8** %11, align 8
  store i8 %173, i8* %174, align 1
  %175 = load i8*, i8** %14, align 8
  %176 = load i64, i64* %15, align 8
  %177 = mul i64 %176, 3
  %178 = add i64 %177, 2
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = load i8*, i8** %12, align 8
  store i8 %180, i8* %181, align 1
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %215

186:                                              ; preds = %160
  %187 = load i8*, i8** %10, align 8
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load i8, i8* %191, align 4
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %189, %193
  br i1 %194, label %195, label %215

195:                                              ; preds = %186
  %196 = load i8*, i8** %11, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %215

204:                                              ; preds = %195
  %205 = load i8*, i8** %12, align 8
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 4
  %210 = load i8, i8* %209, align 2
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %207, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %204
  %214 = load i8*, i8** %13, align 8
  store i8 0, i8* %214, align 1
  br label %217

215:                                              ; preds = %204, %195, %186, %160
  %216 = load i8*, i8** %13, align 8
  store i8 -1, i8* %216, align 1
  br label %217

217:                                              ; preds = %215, %213
  br label %315

218:                                              ; preds = %155
  %219 = load i8*, i8** %14, align 8
  %220 = load i64, i64* %15, align 8
  %221 = mul i64 %220, 6
  %222 = add i64 %221, 0
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = load i8*, i8** %10, align 8
  store i8 %224, i8* %225, align 1
  %226 = load i8*, i8** %14, align 8
  %227 = load i64, i64* %15, align 8
  %228 = mul i64 %227, 6
  %229 = add i64 %228, 2
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = load i8*, i8** %11, align 8
  store i8 %231, i8* %232, align 1
  %233 = load i8*, i8** %14, align 8
  %234 = load i64, i64* %15, align 8
  %235 = mul i64 %234, 6
  %236 = add i64 %235, 4
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = load i8*, i8** %12, align 8
  store i8 %238, i8* %239, align 1
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 7
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %312

244:                                              ; preds = %218
  %245 = load i8*, i8** %14, align 8
  %246 = load i64, i64* %15, align 8
  %247 = mul i64 %246, 6
  %248 = add i64 %247, 0
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = mul i32 256, %251
  %253 = load i8*, i8** %14, align 8
  %254 = load i64, i64* %15, align 8
  %255 = mul i64 %254, 6
  %256 = add i64 %255, 1
  %257 = getelementptr inbounds i8, i8* %253, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = add i32 %252, %259
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 2
  %263 = load i8, i8* %262, align 4
  %264 = zext i8 %263 to i32
  %265 = icmp eq i32 %260, %264
  br i1 %265, label %266, label %312

266:                                              ; preds = %244
  %267 = load i8*, i8** %14, align 8
  %268 = load i64, i64* %15, align 8
  %269 = mul i64 %268, 6
  %270 = add i64 %269, 2
  %271 = getelementptr inbounds i8, i8* %267, i64 %270
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = mul i32 256, %273
  %275 = load i8*, i8** %14, align 8
  %276 = load i64, i64* %15, align 8
  %277 = mul i64 %276, 6
  %278 = add i64 %277, 3
  %279 = getelementptr inbounds i8, i8* %275, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = add i32 %274, %281
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 3
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = icmp eq i32 %282, %286
  br i1 %287, label %288, label %312

288:                                              ; preds = %266
  %289 = load i8*, i8** %14, align 8
  %290 = load i64, i64* %15, align 8
  %291 = mul i64 %290, 6
  %292 = add i64 %291, 4
  %293 = getelementptr inbounds i8, i8* %289, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = mul i32 256, %295
  %297 = load i8*, i8** %14, align 8
  %298 = load i64, i64* %15, align 8
  %299 = mul i64 %298, 6
  %300 = add i64 %299, 5
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = add i32 %296, %303
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 4
  %307 = load i8, i8* %306, align 2
  %308 = zext i8 %307 to i32
  %309 = icmp eq i32 %304, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %288
  %311 = load i8*, i8** %13, align 8
  store i8 0, i8* %311, align 1
  br label %314

312:                                              ; preds = %288, %266, %244, %218
  %313 = load i8*, i8** %13, align 8
  store i8 -1, i8* %313, align 1
  br label %314

314:                                              ; preds = %312, %310
  br label %315

315:                                              ; preds = %314, %217
  br label %528

316:                                              ; preds = %149
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @LCT_PALETTE, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %409

322:                                              ; preds = %316
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, 8
  br i1 %326, label %327, label %333

327:                                              ; preds = %322
  %328 = load i8*, i8** %14, align 8
  %329 = load i64, i64* %15, align 8
  %330 = getelementptr inbounds i8, i8* %328, i64 %329
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  store i32 %332, i32* %21, align 4
  br label %346

333:                                              ; preds = %322
  %334 = load i64, i64* %15, align 8
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = sext i32 %337 to i64
  %339 = mul i64 %334, %338
  store i64 %339, i64* %22, align 8
  %340 = load i8*, i8** %14, align 8
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = call i32 @readBitsFromReversedStream(i64* %22, i8* %340, i64 %344)
  store i32 %345, i32* %21, align 4
  br label %346

346:                                              ; preds = %333, %327
  %347 = load i32, i32* %21, align 4
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 8
  %351 = icmp uge i32 %347, %350
  br i1 %351, label %352, label %367

352:                                              ; preds = %346
  %353 = load i32, i32* %17, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %362, label %355

355:                                              ; preds = %352
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = icmp eq i32 %358, 8
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i32 46, i32 47
  store i32 %361, i32* %9, align 4
  br label %530

362:                                              ; preds = %352
  %363 = load i8*, i8** %12, align 8
  store i8 0, i8* %363, align 1
  %364 = load i8*, i8** %11, align 8
  store i8 0, i8* %364, align 1
  %365 = load i8*, i8** %10, align 8
  store i8 0, i8* %365, align 1
  %366 = load i8*, i8** %13, align 8
  store i8 -1, i8* %366, align 1
  br label %408

367:                                              ; preds = %346
  %368 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 6
  %370 = load i8*, i8** %369, align 8
  %371 = load i32, i32* %21, align 4
  %372 = mul i32 %371, 4
  %373 = add i32 %372, 0
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %370, i64 %374
  %376 = load i8, i8* %375, align 1
  %377 = load i8*, i8** %10, align 8
  store i8 %376, i8* %377, align 1
  %378 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 6
  %380 = load i8*, i8** %379, align 8
  %381 = load i32, i32* %21, align 4
  %382 = mul i32 %381, 4
  %383 = add i32 %382, 1
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %380, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = load i8*, i8** %11, align 8
  store i8 %386, i8* %387, align 1
  %388 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 6
  %390 = load i8*, i8** %389, align 8
  %391 = load i32, i32* %21, align 4
  %392 = mul i32 %391, 4
  %393 = add i32 %392, 2
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds i8, i8* %390, i64 %394
  %396 = load i8, i8* %395, align 1
  %397 = load i8*, i8** %12, align 8
  store i8 %396, i8* %397, align 1
  %398 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 6
  %400 = load i8*, i8** %399, align 8
  %401 = load i32, i32* %21, align 4
  %402 = mul i32 %401, 4
  %403 = add i32 %402, 3
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %400, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = load i8*, i8** %13, align 8
  store i8 %406, i8* %407, align 1
  br label %408

408:                                              ; preds = %367, %362
  br label %527

409:                                              ; preds = %316
  %410 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @LCT_GREY_ALPHA, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %455

415:                                              ; preds = %409
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = icmp eq i32 %418, 8
  br i1 %419, label %420, label %437

420:                                              ; preds = %415
  %421 = load i8*, i8** %14, align 8
  %422 = load i64, i64* %15, align 8
  %423 = mul i64 %422, 2
  %424 = add i64 %423, 0
  %425 = getelementptr inbounds i8, i8* %421, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = load i8*, i8** %12, align 8
  store i8 %426, i8* %427, align 1
  %428 = load i8*, i8** %11, align 8
  store i8 %426, i8* %428, align 1
  %429 = load i8*, i8** %10, align 8
  store i8 %426, i8* %429, align 1
  %430 = load i8*, i8** %14, align 8
  %431 = load i64, i64* %15, align 8
  %432 = mul i64 %431, 2
  %433 = add i64 %432, 1
  %434 = getelementptr inbounds i8, i8* %430, i64 %433
  %435 = load i8, i8* %434, align 1
  %436 = load i8*, i8** %13, align 8
  store i8 %435, i8* %436, align 1
  br label %454

437:                                              ; preds = %415
  %438 = load i8*, i8** %14, align 8
  %439 = load i64, i64* %15, align 8
  %440 = mul i64 %439, 4
  %441 = add i64 %440, 0
  %442 = getelementptr inbounds i8, i8* %438, i64 %441
  %443 = load i8, i8* %442, align 1
  %444 = load i8*, i8** %12, align 8
  store i8 %443, i8* %444, align 1
  %445 = load i8*, i8** %11, align 8
  store i8 %443, i8* %445, align 1
  %446 = load i8*, i8** %10, align 8
  store i8 %443, i8* %446, align 1
  %447 = load i8*, i8** %14, align 8
  %448 = load i64, i64* %15, align 8
  %449 = mul i64 %448, 4
  %450 = add i64 %449, 2
  %451 = getelementptr inbounds i8, i8* %447, i64 %450
  %452 = load i8, i8* %451, align 1
  %453 = load i8*, i8** %13, align 8
  store i8 %452, i8* %453, align 1
  br label %454

454:                                              ; preds = %437, %420
  br label %526

455:                                              ; preds = %409
  %456 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @LCT_RGBA, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %461, label %525

461:                                              ; preds = %455
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = icmp eq i32 %464, 8
  br i1 %465, label %466, label %495

466:                                              ; preds = %461
  %467 = load i8*, i8** %14, align 8
  %468 = load i64, i64* %15, align 8
  %469 = mul i64 %468, 4
  %470 = add i64 %469, 0
  %471 = getelementptr inbounds i8, i8* %467, i64 %470
  %472 = load i8, i8* %471, align 1
  %473 = load i8*, i8** %10, align 8
  store i8 %472, i8* %473, align 1
  %474 = load i8*, i8** %14, align 8
  %475 = load i64, i64* %15, align 8
  %476 = mul i64 %475, 4
  %477 = add i64 %476, 1
  %478 = getelementptr inbounds i8, i8* %474, i64 %477
  %479 = load i8, i8* %478, align 1
  %480 = load i8*, i8** %11, align 8
  store i8 %479, i8* %480, align 1
  %481 = load i8*, i8** %14, align 8
  %482 = load i64, i64* %15, align 8
  %483 = mul i64 %482, 4
  %484 = add i64 %483, 2
  %485 = getelementptr inbounds i8, i8* %481, i64 %484
  %486 = load i8, i8* %485, align 1
  %487 = load i8*, i8** %12, align 8
  store i8 %486, i8* %487, align 1
  %488 = load i8*, i8** %14, align 8
  %489 = load i64, i64* %15, align 8
  %490 = mul i64 %489, 4
  %491 = add i64 %490, 3
  %492 = getelementptr inbounds i8, i8* %488, i64 %491
  %493 = load i8, i8* %492, align 1
  %494 = load i8*, i8** %13, align 8
  store i8 %493, i8* %494, align 1
  br label %524

495:                                              ; preds = %461
  %496 = load i8*, i8** %14, align 8
  %497 = load i64, i64* %15, align 8
  %498 = mul i64 %497, 8
  %499 = add i64 %498, 0
  %500 = getelementptr inbounds i8, i8* %496, i64 %499
  %501 = load i8, i8* %500, align 1
  %502 = load i8*, i8** %10, align 8
  store i8 %501, i8* %502, align 1
  %503 = load i8*, i8** %14, align 8
  %504 = load i64, i64* %15, align 8
  %505 = mul i64 %504, 8
  %506 = add i64 %505, 2
  %507 = getelementptr inbounds i8, i8* %503, i64 %506
  %508 = load i8, i8* %507, align 1
  %509 = load i8*, i8** %11, align 8
  store i8 %508, i8* %509, align 1
  %510 = load i8*, i8** %14, align 8
  %511 = load i64, i64* %15, align 8
  %512 = mul i64 %511, 8
  %513 = add i64 %512, 4
  %514 = getelementptr inbounds i8, i8* %510, i64 %513
  %515 = load i8, i8* %514, align 1
  %516 = load i8*, i8** %12, align 8
  store i8 %515, i8* %516, align 1
  %517 = load i8*, i8** %14, align 8
  %518 = load i64, i64* %15, align 8
  %519 = mul i64 %518, 8
  %520 = add i64 %519, 6
  %521 = getelementptr inbounds i8, i8* %517, i64 %520
  %522 = load i8, i8* %521, align 1
  %523 = load i8*, i8** %13, align 8
  store i8 %522, i8* %523, align 1
  br label %524

524:                                              ; preds = %495, %466
  br label %525

525:                                              ; preds = %524, %455
  br label %526

526:                                              ; preds = %525, %454
  br label %527

527:                                              ; preds = %526, %408
  br label %528

528:                                              ; preds = %527, %315
  br label %529

529:                                              ; preds = %528, %148
  store i32 0, i32* %9, align 4
  br label %530

530:                                              ; preds = %529, %355
  %531 = load i32, i32* %9, align 4
  ret i32 %531
}

declare dso_local i32 @readBitsFromReversedStream(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
