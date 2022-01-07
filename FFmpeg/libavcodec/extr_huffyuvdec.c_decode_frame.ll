; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvdec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i64, %struct.TYPE_12__, i64, i64, i64, i32 }
%struct.TYPE_12__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_13__ = type { i8* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_CODEC_ID_HYMT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32*, %struct.TYPE_15__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_16__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %12, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %42 = load i8*, i8** %7, align 8
  store i8* %42, i8** %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %16, align 8
  store i32 0, i32* %18, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %48, 7
  %50 = sdiv i32 %49, 8
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %292

54:                                               ; preds = %4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @av_fast_padded_malloc(i64* %56, i32* %58, i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %5, align 4
  br label %292

68:                                               ; preds = %54
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sdiv i32 %78, 4
  %80 = call i32 %72(i32* %76, i32* %77, i32 %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = call i32 @ff_thread_get_buffer(%struct.TYPE_16__* %81, %struct.TYPE_13__* %15, i32 0)
  store i32 %82, i32* %19, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = load i32, i32* %19, align 4
  store i32 %85, i32* %5, align 4
  br label %292

86:                                               ; preds = %68
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @read_huffman_tables(%struct.TYPE_14__* %92, i64 %95, i32 %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %18, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* %18, align 4
  store i32 %101, i32* %5, align 4
  br label %292

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %18, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* @INT_MAX, align 4
  %108 = sdiv i32 %107, 8
  %109 = icmp uge i32 %106, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %111, i32* %5, align 4
  br label %292

112:                                              ; preds = %103
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 6
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @AV_CODEC_ID_HYMT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %188

120:                                              ; preds = %112
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %121, 32
  br i1 %122, label %123, label %188

123:                                              ; preds = %120
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = getelementptr inbounds i32, i32* %129, i64 -16
  %131 = call i8* @AV_RL32(i32* %130)
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %188

133:                                              ; preds = %123
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = getelementptr inbounds i32, i32* %139, i64 -4
  %141 = call i8* @AV_RL32(i32* %140)
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %21, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = getelementptr inbounds i32, i32* %148, i64 -8
  %150 = call i8* @AV_RL32(i32* %149)
  %151 = ptrtoint i8* %150 to i32
  store i32 %151, i32* %22, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = getelementptr inbounds i32, i32* %157, i64 -12
  %159 = call i8* @AV_RL32(i32* %158)
  %160 = ptrtoint i8* %159 to i32
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* %20, align 4
  %162 = sext i32 %161 to i64
  %163 = mul nsw i64 %162, 8
  %164 = load i32, i32* %21, align 4
  %165 = zext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  %167 = load i32, i32* %11, align 4
  %168 = sub nsw i32 %167, 16
  %169 = sext i32 %168 to i64
  %170 = icmp sgt i64 %166, %169
  br i1 %170, label %185, label %171

171:                                              ; preds = %133
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %22, align 4
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %22, align 4
  %182 = mul nsw i32 %180, %181
  %183 = load i32, i32* %14, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %179, %176, %171, %133
  %186 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %186, i32* %5, align 4
  br label %292

187:                                              ; preds = %179
  br label %190

188:                                              ; preds = %123, %120, %112
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %22, align 4
  store i32 1, i32* %20, align 4
  br label %190

190:                                              ; preds = %188, %187
  store i32 0, i32* %17, align 4
  br label %191

191:                                              ; preds = %279, %190
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %20, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %282

195:                                              ; preds = %191
  %196 = load i32, i32* %20, align 4
  %197 = icmp sgt i32 %196, 1
  br i1 %197, label %198, label %263

198:                                              ; preds = %195
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %21, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %17, align 4
  %206 = mul nsw i32 %205, 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = call i8* @AV_RL32(i32* %208)
  %210 = ptrtoint i8* %209 to i32
  store i32 %210, i32* %24, align 4
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %21, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %17, align 4
  %218 = mul nsw i32 %217, 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = getelementptr inbounds i32, i32* %220, i64 4
  %222 = call i8* @AV_RL32(i32* %221)
  %223 = ptrtoint i8* %222 to i32
  store i32 %223, i32* %25, align 4
  %224 = load i32, i32* %24, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %239, label %226

226:                                              ; preds = %198
  %227 = load i32, i32* %25, align 4
  %228 = icmp sle i32 %227, 0
  br i1 %228, label %239, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %24, align 4
  %231 = and i32 %230, 3
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %229
  %234 = load i32, i32* %24, align 4
  %235 = load i32, i32* %25, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* %11, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %233, %229, %226, %198
  %240 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %240, i32* %5, align 4
  br label %292

241:                                              ; preds = %233
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %243, 1
  %245 = load i32, i32* %22, align 4
  %246 = mul nsw i32 %244, %245
  %247 = sub nsw i32 %242, %246
  store i32 %247, i32* %23, align 4
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %250, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = inttoptr i64 %254 to i32*
  %256 = load i32*, i32** %10, align 8
  %257 = load i32, i32* %24, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %25, align 4
  %261 = sdiv i32 %260, 4
  %262 = call i32 %251(i32* %255, i32* %259, i32 %261)
  br label %265

263:                                              ; preds = %195
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %264 = load i32, i32* %11, align 4
  store i32 %264, i32* %25, align 4
  br label %265

265:                                              ; preds = %263, %241
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %267 = load i32*, i32** %16, align 8
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* %25, align 4
  %270 = load i32, i32* %23, align 4
  %271 = load i32, i32* %18, align 4
  %272 = call i32 @decode_slice(%struct.TYPE_16__* %266, i32* %267, i32 %268, i32 %269, i32 %270, i32 %271)
  store i32 %272, i32* %19, align 4
  %273 = call i32 (...) @emms_c()
  %274 = load i32, i32* %19, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %265
  %277 = load i32, i32* %19, align 4
  store i32 %277, i32* %5, align 4
  br label %292

278:                                              ; preds = %265
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %17, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %17, align 4
  br label %191

282:                                              ; preds = %191
  %283 = load i32*, i32** %8, align 8
  store i32 1, i32* %283, align 4
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 2
  %286 = call i32 @get_bits_count(i32* %285)
  %287 = add nsw i32 %286, 31
  %288 = sdiv i32 %287, 32
  %289 = mul nsw i32 %288, 4
  %290 = load i32, i32* %18, align 4
  %291 = add nsw i32 %289, %290
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %282, %276, %239, %185, %110, %100, %84, %65, %52
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

declare dso_local i32 @av_fast_padded_malloc(i64*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_16__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @read_huffman_tables(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i8* @AV_RL32(i32*) #1

declare dso_local i32 @decode_slice(%struct.TYPE_16__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @get_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
