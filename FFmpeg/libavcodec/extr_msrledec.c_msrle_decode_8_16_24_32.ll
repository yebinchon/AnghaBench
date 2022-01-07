; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msrledec.c_msrle_decode_8_16_24_32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msrledec.c_msrle_decode_8_16_24_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i8*** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Next line is beyond picture bounds (%d bytes left)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Skip beyond picture bounds\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"bytestream overrun\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"MS RLE warning: no end-of-picture code\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32*)* @msrle_decode_8_16_24_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msrle_decode_8_16_24_32(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [3 x i8*], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @FFABS(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 3
  %33 = sdiv i32 %30, %32
  store i32 %33, i32* %19, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i8***, i8**** %35, align 8
  %37 = getelementptr inbounds i8**, i8*** %36, i64 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %42, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %38, i64 %49
  store i8** %50, i8*** %10, align 8
  %51 = load i8**, i8*** %10, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @FFABS(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %51, i64 %58
  store i8** %59, i8*** %11, align 8
  br label %60

60:                                               ; preds = %390, %305, %200, %145, %91, %4
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @bytestream2_get_bytes_left(i32* %61)
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %391

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @bytestream2_get_byteu(i32* %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %295

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = call i8* @bytestream2_get_byte(i32* %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @bytestream2_get_be16(i32* %80)
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %395

84:                                               ; preds = %79
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = load i32, i32* @AV_LOG_ERROR, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @bytestream2_get_bytes_left(i32* %87)
  %89 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %85, i32 %86, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %90, i32* %5, align 4
  br label %395

91:                                               ; preds = %75
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i8***, i8**** %93, align 8
  %95 = getelementptr inbounds i8**, i8*** %94, i64 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %97, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %96, i64 %104
  store i8** %105, i8*** %10, align 8
  %106 = load i8**, i8*** %10, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FFABS(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %106, i64 %113
  store i8** %114, i8*** %11, align 8
  store i32 0, i32* %15, align 4
  br label %60

115:                                              ; preds = %69
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %395

119:                                              ; preds = %115
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %188

122:                                              ; preds = %119
  %123 = load i32*, i32** %9, align 8
  %124 = call i8* @bytestream2_get_byte(i32* %123)
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %12, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = call i8* @bytestream2_get_byte(i32* %126)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %122
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %19, align 4
  %140 = icmp uge i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %137, %122
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = load i32, i32* @AV_LOG_ERROR, align 4
  %144 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %142, i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %395

145:                                              ; preds = %137
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i8***, i8**** %147, align 8
  %149 = getelementptr inbounds i8**, i8*** %148, i64 0
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %151, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %150, i64 %158
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %8, align 4
  %162 = ashr i32 %161, 3
  %163 = mul nsw i32 %160, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %159, i64 %164
  store i8** %165, i8*** %10, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i8***, i8**** %167, align 8
  %169 = getelementptr inbounds i8**, i8*** %168, i64 0
  %170 = load i8**, i8*** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %171, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %170, i64 %178
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @FFABS(i32 %184)
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %179, i64 %186
  store i8** %187, i8*** %11, align 8
  br label %60

188:                                              ; preds = %119
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  %191 = load i8**, i8*** %10, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %8, align 4
  %194 = ashr i32 %193, 3
  %195 = mul nsw i32 %192, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %191, i64 %196
  %198 = load i8**, i8*** %11, align 8
  %199 = icmp ugt i8** %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %190
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* %8, align 4
  %203 = ashr i32 %202, 3
  %204 = mul nsw i32 2, %203
  %205 = call i32 @bytestream2_skip(i32* %201, i32 %204)
  br label %60

206:                                              ; preds = %190
  %207 = load i32*, i32** %9, align 8
  %208 = call i32 @bytestream2_get_bytes_left(i32* %207)
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %8, align 4
  %211 = ashr i32 %210, 3
  %212 = mul nsw i32 %209, %211
  %213 = icmp slt i32 %208, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %206
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %216 = load i32, i32* @AV_LOG_ERROR, align 4
  %217 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %215, i32 %216, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %218 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %218, i32* %5, align 4
  br label %395

219:                                              ; preds = %206
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %8, align 4
  %222 = icmp eq i32 %221, 8
  br i1 %222, label %226, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %8, align 4
  %225 = icmp eq i32 %224, 24
  br i1 %225, label %226, label %251

226:                                              ; preds = %223, %220
  %227 = load i32*, i32** %9, align 8
  %228 = load i8**, i8*** %10, align 8
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %8, align 4
  %231 = ashr i32 %230, 3
  %232 = mul nsw i32 %229, %231
  %233 = call i32 @bytestream2_get_bufferu(i32* %227, i8** %228, i32 %232)
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %8, align 4
  %236 = ashr i32 %235, 3
  %237 = mul nsw i32 %234, %236
  %238 = load i8**, i8*** %10, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8*, i8** %238, i64 %239
  store i8** %240, i8*** %10, align 8
  %241 = load i32, i32* %8, align 4
  %242 = icmp eq i32 %241, 8
  br i1 %242, label %243, label %250

243:                                              ; preds = %226
  %244 = load i32, i32* %13, align 4
  %245 = and i32 %244, 1
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = load i32*, i32** %9, align 8
  %249 = call i32 @bytestream2_skip(i32* %248, i32 1)
  br label %250

250:                                              ; preds = %247, %243, %226
  br label %291

251:                                              ; preds = %223
  %252 = load i32, i32* %8, align 4
  %253 = icmp eq i32 %252, 16
  br i1 %253, label %254, label %270

254:                                              ; preds = %251
  store i32 0, i32* %16, align 4
  br label %255

255:                                              ; preds = %266, %254
  %256 = load i32, i32* %16, align 4
  %257 = load i32, i32* %13, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %255
  %260 = load i32*, i32** %9, align 8
  %261 = call i32 @bytestream2_get_le16u(i32* %260)
  %262 = load i8**, i8*** %10, align 8
  %263 = bitcast i8** %262 to i32*
  store i32 %261, i32* %263, align 4
  %264 = load i8**, i8*** %10, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 2
  store i8** %265, i8*** %10, align 8
  br label %266

266:                                              ; preds = %259
  %267 = load i32, i32* %16, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %16, align 4
  br label %255

269:                                              ; preds = %255
  br label %290

270:                                              ; preds = %251
  %271 = load i32, i32* %8, align 4
  %272 = icmp eq i32 %271, 32
  br i1 %272, label %273, label %289

273:                                              ; preds = %270
  store i32 0, i32* %16, align 4
  br label %274

274:                                              ; preds = %285, %273
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* %13, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %288

278:                                              ; preds = %274
  %279 = load i32*, i32** %9, align 8
  %280 = call i32 @bytestream2_get_le32u(i32* %279)
  %281 = load i8**, i8*** %10, align 8
  %282 = bitcast i8** %281 to i32*
  store i32 %280, i32* %282, align 4
  %283 = load i8**, i8*** %10, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 4
  store i8** %284, i8*** %10, align 8
  br label %285

285:                                              ; preds = %278
  %286 = load i32, i32* %16, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %16, align 4
  br label %274

288:                                              ; preds = %274
  br label %289

289:                                              ; preds = %288, %270
  br label %290

290:                                              ; preds = %289, %269
  br label %291

291:                                              ; preds = %290, %250
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %15, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %15, align 4
  br label %390

295:                                              ; preds = %64
  %296 = load i8**, i8*** %10, align 8
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* %8, align 4
  %299 = ashr i32 %298, 3
  %300 = mul nsw i32 %297, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8*, i8** %296, i64 %301
  %303 = load i8**, i8*** %11, align 8
  %304 = icmp ugt i8** %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %295
  br label %60

306:                                              ; preds = %295
  %307 = load i32, i32* %8, align 4
  switch i32 %307, label %386 [
    i32 8, label %308
    i32 16, label %321
    i32 24, label %338
    i32 32, label %369
  ]

308:                                              ; preds = %306
  %309 = load i32*, i32** %9, align 8
  %310 = call i8* @bytestream2_get_byte(i32* %309)
  %311 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 0
  store i8* %310, i8** %311, align 16
  %312 = load i8**, i8*** %10, align 8
  %313 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 0
  %314 = load i8*, i8** %313, align 16
  %315 = load i32, i32* %12, align 4
  %316 = call i32 @memset(i8** %312, i8* %314, i32 %315)
  %317 = load i32, i32* %12, align 4
  %318 = load i8**, i8*** %10, align 8
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds i8*, i8** %318, i64 %319
  store i8** %320, i8*** %10, align 8
  br label %386

321:                                              ; preds = %306
  %322 = load i32*, i32** %9, align 8
  %323 = call i32 @bytestream2_get_le16(i32* %322)
  store i32 %323, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %324

324:                                              ; preds = %334, %321
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* %12, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %337

328:                                              ; preds = %324
  %329 = load i32, i32* %17, align 4
  %330 = load i8**, i8*** %10, align 8
  %331 = bitcast i8** %330 to i32*
  store i32 %329, i32* %331, align 4
  %332 = load i8**, i8*** %10, align 8
  %333 = getelementptr inbounds i8*, i8** %332, i64 2
  store i8** %333, i8*** %10, align 8
  br label %334

334:                                              ; preds = %328
  %335 = load i32, i32* %16, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %16, align 4
  br label %324

337:                                              ; preds = %324
  br label %386

338:                                              ; preds = %306
  %339 = load i32*, i32** %9, align 8
  %340 = call i8* @bytestream2_get_byte(i32* %339)
  %341 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 0
  store i8* %340, i8** %341, align 16
  %342 = load i32*, i32** %9, align 8
  %343 = call i8* @bytestream2_get_byte(i32* %342)
  %344 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 1
  store i8* %343, i8** %344, align 8
  %345 = load i32*, i32** %9, align 8
  %346 = call i8* @bytestream2_get_byte(i32* %345)
  %347 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 2
  store i8* %346, i8** %347, align 16
  store i32 0, i32* %16, align 4
  br label %348

348:                                              ; preds = %365, %338
  %349 = load i32, i32* %16, align 4
  %350 = load i32, i32* %12, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %368

352:                                              ; preds = %348
  %353 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 0
  %354 = load i8*, i8** %353, align 16
  %355 = load i8**, i8*** %10, align 8
  %356 = getelementptr inbounds i8*, i8** %355, i32 1
  store i8** %356, i8*** %10, align 8
  store i8* %354, i8** %355, align 8
  %357 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 1
  %358 = load i8*, i8** %357, align 8
  %359 = load i8**, i8*** %10, align 8
  %360 = getelementptr inbounds i8*, i8** %359, i32 1
  store i8** %360, i8*** %10, align 8
  store i8* %358, i8** %359, align 8
  %361 = getelementptr inbounds [3 x i8*], [3 x i8*]* %20, i64 0, i64 2
  %362 = load i8*, i8** %361, align 16
  %363 = load i8**, i8*** %10, align 8
  %364 = getelementptr inbounds i8*, i8** %363, i32 1
  store i8** %364, i8*** %10, align 8
  store i8* %362, i8** %363, align 8
  br label %365

365:                                              ; preds = %352
  %366 = load i32, i32* %16, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %16, align 4
  br label %348

368:                                              ; preds = %348
  br label %386

369:                                              ; preds = %306
  %370 = load i32*, i32** %9, align 8
  %371 = call i32 @bytestream2_get_le32(i32* %370)
  store i32 %371, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %372

372:                                              ; preds = %382, %369
  %373 = load i32, i32* %16, align 4
  %374 = load i32, i32* %12, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %385

376:                                              ; preds = %372
  %377 = load i32, i32* %18, align 4
  %378 = load i8**, i8*** %10, align 8
  %379 = bitcast i8** %378 to i32*
  store i32 %377, i32* %379, align 4
  %380 = load i8**, i8*** %10, align 8
  %381 = getelementptr inbounds i8*, i8** %380, i64 4
  store i8** %381, i8*** %10, align 8
  br label %382

382:                                              ; preds = %376
  %383 = load i32, i32* %16, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %16, align 4
  br label %372

385:                                              ; preds = %372
  br label %386

386:                                              ; preds = %306, %385, %368, %337, %308
  %387 = load i32, i32* %12, align 4
  %388 = load i32, i32* %15, align 4
  %389 = add nsw i32 %388, %387
  store i32 %389, i32* %15, align 4
  br label %390

390:                                              ; preds = %386, %291
  br label %60

391:                                              ; preds = %60
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %393 = load i32, i32* @AV_LOG_WARNING, align 4
  %394 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %392, i32 %393, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %395

395:                                              ; preds = %391, %214, %141, %118, %84, %83
  %396 = load i32, i32* %5, align 4
  ret i32 %396
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i8* @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_bufferu(i32*, i8**, i32) #1

declare dso_local i32 @bytestream2_get_le16u(i32*) #1

declare dso_local i32 @bytestream2_get_le32u(i32*) #1

declare dso_local i32 @memset(i8**, i8*, i32) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
