; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_codec_id.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_codec_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }

@ff_codec_movaudio_tags = common dso_local global i32 0, align 4
@ff_codec_wav_tags = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@ff_codec_movvideo_tags = common dso_local global i32 0, align 4
@ff_codec_bmp_tags = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_DATA = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@ff_codec_movsubtitle_tags = common dso_local global i32 0, align 4
@ff_codec_movdata_tags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @mov_codec_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_codec_id(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ff_codec_movaudio_tags, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ff_codec_get_id(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 29549
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 21332
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %11
  %20 = load i32, i32* @ff_codec_wav_tags, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @av_bswap32(i32 %21)
  %23 = and i32 %22, 65535
  %24 = call i32 @ff_codec_get_id(i32 %20, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %15, %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %37, i64* %41, align 8
  br label %120

42:                                               ; preds = %33, %25
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %119

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %119

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @MKTAG(i8 signext 109, i8 signext 112, i8 signext 52, i8 signext 115)
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %53
  %58 = load i32, i32* @ff_codec_movvideo_tags, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ff_codec_get_id(i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @ff_codec_bmp_tags, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ff_codec_get_id(i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i64 %71, i64* %75, align 8
  br label %118

76:                                               ; preds = %67
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AVMEDIA_TYPE_DATA, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %100, label %84

84:                                               ; preds = %76
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %84
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %92, %76
  %101 = load i32, i32* @ff_codec_movsubtitle_tags, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @ff_codec_get_id(i32 %101, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  br label %116

112:                                              ; preds = %100
  %113 = load i32, i32* @ff_codec_movdata_tags, align 4
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @ff_codec_get_id(i32 %113, i32 %114)
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %106
  br label %117

117:                                              ; preds = %116, %92, %84
  br label %118

118:                                              ; preds = %117, %70
  br label %119

119:                                              ; preds = %118, %53, %50, %42
  br label %120

120:                                              ; preds = %119, %36
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i32 %121, i32* %125, align 8
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @ff_codec_get_id(i32, i32) #1

declare dso_local i32 @av_bswap32(i32) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
