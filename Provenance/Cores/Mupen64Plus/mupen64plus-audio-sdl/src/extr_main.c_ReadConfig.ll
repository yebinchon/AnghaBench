; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_ReadConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_ReadConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l_ConfigAudio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DEFAULT_FREQUENCY\00", align 1
@GameFreq = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"SWAP_CHANNELS\00", align 1
@SwapChannels = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"PRIMARY_BUFFER_SIZE\00", align 1
@PrimaryBufferSize = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"PRIMARY_BUFFER_TARGET\00", align 1
@PrimaryBufferTarget = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"SECONDARY_BUFFER_SIZE\00", align 1
@SecondaryBufferSize = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"RESAMPLE\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"VOLUME_CONTROL_TYPE\00", align 1
@VolumeControlType = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"VOLUME_ADJUST\00", align 1
@VolDelta = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"VOLUME_DEFAULT\00", align 1
@VolPercent = common dso_local global i8* null, align 8
@RESAMPLER_TRIVIAL = common dso_local global i32 0, align 4
@Resample = common dso_local global i32 0, align 4
@M64MSG_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [61 x i8] c"Could not find RESAMPLE configuration; use trivial resampler\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"trivial\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Unknown RESAMPLE configuration %s; use trivial resampler\00", align 1
@RESAMPLER_SPEEX = common dso_local global i32 0, align 4
@RESAMPLER_SRC = common dso_local global i32 0, align 4
@ResampleQuality = common dso_local global i32 0, align 4
@SRC_LINEAR = common dso_local global i32 0, align 4
@SRC_SINC_BEST_QUALITY = common dso_local global i32 0, align 4
@SRC_SINC_FASTEST = common dso_local global i32 0, align 4
@SRC_SINC_MEDIUM_QUALITY = common dso_local global i32 0, align 4
@SRC_ZERO_ORDER_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ReadConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadConfig() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @l_ConfigAudio, align 4
  %3 = call i8* @ConfigGetParamInt(i32 %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** @GameFreq, align 8
  %4 = load i32, i32* @l_ConfigAudio, align 4
  %5 = call i32 @ConfigGetParamBool(i32 %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %5, i32* @SwapChannels, align 4
  %6 = load i32, i32* @l_ConfigAudio, align 4
  %7 = call i8* @ConfigGetParamInt(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i8* %7, i8** @PrimaryBufferSize, align 8
  %8 = load i32, i32* @l_ConfigAudio, align 4
  %9 = call i8* @ConfigGetParamInt(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i8* %9, i8** @PrimaryBufferTarget, align 8
  %10 = load i32, i32* @l_ConfigAudio, align 4
  %11 = call i8* @ConfigGetParamInt(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i8* %11, i8** @SecondaryBufferSize, align 8
  %12 = load i32, i32* @l_ConfigAudio, align 4
  %13 = call i8* @ConfigGetParamString(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i8* %13, i8** %1, align 8
  %14 = load i32, i32* @l_ConfigAudio, align 4
  %15 = call i8* @ConfigGetParamInt(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i8* %15, i8** @VolumeControlType, align 8
  %16 = load i32, i32* @l_ConfigAudio, align 4
  %17 = call i8* @ConfigGetParamInt(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i8* %17, i8** @VolDelta, align 8
  %18 = load i32, i32* @l_ConfigAudio, align 4
  %19 = call i8* @ConfigGetParamInt(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i8* %19, i8** @VolPercent, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* @RESAMPLER_TRIVIAL, align 4
  store i32 %23, i32* @Resample, align 4
  %24 = load i32, i32* @M64MSG_WARNING, align 4
  %25 = call i32 (i32, i8*, ...) @DebugMessage(i32 %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0))
  br label %37

26:                                               ; preds = %0
  %27 = load i8*, i8** %1, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @RESAMPLER_TRIVIAL, align 4
  store i32 %31, i32* @Resample, align 4
  br label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @M64MSG_WARNING, align 4
  %34 = load i8*, i8** %1, align 8
  %35 = call i32 (i32, i8*, ...) @DebugMessage(i32 %33, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @RESAMPLER_TRIVIAL, align 4
  store i32 %36, i32* @Resample, align 4
  br label %37

37:                                               ; preds = %32, %30, %22
  ret void
}

declare dso_local i8* @ConfigGetParamInt(i32, i8*) #1

declare dso_local i32 @ConfigGetParamBool(i32, i8*) #1

declare dso_local i8* @ConfigGetParamString(i32, i8*) #1

declare dso_local i32 @DebugMessage(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
