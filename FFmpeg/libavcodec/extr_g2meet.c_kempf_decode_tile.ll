; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_kempf_decode_tile.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_kempf_decode_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*, i32)* @kempf_decode_tile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempf_decode_tile(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca [768 x i32], align 16
  %23 = alloca [3 x i32], align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %17, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %21, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  store i32 %45, i32* %24, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  %54 = mul nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %48, i64 %55
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %56, i64 %66
  store i32* %67, i32** %32, align 8
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %70, label %72

70:                                               ; preds = %5
  %71 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %71, i32* %6, align 4
  br label %458

72:                                               ; preds = %5
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %76, %79
  %81 = sub nsw i32 %75, %80
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @FFMIN(i32 %81, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = sub nsw i32 %88, %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @FFMIN(i32 %94, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %10, align 8
  %101 = load i32, i32* %99, align 4
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = ashr i32 %102, 5
  store i32 %103, i32* %25, align 4
  %104 = load i32, i32* %25, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %143

106:                                              ; preds = %72
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @memcpy(i32* %107, i32* %108, i32 3)
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  store i32* %111, i32** %10, align 8
  store i32 0, i32* %33, align 4
  br label %112

112:                                              ; preds = %133, %106
  %113 = load i32, i32* %33, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %142

116:                                              ; preds = %112
  store i32 0, i32* %19, align 4
  br label %117

117:                                              ; preds = %129, %116
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i32*, i32** %32, align 8
  %123 = load i32, i32* %19, align 4
  %124 = mul nsw i32 %123, 3
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %128 = call i32 @memcpy(i32* %126, i32* %127, i32 3)
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %117

132:                                              ; preds = %117
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %33, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %33, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** %32, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %32, align 8
  br label %112

142:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  br label %458

143:                                              ; preds = %72
  %144 = load i32, i32* %25, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %164

146:                                              ; preds = %143
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 10
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32*, i32** %10, align 8
  %152 = load i32*, i32** %21, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = ptrtoint i32* %152 to i64
  %155 = ptrtoint i32* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 4
  %158 = trunc i64 %157 to i32
  %159 = load i32*, i32** %32, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @jpg_decode_data(i32* %148, i32 %149, i32 %150, i32* %151, i32 %158, i32* %159, i32 %162, i32* null, i32 0, i32 0, i32 0)
  store i32 %163, i32* %6, align 4
  br label %458

164:                                              ; preds = %143
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %25, align 4
  %167 = icmp ne i32 %166, 2
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %170 = load i32*, i32** %10, align 8
  %171 = call i32 @memcpy(i32* %169, i32* %170, i32 3)
  %172 = load i32*, i32** %10, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 3
  store i32* %173, i32** %10, align 8
  br label %174

174:                                              ; preds = %168, %165
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %10, align 8
  %177 = load i32, i32* %175, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  %179 = load i32*, i32** %21, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = ptrtoint i32* %179 to i64
  %182 = ptrtoint i32* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sdiv exact i64 %183, 4
  %185 = load i32, i32* %16, align 4
  %186 = mul nsw i32 %185, 3
  %187 = sext i32 %186 to i64
  %188 = icmp slt i64 %184, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %174
  %190 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %190, i32* %6, align 4
  br label %458

191:                                              ; preds = %174
  %192 = getelementptr inbounds [768 x i32], [768 x i32]* %22, i64 0, i64 0
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* %16, align 4
  %195 = mul nsw i32 %194, 3
  %196 = call i32 @memcpy(i32* %192, i32* %193, i32 %195)
  %197 = load i32, i32* %16, align 4
  %198 = mul nsw i32 %197, 3
  %199 = load i32*, i32** %10, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %10, align 8
  %202 = load i32, i32* %25, align 4
  %203 = icmp ne i32 %202, 2
  br i1 %203, label %204, label %225

204:                                              ; preds = %191
  store i32 0, i32* %19, align 4
  br label %205

205:                                              ; preds = %221, %204
  %206 = load i32, i32* %19, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %224

209:                                              ; preds = %205
  %210 = getelementptr inbounds [768 x i32], [768 x i32]* %22, i64 0, i64 0
  %211 = load i32, i32* %19, align 4
  %212 = mul nsw i32 %211, 3
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %216 = call i32 @memcmp(i32* %214, i32* %215, i32 3)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %209
  %219 = load i32, i32* %19, align 4
  store i32 %219, i32* %17, align 4
  br label %224

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %19, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %19, align 4
  br label %205

224:                                              ; preds = %218, %205
  br label %225

225:                                              ; preds = %224, %191
  %226 = load i32*, i32** %21, align 8
  %227 = load i32*, i32** %10, align 8
  %228 = ptrtoint i32* %226 to i64
  %229 = ptrtoint i32* %227 to i64
  %230 = sub i64 %228, %229
  %231 = sdiv exact i64 %230, 4
  %232 = icmp slt i64 %231, 2
  br i1 %232, label %233, label %234

233:                                              ; preds = %225
  store i32 0, i32* %6, align 4
  br label %458

234:                                              ; preds = %225
  %235 = load i32*, i32** %10, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = shl i32 %237, 8
  %239 = load i32*, i32** %10, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %238, %241
  store i32 %242, i32* %15, align 4
  %243 = load i32*, i32** %10, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  store i32* %244, i32** %10, align 8
  %245 = load i32*, i32** %21, align 8
  %246 = load i32*, i32** %10, align 8
  %247 = ptrtoint i32* %245 to i64
  %248 = ptrtoint i32* %246 to i64
  %249 = sub i64 %247, %248
  %250 = sdiv exact i64 %249, 4
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %25, align 4
  %253 = icmp ne i32 %252, 2
  %254 = zext i1 %253 to i32
  %255 = add nsw i32 %251, %254
  %256 = sext i32 %255 to i64
  %257 = icmp slt i64 %250, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %234
  %259 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %259, i32* %6, align 4
  br label %458

260:                                              ; preds = %234
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 9
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %10, align 8
  %265 = load i32, i32* %15, align 4
  %266 = call i32 @uncompress(i32 %263, i32* %24, i32* %264, i32 %265)
  store i32 %266, i32* %18, align 4
  %267 = load i32, i32* %18, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %260
  %270 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %270, i32* %6, align 4
  br label %458

271:                                              ; preds = %260
  %272 = load i32, i32* %15, align 4
  %273 = load i32*, i32** %10, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %10, align 8
  %276 = load i32, i32* %25, align 4
  %277 = icmp eq i32 %276, 2
  br i1 %277, label %278, label %293

278:                                              ; preds = %271
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %24, align 4
  %283 = load i32*, i32** %32, align 8
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %13, align 4
  %289 = getelementptr inbounds [768 x i32], [768 x i32]* %22, i64 0, i64 0
  %290 = load i32, i32* %16, align 4
  %291 = load i32, i32* %17, align 4
  %292 = call i32 @kempf_restore_buf(i32 %281, i32 %282, i32* %283, i32 %286, i32* null, i32 0, i32 %287, i32 %288, i32* %289, i32 %290, i32 %291)
  store i32 0, i32* %6, align 4
  br label %458

293:                                              ; preds = %271
  %294 = load i32*, i32** %10, align 8
  %295 = getelementptr inbounds i32, i32* %294, i32 1
  store i32* %295, i32** %10, align 8
  %296 = load i32, i32* %294, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %298 = load i32, i32* %12, align 4
  %299 = call i32 @FFALIGN(i32 %298, i32 16)
  %300 = ashr i32 %299, 3
  store i32 %300, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %19, align 4
  br label %301

301:                                              ; preds = %400, %293
  %302 = load i32, i32* %19, align 4
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @FFALIGN(i32 %303, i32 16)
  %305 = ashr i32 %304, 4
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %403

307:                                              ; preds = %301
  store i32 0, i32* %20, align 4
  br label %308

308:                                              ; preds = %396, %307
  %309 = load i32, i32* %20, align 4
  %310 = load i32, i32* %12, align 4
  %311 = call i32 @FFALIGN(i32 %310, i32 16)
  %312 = ashr i32 %311, 4
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %399

314:                                              ; preds = %308
  %315 = load i32, i32* %29, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %327, label %317

317:                                              ; preds = %314
  %318 = load i32*, i32** %10, align 8
  %319 = load i32*, i32** %21, align 8
  %320 = icmp uge i32* %318, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %317
  %322 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %322, i32* %6, align 4
  br label %458

323:                                              ; preds = %317
  %324 = load i32*, i32** %10, align 8
  %325 = getelementptr inbounds i32, i32* %324, i32 1
  store i32* %325, i32** %10, align 8
  %326 = load i32, i32* %324, align 4
  store i32 %326, i32* %30, align 4
  store i32 8, i32* %29, align 4
  br label %327

327:                                              ; preds = %323, %314
  %328 = load i32, i32* %30, align 4
  %329 = and i32 %328, 1
  store i32 %329, i32* %31, align 4
  %330 = load i32, i32* %29, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %29, align 4
  %332 = load i32, i32* %30, align 4
  %333 = ashr i32 %332, 1
  store i32 %333, i32* %30, align 4
  %334 = load i32, i32* %31, align 4
  %335 = load i32, i32* %27, align 4
  %336 = add nsw i32 %335, %334
  store i32 %336, i32* %27, align 4
  %337 = load i32, i32* %27, align 4
  %338 = load i32, i32* %26, align 4
  %339 = icmp sgt i32 %337, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %327
  %341 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %341, i32* %6, align 4
  br label %458

342:                                              ; preds = %327
  %343 = load i32, i32* %31, align 4
  %344 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 6
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %20, align 4
  %348 = mul nsw i32 %347, 2
  %349 = add nsw i32 %348, 1
  %350 = load i32, i32* %19, align 4
  %351 = mul nsw i32 %350, 2
  %352 = add nsw i32 %351, 1
  %353 = load i32, i32* %28, align 4
  %354 = mul nsw i32 %352, %353
  %355 = add nsw i32 %349, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %346, i64 %356
  store i32 %343, i32* %357, align 4
  %358 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %358, i32 0, i32 6
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %20, align 4
  %362 = mul nsw i32 %361, 2
  %363 = load i32, i32* %19, align 4
  %364 = mul nsw i32 %363, 2
  %365 = add nsw i32 %364, 1
  %366 = load i32, i32* %28, align 4
  %367 = mul nsw i32 %365, %366
  %368 = add nsw i32 %362, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %360, i64 %369
  store i32 %343, i32* %370, align 4
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 6
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %20, align 4
  %375 = mul nsw i32 %374, 2
  %376 = add nsw i32 %375, 1
  %377 = load i32, i32* %19, align 4
  %378 = mul nsw i32 %377, 2
  %379 = load i32, i32* %28, align 4
  %380 = mul nsw i32 %378, %379
  %381 = add nsw i32 %376, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %373, i64 %382
  store i32 %343, i32* %383, align 4
  %384 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i32 0, i32 6
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %20, align 4
  %388 = mul nsw i32 %387, 2
  %389 = load i32, i32* %19, align 4
  %390 = mul nsw i32 %389, 2
  %391 = load i32, i32* %28, align 4
  %392 = mul nsw i32 %390, %391
  %393 = add nsw i32 %388, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %386, i64 %394
  store i32 %343, i32* %395, align 4
  br label %396

396:                                              ; preds = %342
  %397 = load i32, i32* %20, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %20, align 4
  br label %308

399:                                              ; preds = %308
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %19, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %19, align 4
  br label %301

403:                                              ; preds = %301
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 7
  %406 = load i32*, i32** %405, align 8
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 8
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* %13, align 4
  %411 = mul nsw i32 %409, %410
  %412 = call i32 @memset(i32* %406, i32 0, i32 %411)
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 10
  %415 = load i32, i32* %12, align 4
  %416 = load i32, i32* %13, align 4
  %417 = load i32*, i32** %10, align 8
  %418 = load i32*, i32** %21, align 8
  %419 = load i32*, i32** %10, align 8
  %420 = ptrtoint i32* %418 to i64
  %421 = ptrtoint i32* %419 to i64
  %422 = sub i64 %420, %421
  %423 = sdiv exact i64 %422, 4
  %424 = trunc i64 %423 to i32
  %425 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %425, i32 0, i32 7
  %427 = load i32*, i32** %426, align 8
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 8
  %430 = load i32, i32* %429, align 8
  %431 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 6
  %433 = load i32*, i32** %432, align 8
  %434 = load i32, i32* %28, align 4
  %435 = load i32, i32* %26, align 4
  %436 = mul nsw i32 %435, 4
  %437 = call i32 @jpg_decode_data(i32* %414, i32 %415, i32 %416, i32* %417, i32 %424, i32* %427, i32 %430, i32* %433, i32 %434, i32 %436, i32 0)
  %438 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 9
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* %24, align 4
  %442 = load i32*, i32** %32, align 8
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i32 0, i32 7
  %448 = load i32*, i32** %447, align 8
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 8
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* %12, align 4
  %453 = load i32, i32* %13, align 4
  %454 = getelementptr inbounds [768 x i32], [768 x i32]* %22, i64 0, i64 0
  %455 = load i32, i32* %16, align 4
  %456 = load i32, i32* %17, align 4
  %457 = call i32 @kempf_restore_buf(i32 %440, i32 %441, i32* %442, i32 %445, i32* %448, i32 %451, i32 %452, i32 %453, i32* %454, i32 %455, i32 %456)
  store i32 0, i32* %6, align 4
  br label %458

458:                                              ; preds = %403, %340, %321, %278, %269, %258, %233, %189, %146, %142, %70
  %459 = load i32, i32* %6, align 4
  ret i32 %459
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @jpg_decode_data(i32*, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @uncompress(i32, i32*, i32*, i32) #1

declare dso_local i32 @kempf_restore_buf(i32, i32, i32*, i32, i32*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
