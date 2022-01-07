; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_siff.c_siff_parse_vbv1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_siff.c_siff_parse_vbv1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@TAG_VBHD = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Header chunk is missing\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Header chunk size is incorrect\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Incorrect header version\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"File contains no frames ???\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_VB = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32*)* @siff_parse_vbv1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siff_parse_vbv1(i32* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @avio_rl32(i32* %11)
  %13 = load i64, i64* @TAG_VBHD, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @AV_LOG_ERROR, align 4
  %18 = call i32 @av_log(i32* %16, i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %19, i32* %4, align 4
  br label %150

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @avio_rb32(i32* %21)
  %23 = icmp ne i32 %22, 32
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = call i32 @av_log(i32* %25, i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %28, i32* %4, align 4
  br label %150

29:                                               ; preds = %20
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @avio_rl16(i32* %30)
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 @av_log(i32* %34, i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %37, i32* %4, align 4
  br label %150

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @avio_rl16(i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @avio_rl16(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @avio_skip(i32* %43, i32 4)
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @avio_rl16(i32* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %38
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 @av_log(i32* %54, i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %4, align 4
  br label %150

58:                                               ; preds = %38
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @avio_rl16(i32* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @avio_rl16(i32* %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 3
  %74 = mul nsw i32 %69, %73
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @avio_skip(i32* %77, i32 16)
  %79 = load i32*, i32** %5, align 8
  %80 = call %struct.TYPE_10__* @avformat_new_stream(i32* %79, i32* null)
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %8, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %58
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @AVERROR(i32 %84)
  store i32 %85, i32* %4, align 4
  br label %150

86:                                               ; preds = %58
  %87 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* @AV_CODEC_ID_VB, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  store i32 %92, i32* %96, align 4
  %97 = call i32 @MKTAG(i8 signext 86, i8 signext 66, i8 signext 86, i8 signext 49)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 %112, i32* %116, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %125 = call i32 @avpriv_set_pts_info(%struct.TYPE_10__* %124, i32 16, i32 1, i32 12)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 7
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 4
  store i32 1, i32* %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 6
  store i32 -1, i32* %140, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %86
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %148 = call i32 @create_audio_stream(i32* %146, %struct.TYPE_9__* %147)
  store i32 %148, i32* %4, align 4
  br label %150

149:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %145, %83, %53, %33, %24, %15
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @avformat_new_stream(i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @create_audio_stream(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
