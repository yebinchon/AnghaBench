; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_electronicarts.c_process_audio_header_eacs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_electronicarts.c_process_audio_header_eacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i8*, i64, i32 }

@AV_CODEC_ID_PCM_S8 = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_MULAW = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_IMA_EA_EACS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"stream type; audio compression_type=%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @process_audio_header_eacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_audio_header_eacs(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @avio_rb32(i32* %17)
  br label %22

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @avio_rl32(i32* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @avio_r8(i32* %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i8* @avio_r8(i32* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i8* @avio_r8(i32* %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @avio_skip(i32* %38, i32 13)
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %64 [
    i32 0, label %41
    i32 1, label %54
    i32 2, label %60
  ]

41:                                               ; preds = %22
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %53 [
    i32 1, label %45
    i32 2, label %49
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @AV_CODEC_ID_PCM_S8, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %53

49:                                               ; preds = %41
  %50 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %41, %49, %45
  br label %68

54:                                               ; preds = %22
  %55 = load i32, i32* @AV_CODEC_ID_PCM_MULAW, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %68

60:                                               ; preds = %22
  %61 = load i32, i32* @AV_CODEC_ID_ADPCM_IMA_EA_EACS, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %68

64:                                               ; preds = %22
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @avpriv_request_sample(%struct.TYPE_6__* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %60, %54, %53
  ret void
}

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i8* @avio_r8(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
