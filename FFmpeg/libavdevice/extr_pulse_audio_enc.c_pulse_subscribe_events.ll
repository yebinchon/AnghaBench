; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_subscribe_events.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_subscribe_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@PA_SUBSCRIPTION_MASK_SINK_INPUT = common dso_local global i32 0, align 4
@pulse_context_result = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pa_context_subscribe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @pulse_subscribe_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_subscribe_events(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pa_threaded_mainloop_lock(i32 %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PA_SUBSCRIPTION_MASK_SINK_INPUT, align 4
  %12 = load i32, i32* @pulse_context_result, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = call i32* @pa_context_subscribe(i32 %10, i32 %11, i32 %12, %struct.TYPE_5__* %13)
  store i32* %14, i32** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @pulse_finish_context_operation(%struct.TYPE_5__* %15, i32* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret i32 %17
}

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32* @pa_context_subscribe(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pulse_finish_context_operation(%struct.TYPE_5__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
