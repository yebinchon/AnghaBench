; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c_ov_raw_seek.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c_ov_raw_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i32, i64, i64, i64*, i32, i64*, i64, i64, i32*, %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32 }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i32 0, align 4
@OV_ENOSEEK = common dso_local global i32 0, align 4
@STREAMSET = common dso_local global i64 0, align 8
@OV_EBADLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov_raw_seek(%struct.TYPE_22__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_20__, align 4
  %8 = alloca %struct.TYPE_21__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_20__, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %6, align 8
  %19 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 16, i1 false)
  %20 = bitcast %struct.TYPE_21__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 28, i1 false)
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OPENED, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @OV_EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %307

28:                                               ; preds = %2
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @OV_ENOSEEK, align 4
  store i32 %34, i32* %3, align 4
  br label %307

35:                                               ; preds = %28
  %36 = load i64, i64* %5, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %35
  %45 = load i32, i32* @OV_EINVAL, align 4
  store i32 %45, i32* %3, align 4
  br label %307

46:                                               ; preds = %38
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 2
  store i32 -1, i32* %48, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 10
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ogg_stream_reset_serialno(i32* %51, i64 %54)
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 12
  %58 = call i32 @vorbis_synthesis_restart(i32* %57)
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @_seek_helper(%struct.TYPE_22__* %59, i64 %60)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i32* @ogg_stream_create(i64 %64)
  store i32* %65, i32** %6, align 8
  br label %66

66:                                               ; preds = %46, %176, %279
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STREAMSET, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %185

72:                                               ; preds = %66
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @ogg_stream_packetout(i32* %73, %struct.TYPE_21__* %8)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %184

77:                                               ; preds = %72
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 11
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %79, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %178

88:                                               ; preds = %77
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 11
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i64 %94
  %96 = call i32 @vorbis_packet_blocksize(%struct.TYPE_23__* %95, %struct.TYPE_21__* %8)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 10
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @ogg_stream_packetout(i32* %102, %struct.TYPE_21__* null)
  store i32 0, i32* %11, align 4
  br label %124

104:                                              ; preds = %88
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 10
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @ogg_stream_packetout(i32* %110, %struct.TYPE_21__* null)
  br label %123

112:                                              ; preds = %104
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %116, %117
  %119 = ashr i32 %118, 2
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %115, %112
  br label %123

123:                                              ; preds = %122, %107
  br label %124

124:                                              ; preds = %123, %99
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %128, label %176

128:                                              ; preds = %124
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %15, align 4
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 5
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = mul nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %138, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %135, %143
  store i64 %144, i64* %16, align 8
  %145 = load i64, i64* %16, align 8
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %128
  store i64 0, i64* %16, align 8
  br label %148

148:                                              ; preds = %147, %128
  store i32 0, i32* %14, align 4
  br label %149

149:                                              ; preds = %165, %148
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %149
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 5
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = mul nsw i32 %157, 2
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %156, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %16, align 8
  %164 = add nsw i64 %163, %162
  store i64 %164, i64* %16, align 8
  br label %165

165:                                              ; preds = %153
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %149

168:                                              ; preds = %149
  %169 = load i64, i64* %16, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %169, %171
  %173 = trunc i64 %172 to i32
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  br label %288

176:                                              ; preds = %124
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %9, align 4
  br label %66

178:                                              ; preds = %77
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 10
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @ogg_stream_packetout(i32* %181, %struct.TYPE_21__* null)
  br label %183

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183, %72
  br label %185

185:                                              ; preds = %184, %66
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %185
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %190 = call i64 @_get_next_page(%struct.TYPE_22__* %189, %struct.TYPE_20__* %7, i32 -1)
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %194 = call i32 @ov_pcm_total(%struct.TYPE_22__* %193, i32 -1)
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  br label %288

197:                                              ; preds = %188
  br label %201

198:                                              ; preds = %185
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 2
  store i32 -1, i32* %200, align 8
  br label %288

201:                                              ; preds = %197
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @STREAMSET, align 8
  %206 = icmp sge i64 %204, %205
  br i1 %206, label %207, label %219

207:                                              ; preds = %201
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @ogg_page_serialno(%struct.TYPE_20__* %7)
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %207
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %215 = call i32 @_decode_clear(%struct.TYPE_22__* %214)
  %216 = load i32*, i32** %6, align 8
  %217 = call i32 @ogg_stream_destroy(i32* %216)
  br label %218

218:                                              ; preds = %213, %207
  br label %219

219:                                              ; preds = %218, %201
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @STREAMSET, align 8
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %225, label %279

225:                                              ; preds = %219
  %226 = call i64 @ogg_page_serialno(%struct.TYPE_20__* %7)
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 3
  store i64 %226, i64* %228, align 8
  store i32 0, i32* %17, align 4
  br label %229

229:                                              ; preds = %249, %225
  %230 = load i32, i32* %17, align 4
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %252

235:                                              ; preds = %229
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 7
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %242, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %235
  br label %252

248:                                              ; preds = %235
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %17, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %17, align 4
  br label %229

252:                                              ; preds = %247, %229
  %253 = load i32, i32* %17, align 4
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 8
  %257 = icmp eq i32 %253, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  br label %297

259:                                              ; preds = %252
  %260 = load i32, i32* %17, align 4
  %261 = sext i32 %260 to i64
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 4
  store i64 %261, i64* %263, align 8
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 10
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @ogg_stream_reset_serialno(i32* %266, i64 %269)
  %271 = load i32*, i32** %6, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @ogg_stream_reset_serialno(i32* %271, i64 %274)
  %276 = load i64, i64* @STREAMSET, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 0
  store i64 %276, i64* %278, align 8
  br label %279

279:                                              ; preds = %259, %219
  %280 = call i32 @ogg_page_dup(%struct.TYPE_20__* %18, %struct.TYPE_20__* %7)
  %281 = call i32 @ogg_page_eos(%struct.TYPE_20__* %7)
  store i32 %281, i32* %12, align 4
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 10
  %284 = load i32*, i32** %283, align 8
  %285 = call i32 @ogg_stream_pagein(i32* %284, %struct.TYPE_20__* %7)
  %286 = load i32*, i32** %6, align 8
  %287 = call i32 @ogg_stream_pagein(i32* %286, %struct.TYPE_20__* %18)
  br label %66

288:                                              ; preds = %198, %192, %168
  %289 = call i32 @ogg_packet_release(%struct.TYPE_21__* %8)
  %290 = call i32 @ogg_page_release(%struct.TYPE_20__* %7)
  %291 = load i32*, i32** %6, align 8
  %292 = call i32 @ogg_stream_destroy(i32* %291)
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %293, i32 0, i32 9
  store i64 0, i64* %294, align 8
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 8
  store i64 0, i64* %296, align 8
  store i32 0, i32* %3, align 4
  br label %307

297:                                              ; preds = %258
  %298 = call i32 @ogg_packet_release(%struct.TYPE_21__* %8)
  %299 = call i32 @ogg_page_release(%struct.TYPE_20__* %7)
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 2
  store i32 -1, i32* %301, align 8
  %302 = load i32*, i32** %6, align 8
  %303 = call i32 @ogg_stream_destroy(i32* %302)
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %305 = call i32 @_decode_clear(%struct.TYPE_22__* %304)
  %306 = load i32, i32* @OV_EBADLINK, align 4
  store i32 %306, i32* %3, align 4
  br label %307

307:                                              ; preds = %297, %288, %44, %33, %26
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ogg_stream_reset_serialno(i32*, i64) #2

declare dso_local i32 @vorbis_synthesis_restart(i32*) #2

declare dso_local i32 @_seek_helper(%struct.TYPE_22__*, i64) #2

declare dso_local i32* @ogg_stream_create(i64) #2

declare dso_local i32 @ogg_stream_packetout(i32*, %struct.TYPE_21__*) #2

declare dso_local i32 @vorbis_packet_blocksize(%struct.TYPE_23__*, %struct.TYPE_21__*) #2

declare dso_local i64 @_get_next_page(%struct.TYPE_22__*, %struct.TYPE_20__*, i32) #2

declare dso_local i32 @ov_pcm_total(%struct.TYPE_22__*, i32) #2

declare dso_local i64 @ogg_page_serialno(%struct.TYPE_20__*) #2

declare dso_local i32 @_decode_clear(%struct.TYPE_22__*) #2

declare dso_local i32 @ogg_stream_destroy(i32*) #2

declare dso_local i32 @ogg_page_dup(%struct.TYPE_20__*, %struct.TYPE_20__*) #2

declare dso_local i32 @ogg_page_eos(%struct.TYPE_20__*) #2

declare dso_local i32 @ogg_stream_pagein(i32*, %struct.TYPE_20__*) #2

declare dso_local i32 @ogg_packet_release(%struct.TYPE_21__*) #2

declare dso_local i32 @ogg_page_release(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
