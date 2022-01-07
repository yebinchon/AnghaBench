; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_draw_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_draw_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32*, i32** }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_14__*)* @draw_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_line(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_15__* %5, %struct.TYPE_14__* %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_15__* %5, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %14, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  %26 = call i32 @FFABS(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 -1
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @FFABS(i32 %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 -1
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %7
  %45 = load i32, i32* %15, align 4
  br label %49

46:                                               ; preds = %7
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %45, %44 ], [ %48, %46 ]
  %51 = sdiv i32 %50, 2
  store i32 %51, i32* %19, align 4
  br label %52

52:                                               ; preds = %325, %49
  %53 = load i32, i32* %9, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %292

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %292

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %292

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %292

70:                                               ; preds = %64
  store i32 0, i32* %21, align 4
  br label %71

71:                                               ; preds = %288, %70
  %72 = load i32, i32* %21, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %291

77:                                               ; preds = %71
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %185

89:                                               ; preds = %77
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %137

94:                                               ; preds = %89
  store i32 0, i32* %22, align 4
  br label %95

95:                                               ; preds = %133, %94
  %96 = load i32, i32* %22, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %136

98:                                               ; preds = %95
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %22, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %114, %119
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %121, %126
  %128 = add nsw i32 %120, %127
  %129 = load i32, i32* %22, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %113, i64 %131
  store i32 %108, i32* %132, align 4
  br label %133

133:                                              ; preds = %98
  %134 = load i32, i32* %22, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %22, align 4
  br label %95

136:                                              ; preds = %95
  br label %184

137:                                              ; preds = %89
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 3
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %21, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %21, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %162, %169
  %171 = mul nsw i32 %161, %170
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %172, %179
  %181 = add nsw i32 %171, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %154, i64 %182
  store i32 %147, i32* %183, align 4
  br label %184

184:                                              ; preds = %137, %136
  br label %287

185:                                              ; preds = %77
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %236

190:                                              ; preds = %185
  store i32 0, i32* %22, align 4
  br label %191

191:                                              ; preds = %232, %190
  %192 = load i32, i32* %22, align 4
  %193 = icmp slt i32 %192, 4
  br i1 %193, label %194, label %235

194:                                              ; preds = %191
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  %197 = load i32**, i32*** %196, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %200, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %199, i64 %207
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %209, %214
  %216 = load i32, i32* %22, align 4
  %217 = add nsw i32 %215, %216
  %218 = mul nsw i32 2, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %208, i64 %219
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %22, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @AV_WN16(i32* %220, i32 %230)
  br label %232

232:                                              ; preds = %194
  %233 = load i32, i32* %22, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %22, align 4
  br label %191

235:                                              ; preds = %191
  br label %286

236:                                              ; preds = %185
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 3
  %239 = load i32**, i32*** %238, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %21, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %21, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = ashr i32 %251, %258
  %260 = mul nsw i32 %250, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %243, i64 %261
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 3
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %21, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = ashr i32 %263, %270
  %272 = mul nsw i32 %271, 2
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %262, i64 %273
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = load i32, i32* %21, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @AV_WN16(i32* %274, i32 %284)
  br label %286

286:                                              ; preds = %236, %235
  br label %287

287:                                              ; preds = %286, %184
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %21, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %21, align 4
  br label %71

291:                                              ; preds = %71
  br label %292

292:                                              ; preds = %291, %64, %58, %55, %52
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %11, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %292
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* %12, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %326

301:                                              ; preds = %296, %292
  %302 = load i32, i32* %19, align 4
  store i32 %302, i32* %20, align 4
  %303 = load i32, i32* %20, align 4
  %304 = load i32, i32* %15, align 4
  %305 = sub nsw i32 0, %304
  %306 = icmp sgt i32 %303, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %301
  %308 = load i32, i32* %17, align 4
  %309 = load i32, i32* %19, align 4
  %310 = sub nsw i32 %309, %308
  store i32 %310, i32* %19, align 4
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %312, %311
  store i32 %313, i32* %9, align 4
  br label %314

314:                                              ; preds = %307, %301
  %315 = load i32, i32* %20, align 4
  %316 = load i32, i32* %17, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %325

318:                                              ; preds = %314
  %319 = load i32, i32* %15, align 4
  %320 = load i32, i32* %19, align 4
  %321 = add nsw i32 %320, %319
  store i32 %321, i32* %19, align 4
  %322 = load i32, i32* %18, align 4
  %323 = load i32, i32* %10, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %10, align 4
  br label %325

325:                                              ; preds = %318, %314
  br label %52

326:                                              ; preds = %300
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @AV_WN16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
