; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose.c_filter_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_transpose.c_filter_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32*, i32, i32*, i32, i32, i32)*, i32 (i32*, i32, i32*, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32)* @filter_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_slice(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %9, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %10, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %11, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %325, %4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %328

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %46
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32 [ %55, %52 ], [ 0, %56 ]
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %61, %57
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  br label %69

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i32 [ %67, %64 ], [ 0, %68 ]
  store i32 %70, i32* %15, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %16, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @AV_CEIL_RSHIFT(i32 %80, i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @AV_CEIL_RSHIFT(i32 %85, i32 %86)
  store i32 %87, i32* %18, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @AV_CEIL_RSHIFT(i32 %90, i32 %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  %101 = mul nsw i32 %98, %100
  %102 = load i32, i32* %8, align 4
  %103 = sdiv i32 %101, %102
  store i32 %103, i32* %21, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %28, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %24, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %24, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  store i32* %128, i32** %22, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %23, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %25, align 4
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %69
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %17, align 4
  %157 = sub nsw i32 %156, 1
  %158 = mul nsw i32 %155, %157
  %159 = load i32*, i32** %23, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %23, align 8
  %162 = load i32, i32* %25, align 4
  %163 = mul nsw i32 %162, -1
  store i32 %163, i32* %25, align 4
  br label %164

164:                                              ; preds = %148, %69
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 2
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %164
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %20, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sub nsw i32 %181, 1
  %183 = mul nsw i32 %178, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %177, i64 %184
  store i32* %185, i32** %22, align 8
  %186 = load i32, i32* %24, align 4
  %187 = mul nsw i32 %186, -1
  store i32 %187, i32* %24, align 4
  br label %188

188:                                              ; preds = %170, %164
  %189 = load i32, i32* %20, align 4
  store i32 %189, i32* %27, align 4
  br label %190

190:                                              ; preds = %283, %188
  %191 = load i32, i32* %27, align 4
  %192 = load i32, i32* %21, align 4
  %193 = sub nsw i32 %192, 7
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %195, label %286

195:                                              ; preds = %190
  store i32 0, i32* %26, align 4
  br label %196

196:                                              ; preds = %232, %195
  %197 = load i32, i32* %26, align 4
  %198 = load i32, i32* %18, align 4
  %199 = sub nsw i32 %198, 7
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %235

201:                                              ; preds = %196
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32 (i32*, i32, i32*, i32)*, i32 (i32*, i32, i32*, i32)** %203, align 8
  %205 = load i32*, i32** %23, align 8
  %206 = load i32, i32* %26, align 4
  %207 = load i32, i32* %25, align 4
  %208 = mul nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i32, i32* %27, align 4
  %212 = load i32, i32* %16, align 4
  %213 = mul nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = load i32, i32* %25, align 4
  %217 = load i32*, i32** %22, align 8
  %218 = load i32, i32* %27, align 4
  %219 = load i32, i32* %20, align 4
  %220 = sub nsw i32 %218, %219
  %221 = load i32, i32* %24, align 4
  %222 = mul nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %217, i64 %223
  %225 = load i32, i32* %26, align 4
  %226 = load i32, i32* %16, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %224, i64 %228
  %230 = load i32, i32* %24, align 4
  %231 = call i32 %204(i32* %215, i32 %216, i32* %229, i32 %230)
  br label %232

232:                                              ; preds = %201
  %233 = load i32, i32* %26, align 4
  %234 = add nsw i32 %233, 8
  store i32 %234, i32* %26, align 4
  br label %196

235:                                              ; preds = %196
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* %26, align 4
  %238 = sub nsw i32 %236, %237
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %282

240:                                              ; preds = %235
  %241 = load i32, i32* %21, align 4
  %242 = load i32, i32* %27, align 4
  %243 = sub nsw i32 %241, %242
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %282

245:                                              ; preds = %240
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i32 (i32*, i32, i32*, i32, i32, i32)*, i32 (i32*, i32, i32*, i32, i32, i32)** %247, align 8
  %249 = load i32*, i32** %23, align 8
  %250 = load i32, i32* %26, align 4
  %251 = load i32, i32* %25, align 4
  %252 = mul nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %249, i64 %253
  %255 = load i32, i32* %27, align 4
  %256 = load i32, i32* %16, align 4
  %257 = mul nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %254, i64 %258
  %260 = load i32, i32* %25, align 4
  %261 = load i32*, i32** %22, align 8
  %262 = load i32, i32* %27, align 4
  %263 = load i32, i32* %20, align 4
  %264 = sub nsw i32 %262, %263
  %265 = load i32, i32* %24, align 4
  %266 = mul nsw i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %261, i64 %267
  %269 = load i32, i32* %26, align 4
  %270 = load i32, i32* %16, align 4
  %271 = mul nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %268, i64 %272
  %274 = load i32, i32* %24, align 4
  %275 = load i32, i32* %18, align 4
  %276 = load i32, i32* %26, align 4
  %277 = sub nsw i32 %275, %276
  %278 = load i32, i32* %21, align 4
  %279 = load i32, i32* %27, align 4
  %280 = sub nsw i32 %278, %279
  %281 = call i32 %248(i32* %259, i32 %260, i32* %273, i32 %274, i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %245, %240, %235
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %27, align 4
  %285 = add nsw i32 %284, 8
  store i32 %285, i32* %27, align 4
  br label %190

286:                                              ; preds = %190
  %287 = load i32, i32* %21, align 4
  %288 = load i32, i32* %27, align 4
  %289 = sub nsw i32 %287, %288
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %324

291:                                              ; preds = %286
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  %294 = load i32 (i32*, i32, i32*, i32, i32, i32)*, i32 (i32*, i32, i32*, i32, i32, i32)** %293, align 8
  %295 = load i32*, i32** %23, align 8
  %296 = load i32, i32* %25, align 4
  %297 = mul nsw i32 0, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %295, i64 %298
  %300 = load i32, i32* %27, align 4
  %301 = load i32, i32* %16, align 4
  %302 = mul nsw i32 %300, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %299, i64 %303
  %305 = load i32, i32* %25, align 4
  %306 = load i32*, i32** %22, align 8
  %307 = load i32, i32* %27, align 4
  %308 = load i32, i32* %20, align 4
  %309 = sub nsw i32 %307, %308
  %310 = load i32, i32* %24, align 4
  %311 = mul nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %306, i64 %312
  %314 = load i32, i32* %16, align 4
  %315 = mul nsw i32 0, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  %318 = load i32, i32* %24, align 4
  %319 = load i32, i32* %18, align 4
  %320 = load i32, i32* %21, align 4
  %321 = load i32, i32* %27, align 4
  %322 = sub nsw i32 %320, %321
  %323 = call i32 %294(i32* %304, i32 %305, i32* %317, i32 %318, i32 %319, i32 %322)
  br label %324

324:                                              ; preds = %291, %286
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %13, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %13, align 4
  br label %40

328:                                              ; preds = %40
  ret i32 0
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
