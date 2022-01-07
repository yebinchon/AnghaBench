; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_bethsoftvid.c_vid_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_bethsoftvid.c_vid_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"discarding unused palette\0A\00", align 1
@BVID_PALETTE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"incomplete audio block\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"reached terminating character but not all frames read.\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"unknown block (character = %c, decimal = %d, hex = %x)!!!\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @vid_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vid_read_packet(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @avio_feof(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %2
  %27 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %27, i32* %3, align 4
  br label %218

28:                                               ; preds = %22
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @avio_r8(i32* %29)
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %8, align 1
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  switch i32 %33, label %207 [
    i32 131, label %34
    i32 132, label %77
    i32 134, label %86
    i32 129, label %186
    i32 128, label %186
    i32 130, label %186
    i32 133, label %193
  ]

34:                                               ; preds = %28
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = load i32, i32* @AV_LOG_WARNING, align 4
  %42 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %40, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 4
  %45 = call i32 @av_freep(i32* %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i32, i32* @BVID_PALETTE_SIZE, align 4
  %48 = call i32 @av_malloc(i32 %47)
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %218

58:                                               ; preds = %46
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BVID_PALETTE_SIZE, align 4
  %64 = call i32 @avio_read(i32* %59, i32 %62, i32 %63)
  %65 = load i32, i32* @BVID_PALETTE_SIZE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 4
  %70 = call i32 @av_freep(i32* %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %3, align 4
  br label %218

73:                                               ; preds = %58
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %76 = call i32 @vid_read_packet(%struct.TYPE_20__* %74, %struct.TYPE_19__* %75)
  store i32 %76, i32* %3, align 4
  br label %218

77:                                               ; preds = %28
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @avio_rl16(i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @avio_r8(i32* %80)
  %82 = sub nsw i32 256, %81
  %83 = sdiv i32 1000000, %82
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %28, %77
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %152

91:                                               ; preds = %86
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = call %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__* %92, i32* null)
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %11, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %95 = icmp ne %struct.TYPE_18__* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %3, align 4
  br label %218

99:                                               ; preds = %91
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 6
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 5
  store i32 %110, i32* %114, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 4
  store i32 %119, i32* %123, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  store i32 8, i32* %127, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 8, %139
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 3
  store i32 %140, i32* %144, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @avpriv_set_pts_info(%struct.TYPE_18__* %147, i32 64, i32 1, i32 %150)
  br label %152

152:                                              ; preds = %99, %86
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @avio_rl16(i32* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @av_get_packet(i32* %155, %struct.TYPE_19__* %156, i32 %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %152
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %3, align 4
  br label %218

166:                                              ; preds = %161
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %168 = load i32, i32* @AV_LOG_ERROR, align 4
  %169 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %167, i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %170 = load i32, i32* @EIO, align 4
  %171 = call i32 @AVERROR(i32 %170)
  store i32 %171, i32* %3, align 4
  br label %218

172:                                              ; preds = %152
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  store i32 0, i32* %3, align 4
  br label %218

186:                                              ; preds = %28, %28, %28
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %190 = load i8, i8* %8, align 1
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %192 = call i32 @read_frame(%struct.TYPE_17__* %187, i32* %188, %struct.TYPE_19__* %189, i8 zeroext %190, %struct.TYPE_20__* %191)
  store i32 %192, i32* %3, align 4
  br label %218

193:                                              ; preds = %28
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %200 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %201 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %199, i32 %200, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %202

202:                                              ; preds = %198, %193
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  store i32 1, i32* %204, align 4
  %205 = load i32, i32* @EIO, align 4
  %206 = call i32 @AVERROR(i32 %205)
  store i32 %206, i32* %3, align 4
  br label %218

207:                                              ; preds = %28
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %209 = load i32, i32* @AV_LOG_ERROR, align 4
  %210 = load i8, i8* %8, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8, i8* %8, align 1
  %213 = zext i8 %212 to i32
  %214 = load i8, i8* %8, align 1
  %215 = zext i8 %214 to i32
  %216 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %208, i32 %209, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %211, i32 %213, i32 %215)
  %217 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %207, %202, %186, %172, %166, %164, %96, %73, %67, %55, %26
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_read(i32*, i32, i32) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local %struct.TYPE_18__* @avformat_new_stream(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @read_frame(%struct.TYPE_17__*, i32*, %struct.TYPE_19__*, i8 zeroext, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
