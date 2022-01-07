; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avisynth.c_avisynth_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avisynth.c_avisynth_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @avisynth_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avisynth_read_packet(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @avisynth_next_stream(%struct.TYPE_13__* %20, %struct.TYPE_12__** %7, i32* %21, i32* %8)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %19
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @avisynth_read_packet_video(%struct.TYPE_13__* %31, i32* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @AVERROR_EOF, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @avs_has_audio(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @avisynth_next_stream(%struct.TYPE_13__* %45, %struct.TYPE_12__** %7, i32* %46, i32* %8)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @avisynth_read_packet_audio(%struct.TYPE_13__* %48, i32* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %78

52:                                               ; preds = %38, %30
  br label %76

53:                                               ; preds = %19
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @avisynth_read_packet_audio(%struct.TYPE_13__* %54, i32* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @AVERROR_EOF, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @avs_has_video(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @avisynth_next_stream(%struct.TYPE_13__* %68, %struct.TYPE_12__** %7, i32* %69, i32* %8)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @avisynth_read_packet_video(%struct.TYPE_13__* %71, i32* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %61, %53
  br label %76

76:                                               ; preds = %75, %52
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %67, %44, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @avisynth_next_stream(%struct.TYPE_13__*, %struct.TYPE_12__**, i32*, i32*) #1

declare dso_local i32 @avisynth_read_packet_video(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i64 @avs_has_audio(i32) #1

declare dso_local i32 @avisynth_read_packet_audio(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i64 @avs_has_video(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
