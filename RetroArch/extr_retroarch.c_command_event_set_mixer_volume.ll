; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_set_mixer_volume.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_set_mixer_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { float }

@configuration_settings = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s: %.1f dB\00", align 1
@MSG_AUDIO_VOLUME = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@AUDIO_ACTION_VOLUME_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float)* @command_event_set_mixer_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_set_mixer_volume(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca float, align 4
  store float %0, float* %2, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @configuration_settings, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = load float, float* %2, align 4
  %12 = fadd float %10, %11
  store float %12, float* %5, align 4
  %13 = load float, float* %5, align 4
  %14 = call float @MAX(float %13, float -8.000000e+01)
  store float %14, float* %5, align 4
  %15 = load float, float* %5, align 4
  %16 = call float @MIN(float %15, float 1.200000e+01)
  store float %16, float* %5, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 4
  %22 = load float, float* %5, align 4
  %23 = call i32 @configuration_set_float(%struct.TYPE_6__* %17, float %21, float %22)
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %25 = load i32, i32* @MSG_AUDIO_VOLUME, align 4
  %26 = call i8* @msg_hash_to_str(i32 %25)
  %27 = load float, float* %5, align 4
  %28 = call i32 @snprintf(i8* %24, i32 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %26, float %27)
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %30 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %31 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %32 = call i32 @runloop_msg_queue_push(i8* %29, i32 1, i32 180, i32 1, i32* null, i32 %30, i32 %31)
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %34 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @AUDIO_ACTION_VOLUME_GAIN, align 4
  %36 = load float, float* %5, align 4
  %37 = call i32 @audio_set_float(i32 %35, float %36)
  ret void
}

declare dso_local float @MAX(float, float) #1

declare dso_local float @MIN(float, float) #1

declare dso_local i32 @configuration_set_float(%struct.TYPE_6__*, float, float) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, float) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @audio_set_float(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
