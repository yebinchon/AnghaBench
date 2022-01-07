; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff.c_tiff_unpack_strip.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff.c_tiff_unpack_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32*, i32*, i32, i32, i32*, i64, i32, i64, %struct.TYPE_22__*, i64, i32, i32, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i32, i32 }

@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PLANAR = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Not enough memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_GRAY12 = common dso_local global i64 0, align 8
@TIFF_DEFLATE = common dso_local global i32 0, align 4
@TIFF_ADOBE_DEFLATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"zlib support not enabled, deflate compression not supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@TIFF_LZMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"LZMA support not enabled\0A\00", align 1
@TIFF_LZW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Old style LZW is unsupported\0A\00", align 1
@FF_LZW_TIFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Error initializing LZW decoder\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Decoded only %i bytes of %i\0A\00", align 1
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@TIFF_CCITT_RLE = common dso_local global i32 0, align 4
@TIFF_G3 = common dso_local global i32 0, align 4
@TIFF_G4 = common dso_local global i32 0, align 4
@TIFF_TYPE_DNG = common dso_local global i64 0, align 8
@TIFF_TYPE_CINEMADNG = common dso_local global i64 0, align 8
@TIFF_NEWJPEG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"More than one DNG JPEG strips unsupported\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Source data overread\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@ff_reverse = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"Read went out of bounds\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Copy went out of bounds\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Run went out of bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_25__*, i32*, i32, i32*, i32, i32, i32)* @tiff_unpack_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiff_unpack_strip(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_24__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %35 = load i32*, i32** %14, align 8
  store i32* %35, i32** %24, align 8
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = add nsw i32 %42, 7
  %44 = ashr i32 %43, 3
  store i32 %44, i32* %25, align 4
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.TYPE_24__* @av_pix_fmt_desc_get(i64 %47)
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %26, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 3
  br label %67

67:                                               ; preds = %62, %55, %8
  %68 = phi i1 [ false, %55 ], [ false, %8 ], [ %66, %62 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %27, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 15
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %25, align 4
  %79 = sdiv i32 %78, %77
  store i32 %79, i32* %25, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* %15, align 4
  %82 = icmp sle i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %84, i32* %9, align 4
  br label %879

85:                                               ; preds = %80
  %86 = load i32, i32* %27, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %178

88:                                               ; preds = %85
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = sdiv i32 %92, %97
  %99 = add nsw i32 %98, 1
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %103, %108
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %109, %114
  %116 = add nsw i32 %115, 7
  %117 = ashr i32 %116, 3
  store i32 %117, i32* %29, align 4
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 5
  %122 = load i32, i32* %29, align 4
  %123 = call i32 @av_fast_padded_malloc(i32** %119, i32* %121, i32 %122)
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %88
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 11
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = load i32, i32* @AV_LOG_ERROR, align 4
  %133 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %131, i32 %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = call i32 @AVERROR(i32 %134)
  store i32 %135, i32* %9, align 4
  br label %879

136:                                              ; preds = %88
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %143, %148
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %25, align 4
  %151 = load i32, i32* %25, align 4
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %151, %156
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %157, %162
  %164 = load i32, i32* %25, align 4
  %165 = mul nsw i32 2, %164
  %166 = add nsw i32 %163, %165
  store i32 %166, i32* %25, align 4
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* %29, align 4
  %169 = icmp sle i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @av_assert0(i32 %170)
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 24
  %176 = zext i1 %175 to i32
  %177 = call i32 @av_assert0(i32 %176)
  br label %178

178:                                              ; preds = %136, %85
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 12
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %186, %189
  %191 = add nsw i32 %190, 7
  %192 = ashr i32 %191, 3
  store i32 %192, i32* %25, align 4
  br label %193

193:                                              ; preds = %183, %178
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AV_PIX_FMT_GRAY12, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %222

199:                                              ; preds = %193
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 5
  %204 = load i32, i32* %25, align 4
  %205 = call i32 @av_fast_padded_malloc(i32** %201, i32* %203, i32 %204)
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = icmp eq i32* %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %199
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 11
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %212, align 8
  %214 = load i32, i32* @AV_LOG_ERROR, align 4
  %215 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %213, i32 %214, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = call i32 @AVERROR(i32 %216)
  store i32 %217, i32* %9, align 4
  br label %879

218:                                              ; preds = %199
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 4
  %221 = load i32*, i32** %220, align 8
  store i32* %221, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %222

222:                                              ; preds = %218, %193
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @TIFF_DEFLATE, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %234, label %228

228:                                              ; preds = %222
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @TIFF_ADOBE_DEFLATE, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %228, %222
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 11
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %236, align 8
  %238 = load i32, i32* @AV_LOG_ERROR, align 4
  %239 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %237, i32 %238, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %240 = load i32, i32* @ENOSYS, align 4
  %241 = call i32 @AVERROR(i32 %240)
  store i32 %241, i32* %9, align 4
  br label %879

242:                                              ; preds = %228
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @TIFF_LZMA, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %242
  %249 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 11
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %250, align 8
  %252 = load i32, i32* @AV_LOG_ERROR, align 4
  %253 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %251, i32 %252, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %254 = load i32, i32* @ENOSYS, align 4
  %255 = call i32 @AVERROR(i32 %254)
  store i32 %255, i32* %9, align 4
  br label %879

256:                                              ; preds = %242
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @TIFF_LZW, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %408

262:                                              ; preds = %256
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 10
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %279

267:                                              ; preds = %262
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %269 = load i32*, i32** %14, align 8
  %270 = load i32, i32* %15, align 4
  %271 = call i32 @deinvert_buffer(%struct.TYPE_23__* %268, i32* %269, i32 %270)
  store i32 %271, i32* %23, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = load i32, i32* %23, align 4
  store i32 %274, i32* %9, align 4
  br label %879

275:                                              ; preds = %267
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 7
  %278 = load i32*, i32** %277, align 8
  store i32* %278, i32** %14, align 8
  store i32* %278, i32** %24, align 8
  br label %279

279:                                              ; preds = %275, %262
  %280 = load i32, i32* %15, align 4
  %281 = icmp sgt i32 %280, 1
  br i1 %281, label %282, label %299

282:                                              ; preds = %279
  %283 = load i32*, i32** %14, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %299, label %287

287:                                              ; preds = %282
  %288 = load i32*, i32** %14, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, 1
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %287
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 11
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %295, align 8
  %297 = load i32, i32* @AV_LOG_ERROR, align 4
  %298 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %296, i32 %297, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %299

299:                                              ; preds = %293, %287, %282, %279
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 14
  %302 = load i32, i32* %301, align 4
  %303 = load i32*, i32** %14, align 8
  %304 = load i32, i32* %15, align 4
  %305 = load i32, i32* @FF_LZW_TIFF, align 4
  %306 = call i32 @ff_lzw_decode_init(i32 %302, i32 8, i32* %303, i32 %304, i32 %305)
  store i32 %306, i32* %23, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %299
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 11
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %310, align 8
  %312 = load i32, i32* @AV_LOG_ERROR, align 4
  %313 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %311, i32 %312, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %314 = load i32, i32* %23, align 4
  store i32 %314, i32* %9, align 4
  br label %879

315:                                              ; preds = %299
  store i32 0, i32* %20, align 4
  br label %316

316:                                              ; preds = %404, %315
  %317 = load i32, i32* %20, align 4
  %318 = load i32, i32* %17, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %407

320:                                              ; preds = %316
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 14
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %12, align 8
  %325 = load i32, i32* %25, align 4
  %326 = call i32 @ff_lzw_decode(i32 %323, i32* %324, i32 %325)
  store i32 %326, i32* %21, align 4
  %327 = load i32, i32* %21, align 4
  %328 = load i32, i32* %25, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %339

330:                                              ; preds = %320
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 11
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %332, align 8
  %334 = load i32, i32* @AV_LOG_ERROR, align 4
  %335 = load i32, i32* %21, align 4
  %336 = load i32, i32* %25, align 4
  %337 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %333, i32 %334, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %335, i32 %336)
  %338 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %338, i32* %9, align 4
  br label %879

339:                                              ; preds = %320
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = icmp slt i32 %342, 8
  br i1 %343, label %344, label %361

344:                                              ; preds = %339
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %345, i32 0, i32 11
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %361

352:                                              ; preds = %344
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32*, i32** %12, align 8
  %358 = load i32*, i32** %12, align 8
  %359 = load i32, i32* %25, align 4
  %360 = call i32 @horizontal_fill(%struct.TYPE_23__* %353, i32 %356, i32* %357, i32 1, i32* %358, i32 0, i32 %359, i32 0)
  br label %361

361:                                              ; preds = %352, %344, %339
  %362 = load i32, i32* %27, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %380

364:                                              ; preds = %361
  %365 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %367 = load i32*, i32** %12, align 8
  %368 = load i32, i32* %16, align 4
  %369 = load i32, i32* %20, align 4
  %370 = add nsw i32 %368, %369
  %371 = call i32 @unpack_yuv(%struct.TYPE_23__* %365, %struct.TYPE_25__* %366, i32* %367, i32 %370)
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 3
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  %376 = load i32, i32* %375, align 4
  %377 = sub nsw i32 %376, 1
  %378 = load i32, i32* %20, align 4
  %379 = add nsw i32 %378, %377
  store i32 %379, i32* %20, align 4
  br label %399

380:                                              ; preds = %361
  %381 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @AV_PIX_FMT_GRAY12, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %398

386:                                              ; preds = %380
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %389 = load i32*, i32** %12, align 8
  %390 = load i32, i32* %16, align 4
  %391 = load i32, i32* %20, align 4
  %392 = add nsw i32 %390, %391
  %393 = load i32, i32* %25, align 4
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @unpack_gray(%struct.TYPE_23__* %387, %struct.TYPE_25__* %388, i32* %389, i32 %392, i32 %393, i32 %396)
  br label %398

398:                                              ; preds = %386, %380
  br label %399

399:                                              ; preds = %398, %364
  %400 = load i32, i32* %13, align 4
  %401 = load i32*, i32** %12, align 8
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  store i32* %403, i32** %12, align 8
  br label %404

404:                                              ; preds = %399
  %405 = load i32, i32* %20, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %20, align 4
  br label %316

407:                                              ; preds = %316
  store i32 0, i32* %9, align 4
  br label %879

408:                                              ; preds = %256
  %409 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %409, i32 0, i32 6
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* @TIFF_CCITT_RLE, align 4
  %413 = icmp eq i32 %411, %412
  br i1 %413, label %426, label %414

414:                                              ; preds = %408
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 6
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @TIFF_G3, align 4
  %419 = icmp eq i32 %417, %418
  br i1 %419, label %426, label %420

420:                                              ; preds = %414
  %421 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 6
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @TIFF_G4, align 4
  %425 = icmp eq i32 %423, %424
  br i1 %425, label %426, label %446

426:                                              ; preds = %420, %414, %408
  %427 = load i32, i32* %27, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %435, label %429

429:                                              ; preds = %426
  %430 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @AV_PIX_FMT_GRAY12, align 8
  %434 = icmp eq i64 %432, %433
  br i1 %434, label %435, label %437

435:                                              ; preds = %429, %426
  %436 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %436, i32* %9, align 4
  br label %879

437:                                              ; preds = %429
  %438 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %439 = load i32*, i32** %12, align 8
  %440 = load i32, i32* %13, align 4
  %441 = load i32*, i32** %14, align 8
  %442 = load i32, i32* %15, align 4
  %443 = load i32, i32* %25, align 4
  %444 = load i32, i32* %17, align 4
  %445 = call i32 @tiff_unpack_fax(%struct.TYPE_23__* %438, i32* %439, i32 %440, i32* %441, i32 %442, i32 %443, i32 %444)
  store i32 %445, i32* %9, align 4
  br label %879

446:                                              ; preds = %420
  %447 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %448 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %447, i32 0, i32 13
  %449 = load i32*, i32** %14, align 8
  %450 = load i32, i32* %15, align 4
  %451 = call i32 @bytestream2_init(i32* %448, i32* %449, i32 %450)
  %452 = load i32*, i32** %12, align 8
  %453 = load i32, i32* %27, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %446
  %456 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %457 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 8
  br label %463

459:                                              ; preds = %446
  %460 = load i32, i32* %13, align 4
  %461 = load i32, i32* %17, align 4
  %462 = mul nsw i32 %460, %461
  br label %463

463:                                              ; preds = %459, %455
  %464 = phi i32 [ %458, %455 ], [ %462, %459 ]
  %465 = call i32 @bytestream2_init_writer(i32* %18, i32* %452, i32 %464)
  %466 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %467 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %466, i32 0, i32 8
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @TIFF_TYPE_DNG, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %477, label %471

471:                                              ; preds = %463
  %472 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %472, i32 0, i32 8
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @TIFF_TYPE_CINEMADNG, align 8
  %476 = icmp eq i64 %474, %475
  br label %477

477:                                              ; preds = %471, %463
  %478 = phi i1 [ true, %463 ], [ %476, %471 ]
  %479 = zext i1 %478 to i32
  store i32 %479, i32* %28, align 4
  %480 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %481 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %480, i32 0, i32 6
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @TIFF_NEWJPEG, align 4
  %484 = icmp eq i32 %482, %483
  br i1 %484, label %485, label %510

485:                                              ; preds = %477
  %486 = load i32, i32* %28, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %510

488:                                              ; preds = %485
  %489 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %490 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %489, i32 0, i32 9
  %491 = load i32, i32* %490, align 8
  %492 = icmp sgt i32 %491, 1
  br i1 %492, label %493, label %500

493:                                              ; preds = %488
  %494 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %495 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %494, i32 0, i32 11
  %496 = load %struct.TYPE_22__*, %struct.TYPE_22__** %495, align 8
  %497 = load i32, i32* @AV_LOG_ERROR, align 4
  %498 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %496, i32 %497, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %499 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %499, i32* %9, align 4
  br label %879

500:                                              ; preds = %488
  %501 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %502 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %501, i32 0, i32 11
  %503 = load %struct.TYPE_22__*, %struct.TYPE_22__** %502, align 8
  %504 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %505 = call i32 @dng_decode_strip(%struct.TYPE_22__* %503, %struct.TYPE_25__* %504)
  store i32 %505, i32* %23, align 4
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %509

507:                                              ; preds = %500
  %508 = load i32, i32* %23, align 4
  store i32 %508, i32* %9, align 4
  br label %879

509:                                              ; preds = %500
  store i32 0, i32* %9, align 4
  br label %879

510:                                              ; preds = %485, %477
  store i32 0, i32* %20, align 4
  br label %511

511:                                              ; preds = %875, %510
  %512 = load i32, i32* %20, align 4
  %513 = load i32, i32* %17, align 4
  %514 = icmp slt i32 %512, %513
  br i1 %514, label %515, label %878

515:                                              ; preds = %511
  %516 = load i32*, i32** %14, align 8
  %517 = load i32*, i32** %24, align 8
  %518 = ptrtoint i32* %516 to i64
  %519 = ptrtoint i32* %517 to i64
  %520 = sub i64 %518, %519
  %521 = sdiv exact i64 %520, 4
  %522 = load i32, i32* %15, align 4
  %523 = sext i32 %522 to i64
  %524 = icmp sgt i64 %521, %523
  br i1 %524, label %525, label %532

525:                                              ; preds = %515
  %526 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %527 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %526, i32 0, i32 11
  %528 = load %struct.TYPE_22__*, %struct.TYPE_22__** %527, align 8
  %529 = load i32, i32* @AV_LOG_ERROR, align 4
  %530 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %528, i32 %529, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %531 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %531, i32* %9, align 4
  br label %879

532:                                              ; preds = %515
  %533 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %534 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %533, i32 0, i32 13
  %535 = call i64 @bytestream2_get_bytes_left(i32* %534)
  %536 = icmp eq i64 %535, 0
  br i1 %536, label %540, label %537

537:                                              ; preds = %532
  %538 = call i64 @bytestream2_get_eof(i32* %18)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %537, %532
  br label %878

541:                                              ; preds = %537
  %542 = load i32, i32* %13, align 4
  %543 = load i32, i32* %20, align 4
  %544 = mul nsw i32 %542, %543
  %545 = load i32, i32* @SEEK_SET, align 4
  %546 = call i32 @bytestream2_seek_p(i32* %18, i32 %544, i32 %545)
  %547 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %548 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %547, i32 0, i32 6
  %549 = load i32, i32* %548, align 4
  switch i32 %549, label %832 [
    i32 128, label %550
    i32 129, label %659
  ]

550:                                              ; preds = %541
  %551 = load i32*, i32** %24, align 8
  %552 = load i32, i32* %15, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, i32* %551, i64 %553
  %555 = load i32*, i32** %14, align 8
  %556 = ptrtoint i32* %554 to i64
  %557 = ptrtoint i32* %555 to i64
  %558 = sub i64 %556, %557
  %559 = sdiv exact i64 %558, 4
  %560 = load i32, i32* %25, align 4
  %561 = sext i32 %560 to i64
  %562 = icmp slt i64 %559, %561
  br i1 %562, label %563, label %565

563:                                              ; preds = %550
  %564 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %564, i32* %9, align 4
  br label %879

565:                                              ; preds = %550
  %566 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %567 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %566, i32 0, i32 10
  %568 = load i64, i64* %567, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %595, label %570

570:                                              ; preds = %565
  %571 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %572 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %573 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %572, i32 0, i32 1
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %576 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %575, i32 0, i32 11
  %577 = load %struct.TYPE_22__*, %struct.TYPE_22__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %577, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %581 = icmp eq i64 %579, %580
  br i1 %581, label %587, label %582

582:                                              ; preds = %570
  %583 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %584 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %583, i32 0, i32 12
  %585 = load i64, i64* %584, align 8
  %586 = icmp ne i64 %585, 0
  br label %587

587:                                              ; preds = %582, %570
  %588 = phi i1 [ true, %570 ], [ %586, %582 ]
  %589 = zext i1 %588 to i32
  %590 = mul nsw i32 %574, %589
  %591 = load i32*, i32** %12, align 8
  %592 = load i32*, i32** %14, align 8
  %593 = load i32, i32* %25, align 4
  %594 = call i32 @horizontal_fill(%struct.TYPE_23__* %571, i32 %590, i32* %591, i32 1, i32* %592, i32 0, i32 %593, i32 0)
  br label %618

595:                                              ; preds = %565
  store i32 0, i32* %30, align 4
  br label %596

596:                                              ; preds = %614, %595
  %597 = load i32, i32* %30, align 4
  %598 = load i32, i32* %25, align 4
  %599 = icmp slt i32 %597, %598
  br i1 %599, label %600, label %617

600:                                              ; preds = %596
  %601 = load i32*, i32** @ff_reverse, align 8
  %602 = load i32*, i32** %14, align 8
  %603 = load i32, i32* %30, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %602, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds i32, i32* %601, i64 %607
  %609 = load i32, i32* %608, align 4
  %610 = load i32*, i32** %12, align 8
  %611 = load i32, i32* %30, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i32, i32* %610, i64 %612
  store i32 %609, i32* %613, align 4
  br label %614

614:                                              ; preds = %600
  %615 = load i32, i32* %30, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %30, align 4
  br label %596

617:                                              ; preds = %596
  br label %618

618:                                              ; preds = %617, %587
  %619 = load i32, i32* %28, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %654

621:                                              ; preds = %618
  %622 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %623 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %622, i32 0, i32 1
  %624 = load i32, i32* %623, align 4
  %625 = icmp sgt i32 %624, 8
  %626 = zext i1 %625 to i32
  store i32 %626, i32* %31, align 4
  %627 = load i32, i32* %31, align 4
  %628 = icmp ne i32 %627, 0
  %629 = zext i1 %628 to i64
  %630 = select i1 %628, i32 16, i32 8
  store i32 %630, i32* %33, align 4
  %631 = load i32, i32* %31, align 4
  %632 = icmp ne i32 %631, 0
  %633 = zext i1 %632 to i64
  %634 = select i1 %632, i64 4, i64 4
  %635 = trunc i64 %634 to i32
  store i32 %635, i32* %32, align 4
  %636 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %637 = load i32*, i32** %12, align 8
  %638 = load i32*, i32** %12, align 8
  %639 = load i32, i32* %25, align 4
  %640 = load i32, i32* %32, align 4
  %641 = sdiv i32 %639, %640
  %642 = load i32, i32* %33, align 4
  %643 = mul nsw i32 %641, %642
  %644 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %645 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %644, i32 0, i32 1
  %646 = load i32, i32* %645, align 4
  %647 = sdiv i32 %643, %646
  %648 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %649 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %648, i32 0, i32 2
  %650 = load i32, i32* %649, align 8
  %651 = mul nsw i32 %647, %650
  %652 = load i32, i32* %31, align 4
  %653 = call i32 @dng_blit(%struct.TYPE_23__* %636, i32* %637, i32 0, i32* %638, i32 0, i32 %651, i32 1, i32 0, i32 %652)
  br label %654

654:                                              ; preds = %621, %618
  %655 = load i32, i32* %25, align 4
  %656 = load i32*, i32** %14, align 8
  %657 = sext i32 %655 to i64
  %658 = getelementptr inbounds i32, i32* %656, i64 %657
  store i32* %658, i32** %14, align 8
  br label %832

659:                                              ; preds = %541
  store i32 0, i32* %21, align 4
  br label %660

660:                                              ; preds = %802, %659
  %661 = load i32, i32* %21, align 4
  %662 = load i32, i32* %25, align 4
  %663 = icmp slt i32 %661, %662
  br i1 %663, label %664, label %803

664:                                              ; preds = %660
  %665 = load i32*, i32** %24, align 8
  %666 = load i32, i32* %15, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32, i32* %665, i64 %667
  %669 = load i32*, i32** %14, align 8
  %670 = ptrtoint i32* %668 to i64
  %671 = ptrtoint i32* %669 to i64
  %672 = sub i64 %670, %671
  %673 = sdiv exact i64 %672, 4
  %674 = icmp slt i64 %673, 2
  br i1 %674, label %675, label %682

675:                                              ; preds = %664
  %676 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %677 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %676, i32 0, i32 11
  %678 = load %struct.TYPE_22__*, %struct.TYPE_22__** %677, align 8
  %679 = load i32, i32* @AV_LOG_ERROR, align 4
  %680 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %678, i32 %679, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %681 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %681, i32* %9, align 4
  br label %879

682:                                              ; preds = %664
  %683 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %684 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %683, i32 0, i32 10
  %685 = load i64, i64* %684, align 8
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %695

687:                                              ; preds = %682
  %688 = load i32*, i32** @ff_reverse, align 8
  %689 = load i32*, i32** %14, align 8
  %690 = getelementptr inbounds i32, i32* %689, i32 1
  store i32* %690, i32** %14, align 8
  %691 = load i32, i32* %689, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, i32* %688, i64 %692
  %694 = load i32, i32* %693, align 4
  br label %699

695:                                              ; preds = %682
  %696 = load i32*, i32** %14, align 8
  %697 = getelementptr inbounds i32, i32* %696, i32 1
  store i32* %697, i32** %14, align 8
  %698 = load i32, i32* %696, align 4
  br label %699

699:                                              ; preds = %695, %687
  %700 = phi i32 [ %694, %687 ], [ %698, %695 ]
  store i32 %700, i32* %22, align 4
  %701 = load i32, i32* %22, align 4
  %702 = icmp sge i32 %701, 0
  br i1 %702, label %703, label %757

703:                                              ; preds = %699
  %704 = load i32, i32* %22, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %22, align 4
  %706 = load i32, i32* %21, align 4
  %707 = load i32, i32* %22, align 4
  %708 = add nsw i32 %706, %707
  %709 = load i32, i32* %25, align 4
  %710 = icmp sgt i32 %708, %709
  br i1 %710, label %724, label %711

711:                                              ; preds = %703
  %712 = load i32*, i32** %24, align 8
  %713 = load i32, i32* %15, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds i32, i32* %712, i64 %714
  %716 = load i32*, i32** %14, align 8
  %717 = ptrtoint i32* %715 to i64
  %718 = ptrtoint i32* %716 to i64
  %719 = sub i64 %717, %718
  %720 = sdiv exact i64 %719, 4
  %721 = load i32, i32* %22, align 4
  %722 = sext i32 %721 to i64
  %723 = icmp slt i64 %720, %722
  br i1 %723, label %724, label %731

724:                                              ; preds = %711, %703
  %725 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %726 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %725, i32 0, i32 11
  %727 = load %struct.TYPE_22__*, %struct.TYPE_22__** %726, align 8
  %728 = load i32, i32* @AV_LOG_ERROR, align 4
  %729 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %727, i32 %728, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %730 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %730, i32* %9, align 4
  br label %879

731:                                              ; preds = %711
  %732 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %733 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %734 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %733, i32 0, i32 1
  %735 = load i32, i32* %734, align 4
  %736 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %737 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %736, i32 0, i32 11
  %738 = load %struct.TYPE_22__*, %struct.TYPE_22__** %737, align 8
  %739 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %738, i32 0, i32 0
  %740 = load i64, i64* %739, align 8
  %741 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %742 = icmp eq i64 %740, %741
  %743 = zext i1 %742 to i32
  %744 = mul nsw i32 %735, %743
  %745 = load i32*, i32** %12, align 8
  %746 = load i32*, i32** %14, align 8
  %747 = load i32, i32* %22, align 4
  %748 = load i32, i32* %21, align 4
  %749 = call i32 @horizontal_fill(%struct.TYPE_23__* %732, i32 %744, i32* %745, i32 1, i32* %746, i32 0, i32 %747, i32 %748)
  %750 = load i32, i32* %22, align 4
  %751 = load i32*, i32** %14, align 8
  %752 = sext i32 %750 to i64
  %753 = getelementptr inbounds i32, i32* %751, i64 %752
  store i32* %753, i32** %14, align 8
  %754 = load i32, i32* %22, align 4
  %755 = load i32, i32* %21, align 4
  %756 = add nsw i32 %755, %754
  store i32 %756, i32* %21, align 4
  br label %802

757:                                              ; preds = %699
  %758 = load i32, i32* %22, align 4
  %759 = icmp ne i32 %758, -128
  br i1 %759, label %760, label %801

760:                                              ; preds = %757
  %761 = load i32, i32* %22, align 4
  %762 = sub nsw i32 0, %761
  %763 = add nsw i32 %762, 1
  store i32 %763, i32* %22, align 4
  %764 = load i32, i32* %21, align 4
  %765 = load i32, i32* %22, align 4
  %766 = add nsw i32 %764, %765
  %767 = load i32, i32* %25, align 4
  %768 = icmp sgt i32 %766, %767
  br i1 %768, label %769, label %776

769:                                              ; preds = %760
  %770 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %771 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %770, i32 0, i32 11
  %772 = load %struct.TYPE_22__*, %struct.TYPE_22__** %771, align 8
  %773 = load i32, i32* @AV_LOG_ERROR, align 4
  %774 = call i32 (%struct.TYPE_22__*, i32, i8*, ...) @av_log(%struct.TYPE_22__* %772, i32 %773, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %775 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %775, i32* %9, align 4
  br label %879

776:                                              ; preds = %760
  %777 = load i32*, i32** %14, align 8
  %778 = getelementptr inbounds i32, i32* %777, i32 1
  store i32* %778, i32** %14, align 8
  %779 = load i32, i32* %777, align 4
  store i32 %779, i32* %19, align 4
  %780 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %781 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %782 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %781, i32 0, i32 1
  %783 = load i32, i32* %782, align 4
  %784 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %785 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %784, i32 0, i32 11
  %786 = load %struct.TYPE_22__*, %struct.TYPE_22__** %785, align 8
  %787 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %786, i32 0, i32 0
  %788 = load i64, i64* %787, align 8
  %789 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %790 = icmp eq i64 %788, %789
  %791 = zext i1 %790 to i32
  %792 = mul nsw i32 %783, %791
  %793 = load i32*, i32** %12, align 8
  %794 = load i32, i32* %19, align 4
  %795 = load i32, i32* %22, align 4
  %796 = load i32, i32* %21, align 4
  %797 = call i32 @horizontal_fill(%struct.TYPE_23__* %780, i32 %792, i32* %793, i32 0, i32* null, i32 %794, i32 %795, i32 %796)
  %798 = load i32, i32* %22, align 4
  %799 = load i32, i32* %21, align 4
  %800 = add nsw i32 %799, %798
  store i32 %800, i32* %21, align 4
  br label %801

801:                                              ; preds = %776, %757
  br label %802

802:                                              ; preds = %801, %731
  br label %660

803:                                              ; preds = %660
  %804 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %805 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %804, i32 0, i32 10
  %806 = load i64, i64* %805, align 8
  %807 = icmp ne i64 %806, 0
  br i1 %807, label %808, label %831

808:                                              ; preds = %803
  store i32 0, i32* %34, align 4
  br label %809

809:                                              ; preds = %827, %808
  %810 = load i32, i32* %34, align 4
  %811 = load i32, i32* %25, align 4
  %812 = icmp slt i32 %810, %811
  br i1 %812, label %813, label %830

813:                                              ; preds = %809
  %814 = load i32*, i32** @ff_reverse, align 8
  %815 = load i32*, i32** %12, align 8
  %816 = load i32, i32* %34, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds i32, i32* %815, i64 %817
  %819 = load i32, i32* %818, align 4
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds i32, i32* %814, i64 %820
  %822 = load i32, i32* %821, align 4
  %823 = load i32*, i32** %12, align 8
  %824 = load i32, i32* %34, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i32, i32* %823, i64 %825
  store i32 %822, i32* %826, align 4
  br label %827

827:                                              ; preds = %813
  %828 = load i32, i32* %34, align 4
  %829 = add nsw i32 %828, 1
  store i32 %829, i32* %34, align 4
  br label %809

830:                                              ; preds = %809
  br label %831

831:                                              ; preds = %830, %803
  br label %832

832:                                              ; preds = %541, %831, %654
  %833 = load i32, i32* %27, align 4
  %834 = icmp ne i32 %833, 0
  br i1 %834, label %835, label %851

835:                                              ; preds = %832
  %836 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %837 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %838 = load i32*, i32** %12, align 8
  %839 = load i32, i32* %16, align 4
  %840 = load i32, i32* %20, align 4
  %841 = add nsw i32 %839, %840
  %842 = call i32 @unpack_yuv(%struct.TYPE_23__* %836, %struct.TYPE_25__* %837, i32* %838, i32 %841)
  %843 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %844 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %843, i32 0, i32 3
  %845 = load i32*, i32** %844, align 8
  %846 = getelementptr inbounds i32, i32* %845, i64 1
  %847 = load i32, i32* %846, align 4
  %848 = sub nsw i32 %847, 1
  %849 = load i32, i32* %20, align 4
  %850 = add nsw i32 %849, %848
  store i32 %850, i32* %20, align 4
  br label %870

851:                                              ; preds = %832
  %852 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %853 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %852, i32 0, i32 0
  %854 = load i64, i64* %853, align 8
  %855 = load i64, i64* @AV_PIX_FMT_GRAY12, align 8
  %856 = icmp eq i64 %854, %855
  br i1 %856, label %857, label %869

857:                                              ; preds = %851
  %858 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %859 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %860 = load i32*, i32** %12, align 8
  %861 = load i32, i32* %16, align 4
  %862 = load i32, i32* %20, align 4
  %863 = add nsw i32 %861, %862
  %864 = load i32, i32* %25, align 4
  %865 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %866 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %865, i32 0, i32 1
  %867 = load i32, i32* %866, align 4
  %868 = call i32 @unpack_gray(%struct.TYPE_23__* %858, %struct.TYPE_25__* %859, i32* %860, i32 %863, i32 %864, i32 %867)
  br label %869

869:                                              ; preds = %857, %851
  br label %870

870:                                              ; preds = %869, %835
  %871 = load i32, i32* %13, align 4
  %872 = load i32*, i32** %12, align 8
  %873 = sext i32 %871 to i64
  %874 = getelementptr inbounds i32, i32* %872, i64 %873
  store i32* %874, i32** %12, align 8
  br label %875

875:                                              ; preds = %870
  %876 = load i32, i32* %20, align 4
  %877 = add nsw i32 %876, 1
  store i32 %877, i32* %20, align 4
  br label %511

878:                                              ; preds = %540, %511
  store i32 0, i32* %9, align 4
  br label %879

879:                                              ; preds = %878, %769, %724, %675, %563, %525, %509, %507, %493, %437, %435, %407, %330, %308, %273, %248, %234, %210, %128, %83
  %880 = load i32, i32* %9, align 4
  ret i32 %880
}

declare dso_local %struct.TYPE_24__* @av_pix_fmt_desc_get(i64) #1

declare dso_local i32 @av_fast_padded_malloc(i32**, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @deinvert_buffer(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @ff_lzw_decode_init(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ff_lzw_decode(i32, i32*, i32) #1

declare dso_local i32 @horizontal_fill(%struct.TYPE_23__*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @unpack_yuv(%struct.TYPE_23__*, %struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @unpack_gray(%struct.TYPE_23__*, %struct.TYPE_25__*, i32*, i32, i32, i32) #1

declare dso_local i32 @tiff_unpack_fax(%struct.TYPE_23__*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_init_writer(i32*, i32*, i32) #1

declare dso_local i32 @dng_decode_strip(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i64 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i64 @bytestream2_get_eof(i32*) #1

declare dso_local i32 @bytestream2_seek_p(i32*, i32, i32) #1

declare dso_local i32 @dng_blit(%struct.TYPE_23__*, i32*, i32, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
