; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_same_audio_codec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flvdec.c_flv_same_audio_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@FLV_AUDIO_SAMPLESIZE_MASK = common dso_local global i32 0, align 4
@FLV_AUDIO_CODECID_MASK = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_AAC = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_SWF = common dso_local global i32 0, align 4
@AV_CODEC_ID_SPEEX = common dso_local global i32 0, align 4
@AV_CODEC_ID_MP3 = common dso_local global i32 0, align 4
@AV_CODEC_ID_NELLYMOSER = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_MULAW = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_ALAW = common dso_local global i32 0, align 4
@FLV_AUDIO_CODECID_OFFSET = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @flv_same_audio_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_same_audio_codec(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @FLV_AUDIO_SAMPLESIZE_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 16, i32 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @FLV_AUDIO_CODECID_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %139

28:                                               ; preds = %22, %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %139

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %130 [
    i32 132, label %37
    i32 130, label %52
    i32 138, label %67
    i32 137, label %74
    i32 128, label %81
    i32 136, label %88
    i32 133, label %95
    i32 134, label %95
    i32 135, label %95
    i32 129, label %102
    i32 131, label %116
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %139

52:                                               ; preds = %35
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %139

67:                                               ; preds = %35
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AV_CODEC_ID_AAC, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %139

74:                                               ; preds = %35
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @AV_CODEC_ID_ADPCM_SWF, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %139

81:                                               ; preds = %35
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AV_CODEC_ID_SPEEX, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %139

88:                                               ; preds = %35
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AV_CODEC_ID_MP3, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %3, align 4
  br label %139

95:                                               ; preds = %35, %35, %35
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @AV_CODEC_ID_NELLYMOSER, align 4
  %100 = icmp eq i32 %98, %99
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %3, align 4
  br label %139

102:                                              ; preds = %35
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 8000
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AV_CODEC_ID_PCM_MULAW, align 4
  %112 = icmp eq i32 %110, %111
  br label %113

113:                                              ; preds = %107, %102
  %114 = phi i1 [ false, %102 ], [ %112, %107 ]
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %3, align 4
  br label %139

116:                                              ; preds = %35
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 8000
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @AV_CODEC_ID_PCM_ALAW, align 4
  %126 = icmp eq i32 %124, %125
  br label %127

127:                                              ; preds = %121, %116
  %128 = phi i1 [ false, %116 ], [ %126, %121 ]
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %3, align 4
  br label %139

130:                                              ; preds = %35
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @FLV_AUDIO_CODECID_OFFSET, align 4
  %136 = ashr i32 %134, %135
  %137 = icmp eq i32 %133, %136
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %130, %127, %113, %95, %88, %81, %74, %67, %59, %44, %34, %27
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
