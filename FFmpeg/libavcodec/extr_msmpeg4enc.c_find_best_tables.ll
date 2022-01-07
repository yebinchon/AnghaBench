; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4enc.c_find_best_tables.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4enc.c_find_best_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*****, i64, i32, i32, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@MAX_LEVEL = common dso_local global i32 0, align 4
@MAX_RUN = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i64 0, align 8
@rl_length = common dso_local global i32**** null, align 8
@AV_PICTURE_TYPE_P = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @find_best_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_best_tables(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* @INT_MAX, align 4
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* @INT_MAX, align 4
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %272, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %275

22:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %25, %22
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %254, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MAX_LEVEL, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %257

35:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %250, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @MAX_RUN, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %253

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %239, %40
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %242

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*****, i32****** %49, align 8
  %51 = getelementptr inbounds i32****, i32***** %50, i64 0
  %52 = load i32****, i32***** %51, align 8
  %53 = getelementptr inbounds i32***, i32**** %52, i64 0
  %54 = load i32***, i32**** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32**, i32*** %54, i64 %56
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*****, i32****** %68, align 8
  %70 = getelementptr inbounds i32****, i32***** %69, i64 0
  %71 = load i32****, i32***** %70, align 8
  %72 = getelementptr inbounds i32***, i32**** %71, i64 1
  %73 = load i32***, i32**** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32**, i32*** %73, i64 %75
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %66, %85
  store i32 %86, i32* %14, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*****, i32****** %88, align 8
  %90 = getelementptr inbounds i32****, i32***** %89, i64 1
  %91 = load i32****, i32***** %90, align 8
  %92 = getelementptr inbounds i32***, i32**** %91, i64 0
  %93 = load i32***, i32**** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32**, i32*** %93, i64 %95
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %15, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32*****, i32****** %107, align 8
  %109 = getelementptr inbounds i32****, i32***** %108, i64 1
  %110 = load i32****, i32***** %109, align 8
  %111 = getelementptr inbounds i32***, i32**** %110, i64 1
  %112 = load i32***, i32**** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32**, i32*** %112, i64 %114
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %16, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %174

130:                                              ; preds = %47
  %131 = load i32, i32* %15, align 4
  %132 = load i32****, i32***** @rl_length, align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32***, i32**** %132, i64 %134
  %136 = load i32***, i32**** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32**, i32*** %136, i64 %138
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %131, %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32****, i32***** @rl_length, align 8
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 3
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32***, i32**** %153, i64 %156
  %158 = load i32***, i32**** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32**, i32*** %158, i64 %160
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %152, %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %9, align 4
  br label %238

174:                                              ; preds = %47
  %175 = load i32, i32* %15, align 4
  %176 = load i32****, i32***** @rl_length, align 8
  %177 = load i32, i32* %3, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32***, i32**** %176, i64 %178
  %180 = load i32***, i32**** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32**, i32*** %180, i64 %182
  %184 = load i32**, i32*** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %175, %192
  %194 = load i32, i32* %16, align 4
  %195 = load i32****, i32***** @rl_length, align 8
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 3
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32***, i32**** %195, i64 %198
  %200 = load i32***, i32**** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32**, i32*** %200, i64 %202
  %204 = load i32**, i32*** %203, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %194, %212
  %214 = add nsw i32 %193, %213
  %215 = load i32, i32* %14, align 4
  %216 = load i32****, i32***** @rl_length, align 8
  %217 = load i32, i32* %3, align 4
  %218 = add nsw i32 %217, 3
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32***, i32**** %216, i64 %219
  %221 = load i32***, i32**** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32**, i32*** %221, i64 %223
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %215, %233
  %235 = add nsw i32 %214, %234
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %174, %130
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %12, align 4
  br label %44

242:                                              ; preds = %44
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %244, %245
  %247 = icmp eq i32 %243, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %253

249:                                              ; preds = %242
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %11, align 4
  br label %36

253:                                              ; preds = %248, %36
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %31

257:                                              ; preds = %31
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %5, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, i32* %10, align 4
  store i32 %262, i32* %5, align 4
  %263 = load i32, i32* %3, align 4
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %261, %257
  %265 = load i32, i32* %9, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = load i32, i32* %9, align 4
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %3, align 4
  store i32 %270, i32* %6, align 4
  br label %271

271:                                              ; preds = %268, %264
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %3, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %3, align 4
  br label %19

275:                                              ; preds = %19
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @AV_PICTURE_TYPE_P, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %275
  %282 = load i32, i32* %4, align 4
  store i32 %282, i32* %6, align 4
  br label %283

283:                                              ; preds = %281, %275
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 0
  %286 = load i32*****, i32****** %285, align 8
  %287 = load i32, i32* @MAX_LEVEL, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = mul i64 4, %289
  %291 = load i32, i32* @MAX_RUN, align 4
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = mul i64 %290, %293
  %295 = mul i64 %294, 2
  %296 = mul i64 %295, 2
  %297 = mul i64 %296, 2
  %298 = trunc i64 %297 to i32
  %299 = call i32 @memset(i32***** %286, i32 0, i32 %298)
  %300 = load i32, i32* %4, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* %6, align 4
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %308, %311
  br i1 %312, label %313, label %328

313:                                              ; preds = %283
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 2
  store i32 2, i32* %315, align 8
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @AV_PICTURE_TYPE_I, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %313
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 3
  store i32 1, i32* %323, align 4
  br label %327

324:                                              ; preds = %313
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 3
  store i32 2, i32* %326, align 4
  br label %327

327:                                              ; preds = %324, %321
  br label %328

328:                                              ; preds = %327, %283
  ret void
}

declare dso_local i32 @memset(i32*****, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
