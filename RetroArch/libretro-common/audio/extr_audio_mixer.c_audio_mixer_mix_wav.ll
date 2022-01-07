; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_mix_wav.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_mix_wav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, %struct.TYPE_15__*, i32 (%struct.TYPE_15__*, i32)*, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, float* }

@AUDIO_MIXER_SOUND_REPEATED = common dso_local global i32 0, align 4
@AUDIO_MIXER_SOUND_FINISHED = common dso_local global i32 0, align 4
@AUDIO_MIXER_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i64, %struct.TYPE_14__*, float)* @audio_mixer_mix_wav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_mixer_mix_wav(float* %0, i64 %1, %struct.TYPE_14__* %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store float* %0, float** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store float %3, float* %8, align 4
  %14 = load i64, i64* %6, align 8
  %15 = mul i64 %14, 2
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %11, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %25, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load float*, float** %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %36, i64 %42
  store float* %43, float** %13, align 8
  br label %44

44:                                               ; preds = %85, %4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %122

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %63, %48
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load float*, float** %13, align 8
  %55 = getelementptr inbounds float, float* %54, i32 1
  store float* %55, float** %13, align 8
  %56 = load float, float* %54, align 4
  %57 = load float, float* %8, align 4
  %58 = fmul float %56, %57
  %59 = load float*, float** %5, align 8
  %60 = getelementptr inbounds float, float* %59, i32 1
  store float* %60, float** %5, align 8
  %61 = load float, float* %59, align 4
  %62 = fadd float %61, %58
  store float %62, float* %59, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %66
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.TYPE_15__*, i32)* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = load i32, i32* @AUDIO_MIXER_SOUND_REPEATED, align 4
  %84 = call i32 %79(%struct.TYPE_15__* %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %71
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %93, 2
  store i32 %94, i32* %12, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load float*, float** %98, align 8
  store float* %99, float** %13, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %44

104:                                              ; preds = %66
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %106, align 8
  %108 = icmp ne i32 (%struct.TYPE_15__*, i32)* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load i32 (%struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_15__*, i32)** %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = load i32, i32* @AUDIO_MIXER_SOUND_FINISHED, align 4
  %117 = call i32 %112(%struct.TYPE_15__* %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %104
  %119 = load i32, i32* @AUDIO_MIXER_TYPE_NONE, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %148

122:                                              ; preds = %44
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %137, %122
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load float*, float** %13, align 8
  %129 = getelementptr inbounds float, float* %128, i32 1
  store float* %129, float** %13, align 8
  %130 = load float, float* %128, align 4
  %131 = load float, float* %8, align 4
  %132 = fmul float %130, %131
  %133 = load float*, float** %5, align 8
  %134 = getelementptr inbounds float, float* %133, i32 1
  store float* %134, float** %5, align 8
  %135 = load float, float* %133, align 4
  %136 = fadd float %135, %132
  store float %136, float* %133, align 4
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %9, align 4
  br label %124

140:                                              ; preds = %124
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add i32 %146, %141
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %140, %118
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
