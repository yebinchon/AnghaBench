; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_old_codec47.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_old_codec47.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Decoded size is too large.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Subcodec 47 compression %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32, i32)* @old_codec47 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_codec47(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %15, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %16, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %17, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 7
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %18, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 8
  %49 = call i32 @bytestream2_tell(i32* %48)
  store i32 %49, i32* %19, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 8
  %52 = call i32 @bytestream2_get_le16(i32* %51)
  store i32 %52, i32* %20, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 8
  %55 = call i32 @bytestream2_get_byte(i32* %54)
  store i32 %55, i32* %21, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 8
  %58 = call i32 @bytestream2_get_byte(i32* %57)
  store i32 %58, i32* %22, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 8
  %61 = call i32 @bytestream2_get_byte(i32* %60)
  store i32 %61, i32* %23, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 8
  %64 = call i32 @bytestream2_skip(i32* %63, i32 9)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 8
  %67 = call i32 @bytestream2_get_le32(i32* %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 8
  %70 = call i32 @bytestream2_skip(i32* %69, i32 8)
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %15, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sub nsw i32 %78, %81
  %83 = icmp sgt i32 %71, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %5
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %15, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sub nsw i32 %91, %94
  store i32 %95, i32* %12, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @AV_LOG_WARNING, align 4
  %100 = call i32 @av_log(i32 %98, i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %84, %5
  %102 = load i32, i32* %23, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 8
  %108 = call i32 @bytestream2_skip(i32* %107, i32 32896)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %20, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %109
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  store i32 -1, i32* %114, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %15, align 4
  %120 = mul nsw i32 %118, %119
  %121 = call i32 @memset(i32* %115, i32 0, i32 %120)
  %122 = load i32*, i32** %18, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %15, align 4
  %127 = mul nsw i32 %125, %126
  %128 = call i32 @memset(i32* %122, i32 0, i32 %127)
  br label %129

129:                                              ; preds = %112, %109
  %130 = load i32, i32* %21, align 4
  switch i32 %130, label %325 [
    i32 0, label %131
    i32 1, label %160
    i32 2, label %223
    i32 3, label %286
    i32 4, label %301
    i32 5, label %316
  ]

131:                                              ; preds = %129
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 8
  %134 = call i32 @bytestream2_get_bytes_left(i32* %133)
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %135, %136
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %140, i32* %6, align 4
  br label %350

141:                                              ; preds = %131
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %156, %141
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 8
  %149 = load i32*, i32** %16, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @bytestream2_get_bufferu(i32* %148, i32* %149, i32 %150)
  %152 = load i32, i32* %15, align 4
  %153 = load i32*, i32** %16, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %16, align 8
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %142

159:                                              ; preds = %142
  br label %332

160:                                              ; preds = %129
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 8
  %163 = call i32 @bytestream2_get_bytes_left(i32* %162)
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  %166 = ashr i32 %165, 1
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  %169 = ashr i32 %168, 1
  %170 = mul nsw i32 %166, %169
  %171 = icmp slt i32 %163, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %160
  %173 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %173, i32* %6, align 4
  br label %350

174:                                              ; preds = %160
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %219, %174
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %222

179:                                              ; preds = %175
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %210, %179
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %213

184:                                              ; preds = %180
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 8
  %187 = call i32 @bytestream2_get_byteu(i32* %186)
  %188 = load i32*, i32** %16, align 8
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %189, %190
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  store i32 %187, i32* %194, align 4
  %195 = load i32*, i32** %16, align 8
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  store i32 %187, i32* %200, align 4
  %201 = load i32*, i32** %16, align 8
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 %187, i32* %205, align 4
  %206 = load i32*, i32** %16, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %187, i32* %209, align 4
  br label %210

210:                                              ; preds = %184
  %211 = load i32, i32* %13, align 4
  %212 = add nsw i32 %211, 2
  store i32 %212, i32* %13, align 4
  br label %180

213:                                              ; preds = %180
  %214 = load i32, i32* %15, align 4
  %215 = mul nsw i32 %214, 2
  %216 = load i32*, i32** %16, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %16, align 8
  br label %219

219:                                              ; preds = %213
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 2
  store i32 %221, i32* %14, align 4
  br label %175

222:                                              ; preds = %175
  br label %332

223:                                              ; preds = %129
  %224 = load i32, i32* %20, align 4
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  %229 = icmp eq i32 %224, %228
  br i1 %229, label %230, label %285

230:                                              ; preds = %223
  store i32 0, i32* %14, align 4
  br label %231

231:                                              ; preds = %281, %230
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %284

235:                                              ; preds = %231
  store i32 0, i32* %13, align 4
  br label %236

236:                                              ; preds = %262, %235
  %237 = load i32, i32* %13, align 4
  %238 = load i32, i32* %10, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %265

240:                                              ; preds = %236
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %242 = load i32*, i32** %16, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32*, i32** %17, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32*, i32** %18, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %19, align 4
  %256 = add nsw i32 %255, 8
  %257 = call i32 @process_block(%struct.TYPE_5__* %241, i32* %245, i32* %249, i32* %253, i32 %254, i32 %256, i32 8)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %240
  %260 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %260, i32* %6, align 4
  br label %350

261:                                              ; preds = %240
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, 8
  store i32 %264, i32* %13, align 4
  br label %236

265:                                              ; preds = %236
  %266 = load i32, i32* %15, align 4
  %267 = mul nsw i32 %266, 8
  %268 = load i32*, i32** %16, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %16, align 8
  %271 = load i32, i32* %15, align 4
  %272 = mul nsw i32 %271, 8
  %273 = load i32*, i32** %17, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %17, align 8
  %276 = load i32, i32* %15, align 4
  %277 = mul nsw i32 %276, 8
  %278 = load i32*, i32** %18, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %18, align 8
  br label %281

281:                                              ; preds = %265
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %282, 8
  store i32 %283, i32* %14, align 4
  br label %231

284:                                              ; preds = %231
  br label %285

285:                                              ; preds = %284, %223
  br label %332

286:                                              ; preds = %129
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 6
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 7
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = mul nsw i32 %295, %298
  %300 = call i32 @memcpy(i64 %289, i64 %292, i32 %299)
  br label %332

301:                                              ; preds = %129
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 5
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = mul nsw i32 %310, %313
  %315 = call i32 @memcpy(i64 %304, i64 %307, i32 %314)
  br label %332

316:                                              ; preds = %129
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %318 = load i32*, i32** %16, align 8
  %319 = load i32, i32* %12, align 4
  %320 = call i32 @rle_decode(%struct.TYPE_5__* %317, i32* %318, i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %323, i32* %6, align 4
  br label %350

324:                                              ; preds = %316
  br label %332

325:                                              ; preds = %129
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* %21, align 4
  %330 = call i32 @avpriv_report_missing_feature(i32 %328, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %331, i32* %6, align 4
  br label %350

332:                                              ; preds = %324, %301, %286, %285, %222, %159
  %333 = load i32, i32* %20, align 4
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %336, 1
  %338 = icmp eq i32 %333, %337
  br i1 %338, label %339, label %343

339:                                              ; preds = %332
  %340 = load i32, i32* %22, align 4
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 3
  store i32 %340, i32* %342, align 4
  br label %346

343:                                              ; preds = %332
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 3
  store i32 0, i32* %345, align 4
  br label %346

346:                                              ; preds = %343, %339
  %347 = load i32, i32* %20, align 4
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 2
  store i32 %347, i32* %349, align 8
  store i32 0, i32* %6, align 4
  br label %350

350:                                              ; preds = %346, %325, %322, %259, %172, %139
  %351 = load i32, i32* %6, align 4
  ret i32 %351
}

declare dso_local i32 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_bufferu(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @process_block(%struct.TYPE_5__*, i32*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @rle_decode(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
