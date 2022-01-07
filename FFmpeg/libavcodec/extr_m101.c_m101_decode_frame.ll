; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_m101.c_m101_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_m101.c_m101_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i64, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32**, i32*, i32 }

@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV422P10 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"stride (%d) is invalid for packet sized %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32*, %struct.TYPE_9__*)* @m101_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m101_decode_frame(%struct.TYPE_11__* %0, i8* %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %10, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 2, %31
  store i32 %32, i32* %15, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %17, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %42 = call i32 @ff_get_buffer(%struct.TYPE_11__* %40, %struct.TYPE_10__* %41, i32 0)
  store i32 %42, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %4
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %371

46:                                               ; preds = %4
  %47 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 20
  %56 = call i32 @AV_RL32(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AV_PIX_FMT_YUV422P10, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %46
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 15
  %67 = sdiv i32 %66, 16
  %68 = mul nsw i32 %67, 40
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %62, %46
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %69
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %73, %69
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = load i32, i32* @AV_LOG_ERROR, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @av_log(%struct.TYPE_11__* %84, i32 %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %91, i32* %5, align 4
  br label %371

92:                                               ; preds = %73
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 12
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 3
  %99 = icmp ne i32 %98, 3
  %100 = zext i1 %99 to i32
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %92
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 12
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %107, %92
  store i32 0, i32* %14, align 4
  br label %117

117:                                              ; preds = %363, %116
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %366

123:                                              ; preds = %117
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %18, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %123
  %130 = load i32, i32* %14, align 4
  %131 = and i32 %130, 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = xor i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %14, align 4
  %139 = sdiv i32 %138, 2
  br label %148

140:                                              ; preds = %129
  %141 = load i32, i32* %14, align 4
  %142 = sdiv i32 %141, 2
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = sdiv i32 %145, 2
  %147 = add nsw i32 %142, %146
  br label %148

148:                                              ; preds = %140, %137
  %149 = phi i32 [ %139, %137 ], [ %147, %140 ]
  store i32 %149, i32* %18, align 4
  br label %150

150:                                              ; preds = %148, %123
  %151 = load i32, i32* %16, align 4
  %152 = icmp eq i32 %151, 8
  br i1 %152, label %153, label %180

153:                                              ; preds = %150
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %159, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %158, i64 %166
  store i32* %167, i32** %19, align 8
  %168 = load i32*, i32** %19, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %11, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 2, %177
  %179 = call i32 @memcpy(i32* %168, i32* %174, i32 %178)
  br label %362

180:                                              ; preds = %150
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 3
  %183 = load i32**, i32*** %182, align 8
  %184 = getelementptr inbounds i32*, i32** %183, i64 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %186, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %185, i64 %193
  store i32* %194, i32** %21, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 3
  %197 = load i32**, i32*** %196, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %200, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %199, i64 %207
  store i32* %208, i32** %22, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  %211 = load i32**, i32*** %210, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i64 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %14, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %214, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %213, i64 %221
  store i32* %222, i32** %23, align 8
  store i32 0, i32* %20, align 4
  br label %223

223:                                              ; preds = %358, %180
  %224 = load i32, i32* %20, align 4
  %225 = mul nsw i32 16, %224
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %361

230:                                              ; preds = %223
  %231 = load i32*, i32** %10, align 8
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* %11, align 4
  %234 = mul nsw i32 %232, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %231, i64 %235
  %237 = load i32, i32* %20, align 4
  %238 = mul nsw i32 40, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32* %240, i32** %24, align 8
  store i32 0, i32* %13, align 4
  br label %241

241:                                              ; preds = %354, %230
  %242 = load i32, i32* %13, align 4
  %243 = icmp slt i32 %242, 16
  br i1 %243, label %244, label %253

244:                                              ; preds = %241
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %20, align 4
  %247 = mul nsw i32 16, %246
  %248 = add nsw i32 %245, %247
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %248, %251
  br label %253

253:                                              ; preds = %244, %241
  %254 = phi i1 [ false, %241 ], [ %252, %244 ]
  br i1 %254, label %255, label %357

255:                                              ; preds = %253
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %20, align 4
  %258 = mul nsw i32 16, %257
  %259 = add nsw i32 %256, %258
  store i32 %259, i32* %25, align 4
  %260 = load i32, i32* %13, align 4
  %261 = and i32 %260, 1
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %286

263:                                              ; preds = %255
  %264 = load i32*, i32** %24, align 8
  %265 = load i32, i32* %13, align 4
  %266 = mul nsw i32 2, %265
  %267 = add nsw i32 %266, 0
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = mul nsw i32 4, %270
  %272 = load i32*, i32** %24, align 8
  %273 = load i32, i32* %13, align 4
  %274 = ashr i32 %273, 1
  %275 = add nsw i32 32, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = ashr i32 %278, 4
  %280 = and i32 %279, 3
  %281 = add nsw i32 %271, %280
  %282 = load i32*, i32** %21, align 8
  %283 = load i32, i32* %25, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 %281, i32* %285, align 4
  br label %353

286:                                              ; preds = %255
  %287 = load i32*, i32** %24, align 8
  %288 = load i32, i32* %13, align 4
  %289 = mul nsw i32 2, %288
  %290 = add nsw i32 %289, 0
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %287, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = mul nsw i32 4, %293
  %295 = load i32*, i32** %24, align 8
  %296 = load i32, i32* %13, align 4
  %297 = ashr i32 %296, 1
  %298 = add nsw i32 32, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %295, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = and i32 %301, 3
  %303 = add nsw i32 %294, %302
  %304 = load i32*, i32** %21, align 8
  %305 = load i32, i32* %25, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  store i32 %303, i32* %307, align 4
  %308 = load i32*, i32** %24, align 8
  %309 = load i32, i32* %13, align 4
  %310 = mul nsw i32 2, %309
  %311 = add nsw i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %308, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = mul nsw i32 4, %314
  %316 = load i32*, i32** %24, align 8
  %317 = load i32, i32* %13, align 4
  %318 = ashr i32 %317, 1
  %319 = add nsw i32 32, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %316, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = ashr i32 %322, 2
  %324 = and i32 %323, 3
  %325 = add nsw i32 %315, %324
  %326 = load i32*, i32** %22, align 8
  %327 = load i32, i32* %25, align 4
  %328 = ashr i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %326, i64 %329
  store i32 %325, i32* %330, align 4
  %331 = load i32*, i32** %24, align 8
  %332 = load i32, i32* %13, align 4
  %333 = mul nsw i32 2, %332
  %334 = add nsw i32 %333, 3
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %331, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = mul nsw i32 4, %337
  %339 = load i32*, i32** %24, align 8
  %340 = load i32, i32* %13, align 4
  %341 = ashr i32 %340, 1
  %342 = add nsw i32 32, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %339, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = ashr i32 %345, 6
  %347 = add nsw i32 %338, %346
  %348 = load i32*, i32** %23, align 8
  %349 = load i32, i32* %25, align 4
  %350 = ashr i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  store i32 %347, i32* %352, align 4
  br label %353

353:                                              ; preds = %286, %263
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %13, align 4
  br label %241

357:                                              ; preds = %253
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %20, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %20, align 4
  br label %223

361:                                              ; preds = %223
  br label %362

362:                                              ; preds = %361, %153
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %14, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %14, align 4
  br label %117

366:                                              ; preds = %117
  %367 = load i32*, i32** %8, align 8
  store i32 1, i32* %367, align 4
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  store i32 %370, i32* %5, align 4
  br label %371

371:                                              ; preds = %366, %83, %44
  %372 = load i32, i32* %5, align 4
  ret i32 %372
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_11__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
