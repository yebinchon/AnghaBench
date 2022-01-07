; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_set_video_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_set_video_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32* }

@AV_CODEC_ID_FLV1 = common dso_local global i32 0, align 4
@AV_CODEC_ID_H263 = common dso_local global i32 0, align 4
@AV_CODEC_ID_FLASHSV = common dso_local global i32 0, align 4
@AV_CODEC_ID_FLASHSV2 = common dso_local global i32 0, align 4
@AV_CODEC_ID_VP6F = common dso_local global i32 0, align 4
@AV_CODEC_ID_VP6A = common dso_local global i32 0, align 4
@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_HEADERS = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Video codec (%x)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Changing the codec id midstream\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32)* @flv_set_video_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_set_video_codec(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %92 [
    i32 135, label %22
    i32 132, label %26
    i32 131, label %30
    i32 130, label %34
    i32 129, label %38
    i32 128, label %42
    i32 134, label %81
    i32 133, label %88
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* @AV_CODEC_ID_FLV1, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %99

26:                                               ; preds = %4
  %27 = load i32, i32* @AV_CODEC_ID_H263, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %99

30:                                               ; preds = %4
  %31 = load i32, i32* @AV_CODEC_ID_FLASHSV, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %99

34:                                               ; preds = %4
  %35 = load i32, i32* @AV_CODEC_ID_FLASHSV2, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %99

38:                                               ; preds = %4
  %39 = load i32, i32* @AV_CODEC_ID_VP6F, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %4, %38
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @AV_CODEC_ID_VP6A, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %49
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %59 = call i32 @ff_alloc_extradata(%struct.TYPE_12__* %58, i32 1)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @avio_r8(i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %69, i32* %73, align 4
  br label %79

74:                                               ; preds = %60
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @avio_skip(i32 %77, i32 1)
  br label %79

79:                                               ; preds = %74, %65
  br label %80

80:                                               ; preds = %79, %49
  store i32 1, i32* %10, align 4
  br label %99

81:                                               ; preds = %4
  %82 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @AVSTREAM_PARSE_HEADERS, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  store i32 3, i32* %10, align 4
  br label %99

88:                                               ; preds = %4
  %89 = load i32, i32* @AV_CODEC_ID_MPEG4, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 3, i32* %10, align 4
  br label %99

92:                                               ; preds = %4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (%struct.TYPE_11__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_11__* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %92, %88, %81, %80, %34, %30, %26, %22
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %99
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = call i32 (%struct.TYPE_11__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_11__* %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %115, i32* %5, align 4
  br label %118

116:                                              ; preds = %106, %99
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %116, %112
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @ff_alloc_extradata(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @avio_r8(i32) #1

declare dso_local i32 @avio_skip(i32, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_11__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
