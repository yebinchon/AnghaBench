; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_draw_cursor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rasc.c_draw_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i64, i64, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32**, i32* }

@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB555LE = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @draw_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_cursor(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  br label %630

36:                                               ; preds = %1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %36
  br label %630

53:                                               ; preds = %44
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %53
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %66, %53
  br label %630

79:                                               ; preds = %66
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %294

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 1
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %290, %85
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %95, %98
  br i1 %99, label %100, label %293

100:                                              ; preds = %93
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %286, %100
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %289

107:                                              ; preds = %101
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 3, %113
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %118, %120
  %122 = sub nsw i64 %121, 1
  %123 = mul nsw i64 %115, %122
  %124 = load i32, i32* %7, align 4
  %125 = mul nsw i32 3, %124
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %123, %126
  %128 = add nsw i64 %127, 0
  %129 = getelementptr inbounds i32, i32* %110, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %8, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 3, %136
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %141, %143
  %145 = sub nsw i64 %144, 1
  %146 = mul nsw i64 %138, %145
  %147 = load i32, i32* %7, align 4
  %148 = mul nsw i32 3, %147
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %146, %149
  %151 = add nsw i64 %150, 1
  %152 = getelementptr inbounds i32, i32* %133, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %9, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 3, %159
  %161 = sext i32 %160 to i64
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = sub nsw i64 %164, %166
  %168 = sub nsw i64 %167, 1
  %169 = mul nsw i64 %161, %168
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 3, %170
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %169, %172
  %174 = add nsw i64 %173, 2
  %175 = getelementptr inbounds i32, i32* %156, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* @INT_MAX, align 4
  store i32 %177, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %178, %183
  br i1 %184, label %185, label %202

185:                                              ; preds = %107
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %186, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %185
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %194, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %286

202:                                              ; preds = %193, %185, %107
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 5
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32**, i32*** %206, align 8
  %208 = getelementptr inbounds i32*, i32** %207, i64 0
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %220, %222
  %224 = mul nsw i64 %217, %223
  %225 = getelementptr inbounds i32, i32* %209, i64 %224
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %228, %230
  %232 = getelementptr inbounds i32, i32* %225, i64 %231
  store i32* %232, i32** %4, align 8
  store i32 0, i32* %14, align 4
  br label %233

233:                                              ; preds = %279, %202
  %234 = load i32, i32* %14, align 4
  %235 = icmp slt i32 %234, 256
  br i1 %235, label %236, label %282

236:                                              ; preds = %233
  %237 = load i32*, i32** %5, align 8
  %238 = load i32, i32* %14, align 4
  %239 = mul nsw i32 %238, 4
  %240 = add nsw i32 %239, 0
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %15, align 4
  %244 = load i32*, i32** %5, align 8
  %245 = load i32, i32* %14, align 4
  %246 = mul nsw i32 %245, 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %16, align 4
  %251 = load i32*, i32** %5, align 8
  %252 = load i32, i32* %14, align 4
  %253 = mul nsw i32 %252, 4
  %254 = add nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %251, i64 %255
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %17, align 4
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* %15, align 4
  %260 = sub nsw i32 %258, %259
  %261 = call i32 @FFABS(i32 %260)
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* %16, align 4
  %264 = sub nsw i32 %262, %263
  %265 = call i32 @FFABS(i32 %264)
  %266 = add nsw i32 %261, %265
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %17, align 4
  %269 = sub nsw i32 %267, %268
  %270 = call i32 @FFABS(i32 %269)
  %271 = add nsw i32 %266, %270
  store i32 %271, i32* %13, align 4
  %272 = load i32, i32* %13, align 4
  %273 = load i32, i32* %11, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %278

275:                                              ; preds = %236
  %276 = load i32, i32* %13, align 4
  store i32 %276, i32* %11, align 4
  %277 = load i32, i32* %14, align 4
  store i32 %277, i32* %12, align 4
  br label %278

278:                                              ; preds = %275, %236
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %14, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %14, align 4
  br label %233

282:                                              ; preds = %233
  %283 = load i32, i32* %12, align 4
  %284 = load i32*, i32** %4, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %282, %201
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %7, align 4
  br label %101

289:                                              ; preds = %101
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %6, align 4
  br label %93

293:                                              ; preds = %93
  br label %630

294:                                              ; preds = %79
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @AV_PIX_FMT_RGB555LE, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %464

300:                                              ; preds = %294
  store i32 0, i32* %18, align 4
  br label %301

301:                                              ; preds = %460, %300
  %302 = load i32, i32* %18, align 4
  %303 = sext i32 %302 to i64
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = icmp slt i64 %303, %306
  br i1 %307, label %308, label %463

308:                                              ; preds = %301
  store i32 0, i32* %19, align 4
  br label %309

309:                                              ; preds = %456, %308
  %310 = load i32, i32* %19, align 4
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = icmp slt i32 %310, %313
  br i1 %314, label %315, label %459

315:                                              ; preds = %309
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = mul nsw i32 3, %321
  %323 = sext i32 %322 to i64
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = load i32, i32* %18, align 4
  %328 = sext i32 %327 to i64
  %329 = sub nsw i64 %326, %328
  %330 = sub nsw i64 %329, 1
  %331 = mul nsw i64 %323, %330
  %332 = load i32, i32* %19, align 4
  %333 = mul nsw i32 3, %332
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %331, %334
  %336 = add nsw i64 %335, 0
  %337 = getelementptr inbounds i32, i32* %318, i64 %336
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %20, align 4
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = mul nsw i32 3, %344
  %346 = sext i32 %345 to i64
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 4
  %349 = load i64, i64* %348, align 8
  %350 = load i32, i32* %18, align 4
  %351 = sext i32 %350 to i64
  %352 = sub nsw i64 %349, %351
  %353 = sub nsw i64 %352, 1
  %354 = mul nsw i64 %346, %353
  %355 = load i32, i32* %19, align 4
  %356 = mul nsw i32 3, %355
  %357 = sext i32 %356 to i64
  %358 = add nsw i64 %354, %357
  %359 = add nsw i64 %358, 1
  %360 = getelementptr inbounds i32, i32* %341, i64 %359
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %21, align 4
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = mul nsw i32 3, %367
  %369 = sext i32 %368 to i64
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 4
  %372 = load i64, i64* %371, align 8
  %373 = load i32, i32* %18, align 4
  %374 = sext i32 %373 to i64
  %375 = sub nsw i64 %372, %374
  %376 = sub nsw i64 %375, 1
  %377 = mul nsw i64 %369, %376
  %378 = load i32, i32* %19, align 4
  %379 = mul nsw i32 3, %378
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %377, %380
  %382 = add nsw i64 %381, 2
  %383 = getelementptr inbounds i32, i32* %364, i64 %382
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %22, align 4
  %385 = load i32, i32* %20, align 4
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 0
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %385, %390
  br i1 %391, label %392, label %409

392:                                              ; preds = %315
  %393 = load i32, i32* %21, align 4
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 1
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %393, %398
  br i1 %399, label %400, label %409

400:                                              ; preds = %392
  %401 = load i32, i32* %22, align 4
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 2
  %406 = load i32, i32* %405, align 4
  %407 = icmp eq i32 %401, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %400
  br label %456

409:                                              ; preds = %400, %392, %315
  %410 = load i32, i32* %20, align 4
  %411 = ashr i32 %410, 3
  store i32 %411, i32* %20, align 4
  %412 = load i32, i32* %21, align 4
  %413 = ashr i32 %412, 3
  store i32 %413, i32* %21, align 4
  %414 = load i32, i32* %22, align 4
  %415 = ashr i32 %414, 3
  store i32 %415, i32* %22, align 4
  %416 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 5
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 0
  %420 = load i32**, i32*** %419, align 8
  %421 = getelementptr inbounds i32*, i32** %420, i64 0
  %422 = load i32*, i32** %421, align 8
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 5
  %425 = load %struct.TYPE_5__*, %struct.TYPE_5__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 1
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  %431 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = load i32, i32* %18, align 4
  %435 = sext i32 %434 to i64
  %436 = add nsw i64 %433, %435
  %437 = mul nsw i64 %430, %436
  %438 = getelementptr inbounds i32, i32* %422, i64 %437
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = load i32, i32* %19, align 4
  %443 = sext i32 %442 to i64
  %444 = add nsw i64 %441, %443
  %445 = mul nsw i64 2, %444
  %446 = getelementptr inbounds i32, i32* %438, i64 %445
  store i32* %446, i32** %4, align 8
  %447 = load i32*, i32** %4, align 8
  %448 = load i32, i32* %20, align 4
  %449 = load i32, i32* %21, align 4
  %450 = shl i32 %449, 5
  %451 = or i32 %448, %450
  %452 = load i32, i32* %22, align 4
  %453 = shl i32 %452, 10
  %454 = or i32 %451, %453
  %455 = call i32 @AV_WL16(i32* %447, i32 %454)
  br label %456

456:                                              ; preds = %409, %408
  %457 = load i32, i32* %19, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %19, align 4
  br label %309

459:                                              ; preds = %309
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %18, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %18, align 4
  br label %301

463:                                              ; preds = %301
  br label %629

464:                                              ; preds = %294
  %465 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %466 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* @AV_PIX_FMT_BGR0, align 8
  %469 = icmp eq i64 %467, %468
  br i1 %469, label %470, label %628

470:                                              ; preds = %464
  store i32 0, i32* %23, align 4
  br label %471

471:                                              ; preds = %624, %470
  %472 = load i32, i32* %23, align 4
  %473 = sext i32 %472 to i64
  %474 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 4
  %476 = load i64, i64* %475, align 8
  %477 = icmp slt i64 %473, %476
  br i1 %477, label %478, label %627

478:                                              ; preds = %471
  store i32 0, i32* %24, align 4
  br label %479

479:                                              ; preds = %620, %478
  %480 = load i32, i32* %24, align 4
  %481 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 3
  %483 = load i32, i32* %482, align 8
  %484 = icmp slt i32 %480, %483
  br i1 %484, label %485, label %623

485:                                              ; preds = %479
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %486, i32 0, i32 0
  %488 = load i32*, i32** %487, align 8
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 3
  %491 = load i32, i32* %490, align 8
  %492 = mul nsw i32 3, %491
  %493 = sext i32 %492 to i64
  %494 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %494, i32 0, i32 4
  %496 = load i64, i64* %495, align 8
  %497 = load i32, i32* %23, align 4
  %498 = sext i32 %497 to i64
  %499 = sub nsw i64 %496, %498
  %500 = sub nsw i64 %499, 1
  %501 = mul nsw i64 %493, %500
  %502 = load i32, i32* %24, align 4
  %503 = mul nsw i32 3, %502
  %504 = sext i32 %503 to i64
  %505 = add nsw i64 %501, %504
  %506 = add nsw i64 %505, 0
  %507 = getelementptr inbounds i32, i32* %488, i64 %506
  %508 = load i32, i32* %507, align 4
  store i32 %508, i32* %25, align 4
  %509 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %510 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %509, i32 0, i32 0
  %511 = load i32*, i32** %510, align 8
  %512 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 8
  %515 = mul nsw i32 3, %514
  %516 = sext i32 %515 to i64
  %517 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %518 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %517, i32 0, i32 4
  %519 = load i64, i64* %518, align 8
  %520 = load i32, i32* %23, align 4
  %521 = sext i32 %520 to i64
  %522 = sub nsw i64 %519, %521
  %523 = sub nsw i64 %522, 1
  %524 = mul nsw i64 %516, %523
  %525 = load i32, i32* %24, align 4
  %526 = mul nsw i32 3, %525
  %527 = sext i32 %526 to i64
  %528 = add nsw i64 %524, %527
  %529 = add nsw i64 %528, 1
  %530 = getelementptr inbounds i32, i32* %511, i64 %529
  %531 = load i32, i32* %530, align 4
  store i32 %531, i32* %26, align 4
  %532 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 0
  %534 = load i32*, i32** %533, align 8
  %535 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %536 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 8
  %538 = mul nsw i32 3, %537
  %539 = sext i32 %538 to i64
  %540 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 4
  %542 = load i64, i64* %541, align 8
  %543 = load i32, i32* %23, align 4
  %544 = sext i32 %543 to i64
  %545 = sub nsw i64 %542, %544
  %546 = sub nsw i64 %545, 1
  %547 = mul nsw i64 %539, %546
  %548 = load i32, i32* %24, align 4
  %549 = mul nsw i32 3, %548
  %550 = sext i32 %549 to i64
  %551 = add nsw i64 %547, %550
  %552 = add nsw i64 %551, 2
  %553 = getelementptr inbounds i32, i32* %534, i64 %552
  %554 = load i32, i32* %553, align 4
  store i32 %554, i32* %27, align 4
  %555 = load i32, i32* %25, align 4
  %556 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 0
  %558 = load i32*, i32** %557, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 0
  %560 = load i32, i32* %559, align 4
  %561 = icmp eq i32 %555, %560
  br i1 %561, label %562, label %579

562:                                              ; preds = %485
  %563 = load i32, i32* %26, align 4
  %564 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %565 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %564, i32 0, i32 0
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds i32, i32* %566, i64 1
  %568 = load i32, i32* %567, align 4
  %569 = icmp eq i32 %563, %568
  br i1 %569, label %570, label %579

570:                                              ; preds = %562
  %571 = load i32, i32* %27, align 4
  %572 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %572, i32 0, i32 0
  %574 = load i32*, i32** %573, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 2
  %576 = load i32, i32* %575, align 4
  %577 = icmp eq i32 %571, %576
  br i1 %577, label %578, label %579

578:                                              ; preds = %570
  br label %620

579:                                              ; preds = %570, %562, %485
  %580 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %581 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %580, i32 0, i32 5
  %582 = load %struct.TYPE_5__*, %struct.TYPE_5__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %582, i32 0, i32 0
  %584 = load i32**, i32*** %583, align 8
  %585 = getelementptr inbounds i32*, i32** %584, i64 0
  %586 = load i32*, i32** %585, align 8
  %587 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %588 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %587, i32 0, i32 5
  %589 = load %struct.TYPE_5__*, %struct.TYPE_5__** %588, align 8
  %590 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %589, i32 0, i32 1
  %591 = load i32*, i32** %590, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 0
  %593 = load i32, i32* %592, align 4
  %594 = sext i32 %593 to i64
  %595 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %596 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %595, i32 0, i32 2
  %597 = load i64, i64* %596, align 8
  %598 = load i32, i32* %23, align 4
  %599 = sext i32 %598 to i64
  %600 = add nsw i64 %597, %599
  %601 = mul nsw i64 %594, %600
  %602 = getelementptr inbounds i32, i32* %586, i64 %601
  %603 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %604 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %603, i32 0, i32 1
  %605 = load i64, i64* %604, align 8
  %606 = load i32, i32* %24, align 4
  %607 = sext i32 %606 to i64
  %608 = add nsw i64 %605, %607
  %609 = mul nsw i64 4, %608
  %610 = getelementptr inbounds i32, i32* %602, i64 %609
  store i32* %610, i32** %4, align 8
  %611 = load i32, i32* %27, align 4
  %612 = load i32*, i32** %4, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 0
  store i32 %611, i32* %613, align 4
  %614 = load i32, i32* %26, align 4
  %615 = load i32*, i32** %4, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 1
  store i32 %614, i32* %616, align 4
  %617 = load i32, i32* %25, align 4
  %618 = load i32*, i32** %4, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 2
  store i32 %617, i32* %619, align 4
  br label %620

620:                                              ; preds = %579, %578
  %621 = load i32, i32* %24, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %24, align 4
  br label %479

623:                                              ; preds = %479
  br label %624

624:                                              ; preds = %623
  %625 = load i32, i32* %23, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %23, align 4
  br label %471

627:                                              ; preds = %471
  br label %628

628:                                              ; preds = %627, %464
  br label %629

629:                                              ; preds = %628, %463
  br label %630

630:                                              ; preds = %35, %52, %78, %629, %293
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @AV_WL16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
