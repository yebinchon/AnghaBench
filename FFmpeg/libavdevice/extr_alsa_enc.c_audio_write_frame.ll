; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_alsa_enc.c_audio_write_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_alsa_enc.c_audio_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__**, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@AV_WRITE_UNCODED_FRAME_QUERY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.TYPE_15__**, i32)* @audio_write_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_write_frame(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_15__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_15__** %2, %struct.TYPE_15__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %10, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @AV_WRITE_UNCODED_FRAME_QUERY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %22, i64 %24
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @av_sample_fmt_is_planar(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @AVERROR(i32 %34)
  br label %37

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  store i32 %38, i32* %5, align 4
  br label %68

39:                                               ; preds = %4
  %40 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %8, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = call i32 @audio_write_packet(%struct.TYPE_16__* %66, %struct.TYPE_14__* %11)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %39, %37
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @audio_write_packet(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
