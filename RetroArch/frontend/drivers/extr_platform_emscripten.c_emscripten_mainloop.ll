; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_emscripten.c_emscripten_mainloop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_emscripten.c_emscripten_mainloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, %struct.TYPE_4__*)*, i32, i32, i32, i64 }

@emscripten_frame_count = common dso_local global i32 0, align 4
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@emscripten_fullscreen_reinit = common dso_local global i64 0, align 8
@CMD_EVENT_REINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @emscripten_mainloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emscripten_mainloop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = call i32 (...) @RWebAudioRecalibrateTime()
  %4 = load i32, i32* @emscripten_frame_count, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @emscripten_frame_count, align 4
  %6 = call i32 @video_driver_build_info(%struct.TYPE_4__* %2)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @emscripten_frame_count, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %28 = call i32 @glClear(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  %30 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %30(i32 %32, %struct.TYPE_4__* %2)
  br label %55

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %18, %14, %10, %0
  %36 = load i64, i64* @emscripten_fullscreen_reinit, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i64, i64* @emscripten_fullscreen_reinit, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* @emscripten_fullscreen_reinit, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @CMD_EVENT_REINIT, align 4
  %44 = call i32 @command_event(i32 %43, i32* null)
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %35
  %47 = call i32 (...) @runloop_iterate()
  store i32 %47, i32* %1, align 4
  %48 = call i32 (...) @task_queue_check()
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %55

52:                                               ; preds = %46
  %53 = call i32 @main_exit(i32* null)
  %54 = call i32 @emscripten_force_exit(i32 0)
  br label %55

55:                                               ; preds = %52, %51, %26
  ret void
}

declare dso_local i32 @RWebAudioRecalibrateTime(...) #1

declare dso_local i32 @video_driver_build_info(%struct.TYPE_4__*) #1

declare dso_local i32 @glClear(i32) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i32 @runloop_iterate(...) #1

declare dso_local i32 @task_queue_check(...) #1

declare dso_local i32 @main_exit(i32*) #1

declare dso_local i32 @emscripten_force_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
