; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffdec.c_ff_wav_codec_get_id.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_riffdec.c_ff_wav_codec_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_codec_wav_tags = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_F32LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_IMA_WAV = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_ZORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_wav_codec_get_id(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ff_codec_wav_tags, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ff_codec_get_id(i32 %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ule i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ff_get_pcm_codec_id(i32 %19, i32 0, i32 0, i32 -2)
  store i32 %20, i32* %6, align 4
  br label %29

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AV_CODEC_ID_PCM_F32LE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ff_get_pcm_codec_id(i32 %26, i32 1, i32 0, i32 0)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @AV_CODEC_ID_ADPCM_IMA_WAV, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @AV_CODEC_ID_PCM_ZORK, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %33, %29
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @ff_codec_get_id(i32, i32) #1

declare dso_local i32 @ff_get_pcm_codec_id(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
