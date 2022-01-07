; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_8svx.c_eightsvx_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_8svx.c_eightsvx_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i64*, i32** }
%struct.TYPE_11__ = type { i32, i64* }
%struct.TYPE_12__ = type { i32, i32* }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Packet with odd size, ignoring last byte\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"packet size is too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"unexpected empty packet\0A\00", align 1
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @eightsvx_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eightsvx_decode_frame(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %11, align 8
  store i32 2, i32* %15, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %175, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %175

31:                                               ; preds = %28
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %34, %37
  %39 = load i32, i32* %15, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %16, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = srem i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %31
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = load i32, i32* @AV_LOG_WARNING, align 4
  %52 = call i32 @av_log(%struct.TYPE_13__* %50, i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %31
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = icmp slt i32 %56, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = call i32 @av_log(%struct.TYPE_13__* %65, i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %68, i32* %5, align 4
  br label %278

69:                                               ; preds = %53
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 128
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %75, i64* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %99

84:                                               ; preds = %69
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 2, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %87, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 128
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  store i64 %94, i64* %98, align 8
  br label %99

99:                                               ; preds = %84, %69
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %16, align 4
  %106 = call i8* @av_malloc(i32 %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 4
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 0
  store i32* %107, i32** %111, align 8
  %112 = icmp ne i32* %107, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %99
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = call i32 @AVERROR(i32 %114)
  store i32 %115, i32* %5, align 4
  br label %278

116:                                              ; preds = %99
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %139

121:                                              ; preds = %116
  %122 = load i32, i32* %16, align 4
  %123 = call i8* @av_malloc(i32 %122)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  %127 = load i32**, i32*** %126, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  store i32* %124, i32** %128, align 8
  %129 = icmp ne i32* %124, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %121
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 4
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 0
  %135 = call i32 @av_freep(i32** %134)
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = call i32 @AVERROR(i32 %136)
  store i32 %137, i32* %5, align 4
  br label %278

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %116
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 0
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @memcpy(i32* %144, i64* %150, i32 %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 2
  br i1 %156, label %157, label %174

157:                                              ; preds = %139
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 4
  %160 = load i32**, i32*** %159, align 8
  %161 = getelementptr inbounds i32*, i32** %160, i64 1
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = mul nsw i32 2, %166
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %165, i64 %170
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @memcpy(i32* %162, i64* %171, i32 %172)
  br label %174

174:                                              ; preds = %157, %139
  br label %175

175:                                              ; preds = %174, %28, %4
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 4
  %178 = load i32**, i32*** %177, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 0
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %175
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = call i32 @av_log(%struct.TYPE_13__* %183, i32 %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %186 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %186, i32* %5, align 4
  br label %278

187:                                              ; preds = %175
  %188 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %192, %195
  %197 = trunc i64 %196 to i32
  %198 = call i32 @FFMIN(i32 %188, i32 %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp sle i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %187
  %202 = load i32*, i32** %8, align 8
  store i32 0, i32* %202, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %5, align 4
  br label %278

206:                                              ; preds = %187
  %207 = load i32, i32* %12, align 4
  %208 = mul nsw i32 %207, 2
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %213 = call i32 @ff_get_buffer(%struct.TYPE_13__* %211, %struct.TYPE_12__* %212, i32 0)
  store i32 %213, i32* %14, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %206
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %5, align 4
  br label %278

217:                                              ; preds = %206
  store i32 0, i32* %13, align 4
  br label %218

218:                                              ; preds = %254, %217
  %219 = load i32, i32* %13, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %257

224:                                              ; preds = %218
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 4
  %234 = load i32**, i32*** %233, align 8
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %12, align 4
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 3
  %246 = load i64*, i64** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @delta_decode(i32 %231, i32* %242, i32 %243, i64* %249, i32 %252)
  br label %254

254:                                              ; preds = %224
  %255 = load i32, i32* %13, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %13, align 4
  br label %218

257:                                              ; preds = %218
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = add i64 %262, %259
  store i64 %263, i64* %261, align 8
  %264 = load i32*, i32** %8, align 8
  store i32 1, i32* %264, align 4
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %267, 0
  %269 = zext i1 %268 to i32
  %270 = load i32, i32* %15, align 4
  %271 = mul nsw i32 %269, %270
  %272 = load i32, i32* %12, align 4
  %273 = add nsw i32 %271, %272
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = mul nsw i32 %273, %276
  store i32 %277, i32* %5, align 4
  br label %278

278:                                              ; preds = %257, %215, %201, %182, %130, %113, %64
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @delta_decode(i32, i32*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
