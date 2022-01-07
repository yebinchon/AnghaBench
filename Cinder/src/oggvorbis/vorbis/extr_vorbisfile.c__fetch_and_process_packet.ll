; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__fetch_and_process_packet.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c__fetch_and_process_packet.c"
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
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %25

25:                                               ; preds = %4, %302, %345
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STREAMSET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = call i32 @_make_decode_ready(%struct.TYPE_22__* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %349

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INITSET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %191

45:                                               ; preds = %39
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vorbis_synthesis_halfrate_p(i32 %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %45, %189
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = icmp ne %struct.TYPE_21__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  br label %56

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi %struct.TYPE_21__* [ %54, %53 ], [ %13, %55 ]
  store %struct.TYPE_21__* %57, %struct.TYPE_21__** %14, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %61 = call i32 @ogg_stream_packetout(%struct.TYPE_23__* %59, %struct.TYPE_21__* %60)
  store i32 %61, i32* %15, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @OV_HOLE, align 4
  store i32 %65, i32* %5, align 4
  br label %349

66:                                               ; preds = %56
  %67 = load i32, i32* %15, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %188

69:                                               ; preds = %66
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %16, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 14
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %76 = call i32 @vorbis_synthesis(i32* %74, %struct.TYPE_21__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %187, label %78

78:                                               ; preds = %69
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 13
  %81 = call i32 @vorbis_synthesis_pcmout(i32* %80, i32* null)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @OV_EFAULT, align 4
  store i32 %85, i32* %5, align 4
  br label %349

86:                                               ; preds = %78
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 13
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 14
  %91 = call i32 @vorbis_synthesis_blockin(i32* %88, i32* %90)
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 13
  %94 = call i32 @vorbis_synthesis_pcmout(i32* %93, i32* null)
  %95 = load i32, i32* %12, align 4
  %96 = shl i32 %94, %95
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %186

111:                                              ; preds = %86
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %186, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 11
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  br label %126

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi i32 [ %124, %121 ], [ 0, %125 ]
  store i32 %127, i32* %18, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 11
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %148

132:                                              ; preds = %126
  %133 = load i32, i32* %18, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 12
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %18, align 4
  %140 = mul nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %138, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = sub nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %135, %132, %126
  %149 = load i32, i32* %16, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 0, i32* %16, align 4
  br label %152

152:                                              ; preds = %151, %148
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 13
  %155 = call i32 @vorbis_synthesis_pcmout(i32* %154, i32* null)
  %156 = load i32, i32* %12, align 4
  %157 = shl i32 %155, %156
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %16, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %161

161:                                              ; preds = %179, %152
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %161
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 12
  %168 = load i64*, i64** %167, align 8
  %169 = load i32, i32* %19, align 4
  %170 = mul nsw i32 %169, 2
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %168, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = add nsw i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %165
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %19, align 4
  br label %161

182:                                              ; preds = %161
  %183 = load i32, i32* %16, align 4
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %111, %86
  store i32 1, i32* %5, align 4
  br label %349

187:                                              ; preds = %69
  br label %189

188:                                              ; preds = %66
  br label %190

189:                                              ; preds = %187
  br label %50

190:                                              ; preds = %188
  br label %191

191:                                              ; preds = %190, %39
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @OPENED, align 8
  %196 = icmp sge i64 %194, %195
  br i1 %196, label %197, label %256

197:                                              ; preds = %191
  br label %198

198:                                              ; preds = %197, %252
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  store i32 0, i32* %5, align 4
  br label %349

202:                                              ; preds = %198
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %204 = call i32 @_get_next_page(%struct.TYPE_22__* %203, %struct.TYPE_20__* %10, i32 -1)
  store i32 %204, i32* %21, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = load i32, i32* @OV_EOF, align 4
  store i32 %207, i32* %5, align 4
  br label %349

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %210, 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @INITSET, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %254

221:                                              ; preds = %208
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @ogg_page_serialno(%struct.TYPE_20__* %10)
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %253

227:                                              ; preds = %221
  %228 = call i64 @ogg_page_bos(%struct.TYPE_20__* %10)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %252

230:                                              ; preds = %227
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* @OV_EOF, align 4
  store i32 %234, i32* %5, align 4
  br label %349

235:                                              ; preds = %230
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %237 = call i32 @_decode_clear(%struct.TYPE_22__* %236)
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 11
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %235
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 10
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @vorbis_info_clear(i32 %245)
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 9
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @vorbis_comment_clear(i32 %249)
  br label %251

251:                                              ; preds = %242, %235
  br label %255

252:                                              ; preds = %227
  br label %198

253:                                              ; preds = %221
  br label %254

254:                                              ; preds = %253, %208
  br label %255

255:                                              ; preds = %254, %251
  br label %256

256:                                              ; preds = %255, %191
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @INITSET, align 8
  %261 = icmp ne i64 %259, %260
  br i1 %261, label %262, label %345

262:                                              ; preds = %256
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @STREAMSET, align 8
  %267 = icmp slt i64 %265, %266
  br i1 %267, label %268, label %344

268:                                              ; preds = %262
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 11
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %319

273:                                              ; preds = %268
  %274 = call i64 @ogg_page_serialno(%struct.TYPE_20__* %10)
  store i64 %274, i64* %23, align 8
  store i32 0, i32* %22, align 4
  br label %275

275:                                              ; preds = %293, %273
  %276 = load i32, i32* %22, align 4
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 8
  %280 = icmp slt i32 %276, %279
  br i1 %280, label %281, label %296

281:                                              ; preds = %275
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 7
  %284 = load i64*, i64** %283, align 8
  %285 = load i32, i32* %22, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %284, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* %23, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %281
  br label %296

292:                                              ; preds = %281
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %22, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %22, align 4
  br label %275

296:                                              ; preds = %291, %275
  %297 = load i32, i32* %22, align 4
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = icmp eq i32 %297, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %296
  br label %25

303:                                              ; preds = %296
  %304 = load i64, i64* %23, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 5
  store i64 %304, i64* %306, align 8
  %307 = load i32, i32* %22, align 4
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 3
  store i32 %307, i32* %309, align 8
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 8
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @ogg_stream_reset_serialno(%struct.TYPE_23__* %311, i64 %314)
  %316 = load i64, i64* @STREAMSET, align 8
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 0
  store i64 %316, i64* %318, align 8
  br label %343

319:                                              ; preds = %268
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 10
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 9
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @_fetch_headers(%struct.TYPE_22__* %320, i32 %323, i32 %326, i32* null, i32* null, %struct.TYPE_20__* %10)
  store i32 %327, i32* %24, align 4
  %328 = load i32, i32* %24, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %319
  %331 = load i32, i32* %24, align 4
  store i32 %331, i32* %5, align 4
  br label %349

332:                                              ; preds = %319
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 5
  store i64 %336, i64* %338, align 8
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %340, align 8
  store i32 0, i32* %22, align 4
  br label %343

343:                                              ; preds = %332, %303
  br label %344

344:                                              ; preds = %343, %262
  br label %345

345:                                              ; preds = %344, %256
  %346 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %346, i32 0, i32 8
  %348 = call i32 @ogg_stream_pagein(%struct.TYPE_23__* %347, %struct.TYPE_20__* %10)
  br label %25

349:                                              ; preds = %330, %233, %206, %201, %186, %84, %64, %36
  %350 = load i32, i32* %5, align 4
  ret i32 %350
}

declare dso_local i32 @_make_decode_ready(%struct.TYPE_22__*) #1

declare dso_local i32 @vorbis_synthesis_halfrate_p(i32) #1

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
