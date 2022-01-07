; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mm.c_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mm.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@MM_TYPE_HEADER = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MMVIDEO = common dso_local global i32 0, align 4
@MM_HEADER_LEN_AV = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @avio_rl16(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @avio_rl32(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MM_TYPE_HEADER, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %2, align 4
  br label %123

27:                                               ; preds = %1
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @avio_rl16(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @avio_rl16(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @avio_rl16(i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @avio_rl16(i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @avio_rl16(i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub i32 %39, 10
  %41 = call i32 @avio_skip(i32* %38, i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__* %42, i32* null)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %6, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %27
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %123

49:                                               ; preds = %27
  %50 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 7
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* @AV_CODEC_ID_MMVIDEO, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 5
  store i32 %55, i32* %59, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %74, i32 64, i32 1, i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @MM_HEADER_LEN_AV, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %118

80:                                               ; preds = %49
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = call %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__* %81, i32* null)
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %6, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %84 = icmp ne %struct.TYPE_11__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %123

88:                                               ; preds = %80
  %89 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 7
  store i32 %89, i32* %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 6
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 5
  store i32 %98, i32* %102, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  %107 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  store i32 %107, i32* %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  store i32 8000, i32* %115, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = call i32 @avpriv_set_pts_info(%struct.TYPE_11__* %116, i32 64, i32 1, i32 8000)
  br label %118

118:                                              ; preds = %88, %49
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %118, %85, %46, %25
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @avformat_new_stream(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
