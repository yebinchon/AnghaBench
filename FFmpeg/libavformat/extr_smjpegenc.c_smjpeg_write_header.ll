; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_smjpegenc.c_smjpeg_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_smjpegenc.c_smjpeg_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__**, i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"more than >2 streams are not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMJPEG_MAGIC = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@SMJPEG_TXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@ff_codec_smjpeg_audio_tags = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"unsupported audio codec\0A\00", align 1
@SMJPEG_SND = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@ff_codec_smjpeg_video_tags = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unsupported video codec\0A\00", align 1
@SMJPEG_VID = common dso_local global i32 0, align 4
@SMJPEG_HEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @smjpeg_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smjpeg_write_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = load i32, i32* @AV_LOG_ERROR, align 4
  %20 = call i32 @av_log(%struct.TYPE_12__* %18, i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %194

23:                                               ; preds = %1
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** @SMJPEG_MAGIC, align 8
  %26 = call i32 @avio_write(i32* %24, i8* %25, i32 8)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @avio_wb32(i32* %27, i32 0)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @avio_wb32(i32* %29, i32 0)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = call i32 @ff_standardize_creation_time(%struct.TYPE_12__* %31)
  br label %33

33:                                               ; preds = %41, %23
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %39 = call %struct.TYPE_13__* @av_dict_get(i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %37, i32 %38)
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %4, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %77

41:                                               ; preds = %33
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @SMJPEG_TXT, align 4
  %44 = call i32 @avio_wl32(i32* %42, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = add nsw i32 %49, %53
  %55 = add nsw i32 %54, 3
  %56 = call i32 @avio_wb32(i32* %45, i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @avio_write(i32* %57, i8* %60, i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @avio_write(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call i32 @avio_write(i32* %68, i8* %71, i32 %75)
  br label %33

77:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %185, %77
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %188

84:                                               ; preds = %78
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %87, i64 %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %8, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %9, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %84
  %101 = load i32, i32* @ff_codec_smjpeg_audio_tags, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ff_codec_get_tag(i32 %101, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %100
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = call i32 @av_log(%struct.TYPE_12__* %109, i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = call i32 @AVERROR(i32 %112)
  store i32 %113, i32* %2, align 4
  br label %194

114:                                              ; preds = %100
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* @SMJPEG_SND, align 4
  %117 = call i32 @avio_wl32(i32* %115, i32 %116)
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 @avio_wb32(i32* %118, i32 8)
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @avio_wb16(i32* %120, i32 %123)
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @avio_w8(i32* %125, i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @avio_w8(i32* %130, i32 %133)
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @avio_wl32(i32* %135, i32 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %139 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %138, i32 32, i32 1, i32 1000)
  br label %184

140:                                              ; preds = %84
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %183

146:                                              ; preds = %140
  %147 = load i32, i32* @ff_codec_smjpeg_video_tags, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @ff_codec_get_tag(i32 %147, i32 %150)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %146
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = load i32, i32* @AV_LOG_ERROR, align 4
  %157 = call i32 @av_log(%struct.TYPE_12__* %155, i32 %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i32, i32* @EINVAL, align 4
  %159 = call i32 @AVERROR(i32 %158)
  store i32 %159, i32* %2, align 4
  br label %194

160:                                              ; preds = %146
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* @SMJPEG_VID, align 4
  %163 = call i32 @avio_wl32(i32* %161, i32 %162)
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @avio_wb32(i32* %164, i32 12)
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @avio_wb32(i32* %166, i32 0)
  %168 = load i32*, i32** %5, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @avio_wb16(i32* %168, i32 %171)
  %173 = load i32*, i32** %5, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @avio_wb16(i32* %173, i32 %176)
  %178 = load i32*, i32** %5, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @avio_wl32(i32* %178, i32 %179)
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %182 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %181, i32 32, i32 1, i32 1000)
  br label %183

183:                                              ; preds = %160, %140
  br label %184

184:                                              ; preds = %183, %114
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %78

188:                                              ; preds = %78
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* @SMJPEG_HEND, align 4
  %191 = call i32 @avio_wl32(i32* %189, i32 %190)
  %192 = load i32*, i32** %5, align 8
  %193 = call i32 @avio_flush(i32* %192)
  store i32 0, i32* %2, align 4
  br label %194

194:                                              ; preds = %188, %154, %108, %17
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ff_standardize_creation_time(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @av_dict_get(i32, i8*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ff_codec_get_tag(i32, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @avio_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
