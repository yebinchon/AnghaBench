; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_common.c_ff_pulse_audio_connect_context.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_common.c_ff_pulse_audio_connect_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PULSE_CONTEXT_INITIALIZING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@pa_state_cb = common dso_local global i32 0, align 4
@PULSE_CONTEXT_FINISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_pulse_audio_connect_context(i32** %0, i32** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  %13 = load i32, i32* @PULSE_CONTEXT_INITIALIZING, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32**, i32*** %6, align 8
  %15 = call i32 @av_assert0(i32** %14)
  %16 = load i32**, i32*** %7, align 8
  %17 = call i32 @av_assert0(i32** %16)
  %18 = load i32**, i32*** %6, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32**, i32*** %7, align 8
  store i32* null, i32** %19, align 8
  %20 = call i32* (...) @pa_mainloop_new()
  %21 = load i32**, i32*** %6, align 8
  store i32* %20, i32** %21, align 8
  %22 = icmp ne i32* %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %75

26:                                               ; preds = %4
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = call i32* @pa_mainloop_get_api(i32* %28)
  store i32* %29, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %32, i32* %10, align 4
  br label %70

33:                                               ; preds = %26
  %34 = load i32*, i32** %11, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32* @pa_context_new(i32* %34, i8* %35)
  %37 = load i32**, i32*** %7, align 8
  store i32* %36, i32** %37, align 8
  %38 = icmp ne i32* %36, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %10, align 4
  br label %70

42:                                               ; preds = %33
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @pa_state_cb, align 4
  %46 = call i32 @pa_context_set_state_callback(i32* %44, i32 %45, i32* %12)
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @pa_context_connect(i32* %48, i8* %49, i32 0, i32* null)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %53, i32* %10, align 4
  br label %70

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %59, %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @PULSE_CONTEXT_INITIALIZING, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32**, i32*** %6, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @pa_mainloop_iterate(i32* %61, i32 1, i32* null)
  br label %55

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @PULSE_CONTEXT_FINISHED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %68, i32* %10, align 4
  br label %70

69:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %75

70:                                               ; preds = %67, %52, %39, %31
  %71 = load i32**, i32*** %6, align 8
  %72 = load i32**, i32*** %7, align 8
  %73 = call i32 @ff_pulse_audio_disconnect_context(i32** %71, i32** %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %69, %23
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @av_assert0(i32**) #1

declare dso_local i32* @pa_mainloop_new(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @pa_mainloop_get_api(i32*) #1

declare dso_local i32* @pa_context_new(i32*, i8*) #1

declare dso_local i32 @pa_context_set_state_callback(i32*, i32, i32*) #1

declare dso_local i64 @pa_context_connect(i32*, i8*, i32, i32*) #1

declare dso_local i32 @pa_mainloop_iterate(i32*, i32, i32*) #1

declare dso_local i32 @ff_pulse_audio_disconnect_context(i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
