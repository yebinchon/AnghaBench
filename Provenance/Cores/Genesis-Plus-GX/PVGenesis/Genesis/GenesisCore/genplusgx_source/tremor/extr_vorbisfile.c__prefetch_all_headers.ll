; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__prefetch_all_headers.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c__prefetch_all_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32*, i32*, i32*, i32, i64*, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32)* @_prefetch_all_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_prefetch_all_headers(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = bitcast %struct.TYPE_18__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 7
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = call i8* @_ogg_realloc(i8* %18, i32 %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 6
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = call i8* @_ogg_realloc(i8* %30, i32 %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i8* @_ogg_malloc(i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i8* @_ogg_malloc(i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %281, %2
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %284

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @_seek_helper(%struct.TYPE_20__* %78, i32 %79)
  br label %124

81:                                               ; preds = %67
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @_seek_helper(%struct.TYPE_20__* %82, i32 %89)
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 7
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %94, i64 %96
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 6
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr i8, i8* %100, i64 %102
  %104 = call i64 @_fetch_headers(%struct.TYPE_20__* %91, i8* %97, i8* %103, i32* null, i32* null)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %81
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 -1, i32* %112, align 4
  br label %123

113:                                              ; preds = %81
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %113, %106
  br label %124

124:                                              ; preds = %123, %70
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, -1
  br i1 %132, label %133, label %222

133:                                              ; preds = %124
  store i32 0, i32* %8, align 4
  store i64 -1, i64* %10, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 5
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @ogg_stream_reset_serialno(i32 %136, i64 %143)
  br label %145

145:                                              ; preds = %133, %208
  %146 = bitcast %struct.TYPE_19__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %146, i8 0, i64 24, i1 false)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %148 = call i32 @_get_next_page(%struct.TYPE_20__* %147, %struct.TYPE_18__* %5, i32 -1)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %209

152:                                              ; preds = %145
  %153 = call i64 @ogg_page_serialno(%struct.TYPE_18__* %5)
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 5
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %153, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %209

163:                                              ; preds = %152
  %164 = call i32 @ogg_page_granulepos(%struct.TYPE_18__* %5)
  store i32 %164, i32* %9, align 4
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @ogg_stream_pagein(i32 %167, %struct.TYPE_18__* %5)
  br label %169

169:                                              ; preds = %199, %163
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ogg_stream_packetout(i32 %172, %struct.TYPE_19__* %12)
  store i32 %173, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %200

175:                                              ; preds = %169
  %176 = load i32, i32* %11, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %175
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 7
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr i8, i8* %181, i64 %183
  %185 = call i64 @vorbis_packet_blocksize(i8* %184, %struct.TYPE_19__* %12)
  store i64 %185, i64* %13, align 8
  %186 = load i64, i64* %10, align 8
  %187 = icmp ne i64 %186, -1
  br i1 %187, label %188, label %197

188:                                              ; preds = %178
  %189 = load i64, i64* %10, align 8
  %190 = load i64, i64* %13, align 8
  %191 = add nsw i64 %189, %190
  %192 = ashr i64 %191, 2
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %188, %178
  %198 = load i64, i64* %13, align 8
  store i64 %198, i64* %10, align 8
  br label %199

199:                                              ; preds = %197, %175
  br label %169

200:                                              ; preds = %169
  %201 = call i32 @ogg_packet_release(%struct.TYPE_19__* %12)
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, -1
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %8, align 4
  %207 = sub nsw i32 %205, %206
  store i32 %207, i32* %8, align 4
  br label %209

208:                                              ; preds = %200
  br label %145

209:                                              ; preds = %204, %162, %151
  %210 = load i32, i32* %8, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  store i32 0, i32* %8, align 4
  br label %213

213:                                              ; preds = %212, %209
  %214 = load i32, i32* %8, align 4
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = mul nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 %214, i32* %221, align 4
  br label %222

222:                                              ; preds = %213, %124
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %14, align 4
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %232 = load i32, i32* %14, align 4
  %233 = call i32 @_seek_helper(%struct.TYPE_20__* %231, i32 %232)
  br label %234

234:                                              ; preds = %222, %276
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %236 = call i32 @_get_prev_page(%struct.TYPE_20__* %235, %struct.TYPE_18__* %5)
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %254

239:                                              ; preds = %234
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 7
  %242 = load i8*, i8** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr i8, i8* %242, i64 %244
  %246 = call i32 @vorbis_info_clear(i8* %245)
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 6
  %249 = load i8*, i8** %248, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr i8, i8* %249, i64 %251
  %253 = call i32 @vorbis_comment_clear(i8* %252)
  br label %280

254:                                              ; preds = %234
  %255 = call i32 @ogg_page_granulepos(%struct.TYPE_18__* %5)
  %256 = icmp ne i32 %255, -1
  br i1 %256, label %257, label %276

257:                                              ; preds = %254
  %258 = call i32 @ogg_page_granulepos(%struct.TYPE_18__* %5)
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = mul nsw i32 %262, 2
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = sub nsw i32 %258, %266
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %6, align 4
  %272 = mul nsw i32 %271, 2
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %270, i64 %274
  store i32 %267, i32* %275, align 4
  br label %280

276:                                              ; preds = %254
  %277 = load i32, i32* %7, align 4
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 4
  store i32 %277, i32* %279, align 8
  br label %234

280:                                              ; preds = %257, %239
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %6, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %6, align 4
  br label %61

284:                                              ; preds = %61
  %285 = call i32 @ogg_page_release(%struct.TYPE_18__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @_ogg_realloc(i8*, i32) #2

declare dso_local i8* @_ogg_malloc(i32) #2

declare dso_local i32 @_seek_helper(%struct.TYPE_20__*, i32) #2

declare dso_local i64 @_fetch_headers(%struct.TYPE_20__*, i8*, i8*, i32*, i32*) #2

declare dso_local i32 @ogg_stream_reset_serialno(i32, i64) #2

declare dso_local i32 @_get_next_page(%struct.TYPE_20__*, %struct.TYPE_18__*, i32) #2

declare dso_local i64 @ogg_page_serialno(%struct.TYPE_18__*) #2

declare dso_local i32 @ogg_page_granulepos(%struct.TYPE_18__*) #2

declare dso_local i32 @ogg_stream_pagein(i32, %struct.TYPE_18__*) #2

declare dso_local i32 @ogg_stream_packetout(i32, %struct.TYPE_19__*) #2

declare dso_local i64 @vorbis_packet_blocksize(i8*, %struct.TYPE_19__*) #2

declare dso_local i32 @ogg_packet_release(%struct.TYPE_19__*) #2

declare dso_local i32 @_get_prev_page(%struct.TYPE_20__*, %struct.TYPE_18__*) #2

declare dso_local i32 @vorbis_info_clear(i8*) #2

declare dso_local i32 @vorbis_comment_clear(i8*) #2

declare dso_local i32 @ogg_page_release(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
