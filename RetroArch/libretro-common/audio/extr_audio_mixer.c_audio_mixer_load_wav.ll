; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_load_wav.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_audio_mixer_load_wav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, float* }
%struct.TYPE_11__ = type { i32, i64 }

@RWAV_ITERATE_DONE = common dso_local global i32 0, align 4
@s_rate = common dso_local global i64 0, align 8
@AUDIO_MIXER_TYPE_WAV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @audio_mixer_load_wav(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca float*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* null, float** %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @rwav_load(%struct.TYPE_11__* %6, i8* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @RWAV_ITERATE_DONE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %73

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @wav2float(%struct.TYPE_11__* %6, float** %7, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %73

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @s_rate, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  store float* null, float** %11, align 8
  %34 = load float*, float** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @one_shot_resample(float* %34, i64 %35, i64 %37, float** %11, i64* %8)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %73

41:                                               ; preds = %33
  %42 = load float*, float** %7, align 8
  %43 = bitcast float* %42 to i8*
  %44 = call i32 @memalign_free(i8* %43)
  %45 = load float*, float** %11, align 8
  store float* %45, float** %7, align 8
  br label %46

46:                                               ; preds = %41, %28
  %47 = call i64 @calloc(i32 1, i32 24)
  %48 = inttoptr i64 %47 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %9, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load float*, float** %7, align 8
  %53 = bitcast float* %52 to i8*
  %54 = call i32 @memalign_free(i8* %53)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %73

55:                                               ; preds = %46
  %56 = load i32, i32* @AUDIO_MIXER_TYPE_WAV, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = udiv i64 %59, 2
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load float*, float** %7, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store float* %66, float** %70, align 8
  %71 = call i32 @rwav_free(%struct.TYPE_11__* %6)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %3, align 8
  br label %73

73:                                               ; preds = %55, %51, %40, %27, %18
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %74
}

declare dso_local i32 @rwav_load(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @wav2float(%struct.TYPE_11__*, float**, i64) #1

declare dso_local i32 @one_shot_resample(float*, i64, i64, float**, i64*) #1

declare dso_local i32 @memalign_free(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @rwav_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
