; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bintext.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bintext.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_12__*, i64, i64 }
%struct.TYPE_12__ = type { i32, i32*, i32 }
%struct.TYPE_10__ = type { i32*, i32 }

@FONT_WIDTH = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_CODEC_ID_XBIN = common dso_local global i64 0, align 8
@AV_CODEC_ID_IDF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_10__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %13, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FONT_WIDTH, align 4
  %38 = sdiv i32 %36, %37
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %41, %44
  %46 = mul nsw i32 %38, %45
  %47 = sdiv i32 %46, 256
  %48 = load i32, i32* %12, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %4
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %5, align 4
  br label %296

52:                                               ; preds = %4
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to %struct.TYPE_12__*
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = call i32 @ff_get_buffer(%struct.TYPE_11__* %61, %struct.TYPE_12__* %64, i32 0)
  store i32 %65, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %5, align 4
  br label %296

69:                                               ; preds = %52
  %70 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i32 %70, i32* %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32 %85, i32 %88, i32 64)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AV_CODEC_ID_XBIN, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %217

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %215, %95
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32*, i32** %13, align 8
  %100 = icmp ult i32* %98, %99
  br i1 %100, label %101, label %216

101:                                              ; preds = %96
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 6
  store i32 %104, i32* %18, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 63
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %11, align 8
  %111 = load i32, i32* %18, align 4
  switch i32 %111, label %215 [
    i32 0, label %112
    i32 1, label %139
    i32 2, label %164
    i32 3, label %189
  ]

112:                                              ; preds = %101
  store i32 0, i32* %15, align 4
  br label %113

113:                                              ; preds = %135, %112
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %19, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32*, i32** %11, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32*, i32** %13, align 8
  %121 = icmp ult i32* %119, %120
  br label %122

122:                                              ; preds = %117, %113
  %123 = phi i1 [ false, %113 ], [ %121, %117 ]
  br i1 %123, label %124, label %138

124:                                              ; preds = %122
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @draw_char(%struct.TYPE_11__* %125, i32 %128, i32 %131)
  %133 = load i32*, i32** %11, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32* %134, i32** %11, align 8
  br label %135

135:                                              ; preds = %124
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %113

138:                                              ; preds = %122
  br label %215

139:                                              ; preds = %101
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %11, align 8
  %142 = load i32, i32* %140, align 4
  store i32 %142, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %143

143:                                              ; preds = %160, %139
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %19, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32*, i32** %11, align 8
  %149 = load i32*, i32** %13, align 8
  %150 = icmp ult i32* %148, %149
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i1 [ false, %143 ], [ %150, %147 ]
  br i1 %152, label %153, label %163

153:                                              ; preds = %151
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %11, align 8
  %158 = load i32, i32* %156, align 4
  %159 = call i32 @draw_char(%struct.TYPE_11__* %154, i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  br label %143

163:                                              ; preds = %151
  br label %215

164:                                              ; preds = %101
  %165 = load i32*, i32** %11, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %11, align 8
  %167 = load i32, i32* %165, align 4
  store i32 %167, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %185, %164
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %19, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load i32*, i32** %11, align 8
  %174 = load i32*, i32** %13, align 8
  %175 = icmp ult i32* %173, %174
  br label %176

176:                                              ; preds = %172, %168
  %177 = phi i1 [ false, %168 ], [ %175, %172 ]
  br i1 %177, label %178, label %188

178:                                              ; preds = %176
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %11, align 8
  %182 = load i32, i32* %180, align 4
  %183 = load i32, i32* %17, align 4
  %184 = call i32 @draw_char(%struct.TYPE_11__* %179, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %178
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %168

188:                                              ; preds = %176
  br label %215

189:                                              ; preds = %101
  %190 = load i32*, i32** %11, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %11, align 8
  %192 = load i32, i32* %190, align 4
  store i32 %192, i32* %16, align 4
  %193 = load i32*, i32** %11, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %11, align 8
  %195 = load i32, i32* %193, align 4
  store i32 %195, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %196

196:                                              ; preds = %211, %189
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %19, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = load i32*, i32** %11, align 8
  %202 = load i32*, i32** %13, align 8
  %203 = icmp ult i32* %201, %202
  br label %204

204:                                              ; preds = %200, %196
  %205 = phi i1 [ false, %196 ], [ %203, %200 ]
  br i1 %205, label %206, label %214

206:                                              ; preds = %204
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %208 = load i32, i32* %16, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @draw_char(%struct.TYPE_11__* %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %206
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  br label %196

214:                                              ; preds = %204
  br label %215

215:                                              ; preds = %101, %214, %188, %163, %138
  br label %96

216:                                              ; preds = %96
  br label %293

217:                                              ; preds = %69
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @AV_CODEC_ID_IDF, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %274

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %272, %223
  %225 = load i32*, i32** %11, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32*, i32** %13, align 8
  %228 = icmp ult i32* %226, %227
  br i1 %228, label %229, label %273

229:                                              ; preds = %224
  %230 = load i32*, i32** %11, align 8
  %231 = call i32 @AV_RL16(i32* %230)
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %261

233:                                              ; preds = %229
  %234 = load i32*, i32** %11, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 6
  %236 = load i32*, i32** %13, align 8
  %237 = icmp ugt i32* %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %273

239:                                              ; preds = %233
  store i32 0, i32* %20, align 4
  br label %240

240:                                              ; preds = %255, %239
  %241 = load i32, i32* %20, align 4
  %242 = load i32*, i32** %11, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %258

246:                                              ; preds = %240
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %248 = load i32*, i32** %11, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %11, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 5
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @draw_char(%struct.TYPE_11__* %247, i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %246
  %256 = load i32, i32* %20, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %20, align 4
  br label %240

258:                                              ; preds = %240
  %259 = load i32*, i32** %11, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 6
  store i32* %260, i32** %11, align 8
  br label %272

261:                                              ; preds = %229
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %263 = load i32*, i32** %11, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %11, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @draw_char(%struct.TYPE_11__* %262, i32 %265, i32 %268)
  %270 = load i32*, i32** %11, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 2
  store i32* %271, i32** %11, align 8
  br label %272

272:                                              ; preds = %261, %258
  br label %224

273:                                              ; preds = %238, %224
  br label %292

274:                                              ; preds = %217
  br label %275

275:                                              ; preds = %280, %274
  %276 = load i32*, i32** %11, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 1
  %278 = load i32*, i32** %13, align 8
  %279 = icmp ult i32* %277, %278
  br i1 %279, label %280, label %291

280:                                              ; preds = %275
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %282 = load i32*, i32** %11, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %11, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @draw_char(%struct.TYPE_11__* %281, i32 %284, i32 %287)
  %289 = load i32*, i32** %11, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  store i32* %290, i32** %11, align 8
  br label %275

291:                                              ; preds = %275
  br label %292

292:                                              ; preds = %291, %273
  br label %293

293:                                              ; preds = %292, %216
  %294 = load i32*, i32** %8, align 8
  store i32 1, i32* %294, align 4
  %295 = load i32, i32* %12, align 4
  store i32 %295, i32* %5, align 4
  br label %296

296:                                              ; preds = %293, %67, %50
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @draw_char(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @AV_RL16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
