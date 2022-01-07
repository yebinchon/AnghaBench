; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_buffer_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggenc.c_ogg_buffer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i32*, i64, i64, i64 }

@AV_CODEC_ID_THEORA = common dso_local global i64 0, align 8
@AV_CODEC_ID_VP8 = common dso_local global i64 0, align 8
@MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32, i64, i32)* @ogg_buffer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_buffer_data(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %13, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %14, align 8
  %31 = load i32, i32* %10, align 4
  %32 = udiv i32 %31, 255
  %33 = add i32 %32, 1
  store i32 %33, i32* %15, align 4
  %34 = load i32*, i32** %9, align 8
  store i32* %34, i32** %16, align 8
  store i32 0, i32* %20, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_CODEC_ID_THEORA, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %6
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AV_CODEC_ID_VP8, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %42, %6
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i64 @ogg_granule_to_timestamp(%struct.TYPE_14__* %54, i64 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @ogg_granule_to_timestamp(%struct.TYPE_14__* %57, i64 %60)
  %62 = add nsw i64 %61, 1
  %63 = icmp sgt i64 %56, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %53
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i64 @ogg_key_granule(%struct.TYPE_14__* %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64, %53
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %78 = call i32 @ogg_buffer_page(%struct.TYPE_18__* %76, %struct.TYPE_14__* %77)
  br label %79

79:                                               ; preds = %75, %69
  store i32 1, i32* %20, align 4
  br label %80

80:                                               ; preds = %79, %64, %50, %42
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %104, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load i32, i32* @MAX_PAGE_SIZE, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %91, %95
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %103 = call i32 @ogg_buffer_page(%struct.TYPE_18__* %101, %struct.TYPE_14__* %102)
  br label %104

104:                                              ; preds = %100, %89, %83, %80
  store i32 0, i32* %17, align 4
  br label %105

105:                                              ; preds = %273, %104
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %274

109:                                              ; preds = %105
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %21, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 255, %117
  %119 = call i32 @FFMIN(i32 %114, i32 %118)
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %109
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %122, %109
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %18, align 4
  %142 = sub nsw i32 %141, 1
  %143 = call i32 @memset(i32* %140, i32 255, i32 %142)
  %144 = load i32, i32* %18, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %18, align 4
  %152 = mul nsw i32 %151, 255
  %153 = call i32 @FFMIN(i32 %150, i32 %152)
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %18, align 4
  %156 = sub nsw i32 %155, 1
  %157 = mul nsw i32 %156, 255
  %158 = sub nsw i32 %154, %157
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %161, i64 %166
  store i32 %158, i32* %167, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %170, %173
  %175 = load i32*, i32** %16, align 8
  %176 = load i32, i32* %19, align 4
  %177 = call i32 @memcpy(i64 %174, i32* %175, i32 %176)
  %178 = load i32, i32* %19, align 4
  %179 = load i32*, i32** %16, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %16, align 8
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %10, align 4
  %184 = sub i32 %183, %182
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %17, align 4
  %188 = load i32, i32* %19, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, %189
  store i64 %193, i64* %191, align 8
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %15, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %132
  %198 = load i64, i64* %11, align 8
  %199 = trunc i64 %198 to i32
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %197, %132
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %204, align 8
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 6
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %205, i64 %208
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  store %struct.TYPE_17__* %210, %struct.TYPE_17__** %22, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %218 = call i64 @av_rescale_q(i64 %213, i32 %216, i32 %217)
  store i64 %218, i64* %23, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sext i32 %222 to i64
  %224 = call i64 @ogg_granule_to_timestamp(%struct.TYPE_14__* %219, i64 %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %229 = call i64 @av_rescale_q(i64 %224, i32 %227, i32 %228)
  store i64 %229, i64* %24, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 255
  br i1 %233, label %234, label %238

234:                                              ; preds = %202
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %237 = call i32 @ogg_buffer_page(%struct.TYPE_18__* %235, %struct.TYPE_14__* %236)
  br label %273

238:                                              ; preds = %202
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %272, label %241

241:                                              ; preds = %238
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp sgt i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %241
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp sge i64 %249, %252
  br i1 %253, label %267, label %254

254:                                              ; preds = %246, %241
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = icmp sgt i64 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %254
  %260 = load i64, i64* %24, align 8
  %261 = load i64, i64* %23, align 8
  %262 = sub nsw i64 %260, %261
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp sge i64 %262, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %259, %246
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %270 = call i32 @ogg_buffer_page(%struct.TYPE_18__* %268, %struct.TYPE_14__* %269)
  br label %271

271:                                              ; preds = %267, %259, %254
  br label %272

272:                                              ; preds = %271, %238
  br label %273

273:                                              ; preds = %272, %234
  br label %105

274:                                              ; preds = %105
  %275 = load i32, i32* %20, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %274
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, -1
  br i1 %282, label %283, label %287

283:                                              ; preds = %277
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %286 = call i32 @ogg_buffer_page(%struct.TYPE_18__* %284, %struct.TYPE_14__* %285)
  br label %287

287:                                              ; preds = %283, %277, %274
  ret i32 0
}

declare dso_local i64 @ogg_granule_to_timestamp(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @ogg_key_granule(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ogg_buffer_page(%struct.TYPE_18__*, %struct.TYPE_14__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
