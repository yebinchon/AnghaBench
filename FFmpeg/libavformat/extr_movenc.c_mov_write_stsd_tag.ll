; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_stsd_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_stsd_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"stsd\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_11__*)* @mov_write_stsd_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_stsd_tag(i32* %0, i32* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @avio_tell(i32* %12)
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @avio_wb32(i32* %14, i32 0)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @ffio_wfourcc(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @avio_wb32(i32* %18, i32 0)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @avio_wb32(i32* %20, i32 1)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = call i32 @mov_write_video_tag(i32* %30, i32* %31, i32* %32, %struct.TYPE_11__* %33)
  store i32 %34, i32* %11, align 4
  br label %102

35:                                               ; preds = %4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = call i32 @mov_write_audio_tag(i32* %44, i32* %45, i32* %46, %struct.TYPE_11__* %47)
  store i32 %48, i32* %11, align 4
  br label %101

49:                                               ; preds = %35
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = call i32 @mov_write_subtitle_tag(i32* %58, %struct.TYPE_11__* %59)
  store i32 %60, i32* %11, align 4
  br label %100

61:                                               ; preds = %49
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @MKTAG(i8 signext 114, i8 signext 116, i8 signext 112, i8 signext 32)
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = call i32 @mov_write_rtp_tag(i32* %70, %struct.TYPE_11__* %71)
  store i32 %72, i32* %11, align 4
  br label %99

73:                                               ; preds = %61
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @MKTAG(i8 signext 116, i8 signext 109, i8 signext 99, i8 signext 100)
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = call i32 @mov_write_tmcd_tag(i32* %82, %struct.TYPE_11__* %83)
  store i32 %84, i32* %11, align 4
  br label %98

85:                                               ; preds = %73
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @MKTAG(i8 signext 103, i8 signext 112, i8 signext 109, i8 signext 100)
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = call i32 @mov_write_gpmd_tag(i32* %94, %struct.TYPE_11__* %95)
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %85
  br label %98

98:                                               ; preds = %97, %81
  br label %99

99:                                               ; preds = %98, %69
  br label %100

100:                                              ; preds = %99, %57
  br label %101

101:                                              ; preds = %100, %43
  br label %102

102:                                              ; preds = %101, %29
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %5, align 4
  br label %111

107:                                              ; preds = %102
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @update_size(i32* %108, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %105
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @mov_write_video_tag(i32*, i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mov_write_audio_tag(i32*, i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mov_write_subtitle_tag(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @mov_write_rtp_tag(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mov_write_tmcd_tag(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mov_write_gpmd_tag(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
