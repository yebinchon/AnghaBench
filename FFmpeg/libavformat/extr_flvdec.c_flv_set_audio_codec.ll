; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_set_audio_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_set_audio_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8* }

@AV_CODEC_ID_PCM_U8 = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_S16LE = common dso_local global i8* null, align 8
@AV_CODEC_ID_AAC = common dso_local global i8* null, align 8
@AV_CODEC_ID_ADPCM_SWF = common dso_local global i8* null, align 8
@AV_CODEC_ID_SPEEX = common dso_local global i8* null, align 8
@AV_CODEC_ID_MP3 = common dso_local global i8* null, align 8
@AVSTREAM_PARSE_FULL = common dso_local global i32 0, align 4
@AV_CODEC_ID_NELLYMOSER = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_MULAW = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_ALAW = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Audio codec (%x)\00", align 1
@FLV_AUDIO_CODECID_OFFSET = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16BE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32)* @flv_set_audio_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flv_set_audio_codec(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %85 [
    i32 132, label %10
    i32 130, label %23
    i32 138, label %36
    i32 137, label %40
    i32 128, label %44
    i32 136, label %50
    i32 133, label %57
    i32 134, label %63
    i32 135, label %69
    i32 129, label %73
    i32 131, label %79
  ]

10:                                               ; preds = %4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i8*, i8** @AV_CODEC_ID_PCM_U8, align 8
  br label %19

17:                                               ; preds = %10
  %18 = load i8*, i8** @AV_CODEC_ID_PCM_S16LE, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i8* [ %16, %15 ], [ %18, %17 ]
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  br label %96

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** @AV_CODEC_ID_PCM_U8, align 8
  br label %32

30:                                               ; preds = %23
  %31 = load i8*, i8** @AV_CODEC_ID_PCM_S16LE, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8* [ %29, %28 ], [ %31, %30 ]
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  br label %96

36:                                               ; preds = %4
  %37 = load i8*, i8** @AV_CODEC_ID_AAC, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  br label %96

40:                                               ; preds = %4
  %41 = load i8*, i8** @AV_CODEC_ID_ADPCM_SWF, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  br label %96

44:                                               ; preds = %4
  %45 = load i8*, i8** @AV_CODEC_ID_SPEEX, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 16000, i32* %49, align 4
  br label %96

50:                                               ; preds = %4
  %51 = load i8*, i8** @AV_CODEC_ID_MP3, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @AVSTREAM_PARSE_FULL, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %96

57:                                               ; preds = %4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store i32 8000, i32* %59, align 4
  %60 = load i8*, i8** @AV_CODEC_ID_NELLYMOSER, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  br label %96

63:                                               ; preds = %4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 16000, i32* %65, align 4
  %66 = load i8*, i8** @AV_CODEC_ID_NELLYMOSER, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  br label %96

69:                                               ; preds = %4
  %70 = load i8*, i8** @AV_CODEC_ID_NELLYMOSER, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %96

73:                                               ; preds = %4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 8000, i32* %75, align 4
  %76 = load i8*, i8** @AV_CODEC_ID_PCM_MULAW, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  br label %96

79:                                               ; preds = %4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 8000, i32* %81, align 4
  %82 = load i8*, i8** @AV_CODEC_ID_PCM_ALAW, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  br label %96

85:                                               ; preds = %4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @FLV_AUDIO_CODECID_OFFSET, align 4
  %89 = ashr i32 %87, %88
  %90 = call i32 @avpriv_request_sample(i32* %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @FLV_AUDIO_CODECID_OFFSET, align 4
  %93 = ashr i32 %91, %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %85, %79, %73, %69, %63, %57, %50, %44, %40, %36, %32, %19
  ret void
}

declare dso_local i32 @avpriv_request_sample(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
