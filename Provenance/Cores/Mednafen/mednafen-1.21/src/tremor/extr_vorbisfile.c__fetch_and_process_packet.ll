; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__fetch_and_process_packet.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_vorbisfile.c__fetch_and_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i64, i32, i64*, %struct.TYPE_23__, i32, i32, i64, i64*, i32, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32 }

@STREAMSET = common dso_local global i64 0, align 8
@INITSET = common dso_local global i64 0, align 8
@OV_HOLE = common dso_local global i32 0, align 4
@OV_EFAULT = common dso_local global i32 0, align 4
@OPENED = common dso_local global i64 0, align 8
@OV_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32)* @_fetch_and_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fetch_and_process_packet(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %24

24:                                               ; preds = %4, %293, %336
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @STREAMSET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %32 = call i32 @_make_decode_ready(%struct.TYPE_22__* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %340

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INITSET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %182

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %180
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = icmp ne %struct.TYPE_21__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  br label %51

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi %struct.TYPE_21__* [ %49, %48 ], [ %12, %50 ]
  store %struct.TYPE_21__* %52, %struct.TYPE_21__** %13, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %56 = call i32 @ogg_stream_packetout(%struct.TYPE_23__* %54, %struct.TYPE_21__* %55)
  store i32 %56, i32* %14, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @OV_HOLE, align 4
  store i32 %60, i32* %5, align 4
  br label %340

61:                                               ; preds = %51
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %179

64:                                               ; preds = %61
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %15, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 14
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %71 = call i32 @vorbis_synthesis(i32* %69, %struct.TYPE_21__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %178, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 13
  %76 = call i32 @vorbis_synthesis_pcmout(i32* %75, i32* null)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @OV_EFAULT, align 4
  store i32 %80, i32* %5, align 4
  br label %340

81:                                               ; preds = %73
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 13
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 14
  %86 = call i32 @vorbis_synthesis_blockin(i32* %83, i32* %85)
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 13
  %89 = call i32 @vorbis_synthesis_pcmout(i32* %88, i32* null)
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %177

104:                                              ; preds = %81
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %177, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 11
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  br label %119

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i32 [ %117, %114 ], [ 0, %118 ]
  store i32 %120, i32* %17, align 4
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 11
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %119
  %126 = load i32, i32* %17, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 12
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %17, align 4
  %133 = mul nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = sub nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %128, %125, %119
  %142 = load i32, i32* %15, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %144, %141
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 13
  %148 = call i32 @vorbis_synthesis_pcmout(i32* %147, i32* null)
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %15, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %152

152:                                              ; preds = %170, %145
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %152
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 12
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %18, align 4
  %161 = mul nsw i32 %160, 2
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %159, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %15, align 4
  br label %170

170:                                              ; preds = %156
  %171 = load i32, i32* %18, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %18, align 4
  br label %152

173:                                              ; preds = %152
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %173, %104, %81
  store i32 1, i32* %5, align 4
  br label %340

178:                                              ; preds = %64
  br label %180

179:                                              ; preds = %61
  br label %181

180:                                              ; preds = %178
  br label %45

181:                                              ; preds = %179
  br label %182

182:                                              ; preds = %181, %38
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @OPENED, align 8
  %187 = icmp sge i64 %185, %186
  br i1 %187, label %188, label %247

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188, %243
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  store i32 0, i32* %5, align 4
  br label %340

193:                                              ; preds = %189
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %195 = call i32 @_get_next_page(%struct.TYPE_22__* %194, %struct.TYPE_20__* %10, i32 -1)
  store i32 %195, i32* %20, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i32, i32* @OV_EOF, align 4
  store i32 %198, i32* %5, align 4
  br label %340

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %201, 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @INITSET, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %245

212:                                              ; preds = %199
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @ogg_page_serialno(%struct.TYPE_20__* %10)
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %244

218:                                              ; preds = %212
  %219 = call i64 @ogg_page_bos(%struct.TYPE_20__* %10)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %243

221:                                              ; preds = %218
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* @OV_EOF, align 4
  store i32 %225, i32* %5, align 4
  br label %340

226:                                              ; preds = %221
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %228 = call i32 @_decode_clear(%struct.TYPE_22__* %227)
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 11
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %226
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 10
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @vorbis_info_clear(i32 %236)
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @vorbis_comment_clear(i32 %240)
  br label %242

242:                                              ; preds = %233, %226
  br label %246

243:                                              ; preds = %218
  br label %189

244:                                              ; preds = %212
  br label %245

245:                                              ; preds = %244, %199
  br label %246

246:                                              ; preds = %245, %242
  br label %247

247:                                              ; preds = %246, %182
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @INITSET, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %336

253:                                              ; preds = %247
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @STREAMSET, align 8
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %259, label %335

259:                                              ; preds = %253
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 11
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %310

264:                                              ; preds = %259
  %265 = call i64 @ogg_page_serialno(%struct.TYPE_20__* %10)
  store i64 %265, i64* %22, align 8
  store i32 0, i32* %21, align 4
  br label %266

266:                                              ; preds = %284, %264
  %267 = load i32, i32* %21, align 4
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %287

272:                                              ; preds = %266
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 7
  %275 = load i64*, i64** %274, align 8
  %276 = load i32, i32* %21, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i64, i64* %275, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %22, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %272
  br label %287

283:                                              ; preds = %272
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %21, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %21, align 4
  br label %266

287:                                              ; preds = %282, %266
  %288 = load i32, i32* %21, align 4
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = icmp eq i32 %288, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %287
  br label %24

294:                                              ; preds = %287
  %295 = load i64, i64* %22, align 8
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 5
  store i64 %295, i64* %297, align 8
  %298 = load i32, i32* %21, align 4
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 8
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 8
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 5
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @ogg_stream_reset_serialno(%struct.TYPE_23__* %302, i64 %305)
  %307 = load i64, i64* @STREAMSET, align 8
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 0
  store i64 %307, i64* %309, align 8
  br label %334

310:                                              ; preds = %259
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 10
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 9
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @_fetch_headers(%struct.TYPE_22__* %311, i32 %314, i32 %317, i32* null, i32* null, %struct.TYPE_20__* %10)
  store i32 %318, i32* %23, align 4
  %319 = load i32, i32* %23, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %310
  %322 = load i32, i32* %23, align 4
  store i32 %322, i32* %5, align 4
  br label %340

323:                                              ; preds = %310
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 5
  store i64 %327, i64* %329, align 8
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 8
  store i32 0, i32* %21, align 4
  br label %334

334:                                              ; preds = %323, %294
  br label %335

335:                                              ; preds = %334, %253
  br label %336

336:                                              ; preds = %335, %247
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 8
  %339 = call i32 @ogg_stream_pagein(%struct.TYPE_23__* %338, %struct.TYPE_20__* %10)
  br label %24

340:                                              ; preds = %321, %224, %197, %192, %177, %79, %59, %35
  %341 = load i32, i32* %5, align 4
  ret i32 %341
}

declare dso_local i32 @_make_decode_ready(%struct.TYPE_22__*) #1

declare dso_local i32 @ogg_stream_packetout(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @vorbis_synthesis(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @vorbis_synthesis_pcmout(i32*, i32*) #1

declare dso_local i32 @vorbis_synthesis_blockin(i32*, i32*) #1

declare dso_local i32 @_get_next_page(%struct.TYPE_22__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @ogg_page_serialno(%struct.TYPE_20__*) #1

declare dso_local i64 @ogg_page_bos(%struct.TYPE_20__*) #1

declare dso_local i32 @_decode_clear(%struct.TYPE_22__*) #1

declare dso_local i32 @vorbis_info_clear(i32) #1

declare dso_local i32 @vorbis_comment_clear(i32) #1

declare dso_local i32 @ogg_stream_reset_serialno(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @_fetch_headers(%struct.TYPE_22__*, i32, i32, i32*, i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @ogg_stream_pagein(%struct.TYPE_23__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
