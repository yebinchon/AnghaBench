; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dcstr.c_dcstr_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dcstr.c_dcstr_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i8* }
%struct.TYPE_10__ = type { i32, i32, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid number of channels %d x %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_AICA = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE_PLANAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"codec %X\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @dcstr_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcstr_read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__* %8, i32* null)
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = call i32 @AVERROR(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %162

15:                                               ; preds = %1
  %16 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  store i32 %16, i32* %20, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @avio_rl32(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @avio_rl32(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  store i8* %33, i8** %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @avio_rl32(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @avio_rl32(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %5, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @avio_skip(i32 %50, i32 4)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @avio_rl32(i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @avio_rl32(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %15
  %70 = load i32, i32* %6, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @INT_MAX, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sdiv i32 %74, %79
  %81 = icmp sgt i32 %73, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %72, %69, %15
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @av_log(%struct.TYPE_12__* %83, i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %92, i32* %2, align 4
  br label %162

93:                                               ; preds = %72
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %99, %94
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %93
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @INT_MAX, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sdiv i32 %105, %110
  %112 = icmp ugt i32 %104, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %103, %93
  %114 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %114, i32* %2, align 4
  br label %162

115:                                              ; preds = %103
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = mul i32 %116, %121
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* %4, align 4
  switch i32 %127, label %140 [
    i32 4, label %128
    i32 16, label %134
  ]

128:                                              ; preds = %115
  %129 = load i32, i32* @AV_CODEC_ID_ADPCM_AICA, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  store i32 %129, i32* %133, align 8
  br label %145

134:                                              ; preds = %115
  %135 = load i32, i32* @AV_CODEC_ID_PCM_S16LE_PLANAR, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 3
  store i32 %135, i32* %139, align 8
  br label %145

140:                                              ; preds = %115
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @avpriv_request_sample(%struct.TYPE_12__* %141, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %144, i32* %2, align 4
  br label %162

145:                                              ; preds = %134, %128
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @avio_tell(i32 %151)
  %153 = sub nsw i32 2048, %152
  %154 = call i32 @avio_skip(i32 %148, i32 %153)
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %155, i32 64, i32 1, i8* %160)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %145, %140, %113, %82, %12
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @avio_rl32(i32) #1

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
