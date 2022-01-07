; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_pixel_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_cv_pixel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64*, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Could not get pixel format for color format '%s' range '%s'.\0A\00", align 1
@AVCOL_RANGE_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_RANGE_NB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Color range not set for %s. Using MPEG range.\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Could not get frame format info for color %d range %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32*, i64*, i64*, i64*, i64*)* @get_cv_pixel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cv_pixel_info(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3, i64* %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %18, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %19, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %20, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @get_cv_pixel_format(%struct.TYPE_10__* %33, i32 %34, i32 %35, i32* %36, i32* %22)
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* %23, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @av_get_pix_fmt_name(i32 %43)
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* @AVCOL_RANGE_NB, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %20, align 4
  %54 = call i8* @av_color_range_name(i32 %53)
  br label %56

55:                                               ; preds = %48, %40
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i8* [ %54, %52 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %55 ]
  %58 = call i32 (%struct.TYPE_10__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_10__* %41, i32 %42, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %44, i8* %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %9, align 4
  br label %368

61:                                               ; preds = %8
  %62 = load i32, i32* %22, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = load i32, i32* @AV_LOG_WARNING, align 4
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @av_get_pix_fmt_name(i32 %74)
  %76 = call i32 (%struct.TYPE_10__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_10__* %72, i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %69, %64
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* %19, align 4
  switch i32 %79, label %297 [
    i32 130, label %80
    i32 128, label %140
    i32 129, label %232
  ]

80:                                               ; preds = %78
  %81 = load i32*, i32** %13, align 8
  store i32 2, i32* %81, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %15, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %93 = icmp ne %struct.TYPE_9__* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %80
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  br label %104

100:                                              ; preds = %80
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi i64 [ %99, %94 ], [ %103, %100 ]
  %106 = load i64*, i64** %16, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  %112 = udiv i64 %111, 2
  %113 = load i64*, i64** %14, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  %119 = udiv i64 %118, 2
  %120 = load i64*, i64** %15, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = icmp ne %struct.TYPE_9__* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %104
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 1
  %129 = load i64, i64* %128, align 8
  br label %136

130:                                              ; preds = %104
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  %135 = and i64 %134, -2
  br label %136

136:                                              ; preds = %130, %124
  %137 = phi i64 [ %129, %124 ], [ %135, %130 ]
  %138 = load i64*, i64** %16, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  store i64 %137, i64* %139, align 8
  br label %305

140:                                              ; preds = %78
  %141 = load i32*, i32** %13, align 8
  store i32 3, i32* %141, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64*, i64** %14, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %15, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %153 = icmp ne %struct.TYPE_9__* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %140
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  %159 = load i64, i64* %158, align 8
  br label %164

160:                                              ; preds = %140
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  br label %164

164:                                              ; preds = %160, %154
  %165 = phi i64 [ %159, %154 ], [ %163, %160 ]
  %166 = load i64*, i64** %16, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, 1
  %172 = udiv i64 %171, 2
  %173 = load i64*, i64** %14, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 1
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, 1
  %179 = udiv i64 %178, 2
  %180 = load i64*, i64** %15, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 1
  store i64 %179, i64* %181, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %183 = icmp ne %struct.TYPE_9__* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %164
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 1
  %189 = load i64, i64* %188, align 8
  br label %196

190:                                              ; preds = %164
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, 1
  %195 = udiv i64 %194, 2
  br label %196

196:                                              ; preds = %190, %184
  %197 = phi i64 [ %189, %184 ], [ %195, %190 ]
  %198 = load i64*, i64** %16, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, 1
  %204 = udiv i64 %203, 2
  %205 = load i64*, i64** %14, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 2
  store i64 %204, i64* %206, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, 1
  %211 = udiv i64 %210, 2
  %212 = load i64*, i64** %15, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 2
  store i64 %211, i64* %213, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %215 = icmp ne %struct.TYPE_9__* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %196
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 2
  %221 = load i64, i64* %220, align 8
  br label %228

222:                                              ; preds = %196
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, 1
  %227 = udiv i64 %226, 2
  br label %228

228:                                              ; preds = %222, %216
  %229 = phi i64 [ %221, %216 ], [ %227, %222 ]
  %230 = load i64*, i64** %16, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 2
  store i64 %229, i64* %231, align 8
  br label %305

232:                                              ; preds = %78
  %233 = load i32*, i32** %13, align 8
  store i32 2, i32* %233, align 4
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64*, i64** %14, align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 0
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i64*, i64** %15, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 0
  store i64 %241, i64* %243, align 8
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %245 = icmp ne %struct.TYPE_9__* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %232
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 2
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 0
  %251 = load i64, i64* %250, align 8
  br label %259

252:                                              ; preds = %232
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = mul i64 %255, 2
  %257 = add i64 %256, 63
  %258 = and i64 %257, -64
  br label %259

259:                                              ; preds = %252, %246
  %260 = phi i64 [ %251, %246 ], [ %258, %252 ]
  %261 = load i64*, i64** %16, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 0
  store i64 %260, i64* %262, align 8
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, 1
  %267 = udiv i64 %266, 2
  %268 = load i64*, i64** %14, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 1
  store i64 %267, i64* %269, align 8
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = add i64 %272, 1
  %274 = udiv i64 %273, 2
  %275 = load i64*, i64** %15, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 1
  store i64 %274, i64* %276, align 8
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %278 = icmp ne %struct.TYPE_9__* %277, null
  br i1 %278, label %279, label %285

279:                                              ; preds = %259
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 2
  %282 = load i64*, i64** %281, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 1
  %284 = load i64, i64* %283, align 8
  br label %293

285:                                              ; preds = %259
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %288, 1
  %290 = udiv i64 %289, 2
  %291 = add i64 %290, 63
  %292 = and i64 %291, -64
  br label %293

293:                                              ; preds = %285, %279
  %294 = phi i64 [ %284, %279 ], [ %292, %285 ]
  %295 = load i64*, i64** %16, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 1
  store i64 %294, i64* %296, align 8
  br label %305

297:                                              ; preds = %78
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %299 = load i32, i32* @AV_LOG_ERROR, align 4
  %300 = load i32, i32* %19, align 4
  %301 = load i32, i32* %20, align 4
  %302 = call i32 (%struct.TYPE_10__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_10__* %298, i32 %299, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %300, i32 %301)
  %303 = load i32, i32* @EINVAL, align 4
  %304 = call i32 @AVERROR(i32 %303)
  store i32 %304, i32* %9, align 4
  br label %368

305:                                              ; preds = %293, %228, %136
  %306 = load i64*, i64** %17, align 8
  store i64 0, i64* %306, align 8
  store i32 0, i32* %21, align 4
  br label %307

307:                                              ; preds = %364, %305
  %308 = load i32, i32* %21, align 4
  %309 = load i32*, i32** %13, align 8
  %310 = load i32, i32* %309, align 4
  %311 = icmp slt i32 %308, %310
  br i1 %311, label %312, label %367

312:                                              ; preds = %307
  %313 = load i32, i32* %21, align 4
  %314 = load i32*, i32** %13, align 8
  %315 = load i32, i32* %314, align 4
  %316 = sub nsw i32 %315, 1
  %317 = icmp slt i32 %313, %316
  br i1 %317, label %318, label %349

318:                                              ; preds = %312
  %319 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 3
  %321 = load i64*, i64** %320, align 8
  %322 = load i32, i32* %21, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i64, i64* %321, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = load i64*, i64** %16, align 8
  %327 = load i32, i32* %21, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i64, i64* %326, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = load i64*, i64** %15, align 8
  %332 = load i32, i32* %21, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %331, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = mul i64 %330, %335
  %337 = add i64 %325, %336
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 3
  %340 = load i64*, i64** %339, align 8
  %341 = load i32, i32* %21, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i64, i64* %340, i64 %343
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %337, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %318
  %348 = load i64*, i64** %17, align 8
  store i64 0, i64* %348, align 8
  br label %367

349:                                              ; preds = %318, %312
  %350 = load i64*, i64** %16, align 8
  %351 = load i32, i32* %21, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i64, i64* %350, i64 %352
  %354 = load i64, i64* %353, align 8
  %355 = load i64*, i64** %15, align 8
  %356 = load i32, i32* %21, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %355, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = mul i64 %354, %359
  %361 = load i64*, i64** %17, align 8
  %362 = load i64, i64* %361, align 8
  %363 = add i64 %362, %360
  store i64 %363, i64* %361, align 8
  br label %364

364:                                              ; preds = %349
  %365 = load i32, i32* %21, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %21, align 4
  br label %307

367:                                              ; preds = %347, %307
  store i32 0, i32* %9, align 4
  br label %368

368:                                              ; preds = %367, %297, %56
  %369 = load i32, i32* %9, align 4
  ret i32 %369
}

declare dso_local i32 @get_cv_pixel_format(%struct.TYPE_10__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i8* @av_color_range_name(i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
