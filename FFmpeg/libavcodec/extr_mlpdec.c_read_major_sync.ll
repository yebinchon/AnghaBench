; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_major_sync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpdec.c_read_major_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_11__*, %struct.TYPE_14__*, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32, i8*, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i32, i64, i32, i8* }
%struct.TYPE_10__ = type { i32 (i32, i32, i32, i32)*, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid/unknown bits per sample\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Channel group 2 cannot have more bits per sample than group 1.\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Channel groups with differing sample rates are not currently supported.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"invalid/unknown sampling rate\0A\00", align 1
@MAX_SAMPLERATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"Sampling rate %d is greater than the supported maximum (%d).\0A\00", align 1
@MAX_BLOCKSIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"Block size %d is greater than the supported maximum (%d).\0A\00", align 1
@MAX_BLOCKSIZE_POW2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [64 x i8] c"Block size pow2 %d is greater than the supported maximum (%d).\0A\00", align 1
@AV_CODEC_ID_MLP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"MLP only supports up to 2 substreams.\0A\00", align 1
@MAX_SUBSTREAMS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [63 x i8] c"%d substreams (more than the maximum supported by the decoder)\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S32 = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_S16 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"unexpected stream_type %X in MLP\00", align 1
@AV_CH_LAYOUT_STEREO = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"unexpected stream_type %X in !MLP\00", align 1
@AV_CH_LAYOUT_MONO = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"Mono stream with 2 substreams, ignoring 2nd\0A\00", align 1
@AV_MATRIX_ENCODING_NONE = common dso_local global i8* null, align 8
@AV_CODEC_ID_TRUEHD = common dso_local global i64 0, align 8
@AV_CH_SIDE_LEFT = common dso_local global i32 0, align 4
@AV_CH_SIDE_RIGHT = common dso_local global i32 0, align 4
@THD_CH_MODIFIER_SURROUNDEX = common dso_local global i64 0, align 8
@AV_MATRIX_ENCODING_DOLBYEX = common dso_local global i8* null, align 8
@AV_MATRIX_ENCODING_DOLBY = common dso_local global i8* null, align 8
@AV_MATRIX_ENCODING_DOLBYHEADPHONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @read_major_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_major_sync(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 7
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ff_mlp_read_major_sync(%struct.TYPE_14__* %11, %struct.TYPE_12__* %6, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %536

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 7
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %24, i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %27, i32* %3, align 4
  br label %536

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %37, i32 %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %3, align 4
  br label %536

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %54, i32 %55, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %3, align 4
  br label %536

58:                                               ; preds = %45, %41
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %65, i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %68, i32* %3, align 4
  br label %536

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MAX_SAMPLERATE, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = load i32, i32* @AV_LOG_ERROR, align 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MAX_SAMPLERATE, align 8
  %82 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %77, i32 %78, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i64 %80, i64 %81)
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %3, align 4
  br label %536

84:                                               ; preds = %69
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MAX_BLOCKSIZE, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MAX_BLOCKSIZE, align 8
  %97 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %92, i32 %93, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i64 %95, i64 %96)
  %98 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %98, i32* %3, align 4
  br label %536

99:                                               ; preds = %84
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MAX_BLOCKSIZE_POW2, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 7
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MAX_BLOCKSIZE_POW2, align 8
  %112 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %107, i32 %108, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i64 %110, i64 %111)
  %113 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %113, i32* %3, align 4
  br label %536

114:                                              ; preds = %99
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %119, i32* %3, align 4
  br label %536

120:                                              ; preds = %114
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AV_CODEC_ID_MLP, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %130, 2
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = load i32, i32* @AV_LOG_ERROR, align 4
  %137 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %135, i32 %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %138 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %138, i32* %3, align 4
  br label %536

139:                                              ; preds = %128, %120
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 7
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @avpriv_request_sample(%struct.TYPE_14__* %147, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %151, i32* %3, align 4
  br label %536

152:                                              ; preds = %139
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 15
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 9
  store i32 %154, i32* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 1
  %173 = call i64 @FFMIN(i32 %172, i32 2)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  store i64 %173, i64* %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 7
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  store i64 %177, i64* %181, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 7
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  store i64 %183, i64* %187, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 7
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  store i32 %189, i32* %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp sgt i32 %195, 16
  br i1 %196, label %197, label %203

197:                                              ; preds = %152
  %198 = load i64, i64* @AV_SAMPLE_FMT_S32, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 7
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 4
  store i64 %198, i64* %202, align 8
  br label %209

203:                                              ; preds = %152
  %204 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 4
  store i64 %204, i64* %208, align 8
  br label %209

209:                                              ; preds = %203, %197
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %212, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 6
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 6
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 6
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 7
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @AV_SAMPLE_FMT_S32, align 8
  %247 = icmp eq i64 %245, %246
  %248 = zext i1 %247 to i32
  %249 = call i32 %213(i32 %222, i32 %231, i32 %240, i32 %248)
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 1
  store i32 %249, i32* %252, align 8
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 4
  store i32 1, i32* %254, align 8
  store i32 0, i32* %7, align 4
  br label %255

255:                                              ; preds = %267, %209
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %270

259:                                              ; preds = %255
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 6
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 2
  store i64 0, i64* %266, align 8
  br label %267

267:                                              ; preds = %259
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %7, align 4
  br label %255

270:                                              ; preds = %255
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 7
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @AV_CODEC_ID_MLP, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %313

278:                                              ; preds = %270
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 7
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 187
  br i1 %281, label %282, label %290

282:                                              ; preds = %278
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 7
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 7
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @avpriv_request_sample(%struct.TYPE_14__* %285, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %289, i32* %3, align 4
  br label %536

290:                                              ; preds = %278
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %292 = load i32, i32* %291, align 8
  %293 = icmp sgt i32 %292, 1
  %294 = zext i1 %293 to i32
  store i32 %294, i32* %7, align 4
  br i1 %293, label %295, label %303

295:                                              ; preds = %290
  %296 = load i8*, i8** @AV_CH_LAYOUT_STEREO, align 8
  %297 = ptrtoint i8* %296 to i32
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 6
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i64 0
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 0, i32 0
  store i32 %297, i32* %302, align 8
  br label %303

303:                                              ; preds = %295, %290
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 8
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 6
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %307, align 8
  %309 = load i32, i32* %7, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  store i32 %305, i32* %312, align 8
  br label %418

313:                                              ; preds = %270
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 7
  %315 = load i32, i32* %314, align 4
  %316 = icmp ne i32 %315, 186
  br i1 %316, label %317, label %325

317:                                              ; preds = %313
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 7
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 7
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @avpriv_request_sample(%struct.TYPE_14__* %320, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %322)
  %324 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %324, i32* %3, align 4
  br label %536

325:                                              ; preds = %313
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = icmp sgt i32 %327, 1
  %329 = zext i1 %328 to i32
  store i32 %329, i32* %7, align 4
  br i1 %328, label %330, label %338

330:                                              ; preds = %325
  %331 = load i8*, i8** @AV_CH_LAYOUT_STEREO, align 8
  %332 = ptrtoint i8* %331 to i32
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 6
  %335 = load %struct.TYPE_11__*, %struct.TYPE_11__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 0
  store i32 %332, i32* %337, align 8
  br label %338

338:                                              ; preds = %330, %325
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %340 = load i32, i32* %339, align 8
  %341 = icmp sgt i32 %340, 2
  br i1 %341, label %342, label %363

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 9
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 9
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 6
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i64 2
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 0
  store i32 %348, i32* %353, align 8
  br label %362

354:                                              ; preds = %342
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 10
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 6
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i64 2
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  store i32 %356, i32* %361, align 8
  br label %362

362:                                              ; preds = %354, %346
  br label %363

363:                                              ; preds = %362, %338
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 10
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 6
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %367, align 8
  %369 = load i32, i32* %7, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 0
  store i32 %365, i32* %372, align 8
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 7
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 8
  %378 = icmp sle i32 %377, 2
  br i1 %378, label %379, label %417

379:                                              ; preds = %363
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 6
  %382 = load %struct.TYPE_11__*, %struct.TYPE_11__** %381, align 8
  %383 = load i32, i32* %7, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = load i64, i64* @AV_CH_LAYOUT_MONO, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %417

391:                                              ; preds = %379
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 3
  %394 = load i64, i64* %393, align 8
  %395 = icmp eq i64 %394, 1
  br i1 %395, label %396, label %417

396:                                              ; preds = %391
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 7
  %399 = load %struct.TYPE_14__*, %struct.TYPE_14__** %398, align 8
  %400 = load i32, i32* @AV_LOG_DEBUG, align 4
  %401 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %399, i32 %400, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 3
  store i64 0, i64* %403, align 8
  %404 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 7
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = icmp eq i32 %408, 2
  br i1 %409, label %410, label %416

410:                                              ; preds = %396
  %411 = load i8*, i8** @AV_CH_LAYOUT_STEREO, align 8
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 7
  %414 = load %struct.TYPE_14__*, %struct.TYPE_14__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 6
  store i8* %411, i8** %415, align 8
  br label %416

416:                                              ; preds = %410, %396
  br label %417

417:                                              ; preds = %416, %391, %379, %363
  br label %418

418:                                              ; preds = %417, %303
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 11
  %420 = load i32, i32* %419, align 4
  %421 = icmp sge i32 %420, 18
  br i1 %421, label %422, label %426

422:                                              ; preds = %418
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 11
  %424 = load i32, i32* %423, align 4
  %425 = icmp sle i32 %424, 20
  br label %426

426:                                              ; preds = %422, %418
  %427 = phi i1 [ false, %418 ], [ %425, %422 ]
  %428 = zext i1 %427 to i32
  %429 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %429, i32 0, i32 5
  store i32 %428, i32* %430, align 4
  store i32 0, i32* %7, align 4
  br label %431

431:                                              ; preds = %444, %426
  %432 = load i32, i32* %7, align 4
  %433 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %447

435:                                              ; preds = %431
  %436 = load i8*, i8** @AV_MATRIX_ENCODING_NONE, align 8
  %437 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %437, i32 0, i32 6
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %438, align 8
  %440 = load i32, i32* %7, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 1
  store i8* %436, i8** %443, align 8
  br label %444

444:                                              ; preds = %435
  %445 = load i32, i32* %7, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %7, align 4
  br label %431

447:                                              ; preds = %431
  %448 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 7
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @AV_CODEC_ID_TRUEHD, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %455, label %535

455:                                              ; preds = %447
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %457 = load i32, i32* %456, align 8
  %458 = icmp sgt i32 %457, 2
  br i1 %458, label %459, label %483

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 9
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @AV_CH_SIDE_LEFT, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %483

465:                                              ; preds = %459
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 9
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* @AV_CH_SIDE_RIGHT, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %483

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 12
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @THD_CH_MODIFIER_SURROUNDEX, align 8
  %475 = icmp eq i64 %473, %474
  br i1 %475, label %476, label %483

476:                                              ; preds = %471
  %477 = load i8*, i8** @AV_MATRIX_ENCODING_DOLBYEX, align 8
  %478 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 6
  %480 = load %struct.TYPE_11__*, %struct.TYPE_11__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i64 2
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 1
  store i8* %477, i8** %482, align 8
  br label %483

483:                                              ; preds = %476, %471, %465, %459, %455
  %484 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %485 = load i32, i32* %484, align 8
  %486 = icmp sgt i32 %485, 1
  br i1 %486, label %487, label %511

487:                                              ; preds = %483
  %488 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 10
  %489 = load i32, i32* %488, align 8
  %490 = load i32, i32* @AV_CH_SIDE_LEFT, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %511

493:                                              ; preds = %487
  %494 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 10
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @AV_CH_SIDE_RIGHT, align 4
  %497 = and i32 %495, %496
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %511

499:                                              ; preds = %493
  %500 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 13
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* @THD_CH_MODIFIER_SURROUNDEX, align 8
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %504, label %511

504:                                              ; preds = %499
  %505 = load i8*, i8** @AV_MATRIX_ENCODING_DOLBYEX, align 8
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 6
  %508 = load %struct.TYPE_11__*, %struct.TYPE_11__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %508, i64 1
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 1
  store i8* %505, i8** %510, align 8
  br label %511

511:                                              ; preds = %504, %499, %493, %487, %483
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 6
  %513 = load i32, i32* %512, align 8
  %514 = icmp sgt i32 %513, 0
  br i1 %514, label %515, label %534

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 14
  %517 = load i32, i32* %516, align 8
  switch i32 %517, label %532 [
    i32 128, label %518
    i32 129, label %525
  ]

518:                                              ; preds = %515
  %519 = load i8*, i8** @AV_MATRIX_ENCODING_DOLBY, align 8
  %520 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %521 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %520, i32 0, i32 6
  %522 = load %struct.TYPE_11__*, %struct.TYPE_11__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %522, i64 0
  %524 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %523, i32 0, i32 1
  store i8* %519, i8** %524, align 8
  br label %533

525:                                              ; preds = %515
  %526 = load i8*, i8** @AV_MATRIX_ENCODING_DOLBYHEADPHONE, align 8
  %527 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %527, i32 0, i32 6
  %529 = load %struct.TYPE_11__*, %struct.TYPE_11__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i64 0
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i32 0, i32 1
  store i8* %526, i8** %531, align 8
  br label %533

532:                                              ; preds = %515
  br label %533

533:                                              ; preds = %532, %525, %518
  br label %534

534:                                              ; preds = %533, %511
  br label %535

535:                                              ; preds = %534, %447
  store i32 0, i32* %3, align 4
  br label %536

536:                                              ; preds = %535, %317, %282, %144, %132, %118, %104, %89, %74, %62, %51, %34, %21, %15
  %537 = load i32, i32* %3, align 4
  ret i32 %537
}

declare dso_local i32 @ff_mlp_read_major_sync(%struct.TYPE_14__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
