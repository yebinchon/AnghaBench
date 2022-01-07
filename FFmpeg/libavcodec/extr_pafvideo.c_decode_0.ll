; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pafvideo.c_decode_0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pafvideo.c_decode_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, i32, i32, i32*, i64, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@block_sequences = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @decode_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_0(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 7
  %29 = call i32 @bytestream2_get_byte(i32* %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %164

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 16
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 7
  %39 = call i32 @bytestream2_tell(i32* %38)
  %40 = and i32 %39, 3
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 7
  %46 = load i32, i32* %20, align 4
  %47 = sub nsw i32 4, %46
  %48 = call i32 @bytestream2_skip(i32* %45, i32 %47)
  br label %49

49:                                               ; preds = %43, %36
  br label %50

50:                                               ; preds = %49, %32
  br label %51

51:                                               ; preds = %159, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 7
  %54 = call i32 @bytestream2_get_be16(i32* %53)
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %22, align 4
  %56 = ashr i32 %55, 14
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %22, align 4
  %58 = and i32 %57, 127
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %23, align 4
  %60 = load i32, i32* %22, align 4
  %61 = ashr i32 %60, 7
  %62 = and i32 %61, 127
  %63 = mul nsw i32 %62, 2
  store i32 %63, i32* %24, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %21, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %23, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %24, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %73, i64 %79
  store i32* %80, i32** %10, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %21, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  store i32* %92, i32** %11, align 8
  %93 = load i32, i32* %23, align 4
  %94 = and i32 %93, 127
  %95 = mul nsw i32 %94, 2
  store i32 %95, i32* %9, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 7
  %98 = call i32 @bytestream2_get_le16(i32* %97)
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* %18, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 7
  %103 = call i32 @bytestream2_get_bytes_left(i32* %102)
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %104, %105
  %107 = mul nsw i32 %106, 16
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %51
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %4, align 4
  br label %424

111:                                              ; preds = %51
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %21, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %154, %111
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = load i32*, i32** %10, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 3, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load i32*, i32** %11, align 8
  %130 = icmp ugt i32* %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %118
  %132 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %132, i32* %4, align 4
  br label %424

133:                                              ; preds = %118
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @read4x4block(%struct.TYPE_5__* %134, i32* %135, i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, 63
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %133
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %146, 3
  %148 = load i32*, i32** %10, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %10, align 8
  br label %151

151:                                              ; preds = %143, %133
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  store i32* %153, i32** %10, align 8
  br label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %18, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %118, label %158

158:                                              ; preds = %154
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %51, label %163

163:                                              ; preds = %159
  br label %164

164:                                              ; preds = %163, %3
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32*, i32** %167, i64 %170
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %10, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32**, i32*** %174, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32*, i32** %175, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %180, i64 %184
  store i32* %185, i32** %11, align 8
  br label %186

186:                                              ; preds = %243, %164
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %188 = call i32 @set_src_position(%struct.TYPE_5__* %187, i32** %14, i32** %15)
  %189 = load i32*, i32** %14, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 3, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %189, i64 %194
  %196 = getelementptr inbounds i32, i32* %195, i64 4
  %197 = load i32*, i32** %15, align 8
  %198 = icmp ugt i32* %196, %197
  br i1 %198, label %215, label %199

199:                                              ; preds = %186
  %200 = load i32*, i32** %10, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 3, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %200, i64 %205
  %207 = getelementptr inbounds i32, i32* %206, i64 4
  %208 = load i32*, i32** %11, align 8
  %209 = icmp ugt i32* %207, %208
  br i1 %209, label %215, label %210

210:                                              ; preds = %199
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 7
  %213 = call i32 @bytestream2_get_bytes_left(i32* %212)
  %214 = icmp slt i32 %213, 4
  br i1 %214, label %215, label %217

215:                                              ; preds = %210, %199, %186
  %216 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %216, i32* %4, align 4
  br label %424

217:                                              ; preds = %210
  %218 = load i32*, i32** %10, align 8
  %219 = load i32*, i32** %14, align 8
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @copy_block4(i32* %218, i32* %219, i32 %222, i32 %225, i32 4)
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %17, align 4
  %229 = load i32, i32* %17, align 4
  %230 = and i32 %229, 63
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %217
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = mul nsw i32 %235, 3
  %237 = load i32*, i32** %10, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32* %239, i32** %10, align 8
  br label %240

240:                                              ; preds = %232, %217
  %241 = load i32*, i32** %10, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 4
  store i32* %242, i32** %10, align 8
  br label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %17, align 4
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = sdiv i32 %247, 16
  %249 = icmp slt i32 %244, %248
  br i1 %249, label %186, label %250

250:                                              ; preds = %243
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 7
  %253 = call i32 @bytestream2_get_le16(i32* %252)
  store i32 %253, i32* %8, align 4
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 7
  %256 = call i32 @bytestream2_skip(i32* %255, i32 2)
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 7
  %259 = call i32 @bytestream2_get_bytes_left(i32* %258)
  %260 = load i32, i32* %8, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %250
  %263 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %263, i32* %4, align 4
  br label %424

264:                                              ; preds = %250
  %265 = load i32*, i32** %6, align 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 7
  %268 = call i32 @bytestream2_tell(i32* %267)
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %265, i64 %269
  store i32* %270, i32** %16, align 8
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 7
  %273 = load i32, i32* %8, align 4
  %274 = call i32 @bytestream2_skipu(i32* %272, i32 %273)
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32**, i32*** %276, align 8
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds i32*, i32** %277, i64 %280
  %282 = load i32*, i32** %281, align 8
  store i32* %282, i32** %10, align 8
  store i32 0, i32* %17, align 4
  br label %283

283:                                              ; preds = %413, %264
  %284 = load i32, i32* %17, align 4
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 4
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %423

289:                                              ; preds = %283
  store i32 0, i32* %18, align 4
  br label %290

290:                                              ; preds = %407, %289
  %291 = load i32, i32* %18, align 4
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = icmp slt i32 %291, %294
  br i1 %295, label %296, label %412

296:                                              ; preds = %290
  store i32 0, i32* %26, align 4
  %297 = load i32, i32* %19, align 4
  %298 = load i32, i32* %8, align 4
  %299 = icmp sgt i32 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  %301 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %301, i32* %4, align 4
  br label %424

302:                                              ; preds = %296
  %303 = load i32, i32* %18, align 4
  %304 = and i32 %303, 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %302
  %307 = load i32*, i32** %16, align 8
  %308 = load i32, i32* %19, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 15
  store i32 %312, i32* %25, align 4
  %313 = load i32, i32* %19, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %19, align 4
  br label %322

315:                                              ; preds = %302
  %316 = load i32*, i32** %16, align 8
  %317 = load i32, i32* %19, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = ashr i32 %320, 4
  store i32 %321, i32* %25, align 4
  br label %322

322:                                              ; preds = %315, %306
  br label %323

323:                                              ; preds = %405, %322
  %324 = load i32**, i32*** @block_sequences, align 8
  %325 = load i32, i32* %25, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32*, i32** %324, i64 %326
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %26, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %406

334:                                              ; preds = %323
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = mul nsw i32 %337, 2
  store i32 %338, i32* %9, align 4
  %339 = load i32**, i32*** @block_sequences, align 8
  %340 = load i32, i32* %25, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32*, i32** %339, i64 %341
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %26, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %26, align 4
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  %348 = load i32, i32* %347, align 4
  store i32 %348, i32* %7, align 4
  %349 = load i32, i32* %7, align 4
  switch i32 %349, label %405 [
    i32 2, label %350
    i32 3, label %351
    i32 4, label %355
    i32 5, label %369
    i32 6, label %370
    i32 7, label %373
  ]

350:                                              ; preds = %334
  store i32 0, i32* %9, align 4
  br label %351

351:                                              ; preds = %334, %350
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 7
  %354 = call i32 @bytestream2_get_byte(i32* %353)
  store i32 %354, i32* %13, align 4
  br label %355

355:                                              ; preds = %334, %351
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 7
  %358 = call i32 @bytestream2_get_byte(i32* %357)
  store i32 %358, i32* %12, align 4
  %359 = load i32*, i32** %10, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* %12, align 4
  %367 = load i32, i32* %13, align 4
  %368 = call i32 @copy_color_mask(i32* %362, i32 %365, i32 %366, i32 %367)
  br label %405

369:                                              ; preds = %334
  store i32 0, i32* %9, align 4
  br label %370

370:                                              ; preds = %334, %369
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %372 = call i32 @set_src_position(%struct.TYPE_5__* %371, i32** %14, i32** %15)
  br label %373

373:                                              ; preds = %334, %370
  %374 = load i32*, i32** %14, align 8
  %375 = load i32, i32* %9, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %377, i64 %381
  %383 = getelementptr inbounds i32, i32* %382, i64 4
  %384 = load i32*, i32** %15, align 8
  %385 = icmp ugt i32* %383, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %373
  %387 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %387, i32* %4, align 4
  br label %424

388:                                              ; preds = %373
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 7
  %391 = call i32 @bytestream2_get_byte(i32* %390)
  store i32 %391, i32* %12, align 4
  %392 = load i32*, i32** %10, align 8
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* %12, align 4
  %400 = load i32*, i32** %14, align 8
  %401 = load i32, i32* %9, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = call i32 @copy_src_mask(i32* %395, i32 %398, i32 %399, i32* %403)
  br label %405

405:                                              ; preds = %334, %388, %355
  br label %323

406:                                              ; preds = %323
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %18, align 4
  %409 = add nsw i32 %408, 4
  store i32 %409, i32* %18, align 4
  %410 = load i32*, i32** %10, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 4
  store i32* %411, i32** %10, align 8
  br label %290

412:                                              ; preds = %290
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %17, align 4
  %415 = add nsw i32 %414, 4
  store i32 %415, i32* %17, align 4
  %416 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = mul nsw i32 %418, 3
  %420 = load i32*, i32** %10, align 8
  %421 = sext i32 %419 to i64
  %422 = getelementptr inbounds i32, i32* %420, i64 %421
  store i32* %422, i32** %10, align 8
  br label %283

423:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %424

424:                                              ; preds = %423, %386, %300, %262, %215, %131, %109
  %425 = load i32, i32* %4, align 4
  ret i32 %425
}

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @read4x4block(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @set_src_position(%struct.TYPE_5__*, i32**, i32**) #1

declare dso_local i32 @copy_block4(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @bytestream2_skipu(i32*, i32) #1

declare dso_local i32 @copy_color_mask(i32*, i32, i32, i32) #1

declare dso_local i32 @copy_src_mask(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
