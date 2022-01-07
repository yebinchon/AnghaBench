; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_westwood_aud.c_wsaud_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_westwood_aud.c_wsaud_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }

@AUD_HEADER_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Stereo WS-SND1\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_CODEC_ID_WESTWOOD_SND1 = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_IMA_WS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown codec: %d\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @wsaud_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsaud_read_header(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load i32, i32* @AUD_HEADER_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @AUD_HEADER_SIZE, align 4
  %21 = call i32 @avio_read(i32* %19, i8* %18, i32 %20)
  %22 = load i32, i32* @AUD_HEADER_SIZE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EIO, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %114

27:                                               ; preds = %1
  %28 = getelementptr inbounds i8, i8* %18, i64 0
  %29 = call i32 @AV_RL16(i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = getelementptr inbounds i8, i8* %18, i64 10
  %31 = load i8, i8* %30, align 2
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 1
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = getelementptr inbounds i8, i8* %18, i64 11
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = call %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__* %38, i32* null)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %5, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %114

45:                                               ; preds = %27
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %78 [
    i32 1, label %47
    i32 99, label %60
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = call i32 (%struct.TYPE_11__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %114

54:                                               ; preds = %47
  %55 = load i32, i32* @AV_CODEC_ID_WESTWOOD_SND1, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 6
  store i32 %55, i32* %59, align 4
  br label %83

60:                                               ; preds = %45
  %61 = load i32, i32* @AV_CODEC_ID_ADPCM_IMA_WS, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 6
  store i32 %61, i32* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 4, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 %70, %71
  %73 = mul nsw i32 %72, 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  br label %83

78:                                               ; preds = %45
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (%struct.TYPE_11__*, i8*, ...) @avpriv_request_sample(%struct.TYPE_11__* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %114

83:                                               ; preds = %60, %54
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @avpriv_set_pts_info(%struct.TYPE_10__* %84, i32 64, i32 1, i32 %85)
  %87 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  br label %103

101:                                              ; preds = %83
  %102 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 4
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  store i32 %109, i32* %113, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %114

114:                                              ; preds = %103, %78, %50, %42, %24
  %115 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @AV_RL16(i8*) #2

declare dso_local %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_11__*, i8*, ...) #2

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_10__*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
