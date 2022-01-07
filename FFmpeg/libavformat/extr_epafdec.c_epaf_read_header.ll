; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_epafdec.c_epaf_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_epafdec.c_epaf_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@FF_SANE_NB_CHANNELS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16BE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"24-bit Paris PCM format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @epaf_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epaf_read_header(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @avio_skip(i32 %11, i32 4)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @avio_rl32(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %19, i32* %2, align 4
  br label %164

20:                                               ; preds = %1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @avio_rl32(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %31, i32* %2, align 4
  br label %164

32:                                               ; preds = %27, %20
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @avio_rl32(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @avio_rl32(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @avio_rl32(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %61

48:                                               ; preds = %32
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @avio_rb32(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @avio_rb32(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @avio_rb32(i32 %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %48, %35
  %62 = load i32, i32* %7, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @FF_SANE_NB_CHANNELS, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = icmp sle i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68, %64, %61
  %72 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %72, i32* %2, align 4
  br label %164

73:                                               ; preds = %68
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = call %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__* %74, i32* null)
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %8, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = icmp ne %struct.TYPE_10__* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %164

81:                                               ; preds = %73
  %82 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 5
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  switch i32 %97, label %120 [
    i32 0, label %98
    i32 2, label %111
    i32 1, label %117
  ]

98:                                               ; preds = %81
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  br label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @AV_CODEC_ID_PCM_S16BE, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  store i32 %106, i32* %110, align 4
  br label %122

111:                                              ; preds = %81
  %112 = load i32, i32* @AV_CODEC_ID_PCM_S8, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 4
  store i32 %112, i32* %116, align 4
  br label %122

117:                                              ; preds = %81
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = call i32 @avpriv_request_sample(%struct.TYPE_11__* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %81, %117
  %121 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %121, i32* %2, align 4
  br label %164

122:                                              ; preds = %111, %105
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @av_get_bits_per_sample(i32 %127)
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  store i32 %128, i32* %132, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %137, %142
  %144 = sdiv i32 %143, 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 3
  store i32 %144, i32* %148, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @avpriv_set_pts_info(%struct.TYPE_10__* %149, i32 64, i32 1, i32 %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @avio_skip(i32 %158, i32 2024)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %122
  %162 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %162, i32* %2, align 4
  br label %164

163:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %161, %120, %78, %71, %30, %18
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i64 @avio_skip(i32, i32) #1

declare dso_local i32 @avio_rl32(i32) #1

declare dso_local i32 @avio_rb32(i32) #1

declare dso_local %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_10__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
