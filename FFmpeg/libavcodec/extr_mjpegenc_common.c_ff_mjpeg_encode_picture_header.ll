; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc_common.c_ff_mjpeg_encode_picture_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegenc_common.c_ff_mjpeg_encode_picture_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, i32, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64 }

@AV_CODEC_ID_AMV = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGRA = common dso_local global i64 0, align 8
@SOI = common dso_local global i32 0, align 4
@SOF0 = common dso_local global i32 0, align 4
@SOF3 = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR0 = common dso_local global i64 0, align 8
@AV_PIX_FMT_BGR24 = common dso_local global i64 0, align 8
@SOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mjpeg_encode_picture_header(%struct.TYPE_12__* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 128
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AV_CODEC_ID_AMV, align 4
  %29 = icmp ne i32 %27, %28
  br label %30

30:                                               ; preds = %24, %6
  %31 = phi i1 [ false, %6 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_PIX_FMT_BGRA, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = add nsw i32 3, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @memcmp(i32* %40, i32* %41, i32 256)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %18, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %50 = call i32 @ff_mjpeg_init_hvsample(%struct.TYPE_12__* %47, i32* %48, i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @SOI, align 4
  %53 = call i32 @put_marker(i32* %51, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AV_CODEC_ID_AMV, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %30
  br label %263

60:                                               ; preds = %30
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @jpeg_put_comments(%struct.TYPE_12__* %61, i32* %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %70 = call i32 @jpeg_table_header(%struct.TYPE_12__* %64, i32* %65, i32* %66, i32* %67, i32* %68, i32* %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %82 [
    i32 128, label %74
    i32 129, label %78
  ]

74:                                               ; preds = %60
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @SOF0, align 4
  %77 = call i32 @put_marker(i32* %75, i32 %76)
  br label %84

78:                                               ; preds = %60
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @SOF3, align 4
  %81 = call i32 @put_marker(i32* %79, i32 %80)
  br label %84

82:                                               ; preds = %60
  %83 = call i32 @av_assert0(i32 0)
  br label %84

84:                                               ; preds = %82, %78, %74
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @put_bits(i32* %85, i32 16, i32 17)
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AV_PIX_FMT_BGR0, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %107, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AV_PIX_FMT_BGRA, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AV_PIX_FMT_BGR24, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %95, %89
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @put_bits(i32* %108, i32 8, i32 9)
  br label %113

110:                                              ; preds = %101, %84
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @put_bits(i32* %111, i32 8, i32 8)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @put_bits(i32* %114, i32 16, i32 %117)
  %119 = load i32*, i32** %8, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @put_bits(i32* %119, i32 16, i32 %122)
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @put_bits(i32* %124, i32 8, i32 %125)
  %127 = load i32*, i32** %8, align 8
  %128 = call i32 @put_bits(i32* %127, i32 8, i32 1)
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %131 = load i32, i32* %130, align 16
  %132 = call i32 @put_bits(i32* %129, i32 4, i32 %131)
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %135 = load i32, i32* %134, align 16
  %136 = call i32 @put_bits(i32* %133, i32 4, i32 %135)
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @put_bits(i32* %137, i32 8, i32 0)
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @put_bits(i32* %139, i32 8, i32 2)
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @put_bits(i32* %141, i32 4, i32 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @put_bits(i32* %145, i32 4, i32 %147)
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %113
  br label %155

153:                                              ; preds = %113
  %154 = load i32, i32* %18, align 4
  br label %155

155:                                              ; preds = %153, %152
  %156 = phi i32 [ 0, %152 ], [ %154, %153 ]
  %157 = call i32 @put_bits(i32* %149, i32 8, i32 %156)
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @put_bits(i32* %158, i32 8, i32 3)
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @put_bits(i32* %160, i32 4, i32 %162)
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @put_bits(i32* %164, i32 4, i32 %166)
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %155
  br label %174

172:                                              ; preds = %155
  %173 = load i32, i32* %18, align 4
  br label %174

174:                                              ; preds = %172, %171
  %175 = phi i32 [ 0, %171 ], [ %173, %172 ]
  %176 = call i32 @put_bits(i32* %168, i32 8, i32 %175)
  %177 = load i32, i32* %17, align 4
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %192

179:                                              ; preds = %174
  %180 = load i32*, i32** %8, align 8
  %181 = call i32 @put_bits(i32* %180, i32 8, i32 4)
  %182 = load i32*, i32** %8, align 8
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @put_bits(i32* %182, i32 4, i32 %184)
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @put_bits(i32* %186, i32 4, i32 %188)
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @put_bits(i32* %190, i32 8, i32 0)
  br label %192

192:                                              ; preds = %179, %174
  %193 = load i32*, i32** %8, align 8
  %194 = load i32, i32* @SOS, align 4
  %195 = call i32 @put_marker(i32* %193, i32 %194)
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %17, align 4
  %198 = mul nsw i32 2, %197
  %199 = add nsw i32 6, %198
  %200 = call i32 @put_bits(i32* %196, i32 16, i32 %199)
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %17, align 4
  %203 = call i32 @put_bits(i32* %201, i32 8, i32 %202)
  %204 = load i32*, i32** %8, align 8
  %205 = call i32 @put_bits(i32* %204, i32 8, i32 1)
  %206 = load i32*, i32** %8, align 8
  %207 = call i32 @put_bits(i32* %206, i32 4, i32 0)
  %208 = load i32*, i32** %8, align 8
  %209 = call i32 @put_bits(i32* %208, i32 4, i32 0)
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 @put_bits(i32* %210, i32 8, i32 2)
  %212 = load i32*, i32** %8, align 8
  %213 = call i32 @put_bits(i32* %212, i32 4, i32 1)
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 0, i32 1
  %219 = call i32 @put_bits(i32* %214, i32 4, i32 %218)
  %220 = load i32*, i32** %8, align 8
  %221 = call i32 @put_bits(i32* %220, i32 8, i32 3)
  %222 = load i32*, i32** %8, align 8
  %223 = call i32 @put_bits(i32* %222, i32 4, i32 1)
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 0, i32 1
  %229 = call i32 @put_bits(i32* %224, i32 4, i32 %228)
  %230 = load i32, i32* %17, align 4
  %231 = icmp eq i32 %230, 4
  br i1 %231, label %232, label %239

232:                                              ; preds = %192
  %233 = load i32*, i32** %8, align 8
  %234 = call i32 @put_bits(i32* %233, i32 8, i32 4)
  %235 = load i32*, i32** %8, align 8
  %236 = call i32 @put_bits(i32* %235, i32 4, i32 0)
  %237 = load i32*, i32** %8, align 8
  %238 = call i32 @put_bits(i32* %237, i32 4, i32 0)
  br label %239

239:                                              ; preds = %232, %192
  %240 = load i32*, i32** %8, align 8
  %241 = load i32, i32* %13, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i32, i32* %10, align 4
  br label %246

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %245, %243
  %247 = phi i32 [ %244, %243 ], [ 0, %245 ]
  %248 = call i32 @put_bits(i32* %240, i32 8, i32 %247)
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  switch i32 %251, label %258 [
    i32 128, label %252
    i32 129, label %255
  ]

252:                                              ; preds = %246
  %253 = load i32*, i32** %8, align 8
  %254 = call i32 @put_bits(i32* %253, i32 8, i32 63)
  br label %260

255:                                              ; preds = %246
  %256 = load i32*, i32** %8, align 8
  %257 = call i32 @put_bits(i32* %256, i32 8, i32 0)
  br label %260

258:                                              ; preds = %246
  %259 = call i32 @av_assert0(i32 0)
  br label %260

260:                                              ; preds = %258, %255, %252
  %261 = load i32*, i32** %8, align 8
  %262 = call i32 @put_bits(i32* %261, i32 8, i32 0)
  br label %263

263:                                              ; preds = %260, %59
  %264 = load i32, i32* %13, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %303, label %266

266:                                              ; preds = %263
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 5
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %268, align 8
  store %struct.TYPE_11__* %269, %struct.TYPE_11__** %19, align 8
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = icmp eq i64 %275, 16
  %277 = zext i1 %276 to i32
  %278 = call i32 @av_assert0(i32 %277)
  %279 = load i32*, i32** %8, align 8
  %280 = call i32 @put_bits_count(i32* %279)
  %281 = ashr i32 %280, 3
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 8
  store i32 1, i32* %16, align 4
  br label %284

284:                                              ; preds = %299, %266
  %285 = load i32, i32* %16, align 4
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %302

290:                                              ; preds = %284
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %292, align 8
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %293, i64 %295
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  store i64 0, i64* %298, align 8
  br label %299

299:                                              ; preds = %290
  %300 = load i32, i32* %16, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %16, align 4
  br label %284

302:                                              ; preds = %284
  br label %303

303:                                              ; preds = %302, %263
  ret void
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @ff_mjpeg_init_hvsample(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @put_marker(i32*, i32) #1

declare dso_local i32 @jpeg_put_comments(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @jpeg_table_header(%struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_bits_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
