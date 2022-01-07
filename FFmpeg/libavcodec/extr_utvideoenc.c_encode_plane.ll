; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideoenc.c_encode_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideoenc.c_encode_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_11__ = type { i32 (i32*, i32*, i32, i32, i32)* }
%struct.TYPE_14__ = type { i32, i32 }

@AV_PIX_FMT_YUV420P = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown prediction mode: %d\0A\00", align 1
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i32*, i32, i32, i32, i32, i32*)* @encode_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_plane(%struct.TYPE_15__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca [256 x i32], align 16
  %20 = alloca [256 x i32], align 16
  %21 = alloca [256 x %struct.TYPE_14__], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %18, align 8
  %33 = bitcast [256 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 1024, i1 false)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_PIX_FMT_YUV420P, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %36, %8
  %43 = phi i1 [ false, %8 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = xor i32 %44, -1
  store i32 %45, i32* %24, align 4
  store i32 0, i32* %27, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %178 [
    i32 128, label %49
    i32 130, label %91
    i32 129, label %136
  ]

49:                                               ; preds = %42
  store i32 0, i32* %25, align 4
  br label %50

50:                                               ; preds = %87, %49
  %51 = load i32, i32* %25, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %50
  %57 = load i32, i32* %27, align 4
  store i32 %57, i32* %26, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %25, align 4
  %60 = add nsw i32 %59, 1
  %61 = mul nsw i32 %58, %60
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %61, %64
  %66 = load i32, i32* %24, align 4
  %67 = and i32 %65, %66
  store i32 %67, i32* %27, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %15, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %26, align 4
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %27, align 4
  %84 = load i32, i32* %26, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @av_image_copy_plane(i32* %73, i32 %74, i32* %80, i32 %81, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %56
  %88 = load i32, i32* %25, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %25, align 4
  br label %50

90:                                               ; preds = %50
  br label %186

91:                                               ; preds = %42
  store i32 0, i32* %25, align 4
  br label %92

92:                                               ; preds = %132, %91
  %93 = load i32, i32* %25, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %135

98:                                               ; preds = %92
  %99 = load i32, i32* %27, align 4
  store i32 %99, i32* %26, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %25, align 4
  %102 = add nsw i32 %101, 1
  %103 = mul nsw i32 %100, %102
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %103, %106
  %108 = load i32, i32* %24, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %27, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32 (i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32)** %112, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %26, align 4
  %116 = load i32, i32* %15, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %13, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %27, align 4
  %129 = load i32, i32* %26, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i32 %113(i32* %119, i32* %125, i32 %126, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %98
  %133 = load i32, i32* %25, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %25, align 4
  br label %92

135:                                              ; preds = %92
  br label %186

136:                                              ; preds = %42
  store i32 0, i32* %25, align 4
  br label %137

137:                                              ; preds = %174, %136
  %138 = load i32, i32* %25, align 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %177

143:                                              ; preds = %137
  %144 = load i32, i32* %27, align 4
  store i32 %144, i32* %26, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %25, align 4
  %147 = add nsw i32 %146, 1
  %148 = mul nsw i32 %145, %147
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sdiv i32 %148, %151
  %153 = load i32, i32* %24, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %27, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %26, align 4
  %158 = load i32, i32* %13, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %26, align 4
  %164 = load i32, i32* %15, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %27, align 4
  %171 = load i32, i32* %26, align 4
  %172 = sub nsw i32 %170, %171
  %173 = call i32 @median_predict(%struct.TYPE_13__* %155, i32* %161, i32* %167, i32 %168, i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %143
  %175 = load i32, i32* %25, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %25, align 4
  br label %137

177:                                              ; preds = %137
  br label %186

178:                                              ; preds = %42
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %180 = load i32, i32* @AV_LOG_ERROR, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @av_log(%struct.TYPE_15__* %179, i32 %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %185, i32* %9, align 4
  br label %386

186:                                              ; preds = %177, %135, %90
  %187 = load i32*, i32** %12, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %16, align 4
  %190 = getelementptr inbounds [256 x i32], [256 x i32]* %20, i64 0, i64 0
  %191 = call i32 @count_usage(i32* %187, i32 %188, i32 %189, i32* %190)
  store i32 0, i32* %28, align 4
  br label %192

192:                                              ; preds = %244, %186
  %193 = load i32, i32* %28, align 4
  %194 = icmp slt i32 %193, 256
  br i1 %194, label %195, label %247

195:                                              ; preds = %192
  %196 = load i32, i32* %28, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [256 x i32], [256 x i32]* %20, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %243

201:                                              ; preds = %195
  %202 = load i32, i32* %28, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [256 x i32], [256 x i32]* %20, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %16, align 4
  %208 = mul nsw i32 %206, %207
  %209 = icmp eq i32 %205, %208
  br i1 %209, label %210, label %242

210:                                              ; preds = %201
  store i32 0, i32* %25, align 4
  br label %211

211:                                              ; preds = %225, %210
  %212 = load i32, i32* %25, align 4
  %213 = icmp slt i32 %212, 256
  br i1 %213, label %214, label %228

214:                                              ; preds = %211
  %215 = load i32, i32* %25, align 4
  %216 = load i32, i32* %28, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load i32*, i32** %17, align 8
  %220 = call i32 @bytestream2_put_byte(i32* %219, i32 0)
  br label %224

221:                                              ; preds = %214
  %222 = load i32*, i32** %17, align 8
  %223 = call i32 @bytestream2_put_byte(i32* %222, i32 255)
  br label %224

224:                                              ; preds = %221, %218
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %25, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %25, align 4
  br label %211

228:                                              ; preds = %211
  store i32 0, i32* %25, align 4
  br label %229

229:                                              ; preds = %238, %228
  %230 = load i32, i32* %25, align 4
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load i32*, i32** %17, align 8
  %237 = call i32 @bytestream2_put_le32(i32* %236, i32 0)
  br label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %25, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %25, align 4
  br label %229

241:                                              ; preds = %229
  store i32 0, i32* %9, align 4
  br label %386

242:                                              ; preds = %201
  br label %247

243:                                              ; preds = %195
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %28, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %28, align 4
  br label %192

247:                                              ; preds = %242, %192
  %248 = getelementptr inbounds [256 x i32], [256 x i32]* %19, i64 0, i64 0
  %249 = getelementptr inbounds [256 x i32], [256 x i32]* %20, i64 0, i64 0
  %250 = call i32 @ff_huff_gen_len_table(i32* %248, i32* %249, i32 256, i32 1)
  store i32 %250, i32* %29, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load i32, i32* %29, align 4
  store i32 %253, i32* %9, align 4
  br label %386

254:                                              ; preds = %247
  store i32 0, i32* %25, align 4
  br label %255

255:                                              ; preds = %278, %254
  %256 = load i32, i32* %25, align 4
  %257 = icmp slt i32 %256, 256
  br i1 %257, label %258, label %281

258:                                              ; preds = %255
  %259 = load i32*, i32** %17, align 8
  %260 = load i32, i32* %25, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [256 x i32], [256 x i32]* %19, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @bytestream2_put_byte(i32* %259, i32 %263)
  %265 = load i32, i32* %25, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [256 x i32], [256 x i32]* %19, i64 0, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %25, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [256 x %struct.TYPE_14__], [256 x %struct.TYPE_14__]* %21, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  store i32 %268, i32* %272, align 8
  %273 = load i32, i32* %25, align 4
  %274 = load i32, i32* %25, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [256 x %struct.TYPE_14__], [256 x %struct.TYPE_14__]* %21, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  store i32 %273, i32* %277, align 4
  br label %278

278:                                              ; preds = %258
  %279 = load i32, i32* %25, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %25, align 4
  br label %255

281:                                              ; preds = %255
  %282 = getelementptr inbounds [256 x %struct.TYPE_14__], [256 x %struct.TYPE_14__]* %21, i64 0, i64 0
  %283 = call i32 @calculate_codes(%struct.TYPE_14__* %282)
  store i32 0, i32* %27, align 4
  store i32 0, i32* %25, align 4
  br label %284

284:                                              ; preds = %378, %281
  %285 = load i32, i32* %25, align 4
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %381

290:                                              ; preds = %284
  %291 = load i32, i32* %27, align 4
  store i32 %291, i32* %26, align 4
  %292 = load i32, i32* %16, align 4
  %293 = load i32, i32* %25, align 4
  %294 = add nsw i32 %293, 1
  %295 = mul nsw i32 %292, %294
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = sdiv i32 %295, %298
  %300 = load i32, i32* %24, align 4
  %301 = and i32 %299, %300
  store i32 %301, i32* %27, align 4
  %302 = load i32*, i32** %12, align 8
  %303 = load i32, i32* %26, align 4
  %304 = load i32, i32* %15, align 4
  %305 = mul nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %302, i64 %306
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = load i32, i32* %15, align 4
  %312 = load i32, i32* %16, align 4
  %313 = mul nsw i32 %311, %312
  %314 = add nsw i32 %313, 4
  %315 = load i32, i32* %15, align 4
  %316 = load i32, i32* %27, align 4
  %317 = load i32, i32* %26, align 4
  %318 = sub nsw i32 %316, %317
  %319 = getelementptr inbounds [256 x %struct.TYPE_14__], [256 x %struct.TYPE_14__]* %21, i64 0, i64 0
  %320 = call i32 @write_huff_codes(i32* %307, i64 %310, i32 %314, i32 %315, i32 %318, %struct.TYPE_14__* %319)
  %321 = ashr i32 %320, 3
  %322 = load i32, i32* %22, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %22, align 4
  %324 = load i32, i32* %22, align 4
  %325 = load i32, i32* %23, align 4
  %326 = sub nsw i32 %324, %325
  store i32 %326, i32* %23, align 4
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 0
  %330 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %329, align 8
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = inttoptr i64 %333 to i32*
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 2
  %337 = load i64, i64* %336, align 8
  %338 = inttoptr i64 %337 to i32*
  %339 = load i32, i32* %23, align 4
  %340 = ashr i32 %339, 2
  %341 = call i32 %330(i32* %334, i32* %338, i32 %340)
  %342 = load i32*, i32** %17, align 8
  %343 = load i32, i32* %22, align 4
  %344 = call i32 @bytestream2_put_le32(i32* %342, i32 %343)
  %345 = load i32*, i32** %17, align 8
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %25, align 4
  %350 = sub nsw i32 %348, %349
  %351 = sub nsw i32 %350, 1
  %352 = mul nsw i32 4, %351
  %353 = load i32, i32* %22, align 4
  %354 = add nsw i32 %352, %353
  %355 = load i32, i32* %23, align 4
  %356 = sub nsw i32 %354, %355
  %357 = load i32, i32* @SEEK_CUR, align 4
  %358 = call i32 @bytestream2_seek_p(i32* %345, i32 %356, i32 %357)
  %359 = load i32*, i32** %17, align 8
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = load i32, i32* %23, align 4
  %364 = call i32 @bytestream2_put_buffer(i32* %359, i64 %362, i32 %363)
  %365 = load i32*, i32** %17, align 8
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %25, align 4
  %370 = sub nsw i32 %368, %369
  %371 = sub nsw i32 %370, 1
  %372 = mul nsw i32 -4, %371
  %373 = load i32, i32* %22, align 4
  %374 = sub nsw i32 %372, %373
  %375 = load i32, i32* @SEEK_CUR, align 4
  %376 = call i32 @bytestream2_seek_p(i32* %365, i32 %374, i32 %375)
  %377 = load i32, i32* %22, align 4
  store i32 %377, i32* %23, align 4
  br label %378

378:                                              ; preds = %290
  %379 = load i32, i32* %25, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %25, align 4
  br label %284

381:                                              ; preds = %284
  %382 = load i32*, i32** %17, align 8
  %383 = load i32, i32* %22, align 4
  %384 = load i32, i32* @SEEK_CUR, align 4
  %385 = call i32 @bytestream2_seek_p(i32* %382, i32 %383, i32 %384)
  store i32 0, i32* %9, align 4
  br label %386

386:                                              ; preds = %381, %252, %241, %178
  %387 = load i32, i32* %9, align 4
  ret i32 %387
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_image_copy_plane(i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @median_predict(%struct.TYPE_13__*, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32) #2

declare dso_local i32 @count_usage(i32*, i32, i32, i32*) #2

declare dso_local i32 @bytestream2_put_byte(i32*, i32) #2

declare dso_local i32 @bytestream2_put_le32(i32*, i32) #2

declare dso_local i32 @ff_huff_gen_len_table(i32*, i32*, i32, i32) #2

declare dso_local i32 @calculate_codes(%struct.TYPE_14__*) #2

declare dso_local i32 @write_huff_codes(i32*, i64, i32, i32, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @bytestream2_seek_p(i32*, i32, i32) #2

declare dso_local i32 @bytestream2_put_buffer(i32*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
