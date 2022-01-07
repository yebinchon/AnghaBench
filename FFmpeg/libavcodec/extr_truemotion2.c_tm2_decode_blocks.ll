; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_decode_blocks.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_decode_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i64, i64, %struct.TYPE_21__*, i32, i32, i32, i32, i64* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32*, i32** }

@TM2_NUM_STREAMS = common dso_local global i32 0, align 4
@TM2_TYPE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Got %i tokens for %i blocks\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Skipping unknown block type %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* @tm2_decode_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_decode_blocks(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 11
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 11
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 2
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = ashr i32 %34, 2
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %12, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %49, %2
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @TM2_NUM_STREAMS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 16
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @TM2_TYPE, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %59, %60
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %52
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 11
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @TM2_TYPE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %74, %75
  %77 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %66, i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %3, align 4
  br label %661

79:                                               ; preds = %52
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 15
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = mul nsw i32 4, %83
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memset(i32 %82, i32 0, i32 %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 14
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = mul nsw i32 4, %92
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memset(i32 %91, i32 0, i32 %96)
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %181, %79
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %184

102:                                              ; preds = %98
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 13
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memset(i32 %105, i32 0, i32 16)
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @memset(i32 %109, i32 0, i32 16)
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %177, %102
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %180

115:                                              ; preds = %111
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = load i64, i64* @TM2_TYPE, align 8
  %118 = call i32 @GET_TOK(%struct.TYPE_22__* %116, i64 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  switch i32 %119, label %162 [
    i32 134, label %120
    i32 132, label %126
    i32 133, label %132
    i32 130, label %138
    i32 128, label %144
    i32 129, label %150
    i32 131, label %156
  ]

120:                                              ; preds = %115
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @tm2_hi_res_block(%struct.TYPE_22__* %121, %struct.TYPE_23__* %122, i32 %123, i32 %124)
  br label %169

126:                                              ; preds = %115
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @tm2_med_res_block(%struct.TYPE_22__* %127, %struct.TYPE_23__* %128, i32 %129, i32 %130)
  br label %169

132:                                              ; preds = %115
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @tm2_low_res_block(%struct.TYPE_22__* %133, %struct.TYPE_23__* %134, i32 %135, i32 %136)
  br label %169

138:                                              ; preds = %115
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @tm2_null_res_block(%struct.TYPE_22__* %139, %struct.TYPE_23__* %140, i32 %141, i32 %142)
  br label %169

144:                                              ; preds = %115
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @tm2_update_block(%struct.TYPE_22__* %145, %struct.TYPE_23__* %146, i32 %147, i32 %148)
  store i32 0, i32* %14, align 4
  br label %169

150:                                              ; preds = %115
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @tm2_still_block(%struct.TYPE_22__* %151, %struct.TYPE_23__* %152, i32 %153, i32 %154)
  store i32 0, i32* %14, align 4
  br label %169

156:                                              ; preds = %115
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @tm2_motion_block(%struct.TYPE_22__* %157, %struct.TYPE_23__* %158, i32 %159, i32 %160)
  store i32 0, i32* %14, align 4
  br label %169

162:                                              ; preds = %115
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 11
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = load i32, i32* @AV_LOG_ERROR, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 (%struct.TYPE_21__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_21__* %165, i32 %166, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %162, %156, %150, %144, %138, %132, %126, %120
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 10
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %175, i32* %3, align 4
  br label %661

176:                                              ; preds = %169
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %111

180:                                              ; preds = %111
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %98

184:                                              ; preds = %98
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 9
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  br label %197

193:                                              ; preds = %184
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  br label %197

197:                                              ; preds = %193, %189
  %198 = phi i32* [ %192, %189 ], [ %196, %193 ]
  store i32* %198, i32** %15, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 9
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  br label %211

207:                                              ; preds = %197
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  br label %211

211:                                              ; preds = %207, %203
  %212 = phi i32* [ %206, %203 ], [ %210, %207 ]
  store i32* %212, i32** %16, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 9
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %211
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  br label %225

221:                                              ; preds = %211
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 6
  %224 = load i32*, i32** %223, align 8
  br label %225

225:                                              ; preds = %221, %217
  %226 = phi i32* [ %220, %217 ], [ %224, %221 ]
  store i32* %226, i32** %17, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 1
  %229 = load i32**, i32*** %228, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 0
  %231 = load i32*, i32** %230, align 8
  store i32* %231, i32** %18, align 8
  store i32 0, i32* %7, align 4
  br label %232

232:                                              ; preds = %656, %225
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* %9, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %659

236:                                              ; preds = %232
  store i32 0, i32* %6, align 4
  br label %237

237:                                              ; preds = %287, %236
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %290

241:                                              ; preds = %237
  %242 = load i32*, i32** %15, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %19, align 4
  %247 = load i32*, i32** %16, align 8
  %248 = load i32, i32* %6, align 4
  %249 = ashr i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %20, align 4
  %253 = load i32*, i32** %17, align 8
  %254 = load i32, i32* %6, align 4
  %255 = ashr i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %21, align 4
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* %21, align 4
  %261 = add i32 %259, %260
  %262 = call i32 @av_clip_uint8(i32 %261)
  %263 = load i32*, i32** %18, align 8
  %264 = load i32, i32* %6, align 4
  %265 = mul nsw i32 3, %264
  %266 = add nsw i32 %265, 0
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %263, i64 %267
  store i32 %262, i32* %268, align 4
  %269 = load i32, i32* %19, align 4
  %270 = call i32 @av_clip_uint8(i32 %269)
  %271 = load i32*, i32** %18, align 8
  %272 = load i32, i32* %6, align 4
  %273 = mul nsw i32 3, %272
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %271, i64 %275
  store i32 %270, i32* %276, align 4
  %277 = load i32, i32* %19, align 4
  %278 = load i32, i32* %20, align 4
  %279 = add i32 %277, %278
  %280 = call i32 @av_clip_uint8(i32 %279)
  %281 = load i32*, i32** %18, align 8
  %282 = load i32, i32* %6, align 4
  %283 = mul nsw i32 3, %282
  %284 = add nsw i32 %283, 2
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %281, i64 %285
  store i32 %280, i32* %286, align 4
  br label %287

287:                                              ; preds = %241
  %288 = load i32, i32* %6, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %6, align 4
  br label %237

290:                                              ; preds = %237
  %291 = load i32*, i32** %15, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** %15, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 -1
  store i32 %293, i32* %295, align 4
  %296 = load i32*, i32** %15, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 -2
  store i32 %293, i32* %297, align 4
  %298 = load i32*, i32** %15, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 -3
  store i32 %293, i32* %299, align 4
  %300 = load i32*, i32** %15, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 -4
  store i32 %293, i32* %301, align 4
  %302 = load i32*, i32** %15, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sub nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** %15, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %307, i32* %311, align 4
  %312 = load i32*, i32** %15, align 8
  %313 = load i32, i32* %8, align 4
  %314 = add nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  store i32 %307, i32* %316, align 4
  %317 = load i32*, i32** %15, align 8
  %318 = load i32, i32* %8, align 4
  %319 = add nsw i32 %318, 2
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  store i32 %307, i32* %321, align 4
  %322 = load i32*, i32** %15, align 8
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, 3
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  store i32 %307, i32* %326, align 4
  %327 = load i32, i32* %7, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %390

329:                                              ; preds = %290
  %330 = load i32*, i32** %15, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 -4
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 7
  %334 = load i32, i32* %333, align 8
  %335 = mul nsw i32 1, %334
  %336 = sext i32 %335 to i64
  %337 = sub i64 0, %336
  %338 = getelementptr inbounds i32, i32* %331, i64 %337
  %339 = load i32*, i32** %15, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 -4
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 7
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @memcpy(i32* %338, i32* %340, i32 %343)
  %345 = load i32*, i32** %15, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 -4
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 7
  %349 = load i32, i32* %348, align 8
  %350 = mul nsw i32 2, %349
  %351 = sext i32 %350 to i64
  %352 = sub i64 0, %351
  %353 = getelementptr inbounds i32, i32* %346, i64 %352
  %354 = load i32*, i32** %15, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 -4
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 7
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @memcpy(i32* %353, i32* %355, i32 %358)
  %360 = load i32*, i32** %15, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 -4
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 7
  %364 = load i32, i32* %363, align 8
  %365 = mul nsw i32 3, %364
  %366 = sext i32 %365 to i64
  %367 = sub i64 0, %366
  %368 = getelementptr inbounds i32, i32* %361, i64 %367
  %369 = load i32*, i32** %15, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 -4
  %371 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %371, i32 0, i32 7
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @memcpy(i32* %368, i32* %370, i32 %373)
  %375 = load i32*, i32** %15, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 -4
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 8
  %380 = mul nsw i32 4, %379
  %381 = sext i32 %380 to i64
  %382 = sub i64 0, %381
  %383 = getelementptr inbounds i32, i32* %376, i64 %382
  %384 = load i32*, i32** %15, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 -4
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 7
  %388 = load i32, i32* %387, align 8
  %389 = call i32 @memcpy(i32* %383, i32* %385, i32 %388)
  br label %453

390:                                              ; preds = %290
  %391 = load i32, i32* %7, align 4
  %392 = load i32, i32* %9, align 4
  %393 = sub nsw i32 %392, 1
  %394 = icmp eq i32 %391, %393
  br i1 %394, label %395, label %452

395:                                              ; preds = %390
  %396 = load i32*, i32** %15, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 -4
  %398 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 8
  %401 = mul nsw i32 1, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %397, i64 %402
  %404 = load i32*, i32** %15, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 -4
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 7
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @memcpy(i32* %403, i32* %405, i32 %408)
  %410 = load i32*, i32** %15, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 -4
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 7
  %414 = load i32, i32* %413, align 8
  %415 = mul nsw i32 2, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %411, i64 %416
  %418 = load i32*, i32** %15, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 -4
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 7
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @memcpy(i32* %417, i32* %419, i32 %422)
  %424 = load i32*, i32** %15, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 -4
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 7
  %428 = load i32, i32* %427, align 8
  %429 = mul nsw i32 3, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %425, i64 %430
  %432 = load i32*, i32** %15, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 -4
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 7
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @memcpy(i32* %431, i32* %433, i32 %436)
  %438 = load i32*, i32** %15, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 -4
  %440 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %440, i32 0, i32 7
  %442 = load i32, i32* %441, align 8
  %443 = mul nsw i32 4, %442
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %439, i64 %444
  %446 = load i32*, i32** %15, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 -4
  %448 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 7
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @memcpy(i32* %445, i32* %447, i32 %450)
  br label %452

452:                                              ; preds = %395, %390
  br label %453

453:                                              ; preds = %452, %329
  %454 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %455 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %454, i32 0, i32 7
  %456 = load i32, i32* %455, align 8
  %457 = load i32*, i32** %15, align 8
  %458 = sext i32 %456 to i64
  %459 = getelementptr inbounds i32, i32* %457, i64 %458
  store i32* %459, i32** %15, align 8
  %460 = load i32, i32* %7, align 4
  %461 = and i32 %460, 1
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %647

463:                                              ; preds = %453
  %464 = load i32*, i32** %16, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 0
  %466 = load i32, i32* %465, align 4
  %467 = load i32*, i32** %16, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 -1
  store i32 %466, i32* %468, align 4
  %469 = load i32*, i32** %16, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 -2
  store i32 %466, i32* %470, align 4
  %471 = load i32*, i32** %17, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 0
  %473 = load i32, i32* %472, align 4
  %474 = load i32*, i32** %17, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 -1
  store i32 %473, i32* %475, align 4
  %476 = load i32*, i32** %17, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 -2
  store i32 %473, i32* %477, align 4
  %478 = load i32*, i32** %16, align 8
  %479 = load i32, i32* %12, align 4
  %480 = sub nsw i32 %479, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %478, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = load i32*, i32** %16, align 8
  %485 = load i32, i32* %12, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  store i32 %483, i32* %487, align 4
  %488 = load i32*, i32** %16, align 8
  %489 = load i32, i32* %12, align 4
  %490 = add nsw i32 %489, 1
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %488, i64 %491
  store i32 %483, i32* %492, align 4
  %493 = load i32*, i32** %17, align 8
  %494 = load i32, i32* %12, align 4
  %495 = sub nsw i32 %494, 1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %493, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = load i32*, i32** %17, align 8
  %500 = load i32, i32* %12, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  store i32 %498, i32* %502, align 4
  %503 = load i32*, i32** %17, align 8
  %504 = load i32, i32* %12, align 4
  %505 = add nsw i32 %504, 1
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %503, i64 %506
  store i32 %498, i32* %507, align 4
  %508 = load i32, i32* %7, align 4
  %509 = icmp eq i32 %508, 1
  br i1 %509, label %510, label %571

510:                                              ; preds = %463
  %511 = load i32*, i32** %16, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 -2
  %513 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %513, i32 0, i32 8
  %515 = load i32, i32* %514, align 4
  %516 = mul nsw i32 1, %515
  %517 = sext i32 %516 to i64
  %518 = sub i64 0, %517
  %519 = getelementptr inbounds i32, i32* %512, i64 %518
  %520 = load i32*, i32** %16, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 -2
  %522 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %523 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %522, i32 0, i32 8
  %524 = load i32, i32* %523, align 4
  %525 = call i32 @memcpy(i32* %519, i32* %521, i32 %524)
  %526 = load i32*, i32** %17, align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 -2
  %528 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %529 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %528, i32 0, i32 8
  %530 = load i32, i32* %529, align 4
  %531 = mul nsw i32 1, %530
  %532 = sext i32 %531 to i64
  %533 = sub i64 0, %532
  %534 = getelementptr inbounds i32, i32* %527, i64 %533
  %535 = load i32*, i32** %17, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 -2
  %537 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %537, i32 0, i32 8
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @memcpy(i32* %534, i32* %536, i32 %539)
  %541 = load i32*, i32** %16, align 8
  %542 = getelementptr inbounds i32, i32* %541, i64 -2
  %543 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %544 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %543, i32 0, i32 8
  %545 = load i32, i32* %544, align 4
  %546 = mul nsw i32 2, %545
  %547 = sext i32 %546 to i64
  %548 = sub i64 0, %547
  %549 = getelementptr inbounds i32, i32* %542, i64 %548
  %550 = load i32*, i32** %16, align 8
  %551 = getelementptr inbounds i32, i32* %550, i64 -2
  %552 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %552, i32 0, i32 8
  %554 = load i32, i32* %553, align 4
  %555 = call i32 @memcpy(i32* %549, i32* %551, i32 %554)
  %556 = load i32*, i32** %17, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 -2
  %558 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %559 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %558, i32 0, i32 8
  %560 = load i32, i32* %559, align 4
  %561 = mul nsw i32 2, %560
  %562 = sext i32 %561 to i64
  %563 = sub i64 0, %562
  %564 = getelementptr inbounds i32, i32* %557, i64 %563
  %565 = load i32*, i32** %17, align 8
  %566 = getelementptr inbounds i32, i32* %565, i64 -2
  %567 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %568 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %567, i32 0, i32 8
  %569 = load i32, i32* %568, align 4
  %570 = call i32 @memcpy(i32* %564, i32* %566, i32 %569)
  br label %634

571:                                              ; preds = %463
  %572 = load i32, i32* %7, align 4
  %573 = load i32, i32* %9, align 4
  %574 = sub nsw i32 %573, 1
  %575 = icmp eq i32 %572, %574
  br i1 %575, label %576, label %633

576:                                              ; preds = %571
  %577 = load i32*, i32** %16, align 8
  %578 = getelementptr inbounds i32, i32* %577, i64 -2
  %579 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %580 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %579, i32 0, i32 8
  %581 = load i32, i32* %580, align 4
  %582 = mul nsw i32 1, %581
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %578, i64 %583
  %585 = load i32*, i32** %16, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 -2
  %587 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %588 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %587, i32 0, i32 8
  %589 = load i32, i32* %588, align 4
  %590 = call i32 @memcpy(i32* %584, i32* %586, i32 %589)
  %591 = load i32*, i32** %17, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 -2
  %593 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %594 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %593, i32 0, i32 8
  %595 = load i32, i32* %594, align 4
  %596 = mul nsw i32 1, %595
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32, i32* %592, i64 %597
  %599 = load i32*, i32** %17, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 -2
  %601 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %602 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %601, i32 0, i32 8
  %603 = load i32, i32* %602, align 4
  %604 = call i32 @memcpy(i32* %598, i32* %600, i32 %603)
  %605 = load i32*, i32** %16, align 8
  %606 = getelementptr inbounds i32, i32* %605, i64 -2
  %607 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %608 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %607, i32 0, i32 8
  %609 = load i32, i32* %608, align 4
  %610 = mul nsw i32 2, %609
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i32, i32* %606, i64 %611
  %613 = load i32*, i32** %16, align 8
  %614 = getelementptr inbounds i32, i32* %613, i64 -2
  %615 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %616 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %615, i32 0, i32 8
  %617 = load i32, i32* %616, align 4
  %618 = call i32 @memcpy(i32* %612, i32* %614, i32 %617)
  %619 = load i32*, i32** %17, align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 -2
  %621 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %622 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %621, i32 0, i32 8
  %623 = load i32, i32* %622, align 4
  %624 = mul nsw i32 2, %623
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i32, i32* %620, i64 %625
  %627 = load i32*, i32** %17, align 8
  %628 = getelementptr inbounds i32, i32* %627, i64 -2
  %629 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %630 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %629, i32 0, i32 8
  %631 = load i32, i32* %630, align 4
  %632 = call i32 @memcpy(i32* %626, i32* %628, i32 %631)
  br label %633

633:                                              ; preds = %576, %571
  br label %634

634:                                              ; preds = %633, %510
  %635 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %636 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %635, i32 0, i32 8
  %637 = load i32, i32* %636, align 4
  %638 = load i32*, i32** %16, align 8
  %639 = sext i32 %637 to i64
  %640 = getelementptr inbounds i32, i32* %638, i64 %639
  store i32* %640, i32** %16, align 8
  %641 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %642 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %641, i32 0, i32 8
  %643 = load i32, i32* %642, align 4
  %644 = load i32*, i32** %17, align 8
  %645 = sext i32 %643 to i64
  %646 = getelementptr inbounds i32, i32* %644, i64 %645
  store i32* %646, i32** %17, align 8
  br label %647

647:                                              ; preds = %634, %453
  %648 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %649 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %648, i32 0, i32 0
  %650 = load i32*, i32** %649, align 8
  %651 = getelementptr inbounds i32, i32* %650, i64 0
  %652 = load i32, i32* %651, align 4
  %653 = load i32*, i32** %18, align 8
  %654 = sext i32 %652 to i64
  %655 = getelementptr inbounds i32, i32* %653, i64 %654
  store i32* %655, i32** %18, align 8
  br label %656

656:                                              ; preds = %647
  %657 = load i32, i32* %7, align 4
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %7, align 4
  br label %232

659:                                              ; preds = %232
  %660 = load i32, i32* %14, align 4
  store i32 %660, i32* %3, align 4
  br label %661

661:                                              ; preds = %659, %174, %63
  %662 = load i32, i32* %3, align 4
  ret i32 %662
}

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, i32, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @GET_TOK(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @tm2_hi_res_block(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @tm2_med_res_block(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @tm2_low_res_block(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @tm2_null_res_block(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @tm2_update_block(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @tm2_still_block(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @tm2_motion_block(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
