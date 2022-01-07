; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_read_audiodata_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_read_audiodata_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VC_CONTAINER_CODEC_PCM_UNSIGNED = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_PCM_SIGNED = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_ADPCM_SWF = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_MPGA = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_PCM_SIGNED_LE = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_NELLYMOSER = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_ALAW = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_MULAW = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_MP4A = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_SPEEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @flv_read_audiodata_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_read_audiodata_header(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @_READ_U8(i32* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = ashr i32 %17, 2
  %19 = and i32 %18, 3
  switch i32 %19, label %23 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %22
    i32 3, label %24
  ]

20:                                               ; preds = %5
  store i32 5512, i32* %11, align 4
  br label %25

21:                                               ; preds = %5
  store i32 11025, i32* %11, align 4
  br label %25

22:                                               ; preds = %5
  store i32 22050, i32* %11, align 4
  br label %25

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %5, %23
  store i32 44100, i32* %11, align 4
  br label %25

25:                                               ; preds = %24, %22, %21, %20
  %26 = load i32, i32* %14, align 4
  %27 = and i32 %26, 1
  %28 = shl i32 1, %27
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = ashr i32 %29, 1
  %31 = and i32 %30, 1
  %32 = shl i32 8, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = ashr i32 %33, 4
  switch i32 %34, label %85 [
    i32 0, label %35
    i32 1, label %45
    i32 2, label %48
    i32 3, label %51
    i32 4, label %61
    i32 5, label %64
    i32 6, label %67
    i32 7, label %70
    i32 8, label %73
    i32 10, label %76
    i32 11, label %79
    i32 14, label %82
  ]

35:                                               ; preds = %25
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @VC_CONTAINER_CODEC_PCM_UNSIGNED, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @VC_CONTAINER_CODEC_PCM_SIGNED, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %87

45:                                               ; preds = %25
  %46 = load i32, i32* @VC_CONTAINER_CODEC_ADPCM_SWF, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %87

48:                                               ; preds = %25
  %49 = load i32, i32* @VC_CONTAINER_CODEC_MPGA, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %87

51:                                               ; preds = %25
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @VC_CONTAINER_CODEC_PCM_UNSIGNED, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @VC_CONTAINER_CODEC_PCM_SIGNED_LE, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %87

61:                                               ; preds = %25
  %62 = load i32, i32* @VC_CONTAINER_CODEC_NELLYMOSER, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  store i32 8000, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %87

64:                                               ; preds = %25
  %65 = load i32, i32* @VC_CONTAINER_CODEC_NELLYMOSER, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  store i32 16000, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %87

67:                                               ; preds = %25
  %68 = load i32, i32* @VC_CONTAINER_CODEC_NELLYMOSER, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  store i32 1, i32* %12, align 4
  br label %87

70:                                               ; preds = %25
  %71 = load i32, i32* @VC_CONTAINER_CODEC_ALAW, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %87

73:                                               ; preds = %25
  %74 = load i32, i32* @VC_CONTAINER_CODEC_MULAW, align 4
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  br label %87

76:                                               ; preds = %25
  %77 = load i32, i32* @VC_CONTAINER_CODEC_MP4A, align 4
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  store i32 44100, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %87

79:                                               ; preds = %25
  %80 = load i32, i32* @VC_CONTAINER_CODEC_SPEEX, align 4
  %81 = load i32*, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  br label %87

82:                                               ; preds = %25
  %83 = load i32, i32* @VC_CONTAINER_CODEC_MPGA, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  store i32 8000, i32* %11, align 4
  br label %87

85:                                               ; preds = %25
  %86 = load i32*, i32** %7, align 8
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %48, %45, %42
  %88 = load i32*, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32*, i32** %9, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = load i32*, i32** %10, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @STREAM_STATUS(i32* %106)
  ret i32 %107
}

declare dso_local i32 @_READ_U8(i32*) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
