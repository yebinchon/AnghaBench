; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_read_scalefactors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_read_scalefactors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__**, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { i32*, i32* }

@read_scalefactors.mode_map = internal constant [2 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 0, i32 2, i32 3, i32 4]], align 16
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid scalefactor coding mode!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@at9_tab_sf_weights = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32, i32)* @read_scalefactors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_scalefactors(%struct.TYPE_11__* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_10__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.TYPE_10__*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x [4 x i32]], [2 x [4 x i32]]* @read_scalefactors.mode_map, i64 0, i64 %45
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @get_bits(i32* %47, i32 2)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @memset(i32* %54, i32 0, i32 8)
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %6
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = call i32 @av_log(i32 %70, i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %7, align 4
  br label %479

74:                                               ; preds = %64, %61, %6
  %75 = load i32, i32* %14, align 4
  switch i32 %75, label %440 [
    i32 0, label %76
    i32 1, label %165
    i32 2, label %199
    i32 4, label %199
    i32 3, label %308
  ]

76:                                               ; preds = %74
  %77 = load i32**, i32*** @at9_tab_sf_weights, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @get_bits(i32* %78, i32 3)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %77, i64 %80
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %15, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @get_bits(i32* %83, i32 5)
  store i32 %84, i32* %16, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @get_bits(i32* %85, i32 2)
  %87 = add nsw i32 %86, 3
  store i32 %87, i32* %17, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i64 %94
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %18, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @get_bits(i32* %96, i32 %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  store i32 1, i32* %19, align 4
  br label %103

103:                                              ; preds = %135, %76
  %104 = load i32, i32* %19, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %103
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @get_vlc2(i32* %118, i32 %121, i32 9, i32 2)
  %123 = add nsw i32 %117, %122
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %17, align 4
  %126 = shl i32 1, %125
  %127 = sub nsw i32 %126, 1
  %128 = and i32 %124, %127
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %19, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %109
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %103

138:                                              ; preds = %103
  store i32 0, i32* %21, align 4
  br label %139

139:                                              ; preds = %161, %138
  %140 = load i32, i32* %21, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %139
  %146 = load i32, i32* %16, align 4
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %146, %151
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %21, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %152
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %145
  %162 = load i32, i32* %21, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %21, align 4
  br label %139

164:                                              ; preds = %139
  br label %440

165:                                              ; preds = %74
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @get_bits(i32* %166, i32 2)
  %168 = add nsw i32 %167, 2
  store i32 %168, i32* %22, align 4
  %169 = load i32, i32* %22, align 4
  %170 = icmp slt i32 %169, 5
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i32*, i32** %11, align 8
  %173 = call i32 @get_bits(i32* %172, i32 5)
  br label %175

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174, %171
  %176 = phi i32 [ %173, %171 ], [ 0, %174 ]
  store i32 %176, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %177

177:                                              ; preds = %195, %175
  %178 = load i32, i32* %24, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %198

183:                                              ; preds = %177
  %184 = load i32, i32* %23, align 4
  %185 = load i32*, i32** %11, align 8
  %186 = load i32, i32* %22, align 4
  %187 = call i32 @get_bits(i32* %185, i32 %186)
  %188 = add nsw i32 %184, %187
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %24, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  br label %195

195:                                              ; preds = %183
  %196 = load i32, i32* %24, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %24, align 4
  br label %177

198:                                              ; preds = %177
  br label %440

199:                                              ; preds = %74, %74
  %200 = load i32, i32* %14, align 4
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  br label %222

206:                                              ; preds = %199
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  br label %220

216:                                              ; preds = %206
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  br label %220

220:                                              ; preds = %216, %209
  %221 = phi i32* [ %215, %209 ], [ %219, %216 ]
  br label %222

222:                                              ; preds = %220, %202
  %223 = phi i32* [ %205, %202 ], [ %221, %220 ]
  store i32* %223, i32** %25, align 8
  %224 = load i32, i32* %14, align 4
  %225 = icmp eq i32 %224, 4
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  br label %243

230:                                              ; preds = %222
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  br label %241

237:                                              ; preds = %230
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  br label %241

241:                                              ; preds = %237, %233
  %242 = phi i32 [ %236, %233 ], [ %240, %237 ]
  br label %243

243:                                              ; preds = %241, %226
  %244 = phi i32 [ %229, %226 ], [ %242, %241 ]
  store i32 %244, i32* %26, align 4
  %245 = load i32*, i32** %11, align 8
  %246 = call i32 @get_bits(i32* %245, i32 2)
  %247 = add nsw i32 %246, 2
  store i32 %247, i32* %27, align 4
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %26, align 4
  %252 = call i32 @FFMIN(i32 %250, i32 %251)
  store i32 %252, i32* %28, align 4
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %255, i64 1
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %256, align 8
  %258 = load i32, i32* %27, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i64 %259
  store %struct.TYPE_10__* %260, %struct.TYPE_10__** %29, align 8
  store i32 0, i32* %30, align 4
  br label %261

261:                                              ; preds = %284, %243
  %262 = load i32, i32* %30, align 4
  %263 = load i32, i32* %28, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %287

265:                                              ; preds = %261
  %266 = load i32*, i32** %11, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @get_vlc2(i32* %266, i32 %269, i32 9, i32 2)
  store i32 %270, i32* %31, align 4
  %271 = load i32*, i32** %25, align 8
  %272 = load i32, i32* %30, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %31, align 4
  %277 = add nsw i32 %275, %276
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %30, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  store i32 %277, i32* %283, align 4
  br label %284

284:                                              ; preds = %265
  %285 = load i32, i32* %30, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %30, align 4
  br label %261

287:                                              ; preds = %261
  %288 = load i32, i32* %28, align 4
  store i32 %288, i32* %32, align 4
  br label %289

289:                                              ; preds = %304, %287
  %290 = load i32, i32* %32, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %307

295:                                              ; preds = %289
  %296 = load i32*, i32** %11, align 8
  %297 = call i32 @get_bits(i32* %296, i32 5)
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %32, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 %297, i32* %303, align 4
  br label %304

304:                                              ; preds = %295
  %305 = load i32, i32* %32, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %32, align 4
  br label %289

307:                                              ; preds = %289
  br label %440

308:                                              ; preds = %74
  %309 = load i32, i32* %12, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %308
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 2
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  br label %322

318:                                              ; preds = %308
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 1
  %321 = load i32*, i32** %320, align 8
  br label %322

322:                                              ; preds = %318, %311
  %323 = phi i32* [ %317, %311 ], [ %321, %318 ]
  store i32* %323, i32** %33, align 8
  %324 = load i32, i32* %12, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  br label %334

330:                                              ; preds = %322
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  br label %334

334:                                              ; preds = %330, %326
  %335 = phi i32 [ %329, %326 ], [ %333, %330 ]
  store i32 %335, i32* %34, align 4
  %336 = load i32*, i32** %11, align 8
  %337 = call i32 @get_bits(i32* %336, i32 5)
  %338 = sub nsw i32 %337, 16
  store i32 %338, i32* %35, align 4
  %339 = load i32*, i32** %11, align 8
  %340 = call i32 @get_bits(i32* %339, i32 2)
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %36, align 4
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %34, align 4
  %346 = call i32 @FFMIN(i32 %344, i32 %345)
  store i32 %346, i32* %37, align 4
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %349, i64 0
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %350, align 8
  %352 = load i32, i32* %36, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i64 %353
  store %struct.TYPE_10__* %354, %struct.TYPE_10__** %38, align 8
  %355 = load i32*, i32** %11, align 8
  %356 = load i32, i32* %36, align 4
  %357 = call i32 @get_bits(i32* %355, i32 %356)
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  store i32 %357, i32* %361, align 4
  store i32 1, i32* %39, align 4
  br label %362

362:                                              ; preds = %392, %334
  %363 = load i32, i32* %39, align 4
  %364 = load i32, i32* %37, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %395

366:                                              ; preds = %362
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 0
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %39, align 4
  %371 = sub nsw i32 %370, 1
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load i32*, i32** %11, align 8
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @get_vlc2(i32* %375, i32 %378, i32 9, i32 2)
  %380 = add nsw i32 %374, %379
  store i32 %380, i32* %40, align 4
  %381 = load i32, i32* %40, align 4
  %382 = load i32, i32* %36, align 4
  %383 = shl i32 1, %382
  %384 = sub nsw i32 %383, 1
  %385 = and i32 %381, %384
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %39, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  store i32 %385, i32* %391, align 4
  br label %392

392:                                              ; preds = %366
  %393 = load i32, i32* %39, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %39, align 4
  br label %362

395:                                              ; preds = %362
  store i32 0, i32* %41, align 4
  br label %396

396:                                              ; preds = %416, %395
  %397 = load i32, i32* %41, align 4
  %398 = load i32, i32* %37, align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %419

400:                                              ; preds = %396
  %401 = load i32, i32* %35, align 4
  %402 = load i32*, i32** %33, align 8
  %403 = load i32, i32* %41, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %401, %406
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %41, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %414, %407
  store i32 %415, i32* %413, align 4
  br label %416

416:                                              ; preds = %400
  %417 = load i32, i32* %41, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %41, align 4
  br label %396

419:                                              ; preds = %396
  %420 = load i32, i32* %37, align 4
  store i32 %420, i32* %42, align 4
  br label %421

421:                                              ; preds = %436, %419
  %422 = load i32, i32* %42, align 4
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = icmp slt i32 %422, %425
  br i1 %426, label %427, label %439

427:                                              ; preds = %421
  %428 = load i32*, i32** %11, align 8
  %429 = call i32 @get_bits(i32* %428, i32 5)
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %42, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  store i32 %429, i32* %435, align 4
  br label %436

436:                                              ; preds = %427
  %437 = load i32, i32* %42, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %42, align 4
  br label %421

439:                                              ; preds = %421
  br label %440

440:                                              ; preds = %74, %439, %307, %198, %164
  store i32 0, i32* %43, align 4
  br label %441

441:                                              ; preds = %468, %440
  %442 = load i32, i32* %43, align 4
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp slt i32 %442, %445
  br i1 %446, label %447, label %471

447:                                              ; preds = %441
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 0
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %43, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %465, label %456

456:                                              ; preds = %447
  %457 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 0
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %43, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = icmp sgt i32 %463, 31
  br i1 %464, label %465, label %467

465:                                              ; preds = %456, %447
  %466 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %466, i32* %7, align 4
  br label %479

467:                                              ; preds = %456
  br label %468

468:                                              ; preds = %467
  %469 = load i32, i32* %43, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %43, align 4
  br label %441

471:                                              ; preds = %441
  %472 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 1
  %474 = load i32*, i32** %473, align 8
  %475 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %476 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %475, i32 0, i32 0
  %477 = load i32*, i32** %476, align 8
  %478 = call i32 @memcpy(i32* %474, i32* %477, i32 8)
  store i32 0, i32* %7, align 4
  br label %479

479:                                              ; preds = %471, %465, %67
  %480 = load i32, i32* %7, align 4
  ret i32 %480
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
