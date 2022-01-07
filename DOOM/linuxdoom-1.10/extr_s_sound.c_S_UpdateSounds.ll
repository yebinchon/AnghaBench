; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_UpdateSounds.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_s_sound.c_S_UpdateSounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64 }

@numChannels = common dso_local global i32 0, align 4
@channels = common dso_local global %struct.TYPE_5__* null, align 8
@snd_SfxVolume = common dso_local global i32 0, align 4
@NORM_PITCH = common dso_local global i32 0, align 4
@NORM_SEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_UpdateSounds(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %104, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @numChannels, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %107

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @channels, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %8, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %103

29:                                               ; preds = %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @I_SoundIsPlaying(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %99

35:                                               ; preds = %29
  %36 = load i32, i32* @snd_SfxVolume, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @NORM_PITCH, align 4
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @NORM_SEP, align 4
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @S_StopChannel(i32 %57)
  br label %104

59:                                               ; preds = %43
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @snd_SfxVolume, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @snd_SfxVolume, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %35
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %98

72:                                               ; preds = %67
  %73 = load i8*, i8** %2, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %73, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %72
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @S_AdjustSoundParams(i32* %79, i8* %82, i32* %5, i32* %6, i32* %7)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @S_StopChannel(i32 %87)
  br label %97

89:                                               ; preds = %78
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @I_UpdateSoundParams(i32 %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %89, %86
  br label %98

98:                                               ; preds = %97, %72, %67
  br label %102

99:                                               ; preds = %29
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @S_StopChannel(i32 %100)
  br label %102

102:                                              ; preds = %99, %98
  br label %103

103:                                              ; preds = %102, %17
  br label %104

104:                                              ; preds = %103, %56
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %13

107:                                              ; preds = %13
  ret void
}

declare dso_local i64 @I_SoundIsPlaying(i32) #1

declare dso_local i32 @S_StopChannel(i32) #1

declare dso_local i32 @S_AdjustSoundParams(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @I_UpdateSoundParams(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
