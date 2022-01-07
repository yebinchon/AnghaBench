; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus.c_ff_opus_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus.c_ff_opus_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32 }

@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@MAX_FRAMES = common dso_local global i32 0, align 4
@opus_frame_duration = common dso_local global i32* null, align 8
@MAX_PACKET_DUR = common dso_local global i32 0, align 4
@OPUS_MODE_SILK = common dso_local global i32 0, align 4
@OPUS_MODE_HYBRID = common dso_local global i32 0, align 4
@OPUS_BANDWIDTH_SUPERWIDEBAND = common dso_local global i32 0, align 4
@OPUS_MODE_CELT = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_opus_parse_packet(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32*, i32** %7, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %725

28:                                               ; preds = %4
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %10, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = and i32 %32, 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %14, align 4
  %37 = ashr i32 %36, 2
  %38 = and i32 %37, 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %14, align 4
  %42 = ashr i32 %41, 3
  %43 = and i32 %42, 31
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %28
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %725

54:                                               ; preds = %50, %28
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %639 [
    i32 0, label %58
    i32 1, label %122
    i32 2, label %215
    i32 3, label %320
  ]

58:                                               ; preds = %54
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i32 0, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %58
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @xiph_lacing_16bit(i32** %10, i32* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = ptrtoint i32* %73 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = icmp sgt i64 %72, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70, %65
  br label %725

81:                                               ; preds = %70
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %11, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %81, %58
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %725

105:                                              ; preds = %93
  %106 = load i32*, i32** %10, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  br label %639

122:                                              ; preds = %54
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store i32 2, i32* %124, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  store i32 0, i32* %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %159

129:                                              ; preds = %122
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @xiph_lacing_16bit(i32** %10, i32* %130)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %16, align 4
  %136 = mul nsw i32 2, %135
  %137 = sext i32 %136 to i64
  %138 = load i32*, i32** %11, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = icmp sgt i64 %137, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %134, %129
  br label %725

146:                                              ; preds = %134
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %16, align 4
  %149 = mul nsw i32 2, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32* %151, i32** %11, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = load i32*, i32** %7, align 8
  %154 = ptrtoint i32* %152 to i64
  %155 = ptrtoint i32* %153 to i64
  %156 = sub i64 %154, %155
  %157 = sdiv exact i64 %156, 4
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %146, %122
  %160 = load i32*, i32** %11, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = ptrtoint i32* %160 to i64
  %163 = ptrtoint i32* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 4
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = and i32 %167, 1
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %159
  %171 = load i32, i32* %13, align 4
  %172 = ashr i32 %171, 1
  %173 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %170, %159
  br label %725

176:                                              ; preds = %170
  %177 = load i32*, i32** %10, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = ptrtoint i32* %177 to i64
  %180 = ptrtoint i32* %178 to i64
  %181 = sub i64 %179, %180
  %182 = sdiv exact i64 %181, 4
  %183 = trunc i64 %182 to i32
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* %13, align 4
  %189 = ashr i32 %188, 1
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 6
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %189, i32* %193, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 6
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %198, %203
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  store i32 %204, i32* %208, align 4
  %209 = load i32, i32* %13, align 4
  %210 = ashr i32 %209, 1
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 6
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  store i32 %210, i32* %214, align 4
  br label %639

215:                                              ; preds = %54
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 3
  store i32 2, i32* %217, align 4
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 4
  store i32 1, i32* %219, align 8
  %220 = load i32*, i32** %11, align 8
  %221 = call i32 @xiph_lacing_16bit(i32** %10, i32* %220)
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %725

225:                                              ; preds = %215
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %261

228:                                              ; preds = %225
  %229 = load i32*, i32** %11, align 8
  %230 = call i32 @xiph_lacing_16bit(i32** %10, i32* %229)
  store i32 %230, i32* %17, align 4
  %231 = load i32, i32* %17, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %228
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = load i32*, i32** %11, align 8
  %239 = load i32*, i32** %10, align 8
  %240 = ptrtoint i32* %238 to i64
  %241 = ptrtoint i32* %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 4
  %244 = icmp sgt i64 %237, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %233, %228
  br label %725

246:                                              ; preds = %233
  %247 = load i32*, i32** %10, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %17, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32* %253, i32** %11, align 8
  %254 = load i32*, i32** %11, align 8
  %255 = load i32*, i32** %7, align 8
  %256 = ptrtoint i32* %254 to i64
  %257 = ptrtoint i32* %255 to i64
  %258 = sub i64 %256, %257
  %259 = sdiv exact i64 %258, 4
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %8, align 4
  br label %261

261:                                              ; preds = %246, %225
  %262 = load i32*, i32** %10, align 8
  %263 = load i32*, i32** %7, align 8
  %264 = ptrtoint i32* %262 to i64
  %265 = ptrtoint i32* %263 to i64
  %266 = sub i64 %264, %265
  %267 = sdiv exact i64 %266, 4
  %268 = trunc i64 %267 to i32
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 5
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  store i32 %268, i32* %272, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 6
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  store i32 %273, i32* %277, align 4
  %278 = load i32*, i32** %11, align 8
  %279 = load i32*, i32** %10, align 8
  %280 = ptrtoint i32* %278 to i64
  %281 = ptrtoint i32* %279 to i64
  %282 = sub i64 %280, %281
  %283 = sdiv exact i64 %282, 4
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 6
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = sub nsw i64 %283, %289
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %13, align 4
  %292 = load i32, i32* %13, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %298, label %294

294:                                              ; preds = %261
  %295 = load i32, i32* %13, align 4
  %296 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %297 = icmp sgt i32 %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %294, %261
  br label %725

299:                                              ; preds = %294
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 5
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 6
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %304, %309
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 5
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  store i32 %310, i32* %314, align 4
  %315 = load i32, i32* %13, align 4
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 6
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 1
  store i32 %315, i32* %319, align 4
  br label %639

320:                                              ; preds = %54
  %321 = load i32*, i32** %10, align 8
  %322 = getelementptr inbounds i32, i32* %321, i32 1
  store i32* %322, i32** %10, align 8
  %323 = load i32, i32* %321, align 4
  store i32 %323, i32* %14, align 4
  %324 = load i32, i32* %14, align 4
  %325 = and i32 %324, 63
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 3
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* %14, align 4
  %329 = ashr i32 %328, 6
  %330 = and i32 %329, 1
  store i32 %330, i32* %12, align 4
  %331 = load i32, i32* %14, align 4
  %332 = ashr i32 %331, 7
  %333 = and i32 %332, 1
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 4
  store i32 %333, i32* %335, align 8
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %320
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @MAX_FRAMES, align 4
  %345 = icmp sgt i32 %343, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %340, %320
  br label %725

347:                                              ; preds = %340
  %348 = load i32, i32* %12, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %347
  %351 = load i32*, i32** %11, align 8
  %352 = call i32 @xiph_lacing_full(i32** %10, i32* %351)
  store i32 %352, i32* %12, align 4
  %353 = load i32, i32* %12, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %350
  br label %725

356:                                              ; preds = %350
  br label %357

357:                                              ; preds = %356, %347
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 8
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %504

362:                                              ; preds = %357
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %363

363:                                              ; preds = %387, %362
  %364 = load i32, i32* %14, align 4
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = sub nsw i32 %367, 1
  %369 = icmp slt i32 %364, %368
  br i1 %369, label %370, label %390

370:                                              ; preds = %363
  %371 = load i32*, i32** %11, align 8
  %372 = call i32 @xiph_lacing_16bit(i32** %10, i32* %371)
  store i32 %372, i32* %13, align 4
  %373 = load i32, i32* %13, align 4
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %370
  br label %725

376:                                              ; preds = %370
  %377 = load i32, i32* %13, align 4
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 6
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %14, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  store i32 %377, i32* %383, align 4
  %384 = load i32, i32* %13, align 4
  %385 = load i32, i32* %18, align 4
  %386 = add nsw i32 %385, %384
  store i32 %386, i32* %18, align 4
  br label %387

387:                                              ; preds = %376
  %388 = load i32, i32* %14, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %14, align 4
  br label %363

390:                                              ; preds = %363
  %391 = load i32, i32* %9, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %431

393:                                              ; preds = %390
  %394 = load i32*, i32** %11, align 8
  %395 = call i32 @xiph_lacing_16bit(i32** %10, i32* %394)
  store i32 %395, i32* %19, align 4
  %396 = load i32, i32* %19, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %412, label %398

398:                                              ; preds = %393
  %399 = load i32, i32* %19, align 4
  %400 = load i32, i32* %18, align 4
  %401 = add nsw i32 %399, %400
  %402 = load i32, i32* %12, align 4
  %403 = add nsw i32 %401, %402
  %404 = sext i32 %403 to i64
  %405 = load i32*, i32** %11, align 8
  %406 = load i32*, i32** %10, align 8
  %407 = ptrtoint i32* %405 to i64
  %408 = ptrtoint i32* %406 to i64
  %409 = sub i64 %407, %408
  %410 = sdiv exact i64 %409, 4
  %411 = icmp sgt i64 %404, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %398, %393
  br label %725

413:                                              ; preds = %398
  %414 = load i32*, i32** %10, align 8
  %415 = load i32, i32* %18, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %19, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %12, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  store i32* %423, i32** %11, align 8
  %424 = load i32*, i32** %11, align 8
  %425 = load i32*, i32** %7, align 8
  %426 = ptrtoint i32* %424 to i64
  %427 = ptrtoint i32* %425 to i64
  %428 = sub i64 %426, %427
  %429 = sdiv exact i64 %428, 4
  %430 = trunc i64 %429 to i32
  store i32 %430, i32* %8, align 4
  br label %431

431:                                              ; preds = %413, %390
  %432 = load i32*, i32** %11, align 8
  %433 = load i32*, i32** %10, align 8
  %434 = ptrtoint i32* %432 to i64
  %435 = ptrtoint i32* %433 to i64
  %436 = sub i64 %434, %435
  %437 = sdiv exact i64 %436, 4
  %438 = load i32, i32* %12, align 4
  %439 = sext i32 %438 to i64
  %440 = sub nsw i64 %437, %439
  %441 = trunc i64 %440 to i32
  store i32 %441, i32* %13, align 4
  %442 = load i32, i32* %18, align 4
  %443 = load i32, i32* %13, align 4
  %444 = icmp sgt i32 %442, %443
  br i1 %444, label %445, label %446

445:                                              ; preds = %431
  br label %725

446:                                              ; preds = %431
  %447 = load i32*, i32** %10, align 8
  %448 = load i32*, i32** %7, align 8
  %449 = ptrtoint i32* %447 to i64
  %450 = ptrtoint i32* %448 to i64
  %451 = sub i64 %449, %450
  %452 = sdiv exact i64 %451, 4
  %453 = trunc i64 %452 to i32
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 5
  %456 = load i32*, i32** %455, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 0
  store i32 %453, i32* %457, align 4
  store i32 1, i32* %14, align 4
  br label %458

458:                                              ; preds = %488, %446
  %459 = load i32, i32* %14, align 4
  %460 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 4
  %463 = icmp slt i32 %459, %462
  br i1 %463, label %464, label %491

464:                                              ; preds = %458
  %465 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 5
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %14, align 4
  %469 = sub nsw i32 %468, 1
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %467, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %473, i32 0, i32 6
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %14, align 4
  %477 = sub nsw i32 %476, 1
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %475, i64 %478
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %472, %480
  %482 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %482, i32 0, i32 5
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %14, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  store i32 %481, i32* %487, align 4
  br label %488

488:                                              ; preds = %464
  %489 = load i32, i32* %14, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %14, align 4
  br label %458

491:                                              ; preds = %458
  %492 = load i32, i32* %13, align 4
  %493 = load i32, i32* %18, align 4
  %494 = sub nsw i32 %492, %493
  %495 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %496 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %495, i32 0, i32 6
  %497 = load i32*, i32** %496, align 8
  %498 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %498, i32 0, i32 3
  %500 = load i32, i32* %499, align 4
  %501 = sub nsw i32 %500, 1
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %497, i64 %502
  store i32 %494, i32* %503, align 4
  br label %638

504:                                              ; preds = %357
  %505 = load i32, i32* %9, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %548

507:                                              ; preds = %504
  %508 = load i32*, i32** %11, align 8
  %509 = call i32 @xiph_lacing_16bit(i32** %10, i32* %508)
  store i32 %509, i32* %13, align 4
  %510 = load i32, i32* %13, align 4
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %528, label %512

512:                                              ; preds = %507
  %513 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %514 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* %13, align 4
  %517 = mul nsw i32 %515, %516
  %518 = load i32, i32* %12, align 4
  %519 = add nsw i32 %517, %518
  %520 = sext i32 %519 to i64
  %521 = load i32*, i32** %11, align 8
  %522 = load i32*, i32** %10, align 8
  %523 = ptrtoint i32* %521 to i64
  %524 = ptrtoint i32* %522 to i64
  %525 = sub i64 %523, %524
  %526 = sdiv exact i64 %525, 4
  %527 = icmp sgt i64 %520, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %512, %507
  br label %725

529:                                              ; preds = %512
  %530 = load i32*, i32** %10, align 8
  %531 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* %13, align 4
  %535 = mul nsw i32 %533, %534
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, i32* %530, i64 %536
  %538 = load i32, i32* %12, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  store i32* %540, i32** %11, align 8
  %541 = load i32*, i32** %11, align 8
  %542 = load i32*, i32** %7, align 8
  %543 = ptrtoint i32* %541 to i64
  %544 = ptrtoint i32* %542 to i64
  %545 = sub i64 %543, %544
  %546 = sdiv exact i64 %545, 4
  %547 = trunc i64 %546 to i32
  store i32 %547, i32* %8, align 4
  br label %580

548:                                              ; preds = %504
  %549 = load i32*, i32** %11, align 8
  %550 = load i32*, i32** %10, align 8
  %551 = ptrtoint i32* %549 to i64
  %552 = ptrtoint i32* %550 to i64
  %553 = sub i64 %551, %552
  %554 = sdiv exact i64 %553, 4
  %555 = load i32, i32* %12, align 4
  %556 = sext i32 %555 to i64
  %557 = sub nsw i64 %554, %556
  %558 = trunc i64 %557 to i32
  store i32 %558, i32* %13, align 4
  %559 = load i32, i32* %13, align 4
  %560 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %561 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %560, i32 0, i32 3
  %562 = load i32, i32* %561, align 4
  %563 = srem i32 %559, %562
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %573, label %565

565:                                              ; preds = %548
  %566 = load i32, i32* %13, align 4
  %567 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %568 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %567, i32 0, i32 3
  %569 = load i32, i32* %568, align 4
  %570 = sdiv i32 %566, %569
  %571 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %572 = icmp sgt i32 %570, %571
  br i1 %572, label %573, label %574

573:                                              ; preds = %565, %548
  br label %725

574:                                              ; preds = %565
  %575 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %576 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %575, i32 0, i32 3
  %577 = load i32, i32* %576, align 4
  %578 = load i32, i32* %13, align 4
  %579 = sdiv i32 %578, %577
  store i32 %579, i32* %13, align 4
  br label %580

580:                                              ; preds = %574, %529
  %581 = load i32*, i32** %10, align 8
  %582 = load i32*, i32** %7, align 8
  %583 = ptrtoint i32* %581 to i64
  %584 = ptrtoint i32* %582 to i64
  %585 = sub i64 %583, %584
  %586 = sdiv exact i64 %585, 4
  %587 = trunc i64 %586 to i32
  %588 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %589 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %588, i32 0, i32 5
  %590 = load i32*, i32** %589, align 8
  %591 = getelementptr inbounds i32, i32* %590, i64 0
  store i32 %587, i32* %591, align 4
  %592 = load i32, i32* %13, align 4
  %593 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %594 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %593, i32 0, i32 6
  %595 = load i32*, i32** %594, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 0
  store i32 %592, i32* %596, align 4
  store i32 1, i32* %14, align 4
  br label %597

597:                                              ; preds = %634, %580
  %598 = load i32, i32* %14, align 4
  %599 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %600 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %599, i32 0, i32 3
  %601 = load i32, i32* %600, align 4
  %602 = icmp slt i32 %598, %601
  br i1 %602, label %603, label %637

603:                                              ; preds = %597
  %604 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %605 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %604, i32 0, i32 5
  %606 = load i32*, i32** %605, align 8
  %607 = load i32, i32* %14, align 4
  %608 = sub nsw i32 %607, 1
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %606, i64 %609
  %611 = load i32, i32* %610, align 4
  %612 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %613 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %612, i32 0, i32 6
  %614 = load i32*, i32** %613, align 8
  %615 = load i32, i32* %14, align 4
  %616 = sub nsw i32 %615, 1
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i32, i32* %614, i64 %617
  %619 = load i32, i32* %618, align 4
  %620 = add nsw i32 %611, %619
  %621 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %622 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %621, i32 0, i32 5
  %623 = load i32*, i32** %622, align 8
  %624 = load i32, i32* %14, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i32, i32* %623, i64 %625
  store i32 %620, i32* %626, align 4
  %627 = load i32, i32* %13, align 4
  %628 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %629 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %628, i32 0, i32 6
  %630 = load i32*, i32** %629, align 8
  %631 = load i32, i32* %14, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i32, i32* %630, i64 %632
  store i32 %627, i32* %633, align 4
  br label %634

634:                                              ; preds = %603
  %635 = load i32, i32* %14, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %14, align 4
  br label %597

637:                                              ; preds = %597
  br label %638

638:                                              ; preds = %637, %491
  br label %639

639:                                              ; preds = %638, %54, %299, %176, %105
  %640 = load i32, i32* %8, align 4
  %641 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %642 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %641, i32 0, i32 7
  store i32 %640, i32* %642, align 8
  %643 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %644 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %643, i32 0, i32 7
  %645 = load i32, i32* %644, align 8
  %646 = load i32, i32* %12, align 4
  %647 = sub nsw i32 %645, %646
  %648 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %649 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %648, i32 0, i32 8
  store i32 %647, i32* %649, align 4
  %650 = load i32*, i32** @opus_frame_duration, align 8
  %651 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %652 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %651, i32 0, i32 2
  %653 = load i32, i32* %652, align 8
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %650, i64 %654
  %656 = load i32, i32* %655, align 4
  %657 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %658 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %657, i32 0, i32 9
  store i32 %656, i32* %658, align 8
  %659 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %660 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %659, i32 0, i32 9
  %661 = load i32, i32* %660, align 8
  %662 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %663 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 4
  %665 = mul nsw i32 %661, %664
  %666 = load i32, i32* @MAX_PACKET_DUR, align 4
  %667 = icmp sgt i32 %665, %666
  br i1 %667, label %668, label %669

668:                                              ; preds = %639
  br label %725

669:                                              ; preds = %639
  %670 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %671 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %670, i32 0, i32 2
  %672 = load i32, i32* %671, align 8
  %673 = icmp slt i32 %672, 12
  br i1 %673, label %674, label %684

674:                                              ; preds = %669
  %675 = load i32, i32* @OPUS_MODE_SILK, align 4
  %676 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %677 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %676, i32 0, i32 11
  store i32 %675, i32* %677, align 8
  %678 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %679 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %678, i32 0, i32 2
  %680 = load i32, i32* %679, align 8
  %681 = ashr i32 %680, 2
  %682 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %683 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %682, i32 0, i32 10
  store i32 %681, i32* %683, align 4
  br label %724

684:                                              ; preds = %669
  %685 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %686 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %685, i32 0, i32 2
  %687 = load i32, i32* %686, align 8
  %688 = icmp slt i32 %687, 16
  br i1 %688, label %689, label %702

689:                                              ; preds = %684
  %690 = load i32, i32* @OPUS_MODE_HYBRID, align 4
  %691 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %692 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %691, i32 0, i32 11
  store i32 %690, i32* %692, align 8
  %693 = load i32, i32* @OPUS_BANDWIDTH_SUPERWIDEBAND, align 4
  %694 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %695 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %694, i32 0, i32 2
  %696 = load i32, i32* %695, align 8
  %697 = icmp sge i32 %696, 14
  %698 = zext i1 %697 to i32
  %699 = add nsw i32 %693, %698
  %700 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %701 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %700, i32 0, i32 10
  store i32 %699, i32* %701, align 4
  br label %723

702:                                              ; preds = %684
  %703 = load i32, i32* @OPUS_MODE_CELT, align 4
  %704 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %705 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %704, i32 0, i32 11
  store i32 %703, i32* %705, align 8
  %706 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %707 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 8
  %709 = sub nsw i32 %708, 16
  %710 = ashr i32 %709, 2
  %711 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %712 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %711, i32 0, i32 10
  store i32 %710, i32* %712, align 4
  %713 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %714 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %713, i32 0, i32 10
  %715 = load i32, i32* %714, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %722

717:                                              ; preds = %702
  %718 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %719 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %718, i32 0, i32 10
  %720 = load i32, i32* %719, align 4
  %721 = add nsw i32 %720, 1
  store i32 %721, i32* %719, align 4
  br label %722

722:                                              ; preds = %717, %702
  br label %723

723:                                              ; preds = %722, %689
  br label %724

724:                                              ; preds = %723, %674
  store i32 0, i32* %5, align 4
  br label %729

725:                                              ; preds = %668, %573, %528, %445, %412, %375, %355, %346, %298, %245, %224, %175, %145, %104, %80, %53, %27
  %726 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %727 = call i32 @memset(%struct.TYPE_4__* %726, i32 0, i32 64)
  %728 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %728, i32* %5, align 4
  br label %729

729:                                              ; preds = %725, %724
  %730 = load i32, i32* %5, align 4
  ret i32 %730
}

declare dso_local i32 @xiph_lacing_16bit(i32**, i32*) #1

declare dso_local i32 @xiph_lacing_full(i32**, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
