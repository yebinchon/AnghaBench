; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c_ov_pcm_seek.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c_ov_pcm_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, i64*, i64, i64, i32, i64*, i32, i64, i64, i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@OV_HOLE = common dso_local global i32 0, align 4
@STREAMSET = common dso_local global i64 0, align 8
@OV_EBADLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov_pcm_seek(%struct.TYPE_21__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_19__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = bitcast %struct.TYPE_20__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 28, i1 false)
  %17 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @ov_pcm_seek_page(%struct.TYPE_21__* %18, i64 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %287

25:                                               ; preds = %2
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = call i32 @_make_decode_ready(%struct.TYPE_21__* %26)
  br label %28

28:                                               ; preds = %25, %47, %234
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ogg_stream_packetpeek(i32 %31, %struct.TYPE_20__* %6)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %148

35:                                               ; preds = %28
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 12
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %38, %42
  %44 = call i32 @vorbis_packet_blocksize(i64 %43, %struct.TYPE_20__* %6)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ogg_stream_packetout(i32 %50, i32* null)
  br label %28

52:                                               ; preds = %35
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = ashr i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %55, %52
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 12
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @vorbis_info_blocksize(i64 %72, i32 1)
  %74 = add nsw i32 %69, %73
  %75 = ashr i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %68, %76
  %78 = load i64, i64* %5, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %235

81:                                               ; preds = %65
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ogg_stream_packetout(i32 %84, i32* null)
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 11
  %88 = call i32 @vorbis_synthesis(i32* %87, %struct.TYPE_20__* %6, i32 0)
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 7
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 11
  %93 = call i32 @vorbis_synthesis_blockin(i32* %90, i32* %92)
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %97, label %146

97:                                               ; preds = %81
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %103, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %100, %110
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %97
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %97
  store i32 0, i32* %12, align 4
  br label %122

122:                                              ; preds = %142, %121
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %122
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 2
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = mul nsw i32 %132, 2
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %131, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %137
  store i64 %141, i64* %139, align 8
  br label %142

142:                                              ; preds = %128
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %122

145:                                              ; preds = %122
  br label %146

146:                                              ; preds = %145, %81
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %9, align 4
  br label %234

148:                                              ; preds = %28
  %149 = load i32, i32* %11, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @OV_HOLE, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %235

156:                                              ; preds = %151, %148
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %158 = call i64 @_get_next_page(%struct.TYPE_21__* %157, %struct.TYPE_19__* %7, i32 -1)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %235

161:                                              ; preds = %156
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @ogg_page_serialno(%struct.TYPE_19__* %7)
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %169 = call i32 @_decode_clear(%struct.TYPE_21__* %168)
  br label %170

170:                                              ; preds = %167, %161
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @STREAMSET, align 8
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %176, label %229

176:                                              ; preds = %170
  %177 = call i64 @ogg_page_serialno(%struct.TYPE_19__* %7)
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %200, %176
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %203

186:                                              ; preds = %180
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 6
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %203

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %180

203:                                              ; preds = %198, %180
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %204, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = call i32 @ogg_page_release(%struct.TYPE_19__* %7)
  %211 = call i32 @ogg_packet_release(%struct.TYPE_20__* %6)
  %212 = load i32, i32* @OV_EBADLINK, align 4
  store i32 %212, i32* %3, align 4
  br label %287

213:                                              ; preds = %203
  %214 = load i32, i32* %13, align 4
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 10
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @ogg_stream_reset_serialno(i32 %219, i64 %222)
  %224 = load i64, i64* @STREAMSET, align 8
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 4
  store i64 %224, i64* %226, align 8
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %228 = call i32 @_make_decode_ready(%struct.TYPE_21__* %227)
  store i32 0, i32* %9, align 4
  br label %229

229:                                              ; preds = %213, %170
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 10
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @ogg_stream_pagein(i32 %232, %struct.TYPE_19__* %7)
  br label %234

234:                                              ; preds = %229, %146
  br label %28

235:                                              ; preds = %160, %155, %80
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 9
  store i64 0, i64* %237, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 8
  store i64 0, i64* %239, align 8
  br label %240

240:                                              ; preds = %283, %235
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %5, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %284

246:                                              ; preds = %240
  %247 = load i64, i64* %5, align 8
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = sub nsw i64 %247, %250
  store i64 %251, i64* %14, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 7
  %254 = call i64 @vorbis_synthesis_pcmout(i32* %253, i32* null)
  store i64 %254, i64* %15, align 8
  %255 = load i64, i64* %15, align 8
  %256 = load i64, i64* %14, align 8
  %257 = icmp sgt i64 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %246
  %259 = load i64, i64* %14, align 8
  store i64 %259, i64* %15, align 8
  br label %260

260:                                              ; preds = %258, %246
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 7
  %263 = load i64, i64* %15, align 8
  %264 = call i32 @vorbis_synthesis_read(i32* %262, i64 %263)
  %265 = load i64, i64* %15, align 8
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, %265
  store i64 %269, i64* %267, align 8
  %270 = load i64, i64* %15, align 8
  %271 = load i64, i64* %14, align 8
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %273, label %283

273:                                              ; preds = %260
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %275 = call i64 @_fetch_and_process_packet(%struct.TYPE_21__* %274, i32 1, i32 1)
  %276 = icmp sle i64 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %273
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %279 = call i64 @ov_pcm_total(%struct.TYPE_21__* %278, i32 -1)
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 1
  store i64 %279, i64* %281, align 8
  br label %282

282:                                              ; preds = %277, %273
  br label %283

283:                                              ; preds = %282, %260
  br label %240

284:                                              ; preds = %240
  %285 = call i32 @ogg_page_release(%struct.TYPE_19__* %7)
  %286 = call i32 @ogg_packet_release(%struct.TYPE_20__* %6)
  store i32 0, i32* %3, align 4
  br label %287

287:                                              ; preds = %284, %209, %23
  %288 = load i32, i32* %3, align 4
  ret i32 %288
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ov_pcm_seek_page(%struct.TYPE_21__*, i64) #2

declare dso_local i32 @_make_decode_ready(%struct.TYPE_21__*) #2

declare dso_local i32 @ogg_stream_packetpeek(i32, %struct.TYPE_20__*) #2

declare dso_local i32 @vorbis_packet_blocksize(i64, %struct.TYPE_20__*) #2

declare dso_local i32 @ogg_stream_packetout(i32, i32*) #2

declare dso_local i32 @vorbis_info_blocksize(i64, i32) #2

declare dso_local i32 @vorbis_synthesis(i32*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @vorbis_synthesis_blockin(i32*, i32*) #2

declare dso_local i64 @_get_next_page(%struct.TYPE_21__*, %struct.TYPE_19__*, i32) #2

declare dso_local i64 @ogg_page_serialno(%struct.TYPE_19__*) #2

declare dso_local i32 @_decode_clear(%struct.TYPE_21__*) #2

declare dso_local i32 @ogg_page_release(%struct.TYPE_19__*) #2

declare dso_local i32 @ogg_packet_release(%struct.TYPE_20__*) #2

declare dso_local i32 @ogg_stream_reset_serialno(i32, i64) #2

declare dso_local i32 @ogg_stream_pagein(i32, %struct.TYPE_19__*) #2

declare dso_local i64 @vorbis_synthesis_pcmout(i32*, i32*) #2

declare dso_local i32 @vorbis_synthesis_read(i32*, i64) #2

declare dso_local i64 @_fetch_and_process_packet(%struct.TYPE_21__*, i32, i32) #2

declare dso_local i64 @ov_pcm_total(%struct.TYPE_21__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
