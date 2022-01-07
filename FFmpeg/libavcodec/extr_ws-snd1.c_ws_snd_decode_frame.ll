; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ws-snd1.c_ws_snd_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ws-snd1.c_ws_snd_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32, i32** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"packet is too small\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Frame data is larger than input buffer\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ws_adpcm_4bit = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, %struct.TYPE_5__*)* @ws_snd_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_snd_decode_frame(i32* %0, i8* %1, i32* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %10, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %11, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  store i32 128, i32* %16, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %341

35:                                               ; preds = %4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = call i32 @av_log(i32* %39, i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %341

44:                                               ; preds = %35
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @AV_RL16(i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = call i32 @AV_RL16(i32* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32* %52, i32** %11, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 @av_log(i32* %57, i32 %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %60, i32* %5, align 4
  br label %341

61:                                               ; preds = %44
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = call i32 @ff_get_buffer(i32* %65, %struct.TYPE_6__* %66, i32 0)
  store i32 %67, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %5, align 4
  br label %341

71:                                               ; preds = %61
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %17, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %18, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %71
  %85 = load i32*, i32** %17, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @memcpy(i32* %85, i32* %86, i32 %87)
  %89 = load i32*, i32** %8, align 8
  store i32 1, i32* %89, align 4
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %341

91:                                               ; preds = %71
  br label %92

92:                                               ; preds = %324, %91
  %93 = load i32*, i32** %17, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = icmp ult i32* %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = ptrtoint i32* %97 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br label %108

108:                                              ; preds = %96, %92
  %109 = phi i1 [ false, %92 ], [ %107, %96 ]
  br i1 %109, label %110, label %325

110:                                              ; preds = %108
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 6
  store i32 %113, i32* %19, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 63
  store i32 %116, i32* %22, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %11, align 8
  %119 = load i32, i32* %19, align 4
  switch i32 %119, label %138 [
    i32 0, label %120
    i32 1, label %124
    i32 2, label %128
  ]

120:                                              ; preds = %110
  %121 = load i32, i32* %22, align 4
  %122 = add nsw i32 %121, 1
  %123 = mul nsw i32 4, %122
  store i32 %123, i32* %20, align 4
  br label %141

124:                                              ; preds = %110
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %125, 1
  %127 = mul nsw i32 2, %126
  store i32 %127, i32* %20, align 4
  br label %141

128:                                              ; preds = %110
  %129 = load i32, i32* %22, align 4
  %130 = and i32 %129, 32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %22, align 4
  %135 = add nsw i32 %134, 1
  br label %136

136:                                              ; preds = %133, %132
  %137 = phi i32 [ 1, %132 ], [ %135, %133 ]
  store i32 %137, i32* %20, align 4
  br label %141

138:                                              ; preds = %110
  %139 = load i32, i32* %22, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %20, align 4
  br label %141

141:                                              ; preds = %138, %136, %124, %120
  %142 = load i32*, i32** %18, align 8
  %143 = load i32*, i32** %17, align 8
  %144 = ptrtoint i32* %142 to i64
  %145 = ptrtoint i32* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 4
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp slt i64 %147, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  br label %325

152:                                              ; preds = %141
  %153 = load i32, i32* %19, align 4
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32, i32* %22, align 4
  %157 = and i32 %156, 32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155, %152
  %160 = load i32, i32* %19, align 4
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %163

162:                                              ; preds = %159, %155
  br label %166

163:                                              ; preds = %159
  %164 = load i32, i32* %22, align 4
  %165 = add nsw i32 %164, 1
  br label %166

166:                                              ; preds = %163, %162
  %167 = phi i32 [ 0, %162 ], [ %165, %163 ]
  store i32 %167, i32* %21, align 4
  %168 = load i32*, i32** %11, align 8
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = ptrtoint i32* %168 to i64
  %173 = ptrtoint i32* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 4
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp sgt i64 %178, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %166
  br label %325

183:                                              ; preds = %166
  %184 = load i32, i32* %19, align 4
  switch i32 %184, label %315 [
    i32 0, label %185
    i32 1, label %241
    i32 2, label %281
  ]

185:                                              ; preds = %183
  %186 = load i32, i32* %22, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %22, align 4
  br label %188

188:                                              ; preds = %237, %185
  %189 = load i32, i32* %22, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %240

191:                                              ; preds = %188
  %192 = load i32*, i32** %11, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %11, align 8
  %194 = load i32, i32* %192, align 4
  store i32 %194, i32* %19, align 4
  %195 = load i32, i32* %19, align 4
  %196 = and i32 %195, 3
  %197 = sub nsw i32 %196, 2
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %16, align 4
  %200 = load i32, i32* %16, align 4
  %201 = call i32 @av_clip_uint8(i32 %200)
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %16, align 4
  %203 = load i32*, i32** %17, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %17, align 8
  store i32 %202, i32* %203, align 4
  %205 = load i32, i32* %19, align 4
  %206 = ashr i32 %205, 2
  %207 = and i32 %206, 3
  %208 = sub nsw i32 %207, 2
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %16, align 4
  %212 = call i32 @av_clip_uint8(i32 %211)
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32*, i32** %17, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %17, align 8
  store i32 %213, i32* %214, align 4
  %216 = load i32, i32* %19, align 4
  %217 = ashr i32 %216, 4
  %218 = and i32 %217, 3
  %219 = sub nsw i32 %218, 2
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* %16, align 4
  %223 = call i32 @av_clip_uint8(i32 %222)
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %16, align 4
  %225 = load i32*, i32** %17, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %17, align 8
  store i32 %224, i32* %225, align 4
  %227 = load i32, i32* %19, align 4
  %228 = ashr i32 %227, 6
  %229 = sub nsw i32 %228, 2
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* %16, align 4
  %233 = call i32 @av_clip_uint8(i32 %232)
  store i32 %233, i32* %16, align 4
  %234 = load i32, i32* %16, align 4
  %235 = load i32*, i32** %17, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %17, align 8
  store i32 %234, i32* %235, align 4
  br label %237

237:                                              ; preds = %191
  %238 = load i32, i32* %22, align 4
  %239 = add nsw i32 %238, -1
  store i32 %239, i32* %22, align 4
  br label %188

240:                                              ; preds = %188
  br label %324

241:                                              ; preds = %183
  %242 = load i32, i32* %22, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %22, align 4
  br label %244

244:                                              ; preds = %277, %241
  %245 = load i32, i32* %22, align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %280

247:                                              ; preds = %244
  %248 = load i32*, i32** %11, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %11, align 8
  %250 = load i32, i32* %248, align 4
  store i32 %250, i32* %19, align 4
  %251 = load i32*, i32** @ws_adpcm_4bit, align 8
  %252 = load i32, i32* %19, align 4
  %253 = and i32 %252, 15
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %16, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %16, align 4
  %260 = call i32 @av_clip_uint8(i32 %259)
  store i32 %260, i32* %16, align 4
  %261 = load i32, i32* %16, align 4
  %262 = load i32*, i32** %17, align 8
  %263 = getelementptr inbounds i32, i32* %262, i32 1
  store i32* %263, i32** %17, align 8
  store i32 %261, i32* %262, align 4
  %264 = load i32*, i32** @ws_adpcm_4bit, align 8
  %265 = load i32, i32* %19, align 4
  %266 = ashr i32 %265, 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %16, align 4
  %272 = load i32, i32* %16, align 4
  %273 = call i32 @av_clip_uint8(i32 %272)
  store i32 %273, i32* %16, align 4
  %274 = load i32, i32* %16, align 4
  %275 = load i32*, i32** %17, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 1
  store i32* %276, i32** %17, align 8
  store i32 %274, i32* %275, align 4
  br label %277

277:                                              ; preds = %247
  %278 = load i32, i32* %22, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %22, align 4
  br label %244

280:                                              ; preds = %244
  br label %324

281:                                              ; preds = %183
  %282 = load i32, i32* %22, align 4
  %283 = and i32 %282, 32
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %281
  %286 = load i32, i32* %22, align 4
  store i32 %286, i32* %23, align 4
  %287 = load i32, i32* %23, align 4
  %288 = shl i32 %287, 3
  store i32 %288, i32* %23, align 4
  %289 = load i32, i32* %23, align 4
  %290 = ashr i32 %289, 3
  %291 = load i32, i32* %16, align 4
  %292 = add nsw i32 %291, %290
  store i32 %292, i32* %16, align 4
  %293 = load i32, i32* %16, align 4
  %294 = call i32 @av_clip_uint8(i32 %293)
  store i32 %294, i32* %16, align 4
  %295 = load i32, i32* %16, align 4
  %296 = load i32*, i32** %17, align 8
  %297 = getelementptr inbounds i32, i32* %296, i32 1
  store i32* %297, i32** %17, align 8
  store i32 %295, i32* %296, align 4
  br label %314

298:                                              ; preds = %281
  %299 = load i32*, i32** %17, align 8
  %300 = load i32*, i32** %11, align 8
  %301 = load i32, i32* %20, align 4
  %302 = call i32 @memcpy(i32* %299, i32* %300, i32 %301)
  %303 = load i32, i32* %20, align 4
  %304 = load i32*, i32** %17, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32* %306, i32** %17, align 8
  %307 = load i32, i32* %20, align 4
  %308 = load i32*, i32** %11, align 8
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i32, i32* %308, i64 %309
  store i32* %310, i32** %11, align 8
  %311 = load i32*, i32** %11, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 -1
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %16, align 4
  br label %314

314:                                              ; preds = %298, %285
  br label %324

315:                                              ; preds = %183
  %316 = load i32*, i32** %17, align 8
  %317 = load i32, i32* %16, align 4
  %318 = load i32, i32* %20, align 4
  %319 = call i32 @memset(i32* %316, i32 %317, i32 %318)
  %320 = load i32, i32* %20, align 4
  %321 = load i32*, i32** %17, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32* %323, i32** %17, align 8
  br label %324

324:                                              ; preds = %315, %314, %280, %240
  br label %92

325:                                              ; preds = %182, %151, %108
  %326 = load i32*, i32** %17, align 8
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = load i32**, i32*** %328, align 8
  %330 = getelementptr inbounds i32*, i32** %329, i64 0
  %331 = load i32*, i32** %330, align 8
  %332 = ptrtoint i32* %326 to i64
  %333 = ptrtoint i32* %331 to i64
  %334 = sub i64 %332, %333
  %335 = sdiv exact i64 %334, 4
  %336 = trunc i64 %335 to i32
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 8
  %339 = load i32*, i32** %8, align 8
  store i32 1, i32* %339, align 4
  %340 = load i32, i32* %12, align 4
  store i32 %340, i32* %5, align 4
  br label %341

341:                                              ; preds = %325, %84, %69, %56, %38, %34
  %342 = load i32, i32* %5, align 4
  ret i32 %342
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @ff_get_buffer(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
