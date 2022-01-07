; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_decode_blocks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_decode_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i64*, i64*, i32, i64, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_15__ = type { i64 }

@ff_ivi_mc_8x8_delta = common dso_local global i32 0, align 4
@ff_ivi_mc_8x8_no_delta = common dso_local global i32 0, align 4
@ff_ivi_mc_avg_8x8_delta = common dso_local global i32 0, align 4
@ff_ivi_mc_avg_8x8_no_delta = common dso_local global i32 0, align 4
@ff_ivi_mc_4x4_delta = common dso_local global i32 0, align 4
@ff_ivi_mc_4x4_no_delta = common dso_local global i32 0, align 4
@ff_ivi_mc_avg_4x4_delta = common dso_local global i32 0, align 4
@ff_ivi_mc_avg_4x4_no_delta = common dso_local global i32 0, align 4
@AV_CODEC_ID_INDEO4 = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_15__*)* @ivi_decode_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivi_decode_blocks(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_12__* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_13__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 4, i32 1
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %59

54:                                               ; preds = %4
  %55 = load i32, i32* @ff_ivi_mc_8x8_delta, align 4
  store i32 %55, i32* %27, align 4
  %56 = load i32, i32* @ff_ivi_mc_8x8_no_delta, align 4
  store i32 %56, i32* %28, align 4
  %57 = load i32, i32* @ff_ivi_mc_avg_8x8_delta, align 4
  store i32 %57, i32* %29, align 4
  %58 = load i32, i32* @ff_ivi_mc_avg_8x8_no_delta, align 4
  store i32 %58, i32* %30, align 4
  br label %64

59:                                               ; preds = %4
  %60 = load i32, i32* @ff_ivi_mc_4x4_delta, align 4
  store i32 %60, i32* %27, align 4
  %61 = load i32, i32* @ff_ivi_mc_4x4_no_delta, align 4
  store i32 %61, i32* %28, align 4
  %62 = load i32, i32* @ff_ivi_mc_avg_4x4_delta, align 4
  store i32 %62, i32* %29, align 4
  %63 = load i32, i32* @ff_ivi_mc_avg_4x4_no_delta, align 4
  store i32 %63, i32* %30, align 4
  br label %64

64:                                               ; preds = %59, %54
  store i32 0, i32* %10, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %26, align 8
  br label %68

68:                                               ; preds = %490, %64
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %495

74:                                               ; preds = %68
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %15, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %23, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %25, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  store i64 %93, i64* %24, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AV_CODEC_ID_INDEO4, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %74
  %100 = load i64, i64* %24, align 8
  %101 = call i64 @av_clip_uintp2(i64 %100, i32 5)
  store i64 %101, i64* %24, align 8
  br label %105

102:                                              ; preds = %74
  %103 = load i64, i64* %24, align 8
  %104 = call i64 @av_clip(i64 %103, i32 0, i32 23)
  store i64 %104, i64* %24, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  br label %116

112:                                              ; preds = %105
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 4
  %115 = load i64*, i64** %114, align 8
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i64* [ %111, %108 ], [ %115, %112 ]
  store i64* %117, i64** %31, align 8
  %118 = load i64*, i64** %31, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i64*, i64** %31, align 8
  %122 = load i64, i64* %24, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %24, align 8
  br label %125

125:                                              ; preds = %120, %116
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %369, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %18, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %19, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %20, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %21, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %128
  %146 = load i32, i32* %19, align 4
  %147 = and i32 %146, 1
  %148 = shl i32 %147, 1
  %149 = load i32, i32* %18, align 4
  %150 = and i32 %149, 1
  %151 = or i32 %148, %150
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %21, align 4
  %153 = and i32 %152, 1
  %154 = shl i32 %153, 1
  %155 = load i32, i32* %20, align 4
  %156 = and i32 %155, 1
  %157 = or i32 %154, %156
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = ashr i32 %158, 1
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %19, align 4
  %161 = ashr i32 %160, 1
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = ashr i32 %162, 1
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %21, align 4
  %165 = ashr i32 %164, 1
  store i32 %165, i32* %21, align 4
  br label %166

166:                                              ; preds = %145, %128
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 -1, i32* %16, align 4
  br label %172

172:                                              ; preds = %171, %166
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 2
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 3
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  store i32 -1, i32* %17, align 4
  br label %183

183:                                              ; preds = %182, %177, %172
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %273

188:                                              ; preds = %183
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = ashr i32 %191, %194
  store i32 %195, i32* %32, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = ashr i32 %198, %201
  store i32 %202, i32* %33, align 4
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %205, %208
  store i32 %209, i32* %34, align 4
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = and i32 %212, %215
  store i32 %216, i32* %35, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 8
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* %32, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = icmp slt i64 %222, 0
  br i1 %223, label %270, label %224

224:                                              ; preds = %188
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 8
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %32, align 4
  %229 = sext i32 %228 to i64
  %230 = add nsw i64 %227, %229
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %230, %234
  %236 = load i32, i32* %34, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 6
  %241 = load i64, i64* %240, align 8
  %242 = icmp sgt i64 %238, %241
  br i1 %242, label %270, label %243

243:                                              ; preds = %224
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 9
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %33, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %246, %248
  %250 = icmp slt i64 %249, 0
  br i1 %250, label %270, label %251

251:                                              ; preds = %243
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 9
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* %33, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %254, %256
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %257, %261
  %263 = load i32, i32* %35, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %262, %264
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 7
  %268 = load i64, i64* %267, align 8
  %269 = icmp sgt i64 %265, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %251, %243, %224, %188
  %271 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %271, i32* %5, align 4
  br label %498

272:                                              ; preds = %251
  br label %273

273:                                              ; preds = %272, %183
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, 2
  br i1 %277, label %283, label %278

278:                                              ; preds = %273
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 3
  br i1 %282, label %283, label %368

283:                                              ; preds = %278, %273
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 8
  %290 = ashr i32 %286, %289
  store i32 %290, i32* %36, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = ashr i32 %293, %296
  store i32 %297, i32* %37, align 4
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = and i32 %300, %303
  store i32 %304, i32* %38, align 4
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 8
  %311 = and i32 %307, %310
  store i32 %311, i32* %39, align 4
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 8
  %314 = load i64, i64* %313, align 8
  %315 = load i32, i32* %36, align 4
  %316 = sext i32 %315 to i64
  %317 = add nsw i64 %314, %316
  %318 = icmp slt i64 %317, 0
  br i1 %318, label %365, label %319

319:                                              ; preds = %283
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 8
  %322 = load i64, i64* %321, align 8
  %323 = load i32, i32* %36, align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %322, %324
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %325, %329
  %331 = load i32, i32* %38, align 4
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %330, %332
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 6
  %336 = load i64, i64* %335, align 8
  %337 = icmp sgt i64 %333, %336
  br i1 %337, label %365, label %338

338:                                              ; preds = %319
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 9
  %341 = load i64, i64* %340, align 8
  %342 = load i32, i32* %37, align 4
  %343 = sext i32 %342 to i64
  %344 = add nsw i64 %341, %343
  %345 = icmp slt i64 %344, 0
  br i1 %345, label %365, label %346

346:                                              ; preds = %338
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 9
  %349 = load i64, i64* %348, align 8
  %350 = load i32, i32* %37, align 4
  %351 = sext i32 %350 to i64
  %352 = add nsw i64 %349, %351
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %352, %356
  %358 = load i32, i32* %39, align 4
  %359 = sext i32 %358 to i64
  %360 = add nsw i64 %357, %359
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 7
  %363 = load i64, i64* %362, align 8
  %364 = icmp sgt i64 %360, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %346, %338, %319, %283
  %366 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %366, i32* %5, align 4
  br label %498

367:                                              ; preds = %346
  br label %368

368:                                              ; preds = %367, %278
  br label %369

369:                                              ; preds = %368, %125
  store i32 0, i32* %11, align 4
  br label %370

370:                                              ; preds = %486, %369
  %371 = load i32, i32* %11, align 4
  %372 = load i32, i32* %12, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %489

374:                                              ; preds = %370
  %375 = load i32, i32* %11, align 4
  %376 = and i32 %375, 1
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %374
  %379 = load i32, i32* %13, align 4
  %380 = sext i32 %379 to i64
  %381 = load i64, i64* %25, align 8
  %382 = add i64 %381, %380
  store i64 %382, i64* %25, align 8
  br label %400

383:                                              ; preds = %374
  %384 = load i32, i32* %11, align 4
  %385 = icmp eq i32 %384, 2
  br i1 %385, label %386, label %399

386:                                              ; preds = %383
  %387 = load i32, i32* %13, align 4
  %388 = sext i32 %387 to i64
  %389 = load i64, i64* %25, align 8
  %390 = sub i64 %389, %388
  store i64 %390, i64* %25, align 8
  %391 = load i32, i32* %13, align 4
  %392 = sext i32 %391 to i64
  %393 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 6
  %395 = load i64, i64* %394, align 8
  %396 = mul nsw i64 %392, %395
  %397 = load i64, i64* %25, align 8
  %398 = add i64 %397, %396
  store i64 %398, i64* %25, align 8
  br label %399

399:                                              ; preds = %386, %383
  br label %400

400:                                              ; preds = %399, %378
  %401 = load i64, i64* %23, align 8
  %402 = and i64 %401, 1
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %425

404:                                              ; preds = %400
  %405 = load i32*, i32** %6, align 8
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %407 = load i32, i32* %27, align 4
  %408 = load i32, i32* %29, align 4
  %409 = load i32, i32* %18, align 4
  %410 = load i32, i32* %19, align 4
  %411 = load i32, i32* %20, align 4
  %412 = load i32, i32* %21, align 4
  %413 = load i32, i32* %15, align 4
  %414 = load i32, i32* %16, align 4
  %415 = load i32, i32* %17, align 4
  %416 = load i64, i64* %24, align 8
  %417 = load i64, i64* %25, align 8
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %419 = call i32 @ivi_decode_coded_blocks(i32* %405, %struct.TYPE_14__* %406, i32 %407, i32 %408, i32 %409, i32 %410, i32 %411, i32 %412, i64* %22, i32 %413, i32 %414, i32 %415, i64 %416, i64 %417, %struct.TYPE_15__* %418)
  store i32 %419, i32* %14, align 4
  %420 = load i32, i32* %14, align 4
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %404
  %423 = load i32, i32* %14, align 4
  store i32 %423, i32* %5, align 4
  br label %498

424:                                              ; preds = %404
  br label %483

425:                                              ; preds = %400
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 6
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 7
  %431 = load i64, i64* %430, align 8
  %432 = mul nsw i64 %428, %431
  %433 = load i64, i64* %25, align 8
  %434 = sub i64 %432, %433
  %435 = trunc i64 %434 to i32
  store i32 %435, i32* %40, align 4
  %436 = load i32, i32* %13, align 4
  %437 = sub nsw i32 %436, 1
  %438 = sext i32 %437 to i64
  %439 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i32 0, i32 6
  %441 = load i64, i64* %440, align 8
  %442 = mul nsw i64 %438, %441
  %443 = load i32, i32* %13, align 4
  %444 = sext i32 %443 to i64
  %445 = add nsw i64 %442, %444
  %446 = trunc i64 %445 to i32
  store i32 %446, i32* %41, align 4
  %447 = load i32, i32* %41, align 4
  %448 = load i32, i32* %40, align 4
  %449 = icmp sgt i32 %447, %448
  br i1 %449, label %450, label %452

450:                                              ; preds = %425
  %451 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %451, i32* %5, align 4
  br label %498

452:                                              ; preds = %425
  %453 = load i32, i32* %15, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %465

455:                                              ; preds = %452
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %457 = load i64, i64* %25, align 8
  %458 = load i32, i32* %13, align 4
  %459 = call i32 @ivi_dc_transform(%struct.TYPE_14__* %456, i64* %22, i64 %457, i32 %458)
  store i32 %459, i32* %14, align 4
  %460 = load i32, i32* %14, align 4
  %461 = icmp slt i32 %460, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %455
  %463 = load i32, i32* %14, align 4
  store i32 %463, i32* %5, align 4
  br label %498

464:                                              ; preds = %455
  br label %482

465:                                              ; preds = %452
  %466 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %467 = load i32, i32* %28, align 4
  %468 = load i32, i32* %30, align 4
  %469 = load i64, i64* %25, align 8
  %470 = load i32, i32* %18, align 4
  %471 = load i32, i32* %19, align 4
  %472 = load i32, i32* %20, align 4
  %473 = load i32, i32* %21, align 4
  %474 = load i32, i32* %16, align 4
  %475 = load i32, i32* %17, align 4
  %476 = call i32 @ivi_mc(%struct.TYPE_14__* %466, i32 %467, i32 %468, i64 %469, i32 %470, i32 %471, i32 %472, i32 %473, i32 %474, i32 %475)
  store i32 %476, i32* %14, align 4
  %477 = load i32, i32* %14, align 4
  %478 = icmp slt i32 %477, 0
  br i1 %478, label %479, label %481

479:                                              ; preds = %465
  %480 = load i32, i32* %14, align 4
  store i32 %480, i32* %5, align 4
  br label %498

481:                                              ; preds = %465
  br label %482

482:                                              ; preds = %481, %464
  br label %483

483:                                              ; preds = %482, %424
  %484 = load i64, i64* %23, align 8
  %485 = lshr i64 %484, 1
  store i64 %485, i64* %23, align 8
  br label %486

486:                                              ; preds = %483
  %487 = load i32, i32* %11, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %11, align 4
  br label %370

489:                                              ; preds = %370
  br label %490

490:                                              ; preds = %489
  %491 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 1
  store %struct.TYPE_13__* %492, %struct.TYPE_13__** %26, align 8
  %493 = load i32, i32* %10, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %10, align 4
  br label %68

495:                                              ; preds = %68
  %496 = load i32*, i32** %6, align 8
  %497 = call i32 @align_get_bits(i32* %496)
  store i32 0, i32* %5, align 4
  br label %498

498:                                              ; preds = %495, %479, %462, %450, %422, %365, %270
  %499 = load i32, i32* %5, align 4
  ret i32 %499
}

declare dso_local i64 @av_clip_uintp2(i64, i32) #1

declare dso_local i64 @av_clip(i64, i32, i32) #1

declare dso_local i32 @ivi_decode_coded_blocks(i32*, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i64*, i32, i32, i32, i64, i64, %struct.TYPE_15__*) #1

declare dso_local i32 @ivi_dc_transform(%struct.TYPE_14__*, i64*, i64, i32) #1

declare dso_local i32 @ivi_mc(%struct.TYPE_14__*, i32, i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @align_get_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
