; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_set_roi_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_set_roi_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32*, i32, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float, float }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid AVRegionOfInterest.self_size.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"AVRegionOfInterest.qoffset.den must not be zero.\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [97 x i8] c"ROI only supports %d segments (and segment 0 is reserved for non-ROIs), skipping the left ones.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"roi_map alloc failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_DELTA_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_9__*, i32, i32)* @set_roi_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_roi_map(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, %struct.TYPE_9__* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [127 x i32], align 16
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  %33 = bitcast [127 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 508, i1 false)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %35 = call i32 @memset(%struct.TYPE_9__* %34, i32 0, i32 24)
  %36 = getelementptr inbounds [127 x i32], [127 x i32]* %20, i64 0, i64 63
  store i32 1, i32* %36, align 4
  store i32 1, i32* %19, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %16, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %7
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %18, align 4
  %51 = srem i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46, %7
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %54, i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %8, align 4
  br label %296

59:                                               ; preds = %46
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %17, align 4
  store i32 0, i32* %21, align 4
  br label %65

65:                                               ; preds = %137, %59
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %140

69:                                               ; preds = %65
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %21, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %72, %76
  %78 = inttoptr i64 %77 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %16, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load float, float* %81, align 4
  %83 = fcmp une float %82, 0.000000e+00
  br i1 %83, label %90, label %84

84:                                               ; preds = %69
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %85, i32 %86, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %8, align 4
  br label %296

90:                                               ; preds = %69
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = fmul float %94, 1.000000e+00
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load float, float* %98, align 4
  %100 = fdiv float %95, %99
  %101 = fmul float %100, 6.300000e+01
  %102 = fptosi float %101 to i32
  store i32 %102, i32* %22, align 4
  %103 = load i32, i32* %22, align 4
  %104 = call i32 @av_clip(i32 %103, i32 -63, i32 63)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = add nsw i32 %105, 63
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %23, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [127 x i32], [127 x i32]* %20, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %136, label %112

112:                                              ; preds = %90
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* @AV_LOG_WARNING, align 4
  %119 = load i32, i32* %15, align 4
  %120 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %117, i32 %118, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %140

121:                                              ; preds = %112
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [127 x i32], [127 x i32]* %20, i64 0, i64 %125
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %19, align 4
  br label %136

136:                                              ; preds = %121, %90
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %21, align 4
  br label %65

140:                                              ; preds = %116, %65
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %141, %142
  %144 = sub nsw i32 %143, 1
  %145 = load i32, i32* %14, align 4
  %146 = sdiv i32 %144, %145
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %149, %150
  %152 = sub nsw i32 %151, 1
  %153 = load i32, i32* %14, align 4
  %154 = sdiv i32 %152, %153
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %159, %162
  %164 = call i32* @av_mallocz_array(i32 %163, i32 4)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 3
  store i32* %164, i32** %166, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %140
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* @AV_LOG_ERROR, align 4
  %174 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %172, i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = call i32 @AVERROR(i32 %175)
  store i32 %176, i32* %8, align 4
  br label %296

177:                                              ; preds = %140
  %178 = load i32, i32* %17, align 4
  %179 = sub nsw i32 %178, 1
  store i32 %179, i32* %24, align 4
  br label %180

180:                                              ; preds = %292, %177
  %181 = load i32, i32* %24, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %295

183:                                              ; preds = %180
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* %24, align 4
  %189 = mul nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %186, %190
  %192 = inttoptr i64 %191 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %192, %struct.TYPE_10__** %16, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %14, align 4
  %197 = sdiv i32 %195, %196
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @av_clip(i32 %197, i32 0, i32 %200)
  store i32 %201, i32* %27, align 4
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %204, %205
  %207 = sub nsw i32 %206, 1
  %208 = load i32, i32* %14, align 4
  %209 = sdiv i32 %207, %208
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @av_clip(i32 %209, i32 0, i32 %212)
  store i32 %213, i32* %28, align 4
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %14, align 4
  %218 = sdiv i32 %216, %217
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @av_clip(i32 %218, i32 0, i32 %221)
  store i32 %222, i32* %29, align 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %225, %226
  %228 = sub nsw i32 %227, 1
  %229 = load i32, i32* %14, align 4
  %230 = sdiv i32 %228, %229
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @av_clip(i32 %230, i32 0, i32 %233)
  store i32 %234, i32* %30, align 4
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load float, float* %237, align 4
  %239 = fmul float %238, 1.000000e+00
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load float, float* %242, align 4
  %244 = fdiv float %239, %243
  %245 = fmul float %244, 6.300000e+01
  %246 = fptosi float %245 to i32
  store i32 %246, i32* %25, align 4
  %247 = load i32, i32* %25, align 4
  %248 = call i32 @av_clip(i32 %247, i32 -63, i32 63)
  store i32 %248, i32* %25, align 4
  %249 = load i32, i32* %25, align 4
  %250 = add nsw i32 %249, 63
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [127 x i32], [127 x i32]* %20, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %26, align 4
  %254 = load i32, i32* %26, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %291

256:                                              ; preds = %183
  %257 = load i32, i32* %27, align 4
  store i32 %257, i32* %31, align 4
  br label %258

258:                                              ; preds = %287, %256
  %259 = load i32, i32* %31, align 4
  %260 = load i32, i32* %28, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %290

262:                                              ; preds = %258
  %263 = load i32, i32* %29, align 4
  store i32 %263, i32* %32, align 4
  br label %264

264:                                              ; preds = %283, %262
  %265 = load i32, i32* %32, align 4
  %266 = load i32, i32* %30, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %286

268:                                              ; preds = %264
  %269 = load i32, i32* %26, align 4
  %270 = sub nsw i32 %269, 1
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %32, align 4
  %275 = load i32, i32* %31, align 4
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = mul nsw i32 %275, %278
  %280 = add nsw i32 %274, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %273, i64 %281
  store i32 %270, i32* %282, align 4
  br label %283

283:                                              ; preds = %268
  %284 = load i32, i32* %32, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %32, align 4
  br label %264

286:                                              ; preds = %264
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %31, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %31, align 4
  br label %258

290:                                              ; preds = %258
  br label %291

291:                                              ; preds = %290, %183
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %24, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %24, align 4
  br label %180

295:                                              ; preds = %180
  store i32 0, i32* %8, align 4
  br label %296

296:                                              ; preds = %295, %171, %84, %53
  %297 = load i32, i32* %8, align 4
  ret i32 %297
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_clip(i32, i32, i32) #2

declare dso_local i32* @av_mallocz_array(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
