; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_alsa_dec.c_audio_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_alsa_dec.c_audio_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ALSA read error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @audio_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_read_packet(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = call i64 @av_new_packet(%struct.TYPE_11__* %13, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EIO, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %107

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %64, %26
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_pcm_readi(i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %69

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = call i32 @av_packet_unref(%struct.TYPE_11__* %45)
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %107

49:                                               ; preds = %39
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @ff_alsa_xrun_recover(%struct.TYPE_12__* %50, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @snd_strerror(i32 %57)
  %59 = call i32 @av_log(%struct.TYPE_12__* %55, i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = call i32 @av_packet_unref(%struct.TYPE_11__* %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %107

64:                                               ; preds = %49
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ff_timefilter_reset(i32 %67)
  br label %27

69:                                               ; preds = %27
  %70 = call i32 (...) @av_gettime()
  store i32 %70, i32* %8, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @snd_pcm_delay(i32 %73, i64* %9)
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @av_rescale(i64 %78, i32 1000000, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %8, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ff_timefilter_update(i32 %89, i32 %90, i32 %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %69, %54, %44, %23
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @av_new_packet(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @snd_pcm_readi(i32, i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_11__*) #1

declare dso_local i64 @ff_alsa_xrun_recover(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @snd_strerror(i32) #1

declare dso_local i32 @ff_timefilter_reset(i32) #1

declare dso_local i32 @av_gettime(...) #1

declare dso_local i32 @snd_pcm_delay(i32, i64*) #1

declare dso_local i64 @av_rescale(i64, i32, i32) #1

declare dso_local i32 @ff_timefilter_update(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
