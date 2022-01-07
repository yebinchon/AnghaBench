; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmnc.c_put_cursor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vmnc.c_put_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32, i64, i64, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*, i32, i32)* @put_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_cursor(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %13, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = icmp slt i64 %30, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %5
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %40, %5
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = icmp slt i64 %55, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %49
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %65, %49
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %15, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %89

89:                                               ; preds = %85, %74
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %96
  br label %320

103:                                              ; preds = %99
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %104, %107
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %7, align 4
  %111 = mul nsw i32 %109, %110
  %112 = add nsw i32 %108, %111
  %113 = load i32*, i32** %6, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %6, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %182

120:                                              ; preds = %103
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 7
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %17, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 8
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %18, align 8
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %178, %120
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %181

131:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %158, %131
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %161

136:                                              ; preds = %132
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %17, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %141, %146
  %148 = load i32*, i32** %18, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = xor i32 %147, %152
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %136
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %132

161:                                              ; preds = %132
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32*, i32** %18, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32* %167, i32** %18, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32*, i32** %17, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %17, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %6, align 8
  br label %178

178:                                              ; preds = %161
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %127

181:                                              ; preds = %127
  br label %320

182:                                              ; preds = %103
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %250

187:                                              ; preds = %182
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 7
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** %19, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 8
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %20, align 8
  store i32 0, i32* %12, align 4
  br label %194

194:                                              ; preds = %246, %187
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %249

198:                                              ; preds = %194
  %199 = load i32*, i32** %6, align 8
  store i32* %199, i32** %21, align 8
  store i32 0, i32* %11, align 4
  br label %200

200:                                              ; preds = %226, %198
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %13, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %229

204:                                              ; preds = %200
  %205 = load i32*, i32** %21, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %19, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = and i32 %209, %214
  %216 = load i32*, i32** %20, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = xor i32 %215, %220
  %222 = load i32*, i32** %21, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4
  br label %226

226:                                              ; preds = %204
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  br label %200

229:                                              ; preds = %200
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32*, i32** %20, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32* %235, i32** %20, align 8
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32*, i32** %19, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %19, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load i32*, i32** %6, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32* %245, i32** %6, align 8
  br label %246

246:                                              ; preds = %229
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %12, align 4
  br label %194

249:                                              ; preds = %194
  br label %319

250:                                              ; preds = %182
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 4
  br i1 %254, label %255, label %318

255:                                              ; preds = %250
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 7
  %258 = load i32*, i32** %257, align 8
  store i32* %258, i32** %22, align 8
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 8
  %261 = load i32*, i32** %260, align 8
  store i32* %261, i32** %23, align 8
  store i32 0, i32* %12, align 4
  br label %262

262:                                              ; preds = %314, %255
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %14, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %317

266:                                              ; preds = %262
  %267 = load i32*, i32** %6, align 8
  store i32* %267, i32** %24, align 8
  store i32 0, i32* %11, align 4
  br label %268

268:                                              ; preds = %294, %266
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* %13, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %297

272:                                              ; preds = %268
  %273 = load i32*, i32** %24, align 8
  %274 = load i32, i32* %11, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %22, align 8
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = and i32 %277, %282
  %284 = load i32*, i32** %23, align 8
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = xor i32 %283, %288
  %290 = load i32*, i32** %24, align 8
  %291 = load i32, i32* %11, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  store i32 %289, i32* %293, align 4
  br label %294

294:                                              ; preds = %272
  %295 = load i32, i32* %11, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %11, align 4
  br label %268

297:                                              ; preds = %268
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32*, i32** %23, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  store i32* %303, i32** %23, align 8
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32*, i32** %22, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32* %309, i32** %22, align 8
  %310 = load i32, i32* %7, align 4
  %311 = load i32*, i32** %6, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  store i32* %313, i32** %6, align 8
  br label %314

314:                                              ; preds = %297
  %315 = load i32, i32* %12, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %12, align 4
  br label %262

317:                                              ; preds = %262
  br label %318

318:                                              ; preds = %317, %250
  br label %319

319:                                              ; preds = %318, %249
  br label %320

320:                                              ; preds = %102, %319, %181
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
