; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_audio_resolve_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_audio_resolve_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_audio_info = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_5__ = type { i32 }

@AV_SAMPLE_FMT_NONE = common dso_local global i8* null, align 8
@AV_SAMPLE_FMT_FLTP = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"[FFmpeg]: Using sample format FLTP.\0A\00", align 1
@AV_SAMPLE_FMT_FLT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"[FFmpeg]: Using sample format FLT.\0A\00", align 1
@AV_SAMPLE_FMT_S16P = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"[FFmpeg]: Using sample format S16P.\0A\00", align 1
@AV_SAMPLE_FMT_S16 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"[FFmpeg]: Using sample format S16.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ff_audio_info*, %struct.TYPE_5__*)* @ffmpeg_audio_resolve_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_audio_resolve_format(%struct.ff_audio_info* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.ff_audio_info*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.ff_audio_info* %0, %struct.ff_audio_info** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %5 = load i8*, i8** @AV_SAMPLE_FMT_NONE, align 8
  %6 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %7 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i8* %5, i8** %9, align 8
  %10 = load i8*, i8** @AV_SAMPLE_FMT_FLTP, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ffmpeg_codec_has_sample_format(i8* %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i8*, i8** @AV_SAMPLE_FMT_FLTP, align 8
  %18 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %19 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* %17, i8** %21, align 8
  %22 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %23 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %25 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %84

27:                                               ; preds = %2
  %28 = load i8*, i8** @AV_SAMPLE_FMT_FLT, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ffmpeg_codec_has_sample_format(i8* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load i8*, i8** @AV_SAMPLE_FMT_FLT, align 8
  %36 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %37 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* %35, i8** %39, align 8
  %40 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %41 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %43 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %83

45:                                               ; preds = %27
  %46 = load i8*, i8** @AV_SAMPLE_FMT_S16P, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ffmpeg_codec_has_sample_format(i8* %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i8*, i8** @AV_SAMPLE_FMT_S16P, align 8
  %54 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %55 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i8* %53, i8** %57, align 8
  %58 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %59 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %61 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %82

63:                                               ; preds = %45
  %64 = load i8*, i8** @AV_SAMPLE_FMT_S16, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @ffmpeg_codec_has_sample_format(i8* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load i8*, i8** @AV_SAMPLE_FMT_S16, align 8
  %72 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %73 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i8* %71, i8** %75, align 8
  %76 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %77 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %79 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %70, %63
  br label %82

82:                                               ; preds = %81, %52
  br label %83

83:                                               ; preds = %82, %34
  br label %84

84:                                               ; preds = %83, %16
  %85 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %86 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i64 4, i64 4
  %91 = trunc i64 %90 to i32
  %92 = load %struct.ff_audio_info*, %struct.ff_audio_info** %3, align 8
  %93 = getelementptr inbounds %struct.ff_audio_info, %struct.ff_audio_info* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  ret void
}

declare dso_local i64 @ffmpeg_codec_has_sample_format(i8*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
