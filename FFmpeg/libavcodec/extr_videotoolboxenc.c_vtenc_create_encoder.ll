; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_vtenc_create_encoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_vtenc_create_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i64, i32, i64, i64, i64, i64, i64, i32 }

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@vtenc_output_callback = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error: cannot create compression session: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Try -allow_sw 1. The hardware encoder may be busy, or not supported.\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@kCFNumberSInt32Type = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_AverageBitRate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Error setting bitrate property: %d\0A\00", align 1
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@kCFNumberSInt64Type = common dso_local global i32 0, align 4
@kCFTypeArrayCallBacks = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_DataRateLimits = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Error setting max bitrate property: %d\0A\00", align 1
@kVTCompressionPropertyKey_ProfileLevel = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [111 x i8] c"Error setting profile/level property: %d. Output will be encoded using a supported profile/level combination.\0A\00", align 1
@kCFNumberIntType = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_MaxKeyFrameInterval = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Error setting 'max key-frame interval' property: %d\0A\00", align 1
@kVTCompressionPropertyKey_MoreFramesBeforeStart = common dso_local global i32 0, align 4
@kCFBooleanTrue = common dso_local global i64 0, align 8
@kVTPropertyNotSupportedErr = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [67 x i8] c"frames_before property is not supported on this device. Ignoring.\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Error setting frames_before property: %d\0A\00", align 1
@kVTCompressionPropertyKey_MoreFramesAfterEnd = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"frames_after property is not supported on this device. Ignoring.\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Error setting frames_after property: %d\0A\00", align 1
@kCFCopyStringDictionaryKeyCallBacks = common dso_local global i32 0, align 4
@kCFTypeDictionaryValueCallBacks = common dso_local global i32 0, align 4
@kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing = common dso_local global i32 0, align 4
@kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing = common dso_local global i32 0, align 4
@kVTCompressionPropertyKey_PixelAspectRatio = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"Error setting pixel aspect ratio to %d:%d: %d.\0A\00", align 1
@kVTCompressionPropertyKey_TransferFunction = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"Could not set transfer function: %d\0A\00", align 1
@kVTCompressionPropertyKey_YCbCrMatrix = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"Could not set ycbcr matrix: %d\0A\00", align 1
@kVTCompressionPropertyKey_ColorPrimaries = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"Could not set color primaries: %d\0A\00", align 1
@kCVImageBufferGammaLevelKey = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"Could not set gamma level: %d\0A\00", align 1
@kVTCompressionPropertyKey_AllowFrameReordering = common dso_local global i32 0, align 4
@kCFBooleanFalse = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [53 x i8] c"Error setting 'allow frame reordering' property: %d\0A\00", align 1
@VT_ENTROPY_NOT_SET = common dso_local global i64 0, align 8
@VT_CABAC = common dso_local global i64 0, align 8
@compat_keys = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [36 x i8] c"Error setting entropy property: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Error setting realtime property: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Error: cannot prepare encoder: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i64, i64, i32, i32, i32*)* @vtenc_create_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtenc_create_encoder(%struct.TYPE_10__* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x i8*], align 16
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_9__*, align 8
  %32 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %16, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %17, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %18, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %42 = load i32, i32* @kCFAllocatorDefault, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @kCFAllocatorDefault, align 4
  %53 = load i32, i32* @vtenc_output_callback, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = call i32 @VTCompressionSessionCreate(i32 %42, i32 %45, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, %struct.TYPE_10__* %54, i32* %55)
  store i32 %56, i32* %26, align 4
  %57 = load i32, i32* %26, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %7
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %79, label %64

64:                                               ; preds = %59, %7
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = load i32, i32* %26, align 4
  %68 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %65, i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %74, i32 %75, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %64
  %78 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %78, i32* %8, align 4
  br label %565

79:                                               ; preds = %59
  %80 = load i32, i32* @kCFAllocatorDefault, align 4
  %81 = load i32, i32* @kCFNumberSInt32Type, align 4
  %82 = call i64 @CFNumberCreate(i32 %80, i32 %81, i32* %17)
  store i64 %82, i64* %19, align 8
  %83 = load i64, i64* %19, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %8, align 4
  br label %565

88:                                               ; preds = %79
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @kVTCompressionPropertyKey_AverageBitRate, align 4
  %93 = load i64, i64* %19, align 8
  %94 = call i32 @VTSessionSetProperty(i32 %91, i32 %92, i64 %93)
  store i32 %94, i32* %26, align 4
  %95 = load i64, i64* %19, align 8
  %96 = call i32 @CFRelease(i64 %95)
  %97 = load i32, i32* %26, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %88
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = load i32, i32* %26, align 4
  %103 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %100, i32 %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %104, i32* %8, align 4
  br label %565

105:                                              ; preds = %88
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %177

111:                                              ; preds = %105
  %112 = load i32, i32* %18, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %177

114:                                              ; preds = %111
  %115 = load i32, i32* %18, align 4
  %116 = ashr i32 %115, 3
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* @kCFAllocatorDefault, align 4
  %118 = load i32, i32* @kCFNumberSInt64Type, align 4
  %119 = call i64 @CFNumberCreate(i32 %117, i32 %118, i32* %23)
  store i64 %119, i64* %20, align 8
  %120 = load i64, i64* %20, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = call i32 @AVERROR(i32 %123)
  store i32 %124, i32* %8, align 4
  br label %565

125:                                              ; preds = %114
  store i32 1, i32* %24, align 4
  %126 = load i32, i32* @kCFAllocatorDefault, align 4
  %127 = load i32, i32* @kCFNumberSInt64Type, align 4
  %128 = call i64 @CFNumberCreate(i32 %126, i32 %127, i32* %24)
  store i64 %128, i64* %21, align 8
  %129 = load i64, i64* %21, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %125
  %132 = load i64, i64* %20, align 8
  %133 = call i32 @CFRelease(i64 %132)
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = call i32 @AVERROR(i32 %134)
  store i32 %135, i32* %8, align 4
  br label %565

136:                                              ; preds = %125
  %137 = load i64, i64* %20, align 8
  %138 = inttoptr i64 %137 to i8*
  %139 = getelementptr inbounds [2 x i8*], [2 x i8*]* %25, i64 0, i64 0
  store i8* %138, i8** %139, align 16
  %140 = load i64, i64* %21, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = getelementptr inbounds [2 x i8*], [2 x i8*]* %25, i64 0, i64 1
  store i8* %141, i8** %142, align 8
  %143 = load i32, i32* @kCFAllocatorDefault, align 4
  %144 = getelementptr inbounds [2 x i8*], [2 x i8*]* %25, i64 0, i64 0
  %145 = call i64 @CFArrayCreate(i32 %143, i8** %144, i32 2, i32* @kCFTypeArrayCallBacks)
  store i64 %145, i64* %22, align 8
  %146 = load i64, i64* %22, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %136
  %149 = load i64, i64* %20, align 8
  %150 = call i32 @CFRelease(i64 %149)
  %151 = load i64, i64* %21, align 8
  %152 = call i32 @CFRelease(i64 %151)
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = call i32 @AVERROR(i32 %153)
  store i32 %154, i32* %8, align 4
  br label %565

155:                                              ; preds = %136
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @kVTCompressionPropertyKey_DataRateLimits, align 4
  %160 = load i64, i64* %22, align 8
  %161 = call i32 @VTSessionSetProperty(i32 %158, i32 %159, i64 %160)
  store i32 %161, i32* %26, align 4
  %162 = load i64, i64* %20, align 8
  %163 = call i32 @CFRelease(i64 %162)
  %164 = load i64, i64* %21, align 8
  %165 = call i32 @CFRelease(i64 %164)
  %166 = load i64, i64* %22, align 8
  %167 = call i32 @CFRelease(i64 %166)
  %168 = load i32, i32* %26, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %155
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %172 = load i32, i32* @AV_LOG_ERROR, align 4
  %173 = load i32, i32* %26, align 4
  %174 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %171, i32 %172, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %175, i32* %8, align 4
  br label %565

176:                                              ; preds = %155
  br label %177

177:                                              ; preds = %176, %111, %105
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %202

183:                                              ; preds = %177
  %184 = load i64, i64* %11, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %183
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @kVTCompressionPropertyKey_ProfileLevel, align 4
  %191 = load i64, i64* %11, align 8
  %192 = call i32 @VTSessionSetProperty(i32 %189, i32 %190, i64 %191)
  store i32 %192, i32* %26, align 4
  %193 = load i32, i32* %26, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %186
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %197 = load i32, i32* @AV_LOG_ERROR, align 4
  %198 = load i32, i32* %26, align 4
  %199 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %196, i32 %197, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.4, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %195, %186
  br label %201

201:                                              ; preds = %200, %183
  br label %202

202:                                              ; preds = %201, %177
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %237

207:                                              ; preds = %202
  %208 = load i32, i32* @kCFAllocatorDefault, align 4
  %209 = load i32, i32* @kCFNumberIntType, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = bitcast i64* %211 to i32*
  %213 = call i64 @CFNumberCreate(i32 %208, i32 %209, i32* %212)
  store i64 %213, i64* %27, align 8
  %214 = load i64, i64* %27, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %207
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = call i32 @AVERROR(i32 %217)
  store i32 %218, i32* %8, align 4
  br label %565

219:                                              ; preds = %207
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @kVTCompressionPropertyKey_MaxKeyFrameInterval, align 4
  %224 = load i64, i64* %27, align 8
  %225 = call i32 @VTSessionSetProperty(i32 %222, i32 %223, i64 %224)
  store i32 %225, i32* %26, align 4
  %226 = load i64, i64* %27, align 8
  %227 = call i32 @CFRelease(i64 %226)
  %228 = load i32, i32* %26, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %219
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %232 = load i32, i32* @AV_LOG_ERROR, align 4
  %233 = load i32, i32* %26, align 4
  %234 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %231, i32 %232, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %233)
  %235 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %235, i32* %8, align 4
  br label %565

236:                                              ; preds = %219
  br label %237

237:                                              ; preds = %236, %202
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 9
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %266

242:                                              ; preds = %237
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @kVTCompressionPropertyKey_MoreFramesBeforeStart, align 4
  %247 = load i64, i64* @kCFBooleanTrue, align 8
  %248 = call i32 @VTSessionSetProperty(i32 %245, i32 %246, i64 %247)
  store i32 %248, i32* %26, align 4
  %249 = load i32, i32* %26, align 4
  %250 = load i32, i32* @kVTPropertyNotSupportedErr, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %242
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %254 = load i32, i32* @AV_LOG_WARNING, align 4
  %255 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %253, i32 %254, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  br label %265

256:                                              ; preds = %242
  %257 = load i32, i32* %26, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %256
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %261 = load i32, i32* @AV_LOG_ERROR, align 4
  %262 = load i32, i32* %26, align 4
  %263 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %260, i32 %261, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %259, %256
  br label %265

265:                                              ; preds = %264, %252
  br label %266

266:                                              ; preds = %265, %237
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 8
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %295

271:                                              ; preds = %266
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @kVTCompressionPropertyKey_MoreFramesAfterEnd, align 4
  %276 = load i64, i64* @kCFBooleanTrue, align 8
  %277 = call i32 @VTSessionSetProperty(i32 %274, i32 %275, i64 %276)
  store i32 %277, i32* %26, align 4
  %278 = load i32, i32* %26, align 4
  %279 = load i32, i32* @kVTPropertyNotSupportedErr, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %271
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %283 = load i32, i32* @AV_LOG_WARNING, align 4
  %284 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %282, i32 %283, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0))
  br label %294

285:                                              ; preds = %271
  %286 = load i32, i32* %26, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %290 = load i32, i32* @AV_LOG_ERROR, align 4
  %291 = load i32, i32* %26, align 4
  %292 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %289, i32 %290, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %291)
  br label %293

293:                                              ; preds = %288, %285
  br label %294

294:                                              ; preds = %293, %281
  br label %295

295:                                              ; preds = %294, %266
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %394

301:                                              ; preds = %295
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 3
  store %struct.TYPE_9__* %303, %struct.TYPE_9__** %31, align 8
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @av_reduce(i32* %305, i32* %307, i32 %310, i32 %313, i32 -1)
  %315 = load i32, i32* @kCFAllocatorDefault, align 4
  %316 = load i32, i32* @kCFNumberIntType, align 4
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = call i64 @CFNumberCreate(i32 %315, i32 %316, i32* %318)
  store i64 %319, i64* %28, align 8
  %320 = load i32, i32* @kCFAllocatorDefault, align 4
  %321 = load i32, i32* @kCFNumberIntType, align 4
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 1
  %324 = call i64 @CFNumberCreate(i32 %320, i32 %321, i32* %323)
  store i64 %324, i64* %29, align 8
  %325 = load i32, i32* @kCFAllocatorDefault, align 4
  %326 = call i64 @CFDictionaryCreateMutable(i32 %325, i32 2, i32* @kCFCopyStringDictionaryKeyCallBacks, i32* @kCFTypeDictionaryValueCallBacks)
  store i64 %326, i64* %30, align 8
  %327 = load i64, i64* %30, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %301
  %330 = load i64, i64* %28, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %329
  %333 = load i64, i64* %29, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %356, label %335

335:                                              ; preds = %332, %329, %301
  %336 = load i64, i64* %30, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %335
  %339 = load i64, i64* %30, align 8
  %340 = call i32 @CFRelease(i64 %339)
  br label %341

341:                                              ; preds = %338, %335
  %342 = load i64, i64* %28, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load i64, i64* %28, align 8
  %346 = call i32 @CFRelease(i64 %345)
  br label %347

347:                                              ; preds = %344, %341
  %348 = load i64, i64* %29, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %347
  %351 = load i64, i64* %29, align 8
  %352 = call i32 @CFRelease(i64 %351)
  br label %353

353:                                              ; preds = %350, %347
  %354 = load i32, i32* @ENOMEM, align 4
  %355 = call i32 @AVERROR(i32 %354)
  store i32 %355, i32* %8, align 4
  br label %565

356:                                              ; preds = %332
  %357 = load i64, i64* %30, align 8
  %358 = load i32, i32* @kCMFormatDescriptionKey_PixelAspectRatioHorizontalSpacing, align 4
  %359 = load i64, i64* %28, align 8
  %360 = call i32 @CFDictionarySetValue(i64 %357, i32 %358, i64 %359)
  %361 = load i64, i64* %30, align 8
  %362 = load i32, i32* @kCMFormatDescriptionKey_PixelAspectRatioVerticalSpacing, align 4
  %363 = load i64, i64* %29, align 8
  %364 = call i32 @CFDictionarySetValue(i64 %361, i32 %362, i64 %363)
  %365 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @kVTCompressionPropertyKey_PixelAspectRatio, align 4
  %369 = load i64, i64* %30, align 8
  %370 = call i32 @VTSessionSetProperty(i32 %367, i32 %368, i64 %369)
  store i32 %370, i32* %26, align 4
  %371 = load i64, i64* %30, align 8
  %372 = call i32 @CFRelease(i64 %371)
  %373 = load i64, i64* %28, align 8
  %374 = call i32 @CFRelease(i64 %373)
  %375 = load i64, i64* %29, align 8
  %376 = call i32 @CFRelease(i64 %375)
  %377 = load i32, i32* %26, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %393

379:                                              ; preds = %356
  %380 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %381 = load i32, i32* @AV_LOG_ERROR, align 4
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %26, align 4
  %391 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %380, i32 %381, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %385, i32 %389, i32 %390)
  %392 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %392, i32* %8, align 4
  br label %565

393:                                              ; preds = %356
  br label %394

394:                                              ; preds = %393, %295
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 7
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %416

399:                                              ; preds = %394
  %400 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @kVTCompressionPropertyKey_TransferFunction, align 4
  %404 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 7
  %406 = load i64, i64* %405, align 8
  %407 = call i32 @VTSessionSetProperty(i32 %402, i32 %403, i64 %406)
  store i32 %407, i32* %26, align 4
  %408 = load i32, i32* %26, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %399
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %412 = load i32, i32* @AV_LOG_WARNING, align 4
  %413 = load i32, i32* %26, align 4
  %414 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %411, i32 %412, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %413)
  br label %415

415:                                              ; preds = %410, %399
  br label %416

416:                                              ; preds = %415, %394
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 6
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %438

421:                                              ; preds = %416
  %422 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @kVTCompressionPropertyKey_YCbCrMatrix, align 4
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 6
  %428 = load i64, i64* %427, align 8
  %429 = call i32 @VTSessionSetProperty(i32 %424, i32 %425, i64 %428)
  store i32 %429, i32* %26, align 4
  %430 = load i32, i32* %26, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %421
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %434 = load i32, i32* @AV_LOG_WARNING, align 4
  %435 = load i32, i32* %26, align 4
  %436 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %433, i32 %434, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %435)
  br label %437

437:                                              ; preds = %432, %421
  br label %438

438:                                              ; preds = %437, %416
  %439 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 5
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %460

443:                                              ; preds = %438
  %444 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @kVTCompressionPropertyKey_ColorPrimaries, align 4
  %448 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 5
  %450 = load i64, i64* %449, align 8
  %451 = call i32 @VTSessionSetProperty(i32 %446, i32 %447, i64 %450)
  store i32 %451, i32* %26, align 4
  %452 = load i32, i32* %26, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %443
  %455 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %456 = load i32, i32* @AV_LOG_WARNING, align 4
  %457 = load i32, i32* %26, align 4
  %458 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %455, i32 %456, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %457)
  br label %459

459:                                              ; preds = %454, %443
  br label %460

460:                                              ; preds = %459, %438
  %461 = load i64, i64* %12, align 8
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %478

463:                                              ; preds = %460
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %465 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* @kCVImageBufferGammaLevelKey, align 4
  %468 = load i64, i64* %12, align 8
  %469 = call i32 @VTSessionSetProperty(i32 %466, i32 %467, i64 %468)
  store i32 %469, i32* %26, align 4
  %470 = load i32, i32* %26, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %477

472:                                              ; preds = %463
  %473 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %474 = load i32, i32* @AV_LOG_WARNING, align 4
  %475 = load i32, i32* %26, align 4
  %476 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %473, i32 %474, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %475)
  br label %477

477:                                              ; preds = %472, %463
  br label %478

478:                                              ; preds = %477, %460
  %479 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 8
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %499, label %483

483:                                              ; preds = %478
  %484 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* @kVTCompressionPropertyKey_AllowFrameReordering, align 4
  %488 = load i64, i64* @kCFBooleanFalse, align 8
  %489 = call i32 @VTSessionSetProperty(i32 %486, i32 %487, i64 %488)
  store i32 %489, i32* %26, align 4
  %490 = load i32, i32* %26, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %498

492:                                              ; preds = %483
  %493 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %494 = load i32, i32* @AV_LOG_ERROR, align 4
  %495 = load i32, i32* %26, align 4
  %496 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %493, i32 %494, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i32 %495)
  %497 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %497, i32* %8, align 4
  br label %565

498:                                              ; preds = %483
  br label %499

499:                                              ; preds = %498, %478
  %500 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %501 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %500, i32 0, i32 1
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @VT_ENTROPY_NOT_SET, align 8
  %504 = icmp ne i64 %502, %503
  br i1 %504, label %505, label %531

505:                                              ; preds = %499
  %506 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @VT_CABAC, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %513

511:                                              ; preds = %505
  %512 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @compat_keys, i32 0, i32 3), align 8
  br label %515

513:                                              ; preds = %505
  %514 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @compat_keys, i32 0, i32 2), align 8
  br label %515

515:                                              ; preds = %513, %511
  %516 = phi i64 [ %512, %511 ], [ %514, %513 ]
  store i64 %516, i64* %32, align 8
  %517 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 8
  %520 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @compat_keys, i32 0, i32 1), align 4
  %521 = load i64, i64* %32, align 8
  %522 = call i32 @VTSessionSetProperty(i32 %519, i32 %520, i64 %521)
  store i32 %522, i32* %26, align 4
  %523 = load i32, i32* %26, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %530

525:                                              ; preds = %515
  %526 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %527 = load i32, i32* @AV_LOG_ERROR, align 4
  %528 = load i32, i32* %26, align 4
  %529 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %526, i32 %527, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %528)
  br label %530

530:                                              ; preds = %525, %515
  br label %531

531:                                              ; preds = %530, %499
  %532 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 3
  %534 = load i64, i64* %533, align 8
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %551

536:                                              ; preds = %531
  %537 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %538 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 8
  %540 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @compat_keys, i32 0, i32 0), align 8
  %541 = load i64, i64* @kCFBooleanTrue, align 8
  %542 = call i32 @VTSessionSetProperty(i32 %539, i32 %540, i64 %541)
  store i32 %542, i32* %26, align 4
  %543 = load i32, i32* %26, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %550

545:                                              ; preds = %536
  %546 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %547 = load i32, i32* @AV_LOG_ERROR, align 4
  %548 = load i32, i32* %26, align 4
  %549 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %546, i32 %547, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i32 %548)
  br label %550

550:                                              ; preds = %545, %536
  br label %551

551:                                              ; preds = %550, %531
  %552 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %553 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 8
  %555 = call i32 @VTCompressionSessionPrepareToEncodeFrames(i32 %554)
  store i32 %555, i32* %26, align 4
  %556 = load i32, i32* %26, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %564

558:                                              ; preds = %551
  %559 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %560 = load i32, i32* @AV_LOG_ERROR, align 4
  %561 = load i32, i32* %26, align 4
  %562 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %559, i32 %560, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %561)
  %563 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %563, i32* %8, align 4
  br label %565

564:                                              ; preds = %551
  store i32 0, i32* %8, align 4
  br label %565

565:                                              ; preds = %564, %558, %492, %379, %353, %230, %216, %170, %148, %131, %122, %99, %85, %77
  %566 = load i32, i32* %8, align 4
  ret i32 %566
}

declare dso_local i32 @VTCompressionSessionCreate(i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i64 @CFNumberCreate(i32, i32, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @VTSessionSetProperty(i32, i32, i64) #1

declare dso_local i32 @CFRelease(i64) #1

declare dso_local i64 @CFArrayCreate(i32, i8**, i32, i32*) #1

declare dso_local i32 @av_reduce(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @CFDictionaryCreateMutable(i32, i32, i32*, i32*) #1

declare dso_local i32 @CFDictionarySetValue(i64, i32, i64) #1

declare dso_local i32 @VTCompressionSessionPrepareToEncodeFrames(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
