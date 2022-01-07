; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_set_volume.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@PA_VOLUME_NORM = common dso_local global double 0.000000e+00, align 8
@pulse_context_result = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pa_context_set_sink_input_volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, double)* @pulse_set_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_set_volume(%struct.TYPE_8__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store double %1, double* %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_7__* @pa_stream_get_sample_spec(i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load double, double* %4, align 8
  %14 = load double, double* @PA_VOLUME_NORM, align 8
  %15 = fmul double %13, %14
  %16 = call i32 @lrint(double %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pa_sw_volume_multiply(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load double, double* @PA_VOLUME_NORM, align 8
  %25 = call i32 @pa_cvolume_set(i32* %6, i32 %23, double %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @pa_sw_cvolume_multiply_scalar(i32* %6, i32* %6, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pa_threaded_mainloop_lock(i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pa_stream_get_index(i32 %37)
  %39 = load i32, i32* @pulse_context_result, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = call i32* @pa_context_set_sink_input_volume(i32 %34, i32 %38, i32* %6, i32 %39, %struct.TYPE_8__* %40)
  store i32* %41, i32** %5, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @pulse_finish_context_operation(%struct.TYPE_8__* %42, i32* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  ret i32 %44
}

declare dso_local %struct.TYPE_7__* @pa_stream_get_sample_spec(i32) #1

declare dso_local i32 @pa_sw_volume_multiply(i32, i32) #1

declare dso_local i32 @lrint(double) #1

declare dso_local i32 @pa_cvolume_set(i32*, i32, double) #1

declare dso_local i32 @pa_sw_cvolume_multiply_scalar(i32*, i32*, i32) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32* @pa_context_set_sink_input_volume(i32, i32, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pa_stream_get_index(i32) #1

declare dso_local i32 @pulse_finish_context_operation(%struct.TYPE_8__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
