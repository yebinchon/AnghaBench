; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_alsa_enc.c_audio_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_alsa_enc.c_audio_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32*, i32 (i32*, i32*, i32)* }
%struct.TYPE_10__ = type { i32, i64, i32, i32* }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ALSA write error: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @audio_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_write_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sdiv i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  br label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %43, %40 ], [ %45, %44 ]
  %48 = sext i32 %47 to i64
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  %55 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %54, align 8
  %56 = icmp ne i32 (i32*, i32*, i32)* %55, null
  br i1 %56, label %57, label %85

57:                                               ; preds = %46
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @ff_alsa_extend_reorder_buf(%struct.TYPE_9__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %117

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 5
  %75 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 %75(i32* %76, i32* %79, i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %9, align 8
  br label %85

85:                                               ; preds = %72, %46
  br label %86

86:                                               ; preds = %115, %85
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @snd_pcm_writei(i32 %89, i32* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @EAGAIN, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %3, align 4
  br label %117

102:                                              ; preds = %94
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @ff_alsa_xrun_recover(%struct.TYPE_11__* %103, i32 %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @snd_strerror(i32 %110)
  %112 = call i32 @av_log(%struct.TYPE_11__* %108, i32 %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %3, align 4
  br label %117

115:                                              ; preds = %102
  br label %86

116:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %107, %99, %68
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @ff_alsa_extend_reorder_buf(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @snd_pcm_writei(i32, i32*, i32) #1

declare dso_local i64 @ff_alsa_xrun_recover(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i32 @snd_strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
