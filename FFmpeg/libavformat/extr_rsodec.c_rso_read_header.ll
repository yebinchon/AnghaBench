; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rsodec.c_rso_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rsodec.c_rso_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ff_codec_rso_tags = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_IMA_WAV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ADPCM in RSO\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown bits per sample\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @rso_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rso_read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @avio_rb16(i32* %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i8* @avio_rb16(i32* %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @avio_rb16(i32* %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @avio_rb16(i32* %23)
  %25 = load i32, i32* @ff_codec_rso_tags, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ff_codec_get_id(i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @AV_CODEC_ID_ADPCM_IMA_WAV, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = call i32 @avpriv_report_missing_feature(%struct.TYPE_12__* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %34, i32* %2, align 4
  br label %95

35:                                               ; preds = %1
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @av_get_bits_per_sample(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = call i32 @avpriv_request_sample(%struct.TYPE_12__* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %43, i32* %2, align 4
  br label %95

44:                                               ; preds = %35
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__* %45, i32* null)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %10, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %95

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = mul i32 %53, 8
  %55 = load i32, i32* %7, align 4
  %56 = udiv i32 %54, %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 6
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  %78 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 5
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  store i32 %83, i32* %87, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  store i32 1, i32* %91, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %92, i32 64, i32 1, i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %52, %49, %40, %31
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i8* @avio_rb16(i32*) #1

declare dso_local i32 @ff_codec_get_id(i32, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_12__*, i8*) #1

declare dso_local %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
