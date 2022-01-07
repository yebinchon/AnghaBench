; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_check_capabilities.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_nvenc.c_nvenc_check_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i8*, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Codec not supported\0A\00", align 1
@NV_ENC_CAPS_SUPPORT_YUV444_ENCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"YUV444P not supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@NV_ENC_CAPS_SUPPORT_LOSSLESS_ENCODE = common dso_local global i32 0, align 4
@PRESET_LOSSLESS_DEFAULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Lossless encoding not supported\0A\00", align 1
@NV_ENC_CAPS_WIDTH_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Width %d exceeds %d\0A\00", align 1
@NV_ENC_CAPS_HEIGHT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Height %d exceeds %d\0A\00", align 1
@NV_ENC_CAPS_NUM_MAX_BFRAMES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Max B-frames %d exceed %d\0A\00", align 1
@NV_ENC_CAPS_SUPPORT_FIELD_ENCODING = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_INTERLACED_DCT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"Interlaced encoding is not supported. Supported level: %d\0A\00", align 1
@NV_ENC_CAPS_SUPPORT_10BIT_ENCODE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"10 bit encode not supported\0A\00", align 1
@NV_ENC_CAPS_SUPPORT_LOOKAHEAD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"RC lookahead not supported\0A\00", align 1
@NV_ENC_CAPS_SUPPORT_TEMPORAL_AQ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Temporal AQ not supported\0A\00", align 1
@NV_ENC_CAPS_SUPPORT_WEIGHTED_PREDICTION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Weighted Prediction not supported\0A\00", align 1
@NV_ENC_CAPS_SUPPORT_CABAC = common dso_local global i32 0, align 4
@NV_ENC_H264_ENTROPY_CODING_MODE_CABAC = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [36 x i8] c"CABAC entropy coding not supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"B frames as references need SDK 8.1 at build time\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"Multiple reference frames need SDK 9.1 at build time\0A\00", align 1
@NV_ENC_CAPS_SUPPORT_DYN_BITRATE_CHANGE = common dso_local global i32 0, align 4
@NV_ENC_BFRAME_REF_MODE_DISABLED = common dso_local global i64 0, align 8
@NV_ENC_BFRAME_REF_MODE_EACH = common dso_local global i64 0, align 8
@NV_ENC_CAPS_SUPPORT_BFRAME_REF_MODE = common dso_local global i32 0, align 4
@NV_ENC_CAPS_SUPPORT_MULTIPLE_REF_FRAMES = common dso_local global i32 0, align 4
@NV_ENC_NUM_REF_FRAMES_AUTOSELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @nvenc_check_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvenc_check_capabilities(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = call i32 @nvenc_check_codec_support(%struct.TYPE_8__* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = load i32, i32* @AV_LOG_WARNING, align 4
  %16 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %14, i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %257

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = load i32, i32* @NV_ENC_CAPS_SUPPORT_YUV444_ENCODE, align 4
  %21 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_YUV444(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = load i32, i32* @AV_LOG_WARNING, align 4
  %34 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %32, i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENOSYS, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %257

37:                                               ; preds = %28, %18
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = load i32, i32* @NV_ENC_CAPS_SUPPORT_LOSSLESS_ENCODE, align 4
  %40 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PRESET_LOSSLESS_DEFAULT, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = load i32, i32* @AV_LOG_WARNING, align 4
  %53 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %51, i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @ENOSYS, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %2, align 4
  br label %257

56:                                               ; preds = %47, %37
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = load i32, i32* @NV_ENC_CAPS_WIDTH_MAX, align 4
  %59 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %57, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %56
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = load i32, i32* @AV_LOG_WARNING, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %67, i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* @ENOSYS, align 4
  %75 = call i32 @AVERROR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %257

76:                                               ; preds = %56
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = load i32, i32* @NV_ENC_CAPS_HEIGHT_MAX, align 4
  %79 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = load i32, i32* @AV_LOG_WARNING, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %87, i32 %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @ENOSYS, align 4
  %95 = call i32 @AVERROR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %257

96:                                               ; preds = %76
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = load i32, i32* @NV_ENC_CAPS_NUM_MAX_BFRAMES, align 4
  %99 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %97, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %96
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = load i32, i32* @AV_LOG_WARNING, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %107, i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* @ENOSYS, align 4
  %115 = call i32 @AVERROR(i32 %114)
  store i32 %115, i32* %2, align 4
  br label %257

116:                                              ; preds = %96
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = load i32, i32* @NV_ENC_CAPS_SUPPORT_FIELD_ENCODING, align 4
  %119 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %117, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 1
  br i1 %122, label %123, label %137

123:                                              ; preds = %116
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @AV_CODEC_FLAG_INTERLACED_DCT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = load i32, i32* @AV_LOG_WARNING, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %131, i32 %132, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @ENOSYS, align 4
  %136 = call i32 @AVERROR(i32 %135)
  store i32 %136, i32* %2, align 4
  br label %257

137:                                              ; preds = %123, %116
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = load i32, i32* @NV_ENC_CAPS_SUPPORT_10BIT_ENCODE, align 4
  %140 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %138, i32 %139)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %5, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @IS_10BIT(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %137
  %148 = load i32, i32* %5, align 4
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = load i32, i32* @AV_LOG_WARNING, align 4
  %153 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %151, i32 %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i32, i32* @ENOSYS, align 4
  %155 = call i32 @AVERROR(i32 %154)
  store i32 %155, i32* %2, align 4
  br label %257

156:                                              ; preds = %147, %137
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = load i32, i32* @NV_ENC_CAPS_SUPPORT_LOOKAHEAD, align 4
  %159 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %157, i32 %158)
  %160 = ptrtoint i8* %159 to i32
  store i32 %160, i32* %5, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %156
  %166 = load i32, i32* %5, align 4
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %170 = load i32, i32* @AV_LOG_WARNING, align 4
  %171 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %169, i32 %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %172 = load i32, i32* @ENOSYS, align 4
  %173 = call i32 @AVERROR(i32 %172)
  store i32 %173, i32* %2, align 4
  br label %257

174:                                              ; preds = %165, %156
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %176 = load i32, i32* @NV_ENC_CAPS_SUPPORT_TEMPORAL_AQ, align 4
  %177 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %175, i32 %176)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %5, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %174
  %184 = load i32, i32* %5, align 4
  %185 = icmp sle i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = load i32, i32* @AV_LOG_WARNING, align 4
  %189 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %187, i32 %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %190 = load i32, i32* @ENOSYS, align 4
  %191 = call i32 @AVERROR(i32 %190)
  store i32 %191, i32* %2, align 4
  br label %257

192:                                              ; preds = %183, %174
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = load i32, i32* @NV_ENC_CAPS_SUPPORT_WEIGHTED_PREDICTION, align 4
  %195 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %193, i32 %194)
  %196 = ptrtoint i8* %195 to i32
  store i32 %196, i32* %5, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %192
  %202 = load i32, i32* %5, align 4
  %203 = icmp sle i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %206 = load i32, i32* @AV_LOG_WARNING, align 4
  %207 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %205, i32 %206, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %208 = load i32, i32* @ENOSYS, align 4
  %209 = call i32 @AVERROR(i32 %208)
  store i32 %209, i32* %2, align 4
  br label %257

210:                                              ; preds = %201, %192
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = load i32, i32* @NV_ENC_CAPS_SUPPORT_CABAC, align 4
  %213 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %211, i32 %212)
  %214 = ptrtoint i8* %213 to i32
  store i32 %214, i32* %5, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @NV_ENC_H264_ENTROPY_CODING_MODE_CABAC, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %210
  %221 = load i32, i32* %5, align 4
  %222 = icmp sle i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %225 = load i32, i32* @AV_LOG_WARNING, align 4
  %226 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %224, i32 %225, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %227 = load i32, i32* @ENOSYS, align 4
  %228 = call i32 @AVERROR(i32 %227)
  store i32 %228, i32* %2, align 4
  br label %257

229:                                              ; preds = %220, %210
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %236 = load i32, i32* @AV_LOG_WARNING, align 4
  %237 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %235, i32 %236, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  %238 = load i32, i32* @ENOSYS, align 4
  %239 = call i32 @AVERROR(i32 %238)
  store i32 %239, i32* %2, align 4
  br label %257

240:                                              ; preds = %229
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %247 = load i32, i32* @AV_LOG_WARNING, align 4
  %248 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %246, i32 %247, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  %249 = load i32, i32* @ENOSYS, align 4
  %250 = call i32 @AVERROR(i32 %249)
  store i32 %250, i32* %2, align 4
  br label %257

251:                                              ; preds = %240
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %253 = load i32, i32* @NV_ENC_CAPS_SUPPORT_DYN_BITRATE_CHANGE, align 4
  %254 = call i8* @nvenc_check_cap(%struct.TYPE_8__* %252, i32 %253)
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 6
  store i8* %254, i8** %256, align 8
  store i32 0, i32* %2, align 4
  br label %257

257:                                              ; preds = %251, %245, %234, %223, %204, %186, %168, %150, %130, %106, %86, %66, %50, %31, %13
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i32 @nvenc_check_codec_support(%struct.TYPE_8__*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i8* @nvenc_check_cap(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @IS_YUV444(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @IS_10BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
