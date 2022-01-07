; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_update_sink_input_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_update_sink_input_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Update sink input information\00", align 1
@pulse_audio_sink_input_cb = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@PA_OPERATION_RUNNING = common dso_local global i32 0, align 4
@PA_OPERATION_DONE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"pa_context_get_sink_input_info failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @pulse_update_sink_input_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_update_sink_input_info(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %4, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ff_pulse_audio_connect_context(i32** %7, i32** %8, i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %1
  %21 = load i32*, i32** %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pa_stream_get_index(i32 %24)
  %26 = load i32, i32* @pulse_audio_sink_input_cb, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = call i32* @pa_context_get_sink_input_info(i32* %21, i32 %25, i32 %26, %struct.TYPE_7__* %27)
  store i32* %28, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %31, i32* %9, align 4
  br label %50

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %38, %32
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @pa_operation_get_state(i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @PA_OPERATION_RUNNING, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @pa_mainloop_iterate(i32* %39, i32 1, i32* null)
  br label %33

41:                                               ; preds = %33
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @pa_operation_unref(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @PA_OPERATION_DONE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %48, i32* %9, align 4
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %47, %30
  %51 = call i32 @ff_pulse_audio_disconnect_context(i32** %7, i32** %8)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = call i32 @av_log(%struct.TYPE_6__* %55, i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ff_pulse_audio_connect_context(i32**, i32**, i32, i8*) #1

declare dso_local i32* @pa_context_get_sink_input_info(i32*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @pa_stream_get_index(i32) #1

declare dso_local i32 @pa_operation_get_state(i32*) #1

declare dso_local i32 @pa_mainloop_iterate(i32*, i32, i32*) #1

declare dso_local i32 @pa_operation_unref(i32*) #1

declare dso_local i32 @ff_pulse_audio_disconnect_context(i32**, i32**) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
