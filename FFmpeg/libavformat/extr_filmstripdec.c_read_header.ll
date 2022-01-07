; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_filmstripdec.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_filmstripdec.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i64, i64, i64, i32, i32, i32 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@RAND_TAG = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"magic number not found\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unsupported packing method\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_RAWVIDEO = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %4, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %5, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EIO, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %121

24:                                               ; preds = %1
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = call i64 @avio_size(%struct.TYPE_21__* %26)
  %28 = sub nsw i64 %27, 36
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i32 @avio_seek(%struct.TYPE_21__* %25, i64 %28, i32 %29)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = call i64 @avio_rb32(%struct.TYPE_21__* %31)
  %33 = load i64, i64* @RAND_TAG, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = load i32, i32* @AV_LOG_ERROR, align 4
  %38 = call i32 @av_log(%struct.TYPE_22__* %36, i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %2, align 4
  br label %121

40:                                               ; preds = %24
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = call %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_22__* %41, i32* null)
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %6, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %44 = icmp ne %struct.TYPE_20__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %121

48:                                               ; preds = %40
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = call i64 @avio_rb32(%struct.TYPE_21__* %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = call i64 @avio_rb16(%struct.TYPE_21__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = call i32 @avpriv_request_sample(%struct.TYPE_22__* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %59, i32* %2, align 4
  br label %121

60:                                               ; preds = %48
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = call i32 @avio_skip(%struct.TYPE_21__* %61, i32 2)
  %63 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 5
  store i32 %63, i32* %67, align 8
  %68 = load i32, i32* @AV_CODEC_ID_RAWVIDEO, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 4
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @AV_PIX_FMT_RGBA, align 4
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  store i32 %73, i32* %77, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = call i64 @avio_rb16(%struct.TYPE_21__* %82)
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  store i64 %83, i64* %87, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = call i64 @avio_rb16(%struct.TYPE_21__* %88)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  store i64 %89, i64* %93, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = call i64 @avio_rb16(%struct.TYPE_21__* %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %109 = call i64 @av_image_check_size(i64 %102, i64 %107, i32 0, %struct.TYPE_22__* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %60
  %112 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %112, i32* %2, align 4
  br label %121

113:                                              ; preds = %60
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = call i64 @avio_rb16(%struct.TYPE_21__* %115)
  %117 = call i32 @avpriv_set_pts_info(%struct.TYPE_20__* %114, i32 64, i32 1, i64 %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %119 = load i32, i32* @SEEK_SET, align 4
  %120 = call i32 @avio_seek(%struct.TYPE_21__* %118, i64 0, i32 %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %113, %111, %56, %45, %35, %21
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_seek(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i64 @avio_size(%struct.TYPE_21__*) #1

declare dso_local i64 @avio_rb32(%struct.TYPE_21__*) #1

declare dso_local i32 @av_log(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local %struct.TYPE_20__* @avformat_new_stream(%struct.TYPE_22__*, i32*) #1

declare dso_local i64 @avio_rb16(%struct.TYPE_21__*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @av_image_check_size(i64, i64, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_20__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
