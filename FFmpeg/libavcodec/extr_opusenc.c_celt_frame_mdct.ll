; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_celt_frame_mdct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_celt_frame_mdct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float*, %struct.TYPE_13__**, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, float*, float*, i32)* }
%struct.TYPE_9__ = type { i32 (float*, float*, i64, i32)*, i32 (float*, float*, i64, i32)* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { float*, float*, float*, float*, i64* }

@CELT_OVERLAP = common dso_local global i32 0, align 4
@ff_celt_window = common dso_local global i64 0, align 8
@CELT_MAX_BANDS = common dso_local global i32 0, align 4
@ff_celt_freq_bands = common dso_local global i32* null, align 8
@ff_celt_freq_range = common dso_local global i32* null, align 8
@FLT_EPSILON = common dso_local global float 0.000000e+00, align 4
@ff_celt_mean_energy = common dso_local global i64* null, align 8
@CELT_ENERGY_SILENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @celt_frame_mdct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_frame_mdct(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load float*, float** %28, align 8
  store float* %29, float** %5, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  %33 = getelementptr inbounds float, float* %32, i64 1920
  store float* %33, float** %6, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %124

38:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %120, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %123

45:                                               ; preds = %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %50
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %8, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load float*, float** %53, align 8
  store float* %54, float** %9, align 8
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %116, %45
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %119

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* @CELT_OVERLAP, align 4
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %64, i64 %68
  store float* %69, float** %11, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32 (float*, float*, i64, i32)*, i32 (float*, float*, i64, i32)** %73, align 8
  %75 = load float*, float** %5, align 8
  %76 = load float*, float** %9, align 8
  %77 = load i64, i64* @ff_celt_window, align 8
  %78 = call i32 %74(float* %75, float* %76, i64 %77, i32 128)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32 (float*, float*, i64, i32)*, i32 (float*, float*, i64, i32)** %82, align 8
  %84 = load float*, float** %5, align 8
  %85 = load i32, i32* @CELT_OVERLAP, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float*, float** %11, align 8
  %89 = load i64, i64* @ff_celt_window, align 8
  %90 = sub nsw i64 %89, 8
  %91 = call i32 %83(float* %87, float* %88, i64 %90, i32 128)
  %92 = load float*, float** %11, align 8
  store float* %92, float** %9, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %95, i64 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32 (%struct.TYPE_13__*, float*, float*, i32)*, i32 (%struct.TYPE_13__*, float*, float*, i32)** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %102, i64 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load float*, float** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  %111 = load float*, float** %5, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 %99(%struct.TYPE_13__* %104, float* %110, float* %111, i32 %114)
  br label %116

116:                                              ; preds = %61
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %55

119:                                              ; preds = %55
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %39

123:                                              ; preds = %39
  br label %254

124:                                              ; preds = %2
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @OPUS_BLOCK_SIZE(i32 %127)
  store i32 %128, i32* %12, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  %133 = call i32 @OPUS_BLOCK_SIZE(i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @CELT_OVERLAP, align 4
  %136 = sub nsw i32 %134, %135
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* @CELT_OVERLAP, align 4
  %141 = sub nsw i32 %139, %140
  %142 = ashr i32 %141, 1
  store i32 %142, i32* %15, align 4
  %143 = load float*, float** %5, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memset(float* %143, i32 0, i32 %147)
  store i32 0, i32* %16, align 4
  br label %149

149:                                              ; preds = %250, %124
  %150 = load i32, i32* %16, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %253

155:                                              ; preds = %149
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i64 %160
  store %struct.TYPE_12__* %161, %struct.TYPE_12__** %17, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = load i32 (float*, float*, i64, i32)*, i32 (float*, float*, i64, i32)** %165, align 8
  %167 = load float*, float** %6, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load float*, float** %169, align 8
  %171 = load i64, i64* @ff_celt_window, align 8
  %172 = call i32 %166(float* %167, float* %170, i64 %171, i32 128)
  %173 = load float*, float** %5, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %173, i64 %175
  %177 = load float*, float** %6, align 8
  %178 = load i32, i32* @CELT_OVERLAP, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 4
  %181 = trunc i64 %180 to i32
  %182 = call i32 @memcpy(float* %176, float* %177, i32 %181)
  %183 = load float*, float** %5, align 8
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* @CELT_OVERLAP, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %183, i64 %187
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load float*, float** %190, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 4
  %195 = trunc i64 %194 to i32
  %196 = call i32 @memcpy(float* %188, float* %191, i32 %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load i32 (float*, float*, i64, i32)*, i32 (float*, float*, i64, i32)** %200, align 8
  %202 = load float*, float** %6, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load float*, float** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  %209 = load i64, i64* @ff_celt_window, align 8
  %210 = sub nsw i64 %209, 8
  %211 = call i32 %201(float* %202, float* %208, i64 %210, i32 128)
  %212 = load float*, float** %5, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %215, i64 %217
  %219 = load float*, float** %6, align 8
  %220 = load i32, i32* @CELT_OVERLAP, align 4
  %221 = sext i32 %220 to i64
  %222 = mul i64 %221, 4
  %223 = trunc i64 %222 to i32
  %224 = call i32 @memcpy(float* %218, float* %219, i32 %223)
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %226, align 8
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %227, i64 %231
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = load i32 (%struct.TYPE_13__*, float*, float*, i32)*, i32 (%struct.TYPE_13__*, float*, float*, i32)** %234, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %237, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %238, i64 %242
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 2
  %247 = load float*, float** %246, align 8
  %248 = load float*, float** %5, align 8
  %249 = call i32 %235(%struct.TYPE_13__* %244, float* %247, float* %248, i32 1)
  br label %250

250:                                              ; preds = %155
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %16, align 4
  br label %149

253:                                              ; preds = %149
  br label %254

254:                                              ; preds = %253, %123
  store i32 0, i32* %18, align 4
  br label %255

255:                                              ; preds = %392, %254
  %256 = load i32, i32* %18, align 4
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp slt i32 %256, %259
  br i1 %260, label %261, label %395

261:                                              ; preds = %255
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 3
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %263, align 8
  %265 = load i32, i32* %18, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i64 %266
  store %struct.TYPE_12__* %267, %struct.TYPE_12__** %19, align 8
  store i32 0, i32* %20, align 4
  br label %268

268:                                              ; preds = %388, %261
  %269 = load i32, i32* %20, align 4
  %270 = load i32, i32* @CELT_MAX_BANDS, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %391

272:                                              ; preds = %268
  store float 0.000000e+00, float* %21, align 4
  %273 = load i32*, i32** @ff_celt_freq_bands, align 8
  %274 = load i32, i32* %20, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = shl i32 %277, %280
  store i32 %281, i32* %22, align 4
  %282 = load i32*, i32** @ff_celt_freq_range, align 8
  %283 = load i32, i32* %20, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = shl i32 %286, %289
  store i32 %290, i32* %23, align 4
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 2
  %293 = load float*, float** %292, align 8
  %294 = load i32, i32* %22, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %293, i64 %295
  store float* %296, float** %24, align 8
  store i32 0, i32* %25, align 4
  br label %297

297:                                              ; preds = %315, %272
  %298 = load i32, i32* %25, align 4
  %299 = load i32, i32* %23, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %318

301:                                              ; preds = %297
  %302 = load float*, float** %24, align 8
  %303 = load i32, i32* %25, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %302, i64 %304
  %306 = load float, float* %305, align 4
  %307 = load float*, float** %24, align 8
  %308 = load i32, i32* %25, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %307, i64 %309
  %311 = load float, float* %310, align 4
  %312 = fmul float %306, %311
  %313 = load float, float* %21, align 4
  %314 = fadd float %313, %312
  store float %314, float* %21, align 4
  br label %315

315:                                              ; preds = %301
  %316 = load i32, i32* %25, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %25, align 4
  br label %297

318:                                              ; preds = %297
  %319 = load float, float* %21, align 4
  %320 = call float @sqrtf(float %319) #3
  %321 = load float, float* @FLT_EPSILON, align 4
  %322 = fadd float %320, %321
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 3
  %325 = load float*, float** %324, align 8
  %326 = load i32, i32* %20, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %325, i64 %327
  store float %322, float* %328, align 4
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 3
  %331 = load float*, float** %330, align 8
  %332 = load i32, i32* %20, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds float, float* %331, i64 %333
  %335 = load float, float* %334, align 4
  %336 = fdiv float 1.000000e+00, %335
  store float %336, float* %21, align 4
  store i32 0, i32* %26, align 4
  br label %337

337:                                              ; preds = %349, %318
  %338 = load i32, i32* %26, align 4
  %339 = load i32, i32* %23, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %352

341:                                              ; preds = %337
  %342 = load float, float* %21, align 4
  %343 = load float*, float** %24, align 8
  %344 = load i32, i32* %26, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %343, i64 %345
  %347 = load float, float* %346, align 4
  %348 = fmul float %347, %342
  store float %348, float* %346, align 4
  br label %349

349:                                              ; preds = %341
  %350 = load i32, i32* %26, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %26, align 4
  br label %337

352:                                              ; preds = %337
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 3
  %355 = load float*, float** %354, align 8
  %356 = load i32, i32* %20, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %355, i64 %357
  %359 = load float, float* %358, align 4
  %360 = call i64 @log2f(float %359)
  %361 = load i64*, i64** @ff_celt_mean_energy, align 8
  %362 = load i32, i32* %20, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i64, i64* %361, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = sub nsw i64 %360, %365
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 4
  %369 = load i64*, i64** %368, align 8
  %370 = load i32, i32* %20, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i64, i64* %369, i64 %371
  store i64 %366, i64* %372, align 8
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 4
  %375 = load i64*, i64** %374, align 8
  %376 = load i32, i32* %20, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %375, i64 %377
  %379 = load i64, i64* %378, align 8
  %380 = load i32, i32* @CELT_ENERGY_SILENCE, align 4
  %381 = call i64 @FFMAX(i64 %379, i32 %380)
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 4
  %384 = load i64*, i64** %383, align 8
  %385 = load i32, i32* %20, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %384, i64 %386
  store i64 %381, i64* %387, align 8
  br label %388

388:                                              ; preds = %352
  %389 = load i32, i32* %20, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %20, align 4
  br label %268

391:                                              ; preds = %268
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %18, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %18, align 4
  br label %255

395:                                              ; preds = %255
  ret void
}

declare dso_local i32 @OPUS_BLOCK_SIZE(i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local i64 @log2f(float) #1

declare dso_local i64 @FFMAX(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
