; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c_ov_pcm_seek_page.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/tremor/extr_vorbisfile.c_ov_pcm_seek_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i64*, i64*, i64, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32 }

@OPENED = common dso_local global i64 0, align 8
@OV_EINVAL = common dso_local global i32 0, align 4
@OV_ENOSEEK = common dso_local global i32 0, align 4
@CHUNKSIZE = common dso_local global i64 0, align 8
@OV_EREAD = common dso_local global i64 0, align 8
@OV_EOF = common dso_local global i32 0, align 4
@STREAMSET = common dso_local global i64 0, align 8
@OV_EBADPACKET = common dso_local global i64 0, align 8
@OV_EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov_pcm_seek_page(%struct.TYPE_22__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__, align 4
  %10 = alloca %struct.TYPE_21__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = call i64 @ov_pcm_total(%struct.TYPE_22__* %19, i32 -1)
  store i64 %20, i64* %8, align 8
  %21 = bitcast %struct.TYPE_20__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 16, i1 false)
  %22 = bitcast %struct.TYPE_21__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 28, i1 false)
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OPENED, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @OV_EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %414

30:                                               ; preds = %2
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @OV_ENOSEEK, align 4
  store i32 %36, i32* %3, align 4
  br label %414

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @OV_EINVAL, align 4
  store i32 %45, i32* %3, align 4
  br label %414

46:                                               ; preds = %40
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %71, %46
  %52 = load i32, i32* %6, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 2
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %57, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %74

70:                                               ; preds = %54
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %6, align 4
  br label %51

74:                                               ; preds = %69, %51
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 3
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 3
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %12, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %13, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = mul nsw i32 %101, 2
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %100, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = add nsw i64 %106, %107
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i64, i64* %8, align 8
  %111 = sub nsw i64 %109, %110
  %112 = load i64, i64* %13, align 8
  %113 = add nsw i64 %111, %112
  store i64 %113, i64* %15, align 8
  %114 = load i64, i64* %12, align 8
  store i64 %114, i64* %16, align 8
  br label %115

115:                                              ; preds = %258, %74
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %259

119:                                              ; preds = %115
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %12, align 8
  %122 = sub nsw i64 %120, %121
  %123 = load i64, i64* @CHUNKSIZE, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i64, i64* %12, align 8
  store i64 %126, i64* %17, align 8
  br label %150

127:                                              ; preds = %119
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load i64, i64* %13, align 8
  %131 = sub nsw i64 %129, %130
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = sub nsw i64 %132, %133
  %135 = mul nsw i64 %131, %134
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %13, align 8
  %138 = sub nsw i64 %136, %137
  %139 = sdiv i64 %135, %138
  %140 = add nsw i64 %128, %139
  %141 = load i64, i64* @CHUNKSIZE, align 8
  %142 = sub nsw i64 %140, %141
  store i64 %142, i64* %17, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %12, align 8
  %145 = icmp sle i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %127
  %147 = load i64, i64* %12, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %17, align 8
  br label %149

149:                                              ; preds = %146, %127
  br label %150

150:                                              ; preds = %149, %125
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %152 = load i64, i64* %17, align 8
  %153 = call i32 @_seek_helper(%struct.TYPE_22__* %151, i64 %152)
  br label %154

154:                                              ; preds = %257, %205, %150
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* %11, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %258

158:                                              ; preds = %154
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %160 = load i64, i64* %11, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %160, %163
  %165 = trunc i64 %164 to i32
  %166 = call i64 @_get_next_page(%struct.TYPE_22__* %159, %struct.TYPE_20__* %9, i32 %165)
  store i64 %166, i64* %7, align 8
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @OV_EREAD, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %405

171:                                              ; preds = %158
  %172 = load i64, i64* %7, align 8
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %200

174:                                              ; preds = %171
  %175 = load i64, i64* %17, align 8
  %176 = load i64, i64* %12, align 8
  %177 = add nsw i64 %176, 1
  %178 = icmp sle i64 %175, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i64, i64* %12, align 8
  store i64 %180, i64* %11, align 8
  br label %199

181:                                              ; preds = %174
  %182 = load i64, i64* %17, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %405

185:                                              ; preds = %181
  %186 = load i64, i64* @CHUNKSIZE, align 8
  %187 = load i64, i64* %17, align 8
  %188 = sub nsw i64 %187, %186
  store i64 %188, i64* %17, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* %12, align 8
  %191 = icmp sle i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i64, i64* %12, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %17, align 8
  br label %195

195:                                              ; preds = %192, %185
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %197 = load i64, i64* %17, align 8
  %198 = call i32 @_seek_helper(%struct.TYPE_22__* %196, i64 %197)
  br label %199

199:                                              ; preds = %195, %179
  br label %257

200:                                              ; preds = %171
  %201 = call i32 @ogg_page_granulepos(%struct.TYPE_20__* %9)
  %202 = sext i32 %201 to i64
  store i64 %202, i64* %18, align 8
  %203 = load i64, i64* %18, align 8
  %204 = icmp eq i64 %203, -1
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %154

206:                                              ; preds = %200
  %207 = load i64, i64* %18, align 8
  %208 = load i64, i64* %15, align 8
  %209 = icmp slt i64 %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %206
  %211 = load i64, i64* %7, align 8
  store i64 %211, i64* %16, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %12, align 8
  %215 = load i64, i64* %18, align 8
  store i64 %215, i64* %13, align 8
  %216 = load i64, i64* %15, align 8
  %217 = load i64, i64* %13, align 8
  %218 = sub nsw i64 %216, %217
  %219 = icmp sgt i64 %218, 44100
  br i1 %219, label %220, label %221

220:                                              ; preds = %210
  br label %258

221:                                              ; preds = %210
  %222 = load i64, i64* %12, align 8
  store i64 %222, i64* %17, align 8
  br label %256

223:                                              ; preds = %206
  %224 = load i64, i64* %17, align 8
  %225 = load i64, i64* %12, align 8
  %226 = add nsw i64 %225, 1
  %227 = icmp sle i64 %224, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i64, i64* %12, align 8
  store i64 %229, i64* %11, align 8
  br label %255

230:                                              ; preds = %223
  %231 = load i64, i64* %11, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = icmp eq i64 %231, %234
  br i1 %235, label %236, label %251

236:                                              ; preds = %230
  %237 = load i64, i64* %7, align 8
  store i64 %237, i64* %11, align 8
  %238 = load i64, i64* @CHUNKSIZE, align 8
  %239 = load i64, i64* %17, align 8
  %240 = sub nsw i64 %239, %238
  store i64 %240, i64* %17, align 8
  %241 = load i64, i64* %17, align 8
  %242 = load i64, i64* %12, align 8
  %243 = icmp sle i64 %241, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %236
  %245 = load i64, i64* %12, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %17, align 8
  br label %247

247:                                              ; preds = %244, %236
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %249 = load i64, i64* %17, align 8
  %250 = call i32 @_seek_helper(%struct.TYPE_22__* %248, i64 %249)
  br label %254

251:                                              ; preds = %230
  %252 = load i64, i64* %7, align 8
  store i64 %252, i64* %11, align 8
  %253 = load i64, i64* %18, align 8
  store i64 %253, i64* %14, align 8
  br label %258

254:                                              ; preds = %247
  br label %255

255:                                              ; preds = %254, %228
  br label %256

256:                                              ; preds = %255, %221
  br label %257

257:                                              ; preds = %256, %199
  br label %154

258:                                              ; preds = %251, %220, %154
  br label %115

259:                                              ; preds = %115
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %261 = load i64, i64* %16, align 8
  %262 = call i32 @_seek_helper(%struct.TYPE_22__* %260, i64 %261)
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 5
  store i32 -1, i32* %264, align 8
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %266 = call i64 @_get_next_page(%struct.TYPE_22__* %265, %struct.TYPE_20__* %9, i32 -1)
  %267 = icmp slt i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %259
  %269 = call i32 @ogg_page_release(%struct.TYPE_20__* %9)
  %270 = load i32, i32* @OV_EOF, align 4
  store i32 %270, i32* %3, align 4
  br label %414

271:                                              ; preds = %259
  %272 = load i32, i32* %6, align 4
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %272, %275
  br i1 %276, label %277, label %289

277:                                              ; preds = %271
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %279 = call i32 @_decode_clear(%struct.TYPE_22__* %278)
  %280 = load i32, i32* %6, align 4
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 6
  store i32 %280, i32* %282, align 4
  %283 = call i32 @ogg_page_serialno(%struct.TYPE_20__* %9)
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 10
  store i32 %283, i32* %285, align 4
  %286 = load i64, i64* @STREAMSET, align 8
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 0
  store i64 %286, i64* %288, align 8
  br label %293

289:                                              ; preds = %271
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 11
  %292 = call i32 @vorbis_synthesis_restart(i32* %291)
  br label %293

293:                                              ; preds = %289, %277
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 9
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 10
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @ogg_stream_reset_serialno(i32 %296, i32 %299)
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %301, i32 0, i32 9
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @ogg_stream_pagein(i32 %303, %struct.TYPE_20__* %9)
  br label %305

305:                                              ; preds = %293, %383
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 9
  %308 = load i32, i32* %307, align 8
  %309 = call i64 @ogg_stream_packetpeek(i32 %308, %struct.TYPE_21__* %10)
  store i64 %309, i64* %7, align 8
  %310 = load i64, i64* %7, align 8
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %336

312:                                              ; preds = %305
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %314 = load i64, i64* %16, align 8
  %315 = call i32 @_seek_helper(%struct.TYPE_22__* %313, i64 %314)
  br label %316

316:                                              ; preds = %312, %332
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %318 = call i64 @_get_prev_page(%struct.TYPE_22__* %317, %struct.TYPE_20__* %9)
  store i64 %318, i64* %7, align 8
  %319 = load i64, i64* %7, align 8
  %320 = icmp slt i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  br label %405

322:                                              ; preds = %316
  %323 = call i32 @ogg_page_granulepos(%struct.TYPE_20__* %9)
  %324 = icmp sgt i32 %323, -1
  br i1 %324, label %328, label %325

325:                                              ; preds = %322
  %326 = call i32 @ogg_page_continued(%struct.TYPE_20__* %9)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %325, %322
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %330 = load i64, i64* %7, align 8
  %331 = call i32 @ov_raw_seek(%struct.TYPE_22__* %329, i64 %330)
  store i32 %331, i32* %3, align 4
  br label %414

332:                                              ; preds = %325
  %333 = load i64, i64* %7, align 8
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 4
  store i64 %333, i64* %335, align 8
  br label %316

336:                                              ; preds = %305
  %337 = load i64, i64* %7, align 8
  %338 = icmp slt i64 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = load i64, i64* @OV_EBADPACKET, align 8
  store i64 %340, i64* %7, align 8
  br label %405

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, -1
  br i1 %344, label %345, label %378

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %349, i32 0, i32 2
  %351 = load i64*, i64** %350, align 8
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 4
  %355 = mul nsw i32 %354, 2
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %351, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = sub nsw i64 %348, %358
  %360 = trunc i64 %359 to i32
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 5
  store i32 %360, i32* %362, align 8
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 8
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %345
  %368 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 5
  store i32 0, i32* %369, align 8
  br label %370

370:                                              ; preds = %367, %345
  %371 = load i64, i64* %8, align 8
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 8
  %375 = sext i32 %374 to i64
  %376 = add nsw i64 %375, %371
  %377 = trunc i64 %376 to i32
  store i32 %377, i32* %373, align 8
  br label %384

378:                                              ; preds = %341
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 9
  %381 = load i32, i32* %380, align 8
  %382 = call i64 @ogg_stream_packetout(i32 %381, i32* null)
  store i64 %382, i64* %7, align 8
  br label %383

383:                                              ; preds = %378
  br label %305

384:                                              ; preds = %370
  %385 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %385, i32 0, i32 5
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = load i64, i64* %5, align 8
  %390 = icmp sgt i64 %388, %389
  br i1 %390, label %396, label %391

391:                                              ; preds = %384
  %392 = load i64, i64* %5, align 8
  %393 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %394 = call i64 @ov_pcm_total(%struct.TYPE_22__* %393, i32 -1)
  %395 = icmp sgt i64 %392, %394
  br i1 %395, label %396, label %398

396:                                              ; preds = %391, %384
  %397 = load i64, i64* @OV_EFAULT, align 8
  store i64 %397, i64* %7, align 8
  br label %405

398:                                              ; preds = %391
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 8
  store i64 0, i64* %400, align 8
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 7
  store i64 0, i64* %402, align 8
  %403 = call i32 @ogg_page_release(%struct.TYPE_20__* %9)
  %404 = call i32 @ogg_packet_release(%struct.TYPE_21__* %10)
  store i32 0, i32* %3, align 4
  br label %414

405:                                              ; preds = %396, %339, %321, %184, %170
  %406 = call i32 @ogg_page_release(%struct.TYPE_20__* %9)
  %407 = call i32 @ogg_packet_release(%struct.TYPE_21__* %10)
  %408 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 5
  store i32 -1, i32* %409, align 8
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %411 = call i32 @_decode_clear(%struct.TYPE_22__* %410)
  %412 = load i64, i64* %7, align 8
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %3, align 4
  br label %414

414:                                              ; preds = %405, %398, %328, %268, %44, %35, %28
  %415 = load i32, i32* %3, align 4
  ret i32 %415
}

declare dso_local i64 @ov_pcm_total(%struct.TYPE_22__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @_seek_helper(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @_get_next_page(%struct.TYPE_22__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @ogg_page_granulepos(%struct.TYPE_20__*) #1

declare dso_local i32 @ogg_page_release(%struct.TYPE_20__*) #1

declare dso_local i32 @_decode_clear(%struct.TYPE_22__*) #1

declare dso_local i32 @ogg_page_serialno(%struct.TYPE_20__*) #1

declare dso_local i32 @vorbis_synthesis_restart(i32*) #1

declare dso_local i32 @ogg_stream_reset_serialno(i32, i32) #1

declare dso_local i32 @ogg_stream_pagein(i32, %struct.TYPE_20__*) #1

declare dso_local i64 @ogg_stream_packetpeek(i32, %struct.TYPE_21__*) #1

declare dso_local i64 @_get_prev_page(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ogg_page_continued(%struct.TYPE_20__*) #1

declare dso_local i32 @ov_raw_seek(%struct.TYPE_22__*, i64) #1

declare dso_local i64 @ogg_stream_packetout(i32, i32*) #1

declare dso_local i32 @ogg_packet_release(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
