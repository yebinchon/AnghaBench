; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_video_audio_display.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_video_audio_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32*, i32, i32, i32, i32, double*, i32, i32, i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@SHOW_MODE_WAVES = common dso_local global i64 0, align 8
@audio_callback_time = common dso_local global i32 0, align 4
@SAMPLE_ARRAY_SIZE = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@renderer = common dso_local global i32 0, align 4
@SDL_PIXELFORMAT_ARGB8888 = common dso_local global i32 0, align 4
@SDL_BLENDMODE_NONE = common dso_local global i32 0, align 4
@DFT_R2C = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Failed to allocate buffers for RDFT, switching to waves display\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @video_audio_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video_audio_display(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [2 x double*], align 16
  %27 = alloca %struct.TYPE_8__, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 1, i32* %17, align 4
  br label %34

34:                                               ; preds = %43, %1
  %35 = load i32, i32* %17, align 4
  %36 = shl i32 1, %35
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 2, %39
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %17, align 4
  br label %34

46:                                               ; preds = %34
  %47 = load i32, i32* %17, align 4
  %48 = sub nsw i32 %47, 1
  %49 = shl i32 1, %48
  store i32 %49, i32* %18, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %11, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %203, label %59

59:                                               ; preds = %46
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SHOW_MODE_WAVES, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  br label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %18, align 4
  %71 = mul nsw i32 2, %70
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i32 [ %68, %65 ], [ %71, %69 ]
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %13, align 4
  %75 = mul nsw i32 2, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %9, align 4
  %81 = sdiv i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @audio_callback_time, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %72
  %85 = call i32 (...) @av_gettime_relative()
  %86 = load i32, i32* @audio_callback_time, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %88, %92
  %94 = sdiv i32 %93, 1000000
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %84, %72
  %98 = load i32, i32* %19, align 4
  %99 = mul nsw i32 2, %98
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %97
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 14
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %13, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %110, %114
  %116 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %117 = call i32 @compute_mod(i64 %115, i32 %116)
  store i32 %117, i32* %5, align 4
  store i32 %117, i32* %4, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SHOW_MODE_WAVES, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %199

123:                                              ; preds = %107
  %124 = load i32, i32* @INT_MIN, align 4
  store i32 %124, i32* %14, align 4
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %194, %123
  %126 = load i32, i32* %3, align 4
  %127 = icmp slt i32 %126, 1000
  br i1 %127, label %128, label %198

128:                                              ; preds = %125
  %129 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %3, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %135 = srem i32 %133, %134
  store i32 %135, i32* %20, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %21, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %13, align 4
  %148 = mul nsw i32 4, %147
  %149 = add nsw i32 %146, %148
  %150 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %151 = srem i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %145, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %22, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %13, align 4
  %160 = mul nsw i32 5, %159
  %161 = add nsw i32 %158, %160
  %162 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %163 = srem i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %157, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %23, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %13, align 4
  %172 = mul nsw i32 9, %171
  %173 = add nsw i32 %170, %172
  %174 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %175 = srem i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %169, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %24, align 4
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %24, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* %25, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %25, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %128
  %186 = load i32, i32* %22, align 4
  %187 = load i32, i32* %23, align 4
  %188 = xor i32 %186, %187
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i32, i32* %25, align 4
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %20, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %190, %185, %128
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %3, align 4
  br label %125

198:                                              ; preds = %125
  br label %199

199:                                              ; preds = %198, %107
  %200 = load i32, i32* %4, align 4
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 8
  br label %207

203:                                              ; preds = %46
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %203, %199
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @SHOW_MODE_WAVES, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %323

213:                                              ; preds = %207
  %214 = load i32, i32* @renderer, align 4
  %215 = call i32 @SDL_SetRenderDrawColor(i32 %214, i32 255, i32 255, i32 255, i32 255)
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sdiv i32 %218, %219
  store i32 %220, i32* %14, align 4
  %221 = load i32, i32* %14, align 4
  %222 = mul nsw i32 %221, 9
  %223 = sdiv i32 %222, 20
  store i32 %223, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %224

224:                                              ; preds = %293, %213
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %296

228:                                              ; preds = %224
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %229, %230
  store i32 %231, i32* %3, align 4
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %14, align 4
  %237 = mul nsw i32 %235, %236
  %238 = add nsw i32 %234, %237
  %239 = load i32, i32* %14, align 4
  %240 = sdiv i32 %239, 2
  %241 = add nsw i32 %238, %240
  store i32 %241, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %289, %228
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %292

248:                                              ; preds = %242
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %3, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %15, align 4
  %257 = mul nsw i32 %255, %256
  %258 = ashr i32 %257, 15
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %7, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %248
  %262 = load i32, i32* %7, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %7, align 4
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* %7, align 4
  %266 = sub nsw i32 %264, %265
  store i32 %266, i32* %8, align 4
  br label %269

267:                                              ; preds = %248
  %268 = load i32, i32* %6, align 4
  store i32 %268, i32* %8, align 4
  br label %269

269:                                              ; preds = %267, %261
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %272, %273
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* %7, align 4
  %277 = call i32 @fill_rectangle(i32 %274, i32 %275, i32 1, i32 %276)
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* %3, align 4
  %280 = add nsw i32 %279, %278
  store i32 %280, i32* %3, align 4
  %281 = load i32, i32* %3, align 4
  %282 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %283 = icmp sge i32 %281, %282
  br i1 %283, label %284, label %288

284:                                              ; preds = %269
  %285 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %286 = load i32, i32* %3, align 4
  %287 = sub nsw i32 %286, %285
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %269
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %5, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %5, align 4
  br label %242

292:                                              ; preds = %242
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %12, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %12, align 4
  br label %224

296:                                              ; preds = %224
  %297 = load i32, i32* @renderer, align 4
  %298 = call i32 @SDL_SetRenderDrawColor(i32 %297, i32 0, i32 0, i32 255, i32 255)
  store i32 1, i32* %12, align 4
  br label %299

299:                                              ; preds = %319, %296
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %11, align 4
  %302 = icmp slt i32 %300, %301
  br i1 %302, label %303, label %322

303:                                              ; preds = %299
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* %14, align 4
  %309 = mul nsw i32 %307, %308
  %310 = add nsw i32 %306, %309
  store i32 %310, i32* %7, align 4
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 7
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %7, align 4
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @fill_rectangle(i32 %313, i32 %314, i32 %317, i32 1)
  br label %319

319:                                              ; preds = %303
  %320 = load i32, i32* %12, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %12, align 4
  br label %299

322:                                              ; preds = %299
  br label %629

323:                                              ; preds = %207
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 12
  %326 = load i32, i32* @SDL_PIXELFORMAT_ARGB8888, align 4
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @SDL_BLENDMODE_NONE, align 4
  %334 = call i64 @realloc_texture(i32* %325, i32 %326, i32 %329, i32 %332, i32 %333, i32 1)
  %335 = icmp slt i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %323
  br label %629

337:                                              ; preds = %323
  %338 = load i32, i32* %11, align 4
  %339 = call i32 @FFMIN(i32 %338, i32 2)
  store i32 %339, i32* %11, align 4
  %340 = load i32, i32* %17, align 4
  %341 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 8
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %340, %343
  br i1 %344, label %345, label %366

345:                                              ; preds = %337
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 13
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @av_rdft_end(i32 %348)
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 9
  %352 = load double*, double** %351, align 8
  %353 = call i32 @av_free(double* %352)
  %354 = load i32, i32* %17, align 4
  %355 = load i32, i32* @DFT_R2C, align 4
  %356 = call i32 @av_rdft_init(i32 %354, i32 %355)
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 13
  store i32 %356, i32* %358, align 4
  %359 = load i32, i32* %17, align 4
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 8
  store i32 %359, i32* %361, align 4
  %362 = load i32, i32* %18, align 4
  %363 = call double* @av_malloc_array(i32 %362, i32 32)
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 9
  store double* %363, double** %365, align 8
  br label %366

366:                                              ; preds = %345, %337
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 13
  %369 = load i32, i32* %368, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %366
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 9
  %374 = load double*, double** %373, align 8
  %375 = icmp ne double* %374, null
  br i1 %375, label %382, label %376

376:                                              ; preds = %371, %366
  %377 = load i32, i32* @AV_LOG_ERROR, align 4
  %378 = call i32 @av_log(i32* null, i32 %377, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %379 = load i64, i64* @SHOW_MODE_WAVES, align 8
  %380 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 1
  store i64 %379, i64* %381, align 8
  br label %604

382:                                              ; preds = %371
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 10
  %386 = load i32, i32* %385, align 8
  store i32 %386, i32* %383, align 4
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 1, i32* %387, align 4
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  store i32 %391, i32* %388, align 4
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i32 0, i32* %392, align 4
  store i32 0, i32* %12, align 4
  br label %393

393:                                              ; preds = %470, %382
  %394 = load i32, i32* %12, align 4
  %395 = load i32, i32* %11, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %473

397:                                              ; preds = %393
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 9
  %400 = load double*, double** %399, align 8
  %401 = load i32, i32* %18, align 4
  %402 = mul nsw i32 2, %401
  %403 = load i32, i32* %12, align 4
  %404 = mul nsw i32 %402, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds double, double* %400, i64 %405
  %407 = load i32, i32* %12, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 %408
  store double* %406, double** %409, align 8
  %410 = load i32, i32* %4, align 4
  %411 = load i32, i32* %12, align 4
  %412 = add nsw i32 %410, %411
  store i32 %412, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %413

413:                                              ; preds = %458, %397
  %414 = load i32, i32* %5, align 4
  %415 = load i32, i32* %18, align 4
  %416 = mul nsw i32 2, %415
  %417 = icmp slt i32 %414, %416
  br i1 %417, label %418, label %461

418:                                              ; preds = %413
  %419 = load i32, i32* %5, align 4
  %420 = load i32, i32* %18, align 4
  %421 = sub nsw i32 %419, %420
  %422 = sitofp i32 %421 to double
  %423 = load i32, i32* %18, align 4
  %424 = sitofp i32 %423 to double
  %425 = fdiv double 1.000000e+00, %424
  %426 = fmul double %422, %425
  store double %426, double* %30, align 8
  %427 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 4
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %3, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = sitofp i32 %433 to double
  %435 = load double, double* %30, align 8
  %436 = load double, double* %30, align 8
  %437 = fmul double %435, %436
  %438 = fsub double 1.000000e+00, %437
  %439 = fmul double %434, %438
  %440 = load i32, i32* %12, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 %441
  %443 = load double*, double** %442, align 8
  %444 = load i32, i32* %5, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds double, double* %443, i64 %445
  store double %439, double* %446, align 8
  %447 = load i32, i32* %13, align 4
  %448 = load i32, i32* %3, align 4
  %449 = add nsw i32 %448, %447
  store i32 %449, i32* %3, align 4
  %450 = load i32, i32* %3, align 4
  %451 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %452 = icmp sge i32 %450, %451
  br i1 %452, label %453, label %457

453:                                              ; preds = %418
  %454 = load i32, i32* @SAMPLE_ARRAY_SIZE, align 4
  %455 = load i32, i32* %3, align 4
  %456 = sub nsw i32 %455, %454
  store i32 %456, i32* %3, align 4
  br label %457

457:                                              ; preds = %453, %418
  br label %458

458:                                              ; preds = %457
  %459 = load i32, i32* %5, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %5, align 4
  br label %413

461:                                              ; preds = %413
  %462 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 13
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %12, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 %466
  %468 = load double*, double** %467, align 8
  %469 = call i32 @av_rdft_calc(i32 %464, double* %468)
  br label %470

470:                                              ; preds = %461
  %471 = load i32, i32* %12, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %12, align 4
  br label %393

473:                                              ; preds = %393
  %474 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 12
  %476 = load i32, i32* %475, align 8
  %477 = bitcast i32** %28 to i8**
  %478 = call i32 @SDL_LockTexture(i32 %476, %struct.TYPE_8__* %27, i8** %477, i32* %29)
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %598, label %480

480:                                              ; preds = %473
  %481 = load i32, i32* %29, align 4
  %482 = ashr i32 %481, 2
  store i32 %482, i32* %29, align 4
  %483 = load i32, i32* %29, align 4
  %484 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %485 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = mul nsw i32 %483, %486
  %488 = load i32*, i32** %28, align 8
  %489 = sext i32 %487 to i64
  %490 = getelementptr inbounds i32, i32* %488, i64 %489
  store i32* %490, i32** %28, align 8
  store i32 0, i32* %7, align 4
  br label %491

491:                                              ; preds = %590, %480
  %492 = load i32, i32* %7, align 4
  %493 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %494 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = icmp slt i32 %492, %495
  br i1 %496, label %497, label %593

497:                                              ; preds = %491
  %498 = load i32, i32* %18, align 4
  %499 = sitofp i32 %498 to double
  %500 = call i32 @sqrt(double %499)
  %501 = sdiv i32 1, %500
  %502 = sitofp i32 %501 to double
  store double %502, double* %31, align 8
  %503 = load double, double* %31, align 8
  %504 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 0
  %505 = load double*, double** %504, align 16
  %506 = load i32, i32* %7, align 4
  %507 = mul nsw i32 2, %506
  %508 = add nsw i32 %507, 0
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds double, double* %505, i64 %509
  %511 = load double, double* %510, align 8
  %512 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 0
  %513 = load double*, double** %512, align 16
  %514 = load i32, i32* %7, align 4
  %515 = mul nsw i32 2, %514
  %516 = add nsw i32 %515, 0
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds double, double* %513, i64 %517
  %519 = load double, double* %518, align 8
  %520 = fmul double %511, %519
  %521 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 0
  %522 = load double*, double** %521, align 16
  %523 = load i32, i32* %7, align 4
  %524 = mul nsw i32 2, %523
  %525 = add nsw i32 %524, 1
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds double, double* %522, i64 %526
  %528 = load double, double* %527, align 8
  %529 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 0
  %530 = load double*, double** %529, align 16
  %531 = load i32, i32* %7, align 4
  %532 = mul nsw i32 2, %531
  %533 = add nsw i32 %532, 1
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds double, double* %530, i64 %534
  %536 = load double, double* %535, align 8
  %537 = fmul double %528, %536
  %538 = fadd double %520, %537
  %539 = call i32 @sqrt(double %538)
  %540 = sitofp i32 %539 to double
  %541 = fmul double %503, %540
  %542 = call i32 @sqrt(double %541)
  store i32 %542, i32* %32, align 4
  %543 = load i32, i32* %11, align 4
  %544 = icmp eq i32 %543, 2
  br i1 %544, label %545, label %566

545:                                              ; preds = %497
  %546 = load double, double* %31, align 8
  %547 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 1
  %548 = load double*, double** %547, align 8
  %549 = load i32, i32* %7, align 4
  %550 = mul nsw i32 2, %549
  %551 = add nsw i32 %550, 0
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds double, double* %548, i64 %552
  %554 = load double, double* %553, align 8
  %555 = getelementptr inbounds [2 x double*], [2 x double*]* %26, i64 0, i64 1
  %556 = load double*, double** %555, align 8
  %557 = load i32, i32* %7, align 4
  %558 = mul nsw i32 2, %557
  %559 = add nsw i32 %558, 1
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds double, double* %556, i64 %560
  %562 = load double, double* %561, align 8
  %563 = call double @hypot(double %554, double %562) #3
  %564 = fmul double %546, %563
  %565 = call i32 @sqrt(double %564)
  br label %568

566:                                              ; preds = %497
  %567 = load i32, i32* %32, align 4
  br label %568

568:                                              ; preds = %566, %545
  %569 = phi i32 [ %565, %545 ], [ %567, %566 ]
  store i32 %569, i32* %33, align 4
  %570 = load i32, i32* %32, align 4
  %571 = call i32 @FFMIN(i32 %570, i32 255)
  store i32 %571, i32* %32, align 4
  %572 = load i32, i32* %33, align 4
  %573 = call i32 @FFMIN(i32 %572, i32 255)
  store i32 %573, i32* %33, align 4
  %574 = load i32, i32* %29, align 4
  %575 = load i32*, i32** %28, align 8
  %576 = sext i32 %574 to i64
  %577 = sub i64 0, %576
  %578 = getelementptr inbounds i32, i32* %575, i64 %577
  store i32* %578, i32** %28, align 8
  %579 = load i32, i32* %32, align 4
  %580 = shl i32 %579, 16
  %581 = load i32, i32* %33, align 4
  %582 = shl i32 %581, 8
  %583 = add nsw i32 %580, %582
  %584 = load i32, i32* %32, align 4
  %585 = load i32, i32* %33, align 4
  %586 = add nsw i32 %584, %585
  %587 = ashr i32 %586, 1
  %588 = add nsw i32 %583, %587
  %589 = load i32*, i32** %28, align 8
  store i32 %588, i32* %589, align 4
  br label %590

590:                                              ; preds = %568
  %591 = load i32, i32* %7, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %7, align 4
  br label %491

593:                                              ; preds = %491
  %594 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %595 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %594, i32 0, i32 12
  %596 = load i32, i32* %595, align 8
  %597 = call i32 @SDL_UnlockTexture(i32 %596)
  br label %598

598:                                              ; preds = %593, %473
  %599 = load i32, i32* @renderer, align 4
  %600 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %601 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %600, i32 0, i32 12
  %602 = load i32, i32* %601, align 8
  %603 = call i32 @SDL_RenderCopy(i32 %599, i32 %602, i32* null, i32* null)
  br label %604

604:                                              ; preds = %598, %376
  %605 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %606 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %605, i32 0, i32 11
  %607 = load i32, i32* %606, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %614, label %609

609:                                              ; preds = %604
  %610 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 10
  %612 = load i32, i32* %611, align 8
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %611, align 8
  br label %614

614:                                              ; preds = %609, %604
  %615 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %616 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %615, i32 0, i32 10
  %617 = load i32, i32* %616, align 8
  %618 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %619 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %618, i32 0, i32 2
  %620 = load i32, i32* %619, align 8
  %621 = icmp sge i32 %617, %620
  br i1 %621, label %622, label %628

622:                                              ; preds = %614
  %623 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %624 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %623, i32 0, i32 7
  %625 = load i32, i32* %624, align 8
  %626 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %627 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %626, i32 0, i32 10
  store i32 %625, i32* %627, align 8
  br label %628

628:                                              ; preds = %622, %614
  br label %629

629:                                              ; preds = %336, %628, %322
  ret void
}

declare dso_local i32 @av_gettime_relative(...) #1

declare dso_local i32 @compute_mod(i64, i32) #1

declare dso_local i32 @SDL_SetRenderDrawColor(i32, i32, i32, i32, i32) #1

declare dso_local i32 @fill_rectangle(i32, i32, i32, i32) #1

declare dso_local i64 @realloc_texture(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_rdft_end(i32) #1

declare dso_local i32 @av_free(double*) #1

declare dso_local i32 @av_rdft_init(i32, i32) #1

declare dso_local double* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_rdft_calc(i32, double*) #1

declare dso_local i32 @SDL_LockTexture(i32, %struct.TYPE_8__*, i8**, i32*) #1

declare dso_local i32 @sqrt(double) #1

; Function Attrs: nounwind
declare dso_local double @hypot(double, double) #2

declare dso_local i32 @SDL_UnlockTexture(i32) #1

declare dso_local i32 @SDL_RenderCopy(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
