; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v210x.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v210x.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32*, i32, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"(Probably) padded data\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, %struct.TYPE_10__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_12__* %0, i8* %1, i32* %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %10, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %11, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = mul nsw i32 %38, 8
  %40 = sdiv i32 %39, 3
  %41 = icmp slt i32 %31, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 @av_log(%struct.TYPE_12__* %43, i32 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %5, align 4
  br label %337

47:                                               ; preds = %4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = mul nsw i32 %57, 8
  %59 = sdiv i32 %58, 3
  %60 = icmp sgt i32 %50, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = call i32 @avpriv_request_sample(%struct.TYPE_12__* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %47
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = call i32 @ff_get_buffer(%struct.TYPE_12__* %65, %struct.TYPE_11__* %66, i32 0)
  store i32 %67, i32* %18, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %18, align 4
  store i32 %70, i32* %5, align 4
  br label %337

71:                                               ; preds = %64
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %14, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %15, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %16, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32* %93, i32** %17, align 8
  %94 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %331, %71
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %10, align 8
  %102 = load i32, i32* %100, align 4
  %103 = call i32 @av_be2ne32(i32 %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = ashr i32 %104, 16
  %106 = and i32 %105, 65472
  %107 = load i32*, i32** %15, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %15, align 8
  store i32 %106, i32* %107, align 4
  %109 = load i32, i32* %19, align 4
  %110 = ashr i32 %109, 6
  %111 = and i32 %110, 65472
  %112 = load i32*, i32** %14, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %14, align 8
  store i32 %111, i32* %112, align 4
  %114 = load i32, i32* %19, align 4
  %115 = shl i32 %114, 4
  %116 = and i32 %115, 65472
  %117 = load i32*, i32** %16, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %16, align 8
  store i32 %116, i32* %117, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %10, align 8
  %121 = load i32, i32* %119, align 4
  %122 = call i32 @av_be2ne32(i32 %121)
  store i32 %122, i32* %19, align 4
  %123 = load i32, i32* %19, align 4
  %124 = ashr i32 %123, 16
  %125 = and i32 %124, 65472
  %126 = load i32*, i32** %14, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %14, align 8
  store i32 %125, i32* %126, align 4
  %128 = load i32*, i32** %14, align 8
  %129 = load i32*, i32** %17, align 8
  %130 = icmp uge i32* %128, %129
  br i1 %130, label %131, label %179

131:                                              ; preds = %99
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = sdiv i32 %136, 2
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32*, i32** %14, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %14, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = sdiv i32 %147, 2
  %149 = load i32, i32* %12, align 4
  %150 = sdiv i32 %149, 2
  %151 = sub nsw i32 %148, %150
  %152 = load i32*, i32** %15, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %15, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 2
  %161 = load i32, i32* %12, align 4
  %162 = sdiv i32 %161, 2
  %163 = sub nsw i32 %160, %162
  %164 = load i32*, i32** %16, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %16, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32* %170, i32** %17, align 8
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp sge i32 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %131
  br label %332

178:                                              ; preds = %131
  br label %179

179:                                              ; preds = %178, %99
  %180 = load i32, i32* %19, align 4
  %181 = ashr i32 %180, 6
  %182 = and i32 %181, 65472
  %183 = load i32*, i32** %15, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %15, align 8
  store i32 %182, i32* %183, align 4
  %185 = load i32, i32* %19, align 4
  %186 = shl i32 %185, 4
  %187 = and i32 %186, 65472
  %188 = load i32*, i32** %14, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %14, align 8
  store i32 %187, i32* %188, align 4
  %190 = load i32*, i32** %10, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %10, align 8
  %192 = load i32, i32* %190, align 4
  %193 = call i32 @av_be2ne32(i32 %192)
  store i32 %193, i32* %19, align 4
  %194 = load i32, i32* %19, align 4
  %195 = ashr i32 %194, 16
  %196 = and i32 %195, 65472
  %197 = load i32*, i32** %16, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %16, align 8
  store i32 %196, i32* %197, align 4
  %199 = load i32, i32* %19, align 4
  %200 = ashr i32 %199, 6
  %201 = and i32 %200, 65472
  %202 = load i32*, i32** %14, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %14, align 8
  store i32 %201, i32* %202, align 4
  %204 = load i32*, i32** %14, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = icmp uge i32* %204, %205
  br i1 %206, label %207, label %255

207:                                              ; preds = %179
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = sdiv i32 %212, 2
  %214 = load i32, i32* %12, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load i32*, i32** %14, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %14, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 1
  %223 = load i32, i32* %222, align 4
  %224 = sdiv i32 %223, 2
  %225 = load i32, i32* %12, align 4
  %226 = sdiv i32 %225, 2
  %227 = sub nsw i32 %224, %226
  %228 = load i32*, i32** %15, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32* %230, i32** %15, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  %235 = load i32, i32* %234, align 4
  %236 = sdiv i32 %235, 2
  %237 = load i32, i32* %12, align 4
  %238 = sdiv i32 %237, 2
  %239 = sub nsw i32 %236, %238
  %240 = load i32*, i32** %16, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32* %242, i32** %16, align 8
  %243 = load i32*, i32** %14, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32* %246, i32** %17, align 8
  %247 = load i32, i32* %13, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %13, align 4
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp sge i32 %248, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %207
  br label %332

254:                                              ; preds = %207
  br label %255

255:                                              ; preds = %254, %179
  %256 = load i32, i32* %19, align 4
  %257 = shl i32 %256, 4
  %258 = and i32 %257, 65472
  %259 = load i32*, i32** %15, align 8
  %260 = getelementptr inbounds i32, i32* %259, i32 1
  store i32* %260, i32** %15, align 8
  store i32 %258, i32* %259, align 4
  %261 = load i32*, i32** %10, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %10, align 8
  %263 = load i32, i32* %261, align 4
  %264 = call i32 @av_be2ne32(i32 %263)
  store i32 %264, i32* %19, align 4
  %265 = load i32, i32* %19, align 4
  %266 = ashr i32 %265, 16
  %267 = and i32 %266, 65472
  %268 = load i32*, i32** %14, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %14, align 8
  store i32 %267, i32* %268, align 4
  %270 = load i32, i32* %19, align 4
  %271 = ashr i32 %270, 6
  %272 = and i32 %271, 65472
  %273 = load i32*, i32** %16, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 1
  store i32* %274, i32** %16, align 8
  store i32 %272, i32* %273, align 4
  %275 = load i32, i32* %19, align 4
  %276 = shl i32 %275, 4
  %277 = and i32 %276, 65472
  %278 = load i32*, i32** %14, align 8
  %279 = getelementptr inbounds i32, i32* %278, i32 1
  store i32* %279, i32** %14, align 8
  store i32 %277, i32* %278, align 4
  %280 = load i32*, i32** %14, align 8
  %281 = load i32*, i32** %17, align 8
  %282 = icmp uge i32* %280, %281
  br i1 %282, label %283, label %331

283:                                              ; preds = %255
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = sdiv i32 %288, 2
  %290 = load i32, i32* %12, align 4
  %291 = sub nsw i32 %289, %290
  %292 = load i32*, i32** %14, align 8
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32* %294, i32** %14, align 8
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = sdiv i32 %299, 2
  %301 = load i32, i32* %12, align 4
  %302 = sdiv i32 %301, 2
  %303 = sub nsw i32 %300, %302
  %304 = load i32*, i32** %15, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32* %306, i32** %15, align 8
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 2
  %311 = load i32, i32* %310, align 4
  %312 = sdiv i32 %311, 2
  %313 = load i32, i32* %12, align 4
  %314 = sdiv i32 %313, 2
  %315 = sub nsw i32 %312, %314
  %316 = load i32*, i32** %16, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32* %318, i32** %16, align 8
  %319 = load i32*, i32** %14, align 8
  %320 = load i32, i32* %12, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32* %322, i32** %17, align 8
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %13, align 4
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp sge i32 %324, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %283
  br label %332

330:                                              ; preds = %283
  br label %331

331:                                              ; preds = %330, %255
  br label %99

332:                                              ; preds = %329, %253, %177
  %333 = load i32*, i32** %8, align 8
  store i32 1, i32* %333, align 4
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  store i32 %336, i32* %5, align 4
  br label %337

337:                                              ; preds = %332, %69, %42
  %338 = load i32, i32* %5, align 4
  ret i32 %338
}

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @av_be2ne32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
