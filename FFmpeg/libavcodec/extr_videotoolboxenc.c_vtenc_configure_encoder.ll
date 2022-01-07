; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_vtenc_configure_encoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_vtenc_configure_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error: no mapping for AVCodecID %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@CMVideoFormatDescriptionGetH264ParameterSetAtIndex = common dso_local global i32 0, align 4
@H264_PROF_BASELINE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Cannot use B-frames with baseline profile. Output will not contain B-frames.\0A\00", align 1
@VT_CABAC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [113 x i8] c"CABAC entropy requires 'main' or 'high' profile, but baseline was requested. Encode will not use CABAC entropy.\0A\00", align 1
@VT_ENTROPY_NOT_SET = common dso_local global i64 0, align 8
@compat_keys = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFCopyStringDictionaryKeyCallBacks = common dso_local global i32 0, align 4
@kCFTypeDictionaryValueCallBacks = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kCFBooleanFalse = common dso_local global i32 0, align 4
@kCFBooleanTrue = common dso_local global i32 0, align 4
@AV_PIX_FMT_VIDEOTOOLBOX = common dso_local global i64 0, align 8
@AV_CODEC_FLAG_GLOBAL_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @vtenc_configure_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtenc_configure_encoder(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %7, align 8
  store i32* null, i32** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @get_cm_codec_type(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = load i32, i32* @AV_LOG_ERROR, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %21, i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %226

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %94

40:                                               ; preds = %29
  %41 = load i32, i32* @CMVideoFormatDescriptionGetH264ParameterSetAtIndex, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 11
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %40
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @H264_PROF_BASELINE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = load i32, i32* @AV_LOG_WARNING, align 4
  %64 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %62, i32 %63, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %55, %40
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VT_CABAC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @H264_PROF_BASELINE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = load i32, i32* @AV_LOG_WARNING, align 4
  %82 = call i32 (%struct.TYPE_16__*, i32, i8*, ...) @av_log(%struct.TYPE_16__* %80, i32 %81, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i64, i64* @VT_ENTROPY_NOT_SET, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %73, %67
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = call i32 @get_vt_h264_profile_level(%struct.TYPE_16__* %87, i32* %8)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @EINVAL, align 4
  %92 = call i32 @AVERROR(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %226

93:                                               ; preds = %86
  br label %113

94:                                               ; preds = %29
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @compat_keys, i32 0, i32 2), align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 11
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* @EINVAL, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %226

105:                                              ; preds = %94
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = call i32 @get_vt_hevc_profile_level(%struct.TYPE_16__* %106, i32* %8)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @EINVAL, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %2, align 4
  br label %226

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %93
  %114 = load i32, i32* @kCFAllocatorDefault, align 4
  %115 = call i32* @CFDictionaryCreateMutable(i32 %114, i32 20, i32* @kCFCopyStringDictionaryKeyCallBacks, i32* @kCFTypeDictionaryValueCallBacks)
  store i32* %115, i32** %4, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = call i32 @AVERROR(i32 %119)
  store i32 %120, i32* %2, align 4
  br label %226

121:                                              ; preds = %113
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 10
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i32*, i32** %4, align 8
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @compat_keys, i32 0, i32 0), align 4
  %129 = load i32, i32* @kCFBooleanFalse, align 4
  %130 = call i32 @CFDictionarySetValue(i32* %127, i32 %128, i32 %129)
  br label %147

131:                                              ; preds = %121
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = load i32*, i32** %4, align 8
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @compat_keys, i32 0, i32 1), align 4
  %139 = load i32, i32* @kCFBooleanTrue, align 4
  %140 = call i32 @CFDictionarySetValue(i32* %137, i32 %138, i32 %139)
  br label %146

141:                                              ; preds = %131
  %142 = load i32*, i32** %4, align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @compat_keys, i32 0, i32 0), align 4
  %144 = load i32, i32* @kCFBooleanTrue, align 4
  %145 = call i32 @CFDictionarySetValue(i32* %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %136
  br label %147

147:                                              ; preds = %146, %126
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AV_PIX_FMT_VIDEOTOOLBOX, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = call i32 @create_cv_pixel_buffer_info(%struct.TYPE_16__* %154, i32** %5)
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %210

159:                                              ; preds = %153
  br label %161

160:                                              ; preds = %147
  store i32* null, i32** %5, align 8
  br label %161

161:                                              ; preds = %160, %159
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 -1, i32 0
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 8
  %173 = call i32 @get_cv_transfer_function(%struct.TYPE_16__* %170, i32* %172, i32** %9)
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 7
  %177 = call i32 @get_cv_ycbcr_matrix(%struct.TYPE_16__* %174, i32* %176)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 6
  %181 = call i32 @get_cv_color_primaries(%struct.TYPE_16__* %178, i32* %180)
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @AV_CODEC_FLAG_GLOBAL_HEADER, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %161
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load i32*, i32** %9, align 8
  %193 = load i32*, i32** %4, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @vtenc_populate_extradata(%struct.TYPE_16__* %189, i32 %190, i32 %191, i32* %192, i32* %193, i32* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %188
  br label %210

199:                                              ; preds = %188
  br label %200

200:                                              ; preds = %199, %161
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* %8, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = load i32*, i32** %5, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 5
  %209 = call i32 @vtenc_create_encoder(%struct.TYPE_16__* %201, i32 %202, i32 %203, i32* %204, i32* %205, i32* %206, i32* %208)
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %200, %198, %158
  %211 = load i32*, i32** %9, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32*, i32** %9, align 8
  %215 = call i32 @CFRelease(i32* %214)
  br label %216

216:                                              ; preds = %213, %210
  %217 = load i32*, i32** %5, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32*, i32** %5, align 8
  %221 = call i32 @CFRelease(i32* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32*, i32** %4, align 8
  %224 = call i32 @CFRelease(i32* %223)
  %225 = load i32, i32* %10, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %222, %118, %109, %102, %90, %20
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @get_cm_codec_type(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @get_vt_h264_profile_level(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @get_vt_hevc_profile_level(%struct.TYPE_16__*, i32*) #1

declare dso_local i32* @CFDictionaryCreateMutable(i32, i32, i32*, i32*) #1

declare dso_local i32 @CFDictionarySetValue(i32*, i32, i32) #1

declare dso_local i32 @create_cv_pixel_buffer_info(%struct.TYPE_16__*, i32**) #1

declare dso_local i32 @get_cv_transfer_function(%struct.TYPE_16__*, i32*, i32**) #1

declare dso_local i32 @get_cv_ycbcr_matrix(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @get_cv_color_primaries(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @vtenc_populate_extradata(%struct.TYPE_16__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @vtenc_create_encoder(%struct.TYPE_16__*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @CFRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
