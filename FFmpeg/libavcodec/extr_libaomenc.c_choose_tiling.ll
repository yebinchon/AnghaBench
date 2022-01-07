; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libaomenc.c_choose_tiling.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libaomenc.c_choose_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i8* }
%struct.aom_codec_enc_cfg = type { i32, i32, i32*, i32* }

@AV1_MAX_TILE_WIDTH = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Automatically using %d tile columns to fill width.\0A\00", align 1
@AV1_MAX_TILE_AREA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Automatically using %d tile rows to fill area.\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"Invalid tile sizing: frame not large enough to fit specified tile arrangement.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV1_MAX_TILE_COLS = common dso_local global i32 0, align 4
@AV1_MAX_TILE_ROWS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"Invalid tile sizing: AV1 does not allow more than %dx%d tiles.\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"Invalid tile sizing: AV1 does not allow tiles of width greater than %d.\0A\00", align 1
@AOM_SUPERBLOCK_SIZE_DYNAMIC = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Using a single tile.\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Uniform with 64x64 superblocks -> %dx%d tiles.\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Uniform with 128x128 superblocks -> %dx%d tiles.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"128x128 superblocks not possible.\0A\00", align 1
@.str.9 = private unnamed_addr constant [91 x i8] c"Using uniform tiling with dynamic superblocks (tile_cols_log2 = %d, tile_rows_log2 = %d).\0A\00", align 1
@.str.10 = private unnamed_addr constant [89 x i8] c"Using uniform tiling with 64x64 superblocks (tile_cols_log2 = %d, tile_rows_log2 = %d).\0A\00", align 1
@AOM_SUPERBLOCK_SIZE_64X64 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [91 x i8] c"Using uniform tiling with 128x128 superblocks (tile_cols_log2 = %d, tile_rows_log2 = %d).\0A\00", align 1
@AOM_SUPERBLOCK_SIZE_128X128 = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [77 x i8] c"Using fixed tiling with %dx%d superblocks (tile_cols = %d, tile_rows = %d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.aom_codec_enc_cfg*)* @choose_tiling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_tiling(%struct.TYPE_5__* %0, %struct.aom_codec_enc_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.aom_codec_enc_cfg*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
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
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.aom_codec_enc_cfg* %1, %struct.aom_codec_enc_cfg** %5, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 1, %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 1, %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %33
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AV1_MAX_TILE_WIDTH, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @AV1_MAX_TILE_WIDTH, align 4
  %58 = sdiv i32 %56, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = load i32, i32* @AV_LOG_DEBUG, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %66, i32 %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %65, %50
  br label %73

73:                                               ; preds = %72, %45
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @av_assert0(i32 %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %124

84:                                               ; preds = %73
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @FFALIGN(i32 %87, i32 128)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %93, %96
  %98 = call i32 @FFALIGN(i32 %97, i32 128)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @FFALIGN(i32 %102, i32 128)
  %104 = mul nsw i32 %99, %103
  %105 = load i32, i32* @AV1_MAX_TILE_AREA, align 4
  %106 = add nsw i32 %104, %105
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* @AV1_MAX_TILE_AREA, align 4
  %109 = sdiv i32 %107, %108
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %123

116:                                              ; preds = %84
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = load i32, i32* @AV_LOG_DEBUG, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %117, i32 %118, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %116, %84
  br label %124

124:                                              ; preds = %123, %73
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @av_assert0(i32 %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 63
  %135 = sdiv i32 %134, 64
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %150, label %140

140:                                              ; preds = %124
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 63
  %145 = sdiv i32 %144, 64
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %140, %124
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %151, i32 %152, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = call i32 @AVERROR(i32 %154)
  store i32 %155, i32* %3, align 4
  br label %538

156:                                              ; preds = %140
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @AV1_MAX_TILE_COLS, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AV1_MAX_TILE_ROWS, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %162, %156
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = load i32, i32* @AV_LOG_ERROR, align 4
  %171 = load i32, i32* @AV1_MAX_TILE_COLS, align 4
  %172 = load i32, i32* @AV1_MAX_TILE_ROWS, align 4
  %173 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %169, i32 %170, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %171, i32 %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = call i32 @AVERROR(i32 %174)
  store i32 %175, i32* %3, align 4
  br label %538

176:                                              ; preds = %162
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sdiv i32 %179, %182
  %184 = load i32, i32* @AV1_MAX_TILE_WIDTH, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %176
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %188 = load i32, i32* @AV_LOG_ERROR, align 4
  %189 = load i32, i32* @AV1_MAX_TILE_WIDTH, align 4
  %190 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %187, i32 %188, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @EINVAL, align 4
  %192 = call i32 @AVERROR(i32 %191)
  store i32 %192, i32* %3, align 4
  br label %538

193:                                              ; preds = %176
  %194 = load i8*, i8** @AOM_SUPERBLOCK_SIZE_DYNAMIC, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 5
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %210

201:                                              ; preds = %193
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %208 = load i32, i32* @AV_LOG_DEBUG, align 4
  %209 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %207, i32 %208, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %538

210:                                              ; preds = %201, %193
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 127
  %215 = sdiv i32 %214, 128
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp sge i32 %215, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %210
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 127
  %225 = sdiv i32 %224, 128
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = icmp sge i32 %225, %228
  br label %230

230:                                              ; preds = %220, %210
  %231 = phi i1 [ false, %210 ], [ %229, %220 ]
  %232 = zext i1 %231 to i32
  store i32 %232, i32* %7, align 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %238

237:                                              ; preds = %230
  br label %245

238:                                              ; preds = %230
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %241, 1
  %243 = call i8* @av_log2(i32 %242)
  %244 = getelementptr i8, i8* %243, i64 1
  br label %245

245:                                              ; preds = %238, %237
  %246 = phi i8* [ null, %237 ], [ %244, %238 ]
  %247 = ptrtoint i8* %246 to i32
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  store i32 %247, i32* %249, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %255

254:                                              ; preds = %245
  br label %262

255:                                              ; preds = %245
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %258, 1
  %260 = call i8* @av_log2(i32 %259)
  %261 = getelementptr i8, i8* %260, i64 1
  br label %262

262:                                              ; preds = %255, %254
  %263 = phi i8* [ null, %254 ], [ %261, %255 ]
  %264 = ptrtoint i8* %263 to i32
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @count_uniform_tiling(i32 %269, i32 64, i32 %272)
  store i32 %273, i32* %12, align 4
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @count_uniform_tiling(i32 %276, i32 64, i32 %279)
  store i32 %280, i32* %11, align 4
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %282 = load i32, i32* @AV_LOG_DEBUG, align 4
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* %11, align 4
  %285 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %281, i32 %282, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %283, i32 %284)
  %286 = load i32, i32* %12, align 4
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %286, %289
  br i1 %290, label %291, label %297

291:                                              ; preds = %262
  %292 = load i32, i32* %11, align 4
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %292, %295
  br label %297

297:                                              ; preds = %291, %262
  %298 = phi i1 [ false, %262 ], [ %296, %291 ]
  %299 = zext i1 %298 to i32
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %7, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %336

302:                                              ; preds = %297
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @count_uniform_tiling(i32 %305, i32 128, i32 %308)
  store i32 %309, i32* %12, align 4
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @count_uniform_tiling(i32 %312, i32 128, i32 %315)
  store i32 %316, i32* %11, align 4
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %318 = load i32, i32* @AV_LOG_DEBUG, align 4
  %319 = load i32, i32* %12, align 4
  %320 = load i32, i32* %11, align 4
  %321 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %317, i32 %318, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %319, i32 %320)
  %322 = load i32, i32* %12, align 4
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %322, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %302
  %328 = load i32, i32* %11, align 4
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %328, %331
  br label %333

333:                                              ; preds = %327, %302
  %334 = phi i1 [ false, %302 ], [ %332, %327 ]
  %335 = zext i1 %334 to i32
  store i32 %335, i32* %14, align 4
  br label %340

336:                                              ; preds = %297
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %338 = load i32, i32* @AV_LOG_DEBUG, align 4
  %339 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %337, i32 %338, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %340

340:                                              ; preds = %336, %333
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 4
  store i32 1, i32* %342, align 8
  %343 = load i32, i32* %13, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %358

345:                                              ; preds = %340
  %346 = load i32, i32* %14, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %358

348:                                              ; preds = %345
  %349 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %350 = load i32, i32* @AV_LOG_DEBUG, align 4
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %349, i32 %350, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9, i64 0, i64 0), i32 %353, i32 %356)
  store i32 0, i32* %3, align 4
  br label %538

358:                                              ; preds = %345, %340
  %359 = load i32, i32* %13, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %377

361:                                              ; preds = %358
  %362 = load i32, i32* %7, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %377, label %364

364:                                              ; preds = %361
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %366 = load i32, i32* @AV_LOG_DEBUG, align 4
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %365, i32 %366, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0), i32 %369, i32 %372)
  %374 = load i8*, i8** @AOM_SUPERBLOCK_SIZE_64X64, align 8
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 5
  store i8* %374, i8** %376, align 8
  store i32 0, i32* %3, align 4
  br label %538

377:                                              ; preds = %361, %358
  %378 = load i32, i32* %14, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %393

380:                                              ; preds = %377
  %381 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %382 = load i32, i32* @AV_LOG_DEBUG, align 4
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %381, i32 %382, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.11, i64 0, i64 0), i32 %385, i32 %388)
  %390 = load i8*, i8** @AOM_SUPERBLOCK_SIZE_128X128, align 8
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 5
  store i8* %390, i8** %392, align 8
  store i32 0, i32* %3, align 4
  br label %538

393:                                              ; preds = %377
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 4
  store i32 0, i32* %395, align 8
  %396 = load i32, i32* %7, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %393
  store i32 128, i32* %8, align 4
  %399 = load i8*, i8** @AOM_SUPERBLOCK_SIZE_128X128, align 8
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 5
  store i8* %399, i8** %401, align 8
  br label %406

402:                                              ; preds = %393
  store i32 64, i32* %8, align 4
  %403 = load i8*, i8** @AOM_SUPERBLOCK_SIZE_64X64, align 8
  %404 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 5
  store i8* %403, i8** %405, align 8
  br label %406

406:                                              ; preds = %402, %398
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %408 = load i32, i32* @AV_LOG_DEBUG, align 4
  %409 = load i32, i32* %8, align 4
  %410 = load i32, i32* %8, align 4
  %411 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %407, i32 %408, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i64 0, i64 0), i32 %409, i32 %410, i32 %413, i32 %416)
  %418 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.aom_codec_enc_cfg*, %struct.aom_codec_enc_cfg** %5, align 8
  %422 = getelementptr inbounds %struct.aom_codec_enc_cfg, %struct.aom_codec_enc_cfg* %421, i32 0, i32 0
  store i32 %420, i32* %422, align 8
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.aom_codec_enc_cfg*, %struct.aom_codec_enc_cfg** %5, align 8
  %427 = getelementptr inbounds %struct.aom_codec_enc_cfg, %struct.aom_codec_enc_cfg* %426, i32 0, i32 1
  store i32 %425, i32* %427, align 4
  %428 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* %8, align 4
  %432 = add nsw i32 %430, %431
  %433 = sub nsw i32 %432, 1
  %434 = load i32, i32* %8, align 4
  %435 = sdiv i32 %433, %434
  store i32 %435, i32* %9, align 4
  %436 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* %8, align 4
  %440 = add nsw i32 %438, %439
  %441 = sub nsw i32 %440, 1
  %442 = load i32, i32* %8, align 4
  %443 = sdiv i32 %441, %442
  store i32 %443, i32* %10, align 4
  %444 = load i32, i32* %9, align 4
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = sdiv i32 %444, %447
  store i32 %448, i32* %15, align 4
  %449 = load i32, i32* %9, align 4
  %450 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = srem i32 %449, %452
  store i32 %453, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %454

454:                                              ; preds = %487, %406
  %455 = load i32, i32* %17, align 4
  %456 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = icmp slt i32 %455, %458
  br i1 %459, label %460, label %490

460:                                              ; preds = %454
  %461 = load i32, i32* %15, align 4
  %462 = load i32, i32* %17, align 4
  %463 = load i32, i32* %16, align 4
  %464 = sdiv i32 %463, 2
  %465 = icmp slt i32 %462, %464
  br i1 %465, label %477, label %466

466:                                              ; preds = %460
  %467 = load i32, i32* %17, align 4
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = sub nsw i32 %470, 1
  %472 = load i32, i32* %16, align 4
  %473 = add nsw i32 %472, 1
  %474 = sdiv i32 %473, 2
  %475 = sub nsw i32 %471, %474
  %476 = icmp sgt i32 %467, %475
  br label %477

477:                                              ; preds = %466, %460
  %478 = phi i1 [ true, %460 ], [ %476, %466 ]
  %479 = zext i1 %478 to i32
  %480 = add nsw i32 %461, %479
  %481 = load %struct.aom_codec_enc_cfg*, %struct.aom_codec_enc_cfg** %5, align 8
  %482 = getelementptr inbounds %struct.aom_codec_enc_cfg, %struct.aom_codec_enc_cfg* %481, i32 0, i32 2
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %17, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  store i32 %480, i32* %486, align 4
  br label %487

487:                                              ; preds = %477
  %488 = load i32, i32* %17, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %17, align 4
  br label %454

490:                                              ; preds = %454
  %491 = load i32, i32* %10, align 4
  %492 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 4
  %495 = sdiv i32 %491, %494
  store i32 %495, i32* %15, align 4
  %496 = load i32, i32* %10, align 4
  %497 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = srem i32 %496, %499
  store i32 %500, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %501

501:                                              ; preds = %534, %490
  %502 = load i32, i32* %17, align 4
  %503 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 4
  %506 = icmp slt i32 %502, %505
  br i1 %506, label %507, label %537

507:                                              ; preds = %501
  %508 = load i32, i32* %15, align 4
  %509 = load i32, i32* %17, align 4
  %510 = load i32, i32* %16, align 4
  %511 = sdiv i32 %510, 2
  %512 = icmp slt i32 %509, %511
  br i1 %512, label %524, label %513

513:                                              ; preds = %507
  %514 = load i32, i32* %17, align 4
  %515 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 3
  %517 = load i32, i32* %516, align 4
  %518 = sub nsw i32 %517, 1
  %519 = load i32, i32* %16, align 4
  %520 = add nsw i32 %519, 1
  %521 = sdiv i32 %520, 2
  %522 = sub nsw i32 %518, %521
  %523 = icmp sgt i32 %514, %522
  br label %524

524:                                              ; preds = %513, %507
  %525 = phi i1 [ true, %507 ], [ %523, %513 ]
  %526 = zext i1 %525 to i32
  %527 = add nsw i32 %508, %526
  %528 = load %struct.aom_codec_enc_cfg*, %struct.aom_codec_enc_cfg** %5, align 8
  %529 = getelementptr inbounds %struct.aom_codec_enc_cfg, %struct.aom_codec_enc_cfg* %528, i32 0, i32 3
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %17, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  store i32 %527, i32* %533, align 4
  br label %534

534:                                              ; preds = %524
  %535 = load i32, i32* %17, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %17, align 4
  br label %501

537:                                              ; preds = %501
  store i32 0, i32* %3, align 4
  br label %538

538:                                              ; preds = %537, %380, %364, %348, %206, %186, %168, %150
  %539 = load i32, i32* %3, align 4
  ret i32 %539
}

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, ...) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_log2(i32) #1

declare dso_local i32 @count_uniform_tiling(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
