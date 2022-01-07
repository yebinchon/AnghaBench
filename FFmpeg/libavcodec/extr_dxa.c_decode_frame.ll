; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxa.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxa.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32*, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32** }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32**, i32, i32*, i32, i8* }

@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Uncompress failed!\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@DECOMP_BUF_PADDING = common dso_local global i32 0, align 4
@FF_DEBUG_PICT_INFO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"compr:%2d, dsize:%d\0A\00", align 1
@AV_PICTURE_TYPE_P = common dso_local global i8* null, align 8
@AV_PICTURE_TYPE_I = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Missing reference frame.\0A\00", align 1
@AV_CODEC_FLAG2_SHOW_ALL = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Missing reference frame\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Unknown/unsupported compression type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_17__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_19__* %0, i8* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %10, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %11, align 8
  store i32 0, i32* %21, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bytestream2_init(i32* %22, i64 %30, i32 %33)
  %35 = call i64 @bytestream2_peek_le32(i32* %22)
  %36 = call i64 @MKTAG(i8 signext 67, i8 zeroext 77, i8 signext 65, i8 signext 80)
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %4
  %39 = call i32 @bytestream2_skip(i32* %22, i32 4)
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %52, %38
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 256
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = call i32 @bytestream2_get_be24(i32* %22)
  %45 = or i32 -16777216, %44
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %40

55:                                               ; preds = %40
  store i32 1, i32* %21, align 4
  br label %56

56:                                               ; preds = %55, %4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %60 = call i32 @ff_get_buffer(%struct.TYPE_19__* %57, %struct.TYPE_18__* %58, i32 %59)
  store i32 %60, i32* %19, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %19, align 4
  store i32 %63, i32* %5, align 4
  br label %398

64:                                               ; preds = %56
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @AVPALETTE_SIZE, align 4
  %74 = call i32 @memcpy(i32* %69, i32* %72, i32 %73)
  %75 = load i32, i32* %21, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %12, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %13, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = getelementptr inbounds i32*, i32** %90, i64 0
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %14, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %20, align 4
  %98 = call i64 @bytestream2_get_le32(i32* %22)
  %99 = call i64 @MKTAG(i8 signext 78, i8 zeroext 85, i8 signext 76, i8 signext 76)
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %64
  store i32 -1, i32* %18, align 4
  br label %104

102:                                              ; preds = %64
  %103 = call i32 @bytestream2_get_byte(i32* %22)
  store i32 %103, i32* %18, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %15, align 8
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 4
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %140

113:                                              ; preds = %110
  %114 = call i32 @bytestream2_skip(i32* %22, i32 4)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @bytestream2_tell(i32* %22)
  %122 = add nsw i64 %120, %121
  %123 = call i32 @bytestream2_get_bytes_left(i32* %22)
  %124 = call i64 @uncompress(i32* %117, i64* %15, i64 %122, i32 %123)
  %125 = load i64, i64* @Z_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %113
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %128, i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %131 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %131, i32* %5, align 4
  br label %398

132:                                              ; preds = %113
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i64, i64* %15, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* @DECOMP_BUF_PADDING, align 4
  %139 = call i32 @memset(i32* %137, i32 0, i32 %138)
  br label %140

140:                                              ; preds = %132, %110, %104
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @FF_DEBUG_PICT_INFO, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %140
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = load i32, i32* @AV_LOG_DEBUG, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load i64, i64* %15, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %148, i32 %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %152)
  br label %154

154:                                              ; preds = %147, %140
  %155 = load i32, i32* %18, align 4
  switch i32 %155, label %374 [
    i32 -1, label %156
    i32 2, label %215
    i32 4, label %215
    i32 3, label %248
    i32 5, label %248
    i32 12, label %332
    i32 13, label %332
  ]

156:                                              ; preds = %154
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  store i32 0, i32* %158, align 8
  %159 = load i8*, i8** @AV_PICTURE_TYPE_P, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32**, i32*** %165, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 0
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %193

170:                                              ; preds = %156
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32**, i32*** %172, align 8
  %174 = getelementptr inbounds i32*, i32** %173, i64 0
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32**, i32*** %179, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 0
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %187, %190
  %192 = call i32 @memcpy(i32* %175, i32* %182, i32 %191)
  br label %214

193:                                              ; preds = %156
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i32**, i32*** %195, align 8
  %197 = getelementptr inbounds i32*, i32** %196, i64 0
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = call i32 @memset(i32* %198, i32 0, i32 %207)
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 3
  store i32 1, i32* %210, align 8
  %211 = load i8*, i8** @AV_PICTURE_TYPE_I, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 4
  store i8* %211, i8** %213, align 8
  br label %214

214:                                              ; preds = %193, %170
  br label %380

215:                                              ; preds = %154, %154
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 3
  store i32 1, i32* %217, align 8
  %218 = load i8*, i8** @AV_PICTURE_TYPE_I, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 4
  store i8* %218, i8** %220, align 8
  store i32 0, i32* %17, align 4
  br label %221

221:                                              ; preds = %244, %215
  %222 = load i32, i32* %17, align 4
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %247

227:                                              ; preds = %221
  %228 = load i32*, i32** %12, align 8
  %229 = load i32*, i32** %13, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @memcpy(i32* %228, i32* %229, i32 %232)
  %234 = load i32, i32* %20, align 4
  %235 = load i32*, i32** %12, align 8
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32* %237, i32** %12, align 8
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32*, i32** %13, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  store i32* %243, i32** %13, align 8
  br label %244

244:                                              ; preds = %227
  %245 = load i32, i32* %17, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %17, align 4
  br label %221

247:                                              ; preds = %221
  br label %380

248:                                              ; preds = %154, %154
  %249 = load i32*, i32** %14, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %264, label %251

251:                                              ; preds = %248
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %253 = load i32, i32* @AV_LOG_ERROR, align 4
  %254 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %252, i32 %253, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @AV_CODEC_FLAG2_SHOW_ALL, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %251
  %262 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %262, i32* %5, align 4
  br label %398

263:                                              ; preds = %251
  br label %264

264:                                              ; preds = %263, %248
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 3
  store i32 0, i32* %266, align 8
  %267 = load i8*, i8** @AV_PICTURE_TYPE_P, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 4
  store i8* %267, i8** %269, align 8
  store i32 0, i32* %17, align 4
  br label %270

270:                                              ; preds = %328, %264
  %271 = load i32, i32* %17, align 4
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = icmp slt i32 %271, %274
  br i1 %275, label %276, label %331

276:                                              ; preds = %270
  %277 = load i32*, i32** %14, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %310

279:                                              ; preds = %276
  store i32 0, i32* %16, align 4
  br label %280

280:                                              ; preds = %302, %279
  %281 = load i32, i32* %16, align 4
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %286, label %305

286:                                              ; preds = %280
  %287 = load i32*, i32** %13, align 8
  %288 = load i32, i32* %16, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %14, align 8
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = xor i32 %291, %296
  %298 = load i32*, i32** %12, align 8
  %299 = load i32, i32* %16, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32 %297, i32* %301, align 4
  br label %302

302:                                              ; preds = %286
  %303 = load i32, i32* %16, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %16, align 4
  br label %280

305:                                              ; preds = %280
  %306 = load i32, i32* %20, align 4
  %307 = load i32*, i32** %14, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32* %309, i32** %14, align 8
  br label %317

310:                                              ; preds = %276
  %311 = load i32*, i32** %12, align 8
  %312 = load i32*, i32** %13, align 8
  %313 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @memcpy(i32* %311, i32* %312, i32 %315)
  br label %317

317:                                              ; preds = %310, %305
  %318 = load i32, i32* %20, align 4
  %319 = load i32*, i32** %12, align 8
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i32, i32* %319, i64 %320
  store i32* %321, i32** %12, align 8
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = load i32*, i32** %13, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32* %327, i32** %13, align 8
  br label %328

328:                                              ; preds = %317
  %329 = load i32, i32* %17, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %17, align 4
  br label %270

331:                                              ; preds = %270
  br label %380

332:                                              ; preds = %154, %154
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 3
  store i32 0, i32* %334, align 8
  %335 = load i8*, i8** @AV_PICTURE_TYPE_P, align 8
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 4
  store i8* %335, i8** %337, align 8
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 3
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 0
  %342 = load i32**, i32*** %341, align 8
  %343 = getelementptr inbounds i32*, i32** %342, i64 0
  %344 = load i32*, i32** %343, align 8
  %345 = icmp ne i32* %344, null
  br i1 %345, label %351, label %346

346:                                              ; preds = %332
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %348 = load i32, i32* @AV_LOG_ERROR, align 4
  %349 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %347, i32 %348, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %350 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %350, i32* %5, align 4
  br label %398

351:                                              ; preds = %332
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %353 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 0
  %356 = load i32**, i32*** %355, align 8
  %357 = getelementptr inbounds i32*, i32** %356, i64 0
  %358 = load i32*, i32** %357, align 8
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 2
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 0
  %363 = load i32, i32* %362, align 4
  %364 = load i32*, i32** %13, align 8
  %365 = load i64, i64* %15, align 8
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 3
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  %370 = load i32**, i32*** %369, align 8
  %371 = getelementptr inbounds i32*, i32** %370, i64 0
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @decode_13(%struct.TYPE_19__* %352, %struct.TYPE_16__* %353, i32* %358, i32 %363, i32* %364, i64 %365, i32* %372)
  br label %380

374:                                              ; preds = %154
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %376 = load i32, i32* @AV_LOG_ERROR, align 4
  %377 = load i32, i32* %18, align 4
  %378 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %375, i32 %376, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %377)
  %379 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %379, i32* %5, align 4
  br label %398

380:                                              ; preds = %351, %331, %247, %214
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 3
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %382, align 8
  %384 = call i32 @av_frame_unref(%struct.TYPE_15__* %383)
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 3
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %386, align 8
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %389 = call i32 @av_frame_ref(%struct.TYPE_15__* %387, %struct.TYPE_18__* %388)
  store i32 %389, i32* %19, align 4
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %380
  %392 = load i32, i32* %19, align 4
  store i32 %392, i32* %5, align 4
  br label %398

393:                                              ; preds = %380
  %394 = load i32*, i32** %8, align 8
  store i32 1, i32* %394, align 4
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  store i32 %397, i32* %5, align 4
  br label %398

398:                                              ; preds = %393, %391, %374, %346, %261, %127, %62
  %399 = load i32, i32* %5, align 4
  ret i32 %399
}

declare dso_local i32 @bytestream2_init(i32*, i64, i32) #1

declare dso_local i64 @bytestream2_peek_le32(i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 zeroext, i8 signext, i8 signext) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_be24(i32*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_19__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i64 @uncompress(i32*, i64*, i64, i32) #1

declare dso_local i64 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @decode_13(%struct.TYPE_19__*, %struct.TYPE_16__*, i32*, i32, i32*, i64, i32*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_15__*) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_15__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
