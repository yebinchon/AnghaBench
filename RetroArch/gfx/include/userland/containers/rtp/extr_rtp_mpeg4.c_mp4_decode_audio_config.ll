; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_mpeg4.c_mp4_decode_audio_config.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_mpeg4.c_mp4_decode_audio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@mp4_decode_audio_config.mp4_audio_sample_rate = internal global [15 x i32] [i32 96000, i32 88200, i32 64000, i32 48000, i32 44100, i32 32000, i32 24000, i32 22050, i32 16000, i32 12000, i32 11025, i32 8000, i32 7350, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [16 x i8] c"audioObjectType\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"audioObjectTypeExt\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"samplingFrequencyIndex\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"samplingFrequency\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"channelConfiguration\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"MPEG-4: Unsupported channel configuration (%u)\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"GASpecificConfig\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"MPEG-4: Unexpected additional configuration data (%u)\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"MPEG-4: Unsupported Audio Object Type (%u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, i32*)* @mp4_decode_audio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_decode_audio_config(i32* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %8, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @BITS_READ_U32(i32* %19, i32* %20, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 31
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @BITS_READ_U32(i32* %25, i32* %26, i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %28 = add nsw i32 %27, 32
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @BITS_READ_U32(i32* %30, i32* %31, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 15
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @BITS_READ_U32(i32* %36, i32* %37, i32 24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %48

41:                                               ; preds = %29
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [15 x i32], [15 x i32]* @mp4_decode_audio_config.mp4_audio_sample_rate, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %35
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %99

54:                                               ; preds = %48
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32 %57, i32* %63, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @BITS_READ_U32(i32* %64, i32* %65, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  switch i32 %67, label %77 [
    i32 1, label %68
    i32 2, label %68
    i32 3, label %68
    i32 4, label %68
    i32 5, label %68
    i32 6, label %68
    i32 7, label %72
  ]

68:                                               ; preds = %54, %54, %54, %54, %54, %54
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %81

72:                                               ; preds = %54
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %81

77:                                               ; preds = %54
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @LOG_DEBUG(i32* %78, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  store i32 0, i32* %4, align 4
  br label %99

81:                                               ; preds = %72, %68
  %82 = load i32, i32* %9, align 4
  switch i32 %82, label %94 [
    i32 128, label %83
  ]

83:                                               ; preds = %81
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @BITS_READ_U32(i32* %84, i32* %85, i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @LOG_DEBUG(i32* %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  store i32 0, i32* %4, align 4
  br label %99

93:                                               ; preds = %83
  br label %98

94:                                               ; preds = %81
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @LOG_DEBUG(i32* %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  store i32 0, i32* %4, align 4
  br label %99

98:                                               ; preds = %93
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %94, %89, %77, %53
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @BITS_READ_U32(i32*, i32*, i32, i8*) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
