; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_refresh_loop_wait_event.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_refresh_loop_wait_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@SDL_GETEVENT = common dso_local global i32 0, align 4
@SDL_FIRSTEVENT = common dso_local global i32 0, align 4
@SDL_LASTEVENT = common dso_local global i32 0, align 4
@cursor_hidden = common dso_local global i32 0, align 4
@cursor_last_shown = common dso_local global i64 0, align 8
@CURSOR_HIDE_DELAY = common dso_local global i64 0, align 8
@REFRESH_RATE = common dso_local global double 0.000000e+00, align 8
@SHOW_MODE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*)* @refresh_loop_wait_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refresh_loop_wait_event(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %6 = call i32 (...) @SDL_PumpEvents()
  br label %7

7:                                                ; preds = %54, %2
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @SDL_GETEVENT, align 4
  %10 = load i32, i32* @SDL_FIRSTEVENT, align 4
  %11 = load i32, i32* @SDL_LASTEVENT, align 4
  %12 = call i32 @SDL_PeepEvents(i32* %8, i32 1, i32 %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %56

15:                                               ; preds = %7
  %16 = load i32, i32* @cursor_hidden, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = call i64 (...) @av_gettime_relative()
  %20 = load i64, i64* @cursor_last_shown, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load i64, i64* @CURSOR_HIDE_DELAY, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @SDL_ShowCursor(i32 0)
  store i32 1, i32* @cursor_hidden, align 4
  br label %26

26:                                               ; preds = %24, %18, %15
  %27 = load double, double* %5, align 8
  %28 = fcmp ogt double %27, 0.000000e+00
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load double, double* %5, align 8
  %31 = fmul double %30, 1.000000e+06
  %32 = fptosi double %31 to i32
  %33 = call i32 @av_usleep(i32 %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load double, double* @REFRESH_RATE, align 8
  store double %35, double* %5, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SHOW_MODE_NONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %41
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = call i32 @video_refresh(%struct.TYPE_4__* %52, double* %5)
  br label %54

54:                                               ; preds = %51, %46, %34
  %55 = call i32 (...) @SDL_PumpEvents()
  br label %7

56:                                               ; preds = %7
  ret void
}

declare dso_local i32 @SDL_PumpEvents(...) #1

declare dso_local i32 @SDL_PeepEvents(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @av_gettime_relative(...) #1

declare dso_local i32 @SDL_ShowCursor(i32) #1

declare dso_local i32 @av_usleep(i32) #1

declare dso_local i32 @video_refresh(%struct.TYPE_4__*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
