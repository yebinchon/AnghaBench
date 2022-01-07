; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_control_message.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_control_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@PA_VOLUME_INVALID = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i8*, i64)* @pulse_control_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_control_message(%struct.TYPE_9__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %100 [
    i32 133, label %16
    i32 132, label %19
    i32 129, label %22
    i32 134, label %32
    i32 128, label %43
    i32 130, label %54
    i32 131, label %65
    i32 135, label %71
    i32 136, label %86
  ]

16:                                               ; preds = %4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %18 = call i32 @pulse_set_pause(%struct.TYPE_8__* %17, i32 1)
  store i32 %18, i32* %5, align 4
  br label %104

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = call i32 @pulse_set_pause(%struct.TYPE_8__* %20, i32 0)
  store i32 %21, i32* %5, align 4
  br label %104

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pa_stream_is_corked(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @pulse_set_pause(%struct.TYPE_8__* %23, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %104

32:                                               ; preds = %4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = call i32 @pulse_set_mute(%struct.TYPE_8__* %40)
  store i32 %41, i32* %5, align 4
  br label %104

42:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %104

43:                                               ; preds = %4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = call i32 @pulse_set_mute(%struct.TYPE_8__* %51)
  store i32 %52, i32* %5, align 4
  br label %104

53:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %104

54:                                               ; preds = %4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = call i32 @pulse_set_mute(%struct.TYPE_8__* %63)
  store i32 %64, i32* %5, align 4
  br label %104

65:                                               ; preds = %4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = bitcast i8* %67 to double*
  %69 = load double, double* %68, align 8
  %70 = call i32 @pulse_set_volume(%struct.TYPE_8__* %66, double %69)
  store i32 %70, i32* %5, align 4
  br label %104

71:                                               ; preds = %4
  %72 = load i32, i32* @PA_VOLUME_INVALID, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pa_threaded_mainloop_lock(i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = call i32 @pulse_update_sink_input_info(%struct.TYPE_9__* %79)
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pa_threaded_mainloop_unlock(i32 %83)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %104

86:                                               ; preds = %4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 -1, i32* %88, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pa_threaded_mainloop_lock(i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = call i32 @pulse_update_sink_input_info(%struct.TYPE_9__* %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @pa_threaded_mainloop_unlock(i32 %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %104

100:                                              ; preds = %4
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* @ENOSYS, align 4
  %103 = call i32 @AVERROR(i32 %102)
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %101, %86, %71, %65, %54, %53, %48, %42, %37, %22, %19, %16
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @pulse_set_pause(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pa_stream_is_corked(i32) #1

declare dso_local i32 @pulse_set_mute(%struct.TYPE_8__*) #1

declare dso_local i32 @pulse_set_volume(%struct.TYPE_8__*, double) #1

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i32 @pulse_update_sink_input_info(%struct.TYPE_9__*) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
