; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adpcm.c_get_nb_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_adpcm.c_get_nb_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_adpcm_ima_block_sizes = common dso_local global i32* null, align 8
@ff_adpcm_ima_block_samples = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32*)* @get_nb_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nb_samples(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %12, align 8
  store i32 0, i32* %13, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %32 = load i32*, i32** %10, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %11, align 8
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %488

37:                                               ; preds = %5
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %62 [
    i32 153, label %43
    i32 143, label %50
    i32 160, label %57
    i32 151, label %57
    i32 146, label %57
    i32 144, label %57
    i32 139, label %57
    i32 128, label %57
    i32 161, label %57
  ]

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %14, align 4
  %46 = mul nsw i32 76, %45
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %488

49:                                               ; preds = %43
  store i32 128, i32* %13, align 4
  br label %62

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 34, %52
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %488

56:                                               ; preds = %50
  store i32 64, i32* %13, align 4
  br label %62

57:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 2
  %60 = load i32, i32* %14, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %37, %57, %56, %49
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %488

67:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %80 [
    i32 164, label %73
    i32 162, label %73
    i32 150, label %73
    i32 145, label %73
    i32 152, label %76
    i32 141, label %77
  ]

73:                                               ; preds = %67, %67, %67, %67
  %74 = load i32, i32* %14, align 4
  %75 = mul nsw i32 4, %74
  store i32 %75, i32* %16, align 4
  br label %80

76:                                               ; preds = %67
  store i32 8, i32* %16, align 4
  br label %80

77:                                               ; preds = %67
  %78 = load i32, i32* %14, align 4
  %79 = mul nsw i32 4, %78
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %67, %77, %76, %73
  %81 = load i32, i32* %16, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %16, align 4
  %86 = sub nsw i32 %84, %85
  %87 = mul nsw i32 %86, 2
  %88 = load i32, i32* %14, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %6, align 4
  br label %488

90:                                               ; preds = %80
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %472 [
    i32 158, label %96
    i32 147, label %110
    i32 157, label %122
    i32 156, label %129
    i32 155, label %129
    i32 154, label %129
    i32 149, label %174
    i32 148, label %193
    i32 142, label %220
    i32 140, label %239
    i32 138, label %285
    i32 137, label %304
    i32 135, label %324
    i32 134, label %324
    i32 133, label %324
    i32 132, label %361
    i32 131, label %402
    i32 130, label %402
    i32 163, label %454
    i32 129, label %460
    i32 159, label %466
    i32 136, label %466
  ]

96:                                               ; preds = %90
  store i32 1, i32* %15, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @bytestream2_get_le32(i32* %97)
  %99 = load i32*, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = srem i32 %101, 28
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %106, 12
  %108 = sdiv i32 %107, 30
  %109 = mul nsw i32 %108, 28
  store i32 %109, i32* %13, align 4
  br label %472

110:                                              ; preds = %90
  store i32 1, i32* %15, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @bytestream2_get_le32(i32* %111)
  %113 = load i32*, i32** %10, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %14, align 4
  %116 = mul nsw i32 8, %115
  %117 = add nsw i32 4, %116
  %118 = sub nsw i32 %114, %117
  %119 = mul nsw i32 %118, 2
  %120 = load i32, i32* %14, align 4
  %121 = sdiv i32 %119, %120
  store i32 %121, i32* %13, align 4
  br label %472

122:                                              ; preds = %90
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %14, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i32, i32* %14, align 4
  %127 = sdiv i32 %125, %126
  %128 = mul nsw i32 %127, 2
  store i32 %128, i32* %13, align 4
  br label %472

129:                                              ; preds = %90, %90, %90
  store i32 1, i32* %15, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %156 [
    i32 156, label %135
    i32 155, label %142
    i32 154, label %149
  ]

135:                                              ; preds = %129
  %136 = load i32, i32* %14, align 4
  %137 = mul nsw i32 9, %136
  %138 = add nsw i32 4, %137
  store i32 %138, i32* %16, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @bytestream2_get_le32(i32* %139)
  %141 = load i32*, i32** %10, align 8
  store i32 %140, i32* %141, align 4
  br label %156

142:                                              ; preds = %129
  %143 = load i32, i32* %14, align 4
  %144 = mul nsw i32 5, %143
  %145 = add nsw i32 4, %144
  store i32 %145, i32* %16, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @bytestream2_get_le32(i32* %146)
  %148 = load i32*, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  br label %156

149:                                              ; preds = %129
  %150 = load i32, i32* %14, align 4
  %151 = mul nsw i32 5, %150
  %152 = add nsw i32 4, %151
  store i32 %152, i32* %16, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @bytestream2_get_be32(i32* %153)
  %155 = load i32*, i32** %10, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %129, %149, %142, %135
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %157, align 4
  %159 = srem i32 %158, 28
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, %159
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %16, align 4
  %165 = sub nsw i32 %163, %164
  %166 = mul nsw i32 %165, 2
  %167 = load i32, i32* %14, align 4
  %168 = sdiv i32 %166, %167
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = srem i32 %169, 28
  %171 = load i32, i32* %13, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %13, align 4
  %173 = load i32*, i32** %11, align 8
  store i32 1, i32* %173, align 4
  br label %472

174:                                              ; preds = %90
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @FFMIN(i32 %180, i32 %183)
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %179, %174
  %186 = load i32, i32* %9, align 4
  %187 = sub nsw i32 %186, 16
  %188 = mul nsw i32 %187, 2
  %189 = sdiv i32 %188, 3
  %190 = mul nsw i32 %189, 4
  %191 = load i32, i32* %14, align 4
  %192 = sdiv i32 %190, %191
  store i32 %192, i32* %13, align 4
  br label %472

193:                                              ; preds = %90
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %193
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @FFMIN(i32 %199, i32 %202)
  store i32 %203, i32* %9, align 4
  br label %204

204:                                              ; preds = %198, %193
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %14, align 4
  %207 = mul nsw i32 4, %206
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %210, i32* %6, align 4
  br label %488

211:                                              ; preds = %204
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %14, align 4
  %214 = mul nsw i32 4, %213
  %215 = sub nsw i32 %212, %214
  %216 = mul nsw i32 %215, 2
  %217 = load i32, i32* %14, align 4
  %218 = sdiv i32 %216, %217
  %219 = add nsw i32 1, %218
  store i32 %219, i32* %13, align 4
  br label %472

220:                                              ; preds = %90
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @FFMIN(i32 %226, i32 %229)
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %225, %220
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %14, align 4
  %234 = mul nsw i32 4, %233
  %235 = sub nsw i32 %232, %234
  %236 = mul nsw i32 %235, 2
  %237 = load i32, i32* %14, align 4
  %238 = sdiv i32 %236, %237
  store i32 %238, i32* %13, align 4
  br label %472

239:                                              ; preds = %90
  %240 = load i32*, i32** @ff_adpcm_ima_block_sizes, align 8
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = sub nsw i32 %243, 2
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %240, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %17, align 4
  %248 = load i32*, i32** @ff_adpcm_ima_block_samples, align 8
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = sub nsw i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %248, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %18, align 4
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %239
  %261 = load i32, i32* %9, align 4
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @FFMIN(i32 %261, i32 %264)
  store i32 %265, i32* %9, align 4
  br label %266

266:                                              ; preds = %260, %239
  %267 = load i32, i32* %9, align 4
  %268 = load i32, i32* %14, align 4
  %269 = mul nsw i32 4, %268
  %270 = icmp slt i32 %267, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  %272 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %272, i32* %6, align 4
  br label %488

273:                                              ; preds = %266
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %14, align 4
  %276 = mul nsw i32 4, %275
  %277 = sub nsw i32 %274, %276
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* %14, align 4
  %280 = mul nsw i32 %278, %279
  %281 = sdiv i32 %277, %280
  %282 = load i32, i32* %18, align 4
  %283 = mul nsw i32 %281, %282
  %284 = add nsw i32 1, %283
  store i32 %284, i32* %13, align 4
  br label %472

285:                                              ; preds = %90
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %285
  %291 = load i32, i32* %9, align 4
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @FFMIN(i32 %291, i32 %294)
  store i32 %295, i32* %9, align 4
  br label %296

296:                                              ; preds = %290, %285
  %297 = load i32, i32* %9, align 4
  %298 = load i32, i32* %14, align 4
  %299 = mul nsw i32 6, %298
  %300 = sub nsw i32 %297, %299
  %301 = mul nsw i32 %300, 2
  %302 = load i32, i32* %14, align 4
  %303 = sdiv i32 %301, %302
  store i32 %303, i32* %13, align 4
  br label %472

304:                                              ; preds = %90
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %304
  %310 = load i32, i32* %9, align 4
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @FFMIN(i32 %310, i32 %313)
  store i32 %314, i32* %9, align 4
  br label %315

315:                                              ; preds = %309, %304
  %316 = load i32, i32* %9, align 4
  %317 = load i32, i32* %14, align 4
  %318 = sdiv i32 %317, 2
  %319 = mul nsw i32 16, %318
  %320 = sub nsw i32 %316, %319
  %321 = mul nsw i32 %320, 2
  %322 = load i32, i32* %14, align 4
  %323 = sdiv i32 %321, %322
  store i32 %323, i32* %13, align 4
  br label %472

324:                                              ; preds = %90, %90, %90
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  switch i32 %329, label %333 [
    i32 135, label %330
    i32 134, label %331
    i32 133, label %332
  ]

330:                                              ; preds = %324
  store i32 4, i32* %19, align 4
  br label %333

331:                                              ; preds = %324
  store i32 3, i32* %19, align 4
  br label %333

332:                                              ; preds = %324
  store i32 2, i32* %19, align 4
  br label %333

333:                                              ; preds = %324, %332, %331, %330
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i64 0
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %353, label %341

341:                                              ; preds = %333
  %342 = load i32, i32* %9, align 4
  %343 = load i32, i32* %14, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %347

345:                                              ; preds = %341
  %346 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %346, i32* %6, align 4
  br label %488

347:                                              ; preds = %341
  %348 = load i32, i32* %13, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %13, align 4
  %350 = load i32, i32* %14, align 4
  %351 = load i32, i32* %9, align 4
  %352 = sub nsw i32 %351, %350
  store i32 %352, i32* %9, align 4
  br label %353

353:                                              ; preds = %347, %333
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %19, align 4
  %356 = mul nsw i32 %354, %355
  %357 = load i32, i32* %14, align 4
  %358 = sdiv i32 %356, %357
  %359 = load i32, i32* %13, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* %13, align 4
  br label %472

361:                                              ; preds = %90
  %362 = load i32, i32* %9, align 4
  %363 = mul nsw i32 %362, 8
  %364 = sub nsw i32 %363, 2
  store i32 %364, i32* %20, align 4
  %365 = load i32*, i32** %8, align 8
  %366 = call i32 @bytestream2_get_byte(i32* %365)
  %367 = ashr i32 %366, 6
  %368 = add nsw i32 %367, 2
  store i32 %368, i32* %21, align 4
  %369 = load i32, i32* %14, align 4
  %370 = mul nsw i32 22, %369
  store i32 %370, i32* %22, align 4
  %371 = load i32, i32* %22, align 4
  %372 = load i32, i32* %21, align 4
  %373 = load i32, i32* %14, align 4
  %374 = mul nsw i32 %372, %373
  %375 = mul nsw i32 %374, 4095
  %376 = add nsw i32 %371, %375
  store i32 %376, i32* %23, align 4
  %377 = load i32, i32* %20, align 4
  %378 = load i32, i32* %23, align 4
  %379 = sdiv i32 %377, %378
  store i32 %379, i32* %24, align 4
  %380 = load i32, i32* %20, align 4
  %381 = load i32, i32* %24, align 4
  %382 = load i32, i32* %23, align 4
  %383 = mul nsw i32 %381, %382
  %384 = sub nsw i32 %380, %383
  store i32 %384, i32* %25, align 4
  %385 = load i32, i32* %24, align 4
  %386 = mul nsw i32 %385, 4096
  store i32 %386, i32* %13, align 4
  %387 = load i32, i32* %25, align 4
  %388 = load i32, i32* %22, align 4
  %389 = icmp sge i32 %387, %388
  br i1 %389, label %390, label %401

390:                                              ; preds = %361
  %391 = load i32, i32* %25, align 4
  %392 = load i32, i32* %22, align 4
  %393 = sub nsw i32 %391, %392
  %394 = load i32, i32* %21, align 4
  %395 = load i32, i32* %14, align 4
  %396 = mul nsw i32 %394, %395
  %397 = sdiv i32 %393, %396
  %398 = add nsw i32 1, %397
  %399 = load i32, i32* %13, align 4
  %400 = add nsw i32 %399, %398
  store i32 %400, i32* %13, align 4
  br label %401

401:                                              ; preds = %390, %361
  br label %472

402:                                              ; preds = %90, %90
  %403 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %413

407:                                              ; preds = %402
  %408 = load i32, i32* %9, align 4
  %409 = mul nsw i32 %408, 14
  %410 = load i32, i32* %14, align 4
  %411 = mul nsw i32 8, %410
  %412 = sdiv i32 %409, %411
  store i32 %412, i32* %13, align 4
  br label %472

413:                                              ; preds = %402
  store i32 1, i32* %15, align 4
  %414 = load i32*, i32** %8, align 8
  %415 = call i32 @bytestream2_skip(i32* %414, i32 4)
  %416 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %416, i32 0, i32 1
  %418 = load %struct.TYPE_7__*, %struct.TYPE_7__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = icmp eq i32 %420, 130
  br i1 %421, label %422, label %425

422:                                              ; preds = %413
  %423 = load i32*, i32** %8, align 8
  %424 = call i32 @bytestream2_get_le32(i32* %423)
  br label %428

425:                                              ; preds = %413
  %426 = load i32*, i32** %8, align 8
  %427 = call i32 @bytestream2_get_be32(i32* %426)
  br label %428

428:                                              ; preds = %425, %422
  %429 = phi i32 [ %424, %422 ], [ %427, %425 ]
  %430 = load i32*, i32** %10, align 8
  store i32 %429, i32* %430, align 4
  %431 = load i32, i32* %14, align 4
  %432 = mul nsw i32 36, %431
  %433 = add nsw i32 8, %432
  %434 = load i32, i32* %9, align 4
  %435 = sub nsw i32 %434, %433
  store i32 %435, i32* %9, align 4
  %436 = load i32, i32* %14, align 4
  %437 = load i32, i32* %9, align 4
  %438 = sdiv i32 %437, %436
  store i32 %438, i32* %9, align 4
  %439 = load i32, i32* %9, align 4
  %440 = sdiv i32 %439, 8
  %441 = mul nsw i32 %440, 14
  store i32 %441, i32* %13, align 4
  %442 = load i32, i32* %9, align 4
  %443 = srem i32 %442, 8
  %444 = icmp sgt i32 %443, 1
  br i1 %444, label %445, label %452

445:                                              ; preds = %428
  %446 = load i32, i32* %9, align 4
  %447 = srem i32 %446, 8
  %448 = sub nsw i32 %447, 1
  %449 = mul nsw i32 %448, 2
  %450 = load i32, i32* %13, align 4
  %451 = add nsw i32 %450, %449
  store i32 %451, i32* %13, align 4
  br label %452

452:                                              ; preds = %445, %428
  %453 = load i32*, i32** %11, align 8
  store i32 1, i32* %453, align 4
  br label %472

454:                                              ; preds = %90
  %455 = load i32, i32* %9, align 4
  %456 = load i32, i32* %14, align 4
  %457 = mul nsw i32 9, %456
  %458 = sdiv i32 %455, %457
  %459 = mul nsw i32 %458, 16
  store i32 %459, i32* %13, align 4
  br label %472

460:                                              ; preds = %90
  %461 = load i32, i32* %9, align 4
  %462 = sdiv i32 %461, 128
  %463 = mul nsw i32 %462, 224
  %464 = load i32, i32* %14, align 4
  %465 = sdiv i32 %463, %464
  store i32 %465, i32* %13, align 4
  br label %472

466:                                              ; preds = %90, %90
  %467 = load i32, i32* %9, align 4
  %468 = load i32, i32* %14, align 4
  %469 = mul nsw i32 16, %468
  %470 = sdiv i32 %467, %469
  %471 = mul nsw i32 %470, 28
  store i32 %471, i32* %13, align 4
  br label %472

472:                                              ; preds = %90, %466, %460, %454, %452, %407, %401, %353, %315, %296, %273, %231, %211, %185, %156, %122, %110, %96
  %473 = load i32, i32* %15, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %486

475:                                              ; preds = %472
  %476 = load i32*, i32** %10, align 8
  %477 = load i32, i32* %476, align 4
  %478 = icmp sle i32 %477, 0
  br i1 %478, label %484, label %479

479:                                              ; preds = %475
  %480 = load i32*, i32** %10, align 8
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* %13, align 4
  %483 = icmp sgt i32 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %479, %475
  %485 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %485, i32* %6, align 4
  br label %488

486:                                              ; preds = %479, %472
  %487 = load i32, i32* %13, align 4
  store i32 %487, i32* %6, align 4
  br label %488

488:                                              ; preds = %486, %484, %345, %271, %209, %83, %65, %55, %48, %36
  %489 = load i32, i32* %6, align 4
  ret i32 %489
}

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_get_be32(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
