; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_raw_seek.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_raw_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64*, i64, i32, i64, i64*, i32, i64*, i64*, float, float, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i32 0, align 4
@OV_ENOSEEK = common dso_local global i32 0, align 4
@STREAMSET = common dso_local global i64 0, align 8
@OV_EBADLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov_raw_seek(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OPENED, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @OV_EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %351

29:                                               ; preds = %2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 15
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @OV_ENOSEEK, align 4
  store i32 %35, i32* %3, align 4
  br label %351

36:                                               ; preds = %29
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %36
  %46 = load i32, i32* @OV_EINVAL, align 4
  store i32 %46, i32* %3, align 4
  br label %351

47:                                               ; preds = %39
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STREAMSET, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %54, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %53
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 1
  %73 = getelementptr inbounds i64, i64* %68, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %65, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %64, %53
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = call i32 @_decode_clear(%struct.TYPE_12__* %77)
  br label %79

79:                                               ; preds = %76, %64
  br label %80

80:                                               ; preds = %79, %47
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 4
  store i32 -1, i32* %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 12
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ogg_stream_reset_serialno(i32* %84, i64 %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 14
  %91 = call i32 @vorbis_synthesis_restart(i32* %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @_seek_helper(%struct.TYPE_12__* %92, i64 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  br label %344

98:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 -1, i64* %15, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ogg_stream_init(i32* %6, i64 %101)
  %103 = call i32 @ogg_stream_reset(i32* %6)
  br label %104

104:                                              ; preds = %98, %222, %304, %332
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @STREAMSET, align 8
  %109 = icmp sge i64 %107, %108
  br i1 %109, label %110, label %230

110:                                              ; preds = %104
  %111 = call i32 @ogg_stream_packetout(i32* %6, %struct.TYPE_11__* %9)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %229

114:                                              ; preds = %110
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 13
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %224

125:                                              ; preds = %114
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 13
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 %131
  %133 = call i32 @vorbis_packet_blocksize(%struct.TYPE_13__* %132, %struct.TYPE_11__* %9)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %125
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 12
  %139 = call i32 @ogg_stream_packetout(i32* %138, %struct.TYPE_11__* null)
  store i32 0, i32* %12, align 4
  br label %162

140:                                              ; preds = %125
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 12
  %149 = call i32 @ogg_stream_packetout(i32* %148, %struct.TYPE_11__* null)
  br label %161

150:                                              ; preds = %143, %140
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %154, %155
  %157 = ashr i32 %156, 2
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %153, %150
  br label %161

161:                                              ; preds = %160, %146
  br label %162

162:                                              ; preds = %161, %136
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, -1
  br i1 %165, label %166, label %222

166:                                              ; preds = %162
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %18, align 4
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 6
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %18, align 4
  %178 = mul nsw i32 %177, 2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %176, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %173, %181
  store i64 %182, i64* %19, align 8
  %183 = load i64, i64* %19, align 8
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %166
  store i64 0, i64* %19, align 8
  br label %186

186:                                              ; preds = %185, %166
  store i32 0, i32* %17, align 4
  br label %187

187:                                              ; preds = %203, %186
  %188 = load i32, i32* %17, align 4
  %189 = load i32, i32* %18, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %187
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 6
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %17, align 4
  %196 = mul nsw i32 %195, 2
  %197 = add nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %194, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %19, align 8
  %202 = add nsw i64 %201, %200
  store i64 %202, i64* %19, align 8
  br label %203

203:                                              ; preds = %191
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %17, align 4
  br label %187

206:                                              ; preds = %187
  %207 = load i64, i64* %19, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = sub nsw i64 %207, %209
  %211 = trunc i64 %210 to i32
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %206
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 4
  store i32 0, i32* %220, align 8
  br label %221

221:                                              ; preds = %218, %206
  br label %338

222:                                              ; preds = %162
  %223 = load i32, i32* %12, align 4
  store i32 %223, i32* %10, align 4
  br label %104

224:                                              ; preds = %114
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 12
  %227 = call i32 @ogg_stream_packetout(i32* %226, %struct.TYPE_11__* null)
  br label %228

228:                                              ; preds = %224
  br label %229

229:                                              ; preds = %228, %110
  br label %230

230:                                              ; preds = %229, %104
  %231 = load i32, i32* %10, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %230
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %235 = call i64 @_get_next_page(%struct.TYPE_12__* %234, i32* %8, i32 -1)
  store i64 %235, i64* %15, align 8
  %236 = load i64, i64* %15, align 8
  %237 = icmp slt i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %240 = call i64 @ov_pcm_total(%struct.TYPE_12__* %239, i32 -1)
  %241 = trunc i64 %240 to i32
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 4
  store i32 %241, i32* %243, align 8
  br label %338

244:                                              ; preds = %233
  br label %248

245:                                              ; preds = %230
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 4
  store i32 -1, i32* %247, align 8
  br label %338

248:                                              ; preds = %244
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @STREAMSET, align 8
  %253 = icmp sge i64 %251, %252
  br i1 %253, label %254, label %269

254:                                              ; preds = %248
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = call i64 @ogg_page_serialno(i32* %8)
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %268

260:                                              ; preds = %254
  %261 = call i64 @ogg_page_bos(i32* %8)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %265 = call i32 @_decode_clear(%struct.TYPE_12__* %264)
  %266 = call i32 @ogg_stream_clear(i32* %6)
  br label %267

267:                                              ; preds = %263, %260
  br label %268

268:                                              ; preds = %267, %254
  br label %269

269:                                              ; preds = %268, %248
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @STREAMSET, align 8
  %274 = icmp slt i64 %272, %273
  br i1 %274, label %275, label %332

275:                                              ; preds = %269
  %276 = call i64 @ogg_page_serialno(i32* %8)
  store i64 %276, i64* %21, align 8
  store i32 0, i32* %20, align 4
  br label %277

277:                                              ; preds = %295, %275
  %278 = load i32, i32* %20, align 4
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %298

283:                                              ; preds = %277
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 8
  %286 = load i64*, i64** %285, align 8
  %287 = load i32, i32* %20, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %21, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %283
  br label %298

294:                                              ; preds = %283
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %20, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %20, align 4
  br label %277

298:                                              ; preds = %293, %277
  %299 = load i32, i32* %20, align 4
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = icmp eq i32 %299, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %298
  br label %104

305:                                              ; preds = %298
  %306 = load i32, i32* %20, align 4
  %307 = sext i32 %306 to i64
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 3
  store i64 %307, i64* %309, align 8
  %310 = load i64, i64* %21, align 8
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 5
  store i64 %310, i64* %312, align 8
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 12
  %315 = load i64, i64* %21, align 8
  %316 = call i32 @ogg_stream_reset_serialno(i32* %314, i64 %315)
  %317 = load i64, i64* %21, align 8
  %318 = call i32 @ogg_stream_reset_serialno(i32* %6, i64 %317)
  %319 = load i64, i64* @STREAMSET, align 8
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 0
  store i64 %319, i64* %321, align 8
  %322 = load i64, i64* %15, align 8
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 9
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* %20, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %325, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = icmp sle i64 %322, %329
  %331 = zext i1 %330 to i32
  store i32 %331, i32* %14, align 4
  br label %332

332:                                              ; preds = %305, %269
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 12
  %335 = call i32 @ogg_stream_pagein(i32* %334, i32* %8)
  %336 = call i32 @ogg_stream_pagein(i32* %6, i32* %8)
  %337 = call i32 @ogg_page_eos(i32* %8)
  store i32 %337, i32* %13, align 4
  br label %104

338:                                              ; preds = %245, %238, %221
  %339 = call i32 @ogg_stream_clear(i32* %6)
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 10
  store float 0.000000e+00, float* %341, align 8
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 11
  store float 0.000000e+00, float* %343, align 4
  store i32 0, i32* %3, align 4
  br label %351

344:                                              ; preds = %97
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 4
  store i32 -1, i32* %346, align 8
  %347 = call i32 @ogg_stream_clear(i32* %6)
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %349 = call i32 @_decode_clear(%struct.TYPE_12__* %348)
  %350 = load i32, i32* @OV_EBADLINK, align 4
  store i32 %350, i32* %3, align 4
  br label %351

351:                                              ; preds = %344, %338, %45, %34, %27
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

declare dso_local i32 @_decode_clear(%struct.TYPE_12__*) #1

declare dso_local i32 @ogg_stream_reset_serialno(i32*, i64) #1

declare dso_local i32 @vorbis_synthesis_restart(i32*) #1

declare dso_local i32 @_seek_helper(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @ogg_stream_init(i32*, i64) #1

declare dso_local i32 @ogg_stream_reset(i32*) #1

declare dso_local i32 @ogg_stream_packetout(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @vorbis_packet_blocksize(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

declare dso_local i64 @_get_next_page(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @ov_pcm_total(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ogg_page_serialno(i32*) #1

declare dso_local i64 @ogg_page_bos(i32*) #1

declare dso_local i32 @ogg_stream_clear(i32*) #1

declare dso_local i32 @ogg_stream_pagein(i32*, i32*) #1

declare dso_local i32 @ogg_page_eos(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
