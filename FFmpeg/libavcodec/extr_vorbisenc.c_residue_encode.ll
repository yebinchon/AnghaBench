; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_residue_encode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vorbisenc.c_residue_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, i32, float**, i32** }

@MAX_CHANNELS = common dso_local global i32 0, align 4
@NUM_RESIDUE_PARTITIONS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_CODEBOOK_DIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32*, float*, i32, i32)* @residue_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @residue_encode(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32* %2, float* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_10__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_10__*, align 8
  %34 = alloca float*, align 8
  %35 = alloca i32, align 4
  %36 = alloca float*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i64, align 8
  %45 = alloca float*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32* %2, i32** %10, align 8
  store float* %3, float** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %19, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %51, %54
  %56 = load i32, i32* %19, align 4
  %57 = sdiv i32 %55, %56
  store i32 %57, i32* %20, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %6
  br label %65

63:                                               ; preds = %6
  %64 = load i32, i32* %13, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ 1, %62 ], [ %64, %63 ]
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* @MAX_CHANNELS, align 4
  %68 = zext i32 %67 to i64
  %69 = load i32, i32* @NUM_RESIDUE_PARTITIONS, align 4
  %70 = zext i32 %69 to i64
  %71 = call i8* @llvm.stacksave()
  store i8* %71, i8** %22, align 8
  %72 = mul nuw i64 %68, %70
  %73 = alloca i32, i64 %72, align 16
  store i64 %68, i64* %23, align 8
  store i64 %70, i64* %24, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %25, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i32
  %88 = call i32 @av_assert0(i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i32
  %92 = call i32 @av_assert0(i32 %91)
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %182, %65
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %185

97:                                               ; preds = %93
  store float 0.000000e+00, float* %26, align 4
  store float 0.000000e+00, float* %27, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %19, align 4
  %103 = mul nsw i32 %101, %102
  %104 = add nsw i32 %100, %103
  store i32 %104, i32* %28, align 4
  %105 = load i32, i32* %28, align 4
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %135, %97
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %28, align 4
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %108, %109
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %106
  %113 = load float, float* %26, align 4
  %114 = load float*, float** %11, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %13, align 4
  %117 = sdiv i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %114, i64 %118
  %120 = load float, float* %119, align 4
  %121 = call i32 @fabs(float %120)
  %122 = call float @FFMAX(float %113, i32 %121)
  store float %122, float* %26, align 4
  %123 = load float, float* %27, align 4
  %124 = load float*, float** %11, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sdiv i32 %126, %127
  %129 = add nsw i32 %125, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %124, i64 %130
  %132 = load float, float* %131, align 4
  %133 = call i32 @fabs(float %132)
  %134 = call float @FFMAX(float %123, i32 %133)
  store float %134, float* %27, align 4
  br label %135

135:                                              ; preds = %112
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, 2
  store i32 %137, i32* %18, align 4
  br label %106

138:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %139

139:                                              ; preds = %172, %138
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %139
  %147 = load float, float* %26, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 6
  %150 = load float**, float*** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float*, float** %150, i64 %152
  %154 = load float*, float** %153, align 8
  %155 = getelementptr inbounds float, float* %154, i64 0
  %156 = load float, float* %155, align 4
  %157 = fcmp olt float %147, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %146
  %159 = load float, float* %27, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 6
  %162 = load float**, float*** %161, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float*, float** %162, i64 %164
  %166 = load float*, float** %165, align 8
  %167 = getelementptr inbounds float, float* %166, i64 1
  %168 = load float, float* %167, align 4
  %169 = fcmp olt float %159, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %175

171:                                              ; preds = %158, %146
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %15, align 4
  br label %139

175:                                              ; preds = %170, %139
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i64 0, %70
  %178 = getelementptr inbounds i32, i32* %73, i64 %177
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %176, i32* %181, align 4
  br label %182

182:                                              ; preds = %175
  %183 = load i32, i32* %17, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %17, align 4
  br label %93

185:                                              ; preds = %93
  store i32 0, i32* %14, align 4
  br label %186

186:                                              ; preds = %504, %185
  %187 = load i32, i32* %14, align 4
  %188 = icmp slt i32 %187, 8
  br i1 %188, label %189, label %507

189:                                              ; preds = %186
  store i32 0, i32* %17, align 4
  br label %190

190:                                              ; preds = %502, %189
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %20, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %503

194:                                              ; preds = %190
  %195 = load i32, i32* %14, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %249

197:                                              ; preds = %194
  store i32 0, i32* %16, align 4
  br label %198

198:                                              ; preds = %245, %197
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %21, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %248

202:                                              ; preds = %198
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i64 %208
  store %struct.TYPE_10__* %209, %struct.TYPE_10__** %29, align 8
  store i32 0, i32* %30, align 4
  store i32 0, i32* %15, align 4
  br label %210

210:                                              ; preds = %232, %202
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %25, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %210
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %30, align 4
  %219 = mul nsw i32 %218, %217
  store i32 %219, i32* %30, align 4
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = mul nsw i64 %221, %70
  %223 = getelementptr inbounds i32, i32* %73, i64 %222
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %30, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %30, align 4
  br label %232

232:                                              ; preds = %214
  %233 = load i32, i32* %15, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %15, align 4
  br label %210

235:                                              ; preds = %210
  %236 = load i32*, i32** %10, align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %238 = load i32, i32* %30, align 4
  %239 = call i64 @put_codeword(i32* %236, %struct.TYPE_10__* %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load i32, i32* @EINVAL, align 4
  %243 = call i32 @AVERROR(i32 %242)
  store i32 %243, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %508

244:                                              ; preds = %235
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %16, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %16, align 4
  br label %198

248:                                              ; preds = %198
  br label %249

249:                                              ; preds = %248, %194
  store i32 0, i32* %15, align 4
  br label %250

250:                                              ; preds = %497, %249
  %251 = load i32, i32* %15, align 4
  %252 = load i32, i32* %25, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %20, align 4
  %257 = icmp slt i32 %255, %256
  br label %258

258:                                              ; preds = %254, %250
  %259 = phi i1 [ false, %250 ], [ %257, %254 ]
  br i1 %259, label %260, label %502

260:                                              ; preds = %258
  store i32 0, i32* %16, align 4
  br label %261

261:                                              ; preds = %493, %260
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* %21, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %496

265:                                              ; preds = %261
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 7
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = mul nsw i64 %270, %70
  %272 = getelementptr inbounds i32, i32* %73, i64 %271
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32*, i32** %268, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %32, align 4
  %284 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %285, align 8
  %287 = load i32, i32* %32, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i64 %288
  store %struct.TYPE_10__* %289, %struct.TYPE_10__** %33, align 8
  %290 = load float*, float** %11, align 8
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* %16, align 4
  %293 = mul nsw i32 %291, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %290, i64 %294
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %295, i64 %299
  %301 = load i32, i32* %17, align 4
  %302 = load i32, i32* %19, align 4
  %303 = mul nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %300, i64 %304
  store float* %305, float** %34, align 8
  %306 = load i32, i32* %32, align 4
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %308, label %309

308:                                              ; preds = %265
  br label %493

309:                                              ; preds = %265
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 3
  %312 = load i32, i32* %311, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %309
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %317, 2
  br label %319

319:                                              ; preds = %314, %309
  %320 = phi i1 [ true, %309 ], [ %318, %314 ]
  %321 = zext i1 %320 to i32
  %322 = call i32 @assert(i32 %321)
  %323 = load i32, i32* %19, align 4
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = srem i32 %323, %326
  %328 = icmp ne i32 %327, 0
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = call i32 @assert(i32 %330)
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %386

336:                                              ; preds = %319
  store i32 0, i32* %18, align 4
  br label %337

337:                                              ; preds = %379, %336
  %338 = load i32, i32* %18, align 4
  %339 = load i32, i32* %19, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %385

341:                                              ; preds = %337
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %343 = load i32*, i32** %10, align 8
  %344 = load float*, float** %34, align 8
  %345 = load i32, i32* %18, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds float, float* %344, i64 %346
  %348 = call float* @put_vector(%struct.TYPE_10__* %342, i32* %343, float* %347)
  store float* %348, float** %36, align 8
  %349 = load float*, float** %36, align 8
  %350 = icmp ne float* %349, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %341
  %352 = load i32, i32* @EINVAL, align 4
  %353 = call i32 @AVERROR(i32 %352)
  store i32 %353, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %508

354:                                              ; preds = %341
  store i32 0, i32* %35, align 4
  br label %355

355:                                              ; preds = %375, %354
  %356 = load i32, i32* %35, align 4
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = icmp slt i32 %356, %359
  br i1 %360, label %361, label %378

361:                                              ; preds = %355
  %362 = load float*, float** %36, align 8
  %363 = load i32, i32* %35, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds float, float* %362, i64 %364
  %366 = load float, float* %365, align 4
  %367 = load float*, float** %34, align 8
  %368 = load i32, i32* %18, align 4
  %369 = load i32, i32* %35, align 4
  %370 = add nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float, float* %367, i64 %371
  %373 = load float, float* %372, align 4
  %374 = fsub float %373, %366
  store float %374, float* %372, align 4
  br label %375

375:                                              ; preds = %361
  %376 = load i32, i32* %35, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %35, align 4
  br label %355

378:                                              ; preds = %355
  br label %379

379:                                              ; preds = %378
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %381 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %18, align 4
  %384 = add nsw i32 %383, %382
  store i32 %384, i32* %18, align 4
  br label %337

385:                                              ; preds = %337
  br label %492

386:                                              ; preds = %319
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* %17, align 4
  %391 = load i32, i32* %19, align 4
  %392 = mul nsw i32 %390, %391
  %393 = add nsw i32 %389, %392
  store i32 %393, i32* %37, align 4
  %394 = load i32, i32* %37, align 4
  %395 = load i32, i32* %13, align 4
  %396 = srem i32 %394, %395
  %397 = load i32, i32* %12, align 4
  %398 = mul nsw i32 %396, %397
  store i32 %398, i32* %38, align 4
  %399 = load i32, i32* %37, align 4
  %400 = load i32, i32* %13, align 4
  %401 = sdiv i32 %399, %400
  store i32 %401, i32* %39, align 4
  %402 = load i32, i32* %13, align 4
  %403 = load i32, i32* %12, align 4
  %404 = mul nsw i32 %402, %403
  store i32 %404, i32* %37, align 4
  store i32 0, i32* %18, align 4
  br label %405

405:                                              ; preds = %485, %386
  %406 = load i32, i32* %18, align 4
  %407 = load i32, i32* %19, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %491

409:                                              ; preds = %405
  %410 = load i32, i32* %38, align 4
  store i32 %410, i32* %41, align 4
  %411 = load i32, i32* %39, align 4
  store i32 %411, i32* %42, align 4
  %412 = load i32, i32* @MAX_CODEBOOK_DIM, align 4
  %413 = zext i32 %412 to i64
  %414 = call i8* @llvm.stacksave()
  store i8* %414, i8** %43, align 8
  %415 = alloca float, i64 %413, align 16
  store i64 %413, i64* %44, align 8
  store float* %415, float** %45, align 8
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  store i32 %418, i32* %40, align 4
  br label %419

419:                                              ; preds = %441, %409
  %420 = load i32, i32* %40, align 4
  %421 = add nsw i32 %420, -1
  store i32 %421, i32* %40, align 4
  %422 = icmp ne i32 %420, 0
  br i1 %422, label %423, label %442

423:                                              ; preds = %419
  %424 = load float*, float** %11, align 8
  %425 = load i32, i32* %41, align 4
  %426 = load i32, i32* %42, align 4
  %427 = add nsw i32 %425, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds float, float* %424, i64 %428
  %430 = load float, float* %429, align 4
  %431 = load float*, float** %45, align 8
  %432 = getelementptr inbounds float, float* %431, i32 1
  store float* %432, float** %45, align 8
  store float %430, float* %431, align 4
  %433 = load i32, i32* %12, align 4
  %434 = load i32, i32* %41, align 4
  %435 = add nsw i32 %434, %433
  store i32 %435, i32* %41, align 4
  %436 = load i32, i32* %37, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %441

438:                                              ; preds = %423
  store i32 0, i32* %41, align 4
  %439 = load i32, i32* %42, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %42, align 4
  br label %441

441:                                              ; preds = %438, %423
  br label %419

442:                                              ; preds = %419
  %443 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %444 = load i32*, i32** %10, align 8
  %445 = call float* @put_vector(%struct.TYPE_10__* %443, i32* %444, float* %415)
  store float* %445, float** %45, align 8
  %446 = load float*, float** %45, align 8
  %447 = icmp ne float* %446, null
  br i1 %447, label %451, label %448

448:                                              ; preds = %442
  %449 = load i32, i32* @EINVAL, align 4
  %450 = call i32 @AVERROR(i32 %449)
  store i32 %450, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %481

451:                                              ; preds = %442
  %452 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  store i32 %454, i32* %40, align 4
  br label %455

455:                                              ; preds = %479, %451
  %456 = load i32, i32* %40, align 4
  %457 = add nsw i32 %456, -1
  store i32 %457, i32* %40, align 4
  %458 = icmp ne i32 %456, 0
  br i1 %458, label %459, label %480

459:                                              ; preds = %455
  %460 = load float*, float** %45, align 8
  %461 = getelementptr inbounds float, float* %460, i32 1
  store float* %461, float** %45, align 8
  %462 = load float, float* %460, align 4
  %463 = load float*, float** %11, align 8
  %464 = load i32, i32* %38, align 4
  %465 = load i32, i32* %39, align 4
  %466 = add nsw i32 %464, %465
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds float, float* %463, i64 %467
  %469 = load float, float* %468, align 4
  %470 = fsub float %469, %462
  store float %470, float* %468, align 4
  %471 = load i32, i32* %12, align 4
  %472 = load i32, i32* %38, align 4
  %473 = add nsw i32 %472, %471
  store i32 %473, i32* %38, align 4
  %474 = load i32, i32* %37, align 4
  %475 = icmp eq i32 %473, %474
  br i1 %475, label %476, label %479

476:                                              ; preds = %459
  store i32 0, i32* %38, align 4
  %477 = load i32, i32* %39, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %39, align 4
  br label %479

479:                                              ; preds = %476, %459
  br label %455

480:                                              ; preds = %455
  store i32 0, i32* %31, align 4
  br label %481

481:                                              ; preds = %480, %448
  %482 = load i8*, i8** %43, align 8
  call void @llvm.stackrestore(i8* %482)
  %483 = load i32, i32* %31, align 4
  switch i32 %483, label %508 [
    i32 0, label %484
  ]

484:                                              ; preds = %481
  br label %485

485:                                              ; preds = %484
  %486 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %18, align 4
  %490 = add nsw i32 %489, %488
  store i32 %490, i32* %18, align 4
  br label %405

491:                                              ; preds = %405
  br label %492

492:                                              ; preds = %491, %385
  br label %493

493:                                              ; preds = %492, %308
  %494 = load i32, i32* %16, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %16, align 4
  br label %261

496:                                              ; preds = %261
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %15, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %15, align 4
  %500 = load i32, i32* %17, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %17, align 4
  br label %250

502:                                              ; preds = %258
  br label %190

503:                                              ; preds = %190
  br label %504

504:                                              ; preds = %503
  %505 = load i32, i32* %14, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %14, align 4
  br label %186

507:                                              ; preds = %186
  store i32 0, i32* %7, align 4
  store i32 1, i32* %31, align 4
  br label %508

508:                                              ; preds = %507, %481, %351, %241
  %509 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %509)
  %510 = load i32, i32* %7, align 4
  ret i32 %510
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_assert0(i32) #2

declare dso_local float @FFMAX(float, i32) #2

declare dso_local i32 @fabs(float) #2

declare dso_local i64 @put_codeword(i32*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local float* @put_vector(%struct.TYPE_10__*, i32*, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
