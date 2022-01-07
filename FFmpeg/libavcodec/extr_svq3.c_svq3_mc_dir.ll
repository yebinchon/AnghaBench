; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_mc_dir.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_svq3.c_svq3_mc_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32**, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32** }
%struct.TYPE_8__ = type { i32*** }

@PREDICT_MODE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid MV vlc\0A\00", align 1
@THIRDPEL_MODE = common dso_local global i32 0, align 4
@HALFPEL_MODE = common dso_local global i32 0, align 4
@scan8 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32, i32)* @svq3_mc_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svq3_mc_dir(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
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
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 5
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %39

35:                                               ; preds = %5
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 1
  %38 = ashr i32 16, %37
  br label %39

39:                                               ; preds = %35, %34
  %40 = phi i32 [ 4, %34 ], [ %38, %35 ]
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = udiv i32 %42, 3
  %44 = ashr i32 16, %43
  store i32 %44, i32* %22, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @PREDICT_MODE, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 -96, i32 0
  store i32 %49, i32* %23, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %21, align 4
  %54 = sub nsw i32 %52, %53
  %55 = mul nsw i32 6, %54
  %56 = load i32, i32* %23, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %24, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %22, align 4
  %62 = sub nsw i32 %60, %61
  %63 = mul nsw i32 6, %62
  %64 = load i32, i32* %23, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %25, align 4
  store i32 0, i32* %12, align 4
  br label %66

66:                                               ; preds = %525, %39
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 16
  br i1 %68, label %69, label %529

69:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %520, %69
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 16
  br i1 %72, label %73, label %524

73:                                               ; preds = %70
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 4, %76
  %78 = load i32, i32* %13, align 4
  %79 = ashr i32 %78, 2
  %80 = add nsw i32 %77, %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 4, %83
  %85 = load i32, i32* %12, align 4
  %86 = ashr i32 %85, 2
  %87 = add nsw i32 %84, %86
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %87, %90
  %92 = add nsw i32 %80, %91
  store i32 %92, i32* %26, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = mul nsw i32 16, %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %19, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 16, %101
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %13, align 4
  %106 = ashr i32 %105, 2
  %107 = and i32 %106, 1
  %108 = load i32, i32* %12, align 4
  %109 = ashr i32 %108, 1
  %110 = and i32 %109, 2
  %111 = add nsw i32 %107, %110
  %112 = load i32, i32* %13, align 4
  %113 = ashr i32 %112, 1
  %114 = and i32 %113, 4
  %115 = add nsw i32 %111, %114
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %116, 8
  %118 = add nsw i32 %115, %117
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @PREDICT_MODE, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %73
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %21, align 4
  %126 = ashr i32 %125, 2
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @svq3_pred_motion(%struct.TYPE_9__* %123, i32 %124, i32 %126, i32 %127, i32 1, i32* %15, i32* %16)
  br label %215

129:                                              ; preds = %73
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 11
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32***, i32**** %133, align 8
  %135 = getelementptr inbounds i32**, i32*** %134, i64 0
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %26, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %142, 2
  store i32 %143, i32* %15, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 11
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32***, i32**** %147, align 8
  %149 = getelementptr inbounds i32**, i32*** %148, i64 0
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %26, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %156, 2
  store i32 %157, i32* %16, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %183

160:                                              ; preds = %129
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %161, %164
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %165, %168
  %170 = add nsw i32 %169, 1
  %171 = ashr i32 %170, 1
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %172, %175
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = sdiv i32 %176, %179
  %181 = add nsw i32 %180, 1
  %182 = ashr i32 %181, 1
  store i32 %182, i32* %16, align 4
  br label %214

183:                                              ; preds = %129
  %184 = load i32, i32* %15, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %187, %190
  %192 = mul nsw i32 %184, %191
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = sdiv i32 %192, %195
  %197 = add nsw i32 %196, 1
  %198 = ashr i32 %197, 1
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %16, align 4
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = sub nsw i32 %202, %205
  %207 = mul nsw i32 %199, %206
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = sdiv i32 %207, %210
  %212 = add nsw i32 %211, 1
  %213 = ashr i32 %212, 1
  store i32 %213, i32* %16, align 4
  br label %214

214:                                              ; preds = %183, %160
  br label %215

215:                                              ; preds = %214, %122
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %23, align 4
  %218 = load i32, i32* %19, align 4
  %219 = mul nsw i32 6, %218
  %220 = sub nsw i32 %217, %219
  %221 = load i32, i32* %24, align 4
  %222 = load i32, i32* %19, align 4
  %223 = mul nsw i32 6, %222
  %224 = sub nsw i32 %221, %223
  %225 = call i32 @av_clip(i32 %216, i32 %220, i32 %224)
  store i32 %225, i32* %15, align 4
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* %23, align 4
  %228 = load i32, i32* %20, align 4
  %229 = mul nsw i32 6, %228
  %230 = sub nsw i32 %227, %229
  %231 = load i32, i32* %25, align 4
  %232 = load i32, i32* %20, align 4
  %233 = mul nsw i32 6, %232
  %234 = sub nsw i32 %231, %233
  %235 = call i32 @av_clip(i32 %226, i32 %230, i32 %234)
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @PREDICT_MODE, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %215
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %261

240:                                              ; preds = %215
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 10
  %243 = call i32 @get_interleaved_se_golomb(i32* %242)
  store i32 %243, i32* %18, align 4
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 10
  %246 = call i32 @get_interleaved_se_golomb(i32* %245)
  store i32 %246, i32* %17, align 4
  %247 = load i32, i32* %17, align 4
  %248 = load i32, i32* %17, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %254, label %250

250:                                              ; preds = %240
  %251 = load i32, i32* %18, align 4
  %252 = load i32, i32* %18, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %250, %240
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 9
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @AV_LOG_ERROR, align 4
  %259 = call i32 @av_log(i32 %257, i32 %258, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %530

260:                                              ; preds = %250
  br label %261

261:                                              ; preds = %260, %239
  %262 = load i32, i32* %9, align 4
  %263 = load i32, i32* @THIRDPEL_MODE, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %311

265:                                              ; preds = %261
  %266 = load i32, i32* %15, align 4
  %267 = add nsw i32 %266, 1
  %268 = ashr i32 %267, 1
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %268, %269
  store i32 %270, i32* %15, align 4
  %271 = load i32, i32* %16, align 4
  %272 = add nsw i32 %271, 1
  %273 = ashr i32 %272, 1
  %274 = load i32, i32* %18, align 4
  %275 = add nsw i32 %273, %274
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %15, align 4
  %277 = add nsw i32 %276, 196608
  %278 = udiv i32 %277, 3
  %279 = sub i32 %278, 65536
  store i32 %279, i32* %28, align 4
  %280 = load i32, i32* %16, align 4
  %281 = add nsw i32 %280, 196608
  %282 = udiv i32 %281, 3
  %283 = sub i32 %282, 65536
  store i32 %283, i32* %29, align 4
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* %28, align 4
  %286 = mul nsw i32 3, %285
  %287 = sub nsw i32 %284, %286
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* %29, align 4
  %290 = mul nsw i32 3, %289
  %291 = sub nsw i32 %288, %290
  %292 = mul nsw i32 4, %291
  %293 = add nsw i32 %287, %292
  store i32 %293, i32* %27, align 4
  %294 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %295 = load i32, i32* %19, align 4
  %296 = load i32, i32* %20, align 4
  %297 = load i32, i32* %21, align 4
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %28, align 4
  %300 = load i32, i32* %29, align 4
  %301 = load i32, i32* %27, align 4
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @svq3_mc_dir_part(%struct.TYPE_9__* %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 1, i32 %302, i32 %303)
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* %15, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %15, align 4
  %308 = load i32, i32* %16, align 4
  %309 = load i32, i32* %16, align 4
  %310 = add nsw i32 %309, %308
  store i32 %310, i32* %16, align 4
  br label %387

311:                                              ; preds = %261
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* @HALFPEL_MODE, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %319, label %315

315:                                              ; preds = %311
  %316 = load i32, i32* %9, align 4
  %317 = load i32, i32* @PREDICT_MODE, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %357

319:                                              ; preds = %315, %311
  %320 = load i32, i32* %15, align 4
  %321 = add nsw i32 %320, 1
  %322 = add nsw i32 %321, 196608
  %323 = udiv i32 %322, 3
  %324 = load i32, i32* %17, align 4
  %325 = add i32 %323, %324
  %326 = sub i32 %325, 65536
  store i32 %326, i32* %15, align 4
  %327 = load i32, i32* %16, align 4
  %328 = add nsw i32 %327, 1
  %329 = add nsw i32 %328, 196608
  %330 = udiv i32 %329, 3
  %331 = load i32, i32* %18, align 4
  %332 = add i32 %330, %331
  %333 = sub i32 %332, 65536
  store i32 %333, i32* %16, align 4
  %334 = load i32, i32* %15, align 4
  %335 = and i32 %334, 1
  %336 = load i32, i32* %16, align 4
  %337 = and i32 %336, 1
  %338 = mul nsw i32 2, %337
  %339 = add nsw i32 %335, %338
  store i32 %339, i32* %27, align 4
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %341 = load i32, i32* %19, align 4
  %342 = load i32, i32* %20, align 4
  %343 = load i32, i32* %21, align 4
  %344 = load i32, i32* %22, align 4
  %345 = load i32, i32* %15, align 4
  %346 = ashr i32 %345, 1
  %347 = load i32, i32* %16, align 4
  %348 = ashr i32 %347, 1
  %349 = load i32, i32* %27, align 4
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* %11, align 4
  %352 = call i32 @svq3_mc_dir_part(%struct.TYPE_9__* %340, i32 %341, i32 %342, i32 %343, i32 %344, i32 %346, i32 %348, i32 %349, i32 0, i32 %350, i32 %351)
  %353 = load i32, i32* %15, align 4
  %354 = mul nsw i32 %353, 3
  store i32 %354, i32* %15, align 4
  %355 = load i32, i32* %16, align 4
  %356 = mul nsw i32 %355, 3
  store i32 %356, i32* %16, align 4
  br label %386

357:                                              ; preds = %315
  %358 = load i32, i32* %15, align 4
  %359 = add nsw i32 %358, 3
  %360 = add nsw i32 %359, 393216
  %361 = udiv i32 %360, 6
  %362 = load i32, i32* %17, align 4
  %363 = add i32 %361, %362
  %364 = sub i32 %363, 65536
  store i32 %364, i32* %15, align 4
  %365 = load i32, i32* %16, align 4
  %366 = add nsw i32 %365, 3
  %367 = add nsw i32 %366, 393216
  %368 = udiv i32 %367, 6
  %369 = load i32, i32* %18, align 4
  %370 = add i32 %368, %369
  %371 = sub i32 %370, 65536
  store i32 %371, i32* %16, align 4
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %373 = load i32, i32* %19, align 4
  %374 = load i32, i32* %20, align 4
  %375 = load i32, i32* %21, align 4
  %376 = load i32, i32* %22, align 4
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %10, align 4
  %380 = load i32, i32* %11, align 4
  %381 = call i32 @svq3_mc_dir_part(%struct.TYPE_9__* %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 %378, i32 0, i32 0, i32 %379, i32 %380)
  %382 = load i32, i32* %15, align 4
  %383 = mul nsw i32 %382, 6
  store i32 %383, i32* %15, align 4
  %384 = load i32, i32* %16, align 4
  %385 = mul nsw i32 %384, 6
  store i32 %385, i32* %16, align 4
  br label %386

386:                                              ; preds = %357, %319
  br label %387

387:                                              ; preds = %386, %265
  %388 = load i32, i32* %9, align 4
  %389 = load i32, i32* @PREDICT_MODE, align 4
  %390 = icmp ne i32 %388, %389
  br i1 %390, label %391, label %495

391:                                              ; preds = %387
  %392 = load i32, i32* %15, align 4
  %393 = load i32, i32* %16, align 4
  %394 = call i32 @pack16to32(i32 %392, i32 %393)
  store i32 %394, i32* %30, align 4
  %395 = load i32, i32* %22, align 4
  %396 = icmp eq i32 %395, 8
  br i1 %396, label %397, label %445

397:                                              ; preds = %391
  %398 = load i32, i32* %12, align 4
  %399 = icmp slt i32 %398, 8
  br i1 %399, label %400, label %445

400:                                              ; preds = %397
  %401 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %401, i32 0, i32 8
  %403 = load i32**, i32*** %402, align 8
  %404 = load i32, i32* %10, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32*, i32** %403, i64 %405
  %407 = load i32*, i32** %406, align 8
  %408 = load i32*, i32** @scan8, align 8
  %409 = load i32, i32* %14, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = add nsw i32 %412, 8
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %407, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %30, align 4
  %418 = call i32 @AV_WN32A(i32 %416, i32 %417)
  %419 = load i32, i32* %21, align 4
  %420 = icmp eq i32 %419, 8
  br i1 %420, label %421, label %444

421:                                              ; preds = %400
  %422 = load i32, i32* %13, align 4
  %423 = icmp slt i32 %422, 8
  br i1 %423, label %424, label %444

424:                                              ; preds = %421
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 8
  %427 = load i32**, i32*** %426, align 8
  %428 = load i32, i32* %10, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32*, i32** %427, i64 %429
  %431 = load i32*, i32** %430, align 8
  %432 = load i32*, i32** @scan8, align 8
  %433 = load i32, i32* %14, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = add nsw i32 %436, 1
  %438 = add nsw i32 %437, 8
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %431, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* %30, align 4
  %443 = call i32 @AV_WN32A(i32 %441, i32 %442)
  br label %444

444:                                              ; preds = %424, %421, %400
  br label %445

445:                                              ; preds = %444, %397, %391
  %446 = load i32, i32* %21, align 4
  %447 = icmp eq i32 %446, 8
  br i1 %447, label %448, label %470

448:                                              ; preds = %445
  %449 = load i32, i32* %13, align 4
  %450 = icmp slt i32 %449, 8
  br i1 %450, label %451, label %470

451:                                              ; preds = %448
  %452 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %452, i32 0, i32 8
  %454 = load i32**, i32*** %453, align 8
  %455 = load i32, i32* %10, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32*, i32** %454, i64 %456
  %458 = load i32*, i32** %457, align 8
  %459 = load i32*, i32** @scan8, align 8
  %460 = load i32, i32* %14, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 %463, 1
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %458, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* %30, align 4
  %469 = call i32 @AV_WN32A(i32 %467, i32 %468)
  br label %470

470:                                              ; preds = %451, %448, %445
  %471 = load i32, i32* %21, align 4
  %472 = icmp eq i32 %471, 4
  br i1 %472, label %476, label %473

473:                                              ; preds = %470
  %474 = load i32, i32* %22, align 4
  %475 = icmp eq i32 %474, 4
  br i1 %475, label %476, label %494

476:                                              ; preds = %473, %470
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 8
  %479 = load i32**, i32*** %478, align 8
  %480 = load i32, i32* %10, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32*, i32** %479, i64 %481
  %483 = load i32*, i32** %482, align 8
  %484 = load i32*, i32** @scan8, align 8
  %485 = load i32, i32* %14, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %483, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* %30, align 4
  %493 = call i32 @AV_WN32A(i32 %491, i32 %492)
  br label %494

494:                                              ; preds = %476, %473
  br label %495

495:                                              ; preds = %494, %387
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 7
  %498 = load %struct.TYPE_7__*, %struct.TYPE_7__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 0
  %500 = load i32**, i32*** %499, align 8
  %501 = load i32, i32* %10, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32*, i32** %500, i64 %502
  %504 = load i32*, i32** %503, align 8
  %505 = load i32, i32* %26, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* %21, align 4
  %510 = ashr i32 %509, 2
  %511 = load i32, i32* %22, align 4
  %512 = ashr i32 %511, 2
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 4
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* %15, align 4
  %517 = load i32, i32* %16, align 4
  %518 = call i32 @pack16to32(i32 %516, i32 %517)
  %519 = call i32 @fill_rectangle(i32 %508, i32 %510, i32 %512, i32 %515, i32 %518, i32 4)
  br label %520

520:                                              ; preds = %495
  %521 = load i32, i32* %21, align 4
  %522 = load i32, i32* %13, align 4
  %523 = add nsw i32 %522, %521
  store i32 %523, i32* %13, align 4
  br label %70

524:                                              ; preds = %70
  br label %525

525:                                              ; preds = %524
  %526 = load i32, i32* %22, align 4
  %527 = load i32, i32* %12, align 4
  %528 = add nsw i32 %527, %526
  store i32 %528, i32* %12, align 4
  br label %66

529:                                              ; preds = %66
  store i32 0, i32* %6, align 4
  br label %530

530:                                              ; preds = %529, %254
  %531 = load i32, i32* %6, align 4
  ret i32 %531
}

declare dso_local i32 @svq3_pred_motion(%struct.TYPE_9__*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @get_interleaved_se_golomb(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @svq3_mc_dir_part(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack16to32(i32, i32) #1

declare dso_local i32 @AV_WN32A(i32, i32) #1

declare dso_local i32 @fill_rectangle(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
