; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_pcm_seek.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisfile.c_ov_pcm_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32*, i64, i32, i64*, float, float, i32, i64, i32, i8*, i32 }
%struct.TYPE_13__ = type { i32 }

@OV_HOLE = common dso_local global i32 0, align 4
@STREAMSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov_pcm_seek(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ov_pcm_seek_page(%struct.TYPE_14__* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %297

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = call i32 @_make_decode_ready(%struct.TYPE_14__* %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %297

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %50, %201, %227
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 10
  %35 = call i32 @ogg_stream_packetpeek(i32* %34, %struct.TYPE_13__* %9)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %146

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 9
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = call i32 @vorbis_packet_blocksize(i64 %46, %struct.TYPE_13__* %9)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 10
  %53 = call i32 @ogg_stream_packetout(i32* %52, i32* null)
  br label %32

54:                                               ; preds = %38
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %58, %59
  %61 = ashr i32 %60, 2
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %57, %54
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 9
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @vorbis_info_blocksize(i64 %73, i32 1)
  %75 = add nsw i32 %70, %74
  %76 = ashr i32 %75, 2
  %77 = add nsw i32 %69, %76
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %228

81:                                               ; preds = %66
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 10
  %84 = call i32 @ogg_stream_packetout(i32* %83, i32* null)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 12
  %87 = call i32 @vorbis_synthesis_trackonly(i32* %86, %struct.TYPE_13__* %9)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 12
  %92 = call i32 @vorbis_synthesis_blockin(i32* %89, i32* %91)
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %96, label %144

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %98, %108
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %96
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %96
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %140, %119
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %120
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = mul nsw i32 %130, 2
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %126
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %120

143:                                              ; preds = %120
  br label %144

144:                                              ; preds = %143, %81
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %7, align 4
  br label %227

146:                                              ; preds = %32
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @OV_HOLE, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %228

154:                                              ; preds = %149, %146
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %156 = call i64 @_get_next_page(%struct.TYPE_14__* %155, i32* %10, i32 -1)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %228

159:                                              ; preds = %154
  %160 = call i64 @ogg_page_bos(i32* %10)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %164 = call i32 @_decode_clear(%struct.TYPE_14__* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @STREAMSET, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %223

171:                                              ; preds = %165
  %172 = call i8* @ogg_page_serialno(i32* %10)
  %173 = ptrtoint i8* %172 to i64
  store i64 %173, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %174

174:                                              ; preds = %192, %171
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 5
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %13, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  br label %195

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %14, align 4
  br label %174

195:                                              ; preds = %190, %174
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %196, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %32

202:                                              ; preds = %195
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load i64, i64* @STREAMSET, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 3
  store i64 %206, i64* %208, align 8
  %209 = call i8* @ogg_page_serialno(i32* %10)
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 11
  store i8* %209, i8** %211, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 10
  %214 = load i64, i64* %13, align 8
  %215 = call i32 @ogg_stream_reset_serialno(i32* %213, i64 %214)
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %217 = call i32 @_make_decode_ready(%struct.TYPE_14__* %216)
  store i32 %217, i32* %11, align 4
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %202
  %221 = load i32, i32* %11, align 4
  store i32 %221, i32* %3, align 4
  br label %297

222:                                              ; preds = %202
  store i32 0, i32* %7, align 4
  br label %223

223:                                              ; preds = %222, %165
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 10
  %226 = call i32 @ogg_stream_pagein(i32* %225, i32* %10)
  br label %227

227:                                              ; preds = %223, %144
  br label %32

228:                                              ; preds = %158, %153, %80
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 6
  store float 0.000000e+00, float* %230, align 8
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 7
  store float 0.000000e+00, float* %232, align 4
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 9
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @vorbis_synthesis_halfrate_p(i64 %235)
  store i32 %236, i32* %15, align 4
  br label %237

237:                                              ; preds = %295, %228
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %15, align 4
  %243 = ashr i32 %241, %242
  %244 = load i32, i32* %15, align 4
  %245 = shl i32 %243, %244
  %246 = icmp slt i32 %240, %245
  br i1 %246, label %247, label %296

247:                                              ; preds = %237
  %248 = load i32, i32* %5, align 4
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sub nsw i32 %248, %251
  %253 = load i32, i32* %15, align 4
  %254 = ashr i32 %252, %253
  store i32 %254, i32* %16, align 4
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 8
  %257 = call i64 @vorbis_synthesis_pcmout(i32* %256, i32* null)
  store i64 %257, i64* %17, align 8
  %258 = load i64, i64* %17, align 8
  %259 = load i32, i32* %16, align 4
  %260 = sext i32 %259 to i64
  %261 = icmp sgt i64 %258, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %247
  %263 = load i32, i32* %16, align 4
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %17, align 8
  br label %265

265:                                              ; preds = %262, %247
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 8
  %268 = load i64, i64* %17, align 8
  %269 = call i32 @vorbis_synthesis_read(i32* %267, i64 %268)
  %270 = load i64, i64* %17, align 8
  %271 = load i32, i32* %15, align 4
  %272 = zext i32 %271 to i64
  %273 = shl i64 %270, %272
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = add nsw i64 %277, %273
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %275, align 4
  %280 = load i64, i64* %17, align 8
  %281 = load i32, i32* %16, align 4
  %282 = sext i32 %281 to i64
  %283 = icmp slt i64 %280, %282
  br i1 %283, label %284, label %295

284:                                              ; preds = %265
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %286 = call i64 @_fetch_and_process_packet(%struct.TYPE_14__* %285, i32* null, i32 1, i32 1)
  %287 = icmp sle i64 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %290 = call i64 @ov_pcm_total(%struct.TYPE_14__* %289, i32 -1)
  %291 = trunc i64 %290 to i32
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %288, %284
  br label %295

295:                                              ; preds = %294, %265
  br label %237

296:                                              ; preds = %237
  store i32 0, i32* %3, align 4
  br label %297

297:                                              ; preds = %296, %220, %29, %23
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i32 @ov_pcm_seek_page(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @_make_decode_ready(%struct.TYPE_14__*) #1

declare dso_local i32 @ogg_stream_packetpeek(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @vorbis_packet_blocksize(i64, %struct.TYPE_13__*) #1

declare dso_local i32 @ogg_stream_packetout(i32*, i32*) #1

declare dso_local i32 @vorbis_info_blocksize(i64, i32) #1

declare dso_local i32 @vorbis_synthesis_trackonly(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @vorbis_synthesis_blockin(i32*, i32*) #1

declare dso_local i64 @_get_next_page(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i64 @ogg_page_bos(i32*) #1

declare dso_local i32 @_decode_clear(%struct.TYPE_14__*) #1

declare dso_local i8* @ogg_page_serialno(i32*) #1

declare dso_local i32 @ogg_stream_reset_serialno(i32*, i64) #1

declare dso_local i32 @ogg_stream_pagein(i32*, i32*) #1

declare dso_local i32 @vorbis_synthesis_halfrate_p(i64) #1

declare dso_local i64 @vorbis_synthesis_pcmout(i32*, i32*) #1

declare dso_local i32 @vorbis_synthesis_read(i32*, i64) #1

declare dso_local i64 @_fetch_and_process_packet(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i64 @ov_pcm_total(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
