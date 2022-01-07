; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_run_events.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_android_input.c_android_run_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i64, i64 }

@g_android = common dso_local global i64 0, align 8
@LOOPER_ID_MAIN = common dso_local global i64 0, align 8
@RARCH_CTL_SET_SHUTDOWN = common dso_local global i32 0, align 4
@RARCH_CTL_IS_PAUSED = common dso_local global i32 0, align 4
@CMD_EVENT_REINIT = common dso_local global i32 0, align 4
@APP_CMD_REINIT_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @android_run_events(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.android_app*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i64, i64* @g_android, align 8
  %6 = inttoptr i64 %5 to %struct.android_app*
  store %struct.android_app* %6, %struct.android_app** %4, align 8
  %7 = call i64 @ALooper_pollOnce(i32 -1, i32* null, i32* null, i32* null)
  %8 = load i64, i64* @LOOPER_ID_MAIN, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @android_input_poll_main_cmd()
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.android_app*, %struct.android_app** %4, align 8
  %14 = getelementptr inbounds %struct.android_app, %struct.android_app* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @RARCH_CTL_SET_SHUTDOWN, align 4
  %19 = call i64 @rarch_ctl(i32 %18, i32* null)
  store i32 0, i32* %2, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load %struct.android_app*, %struct.android_app** %4, align 8
  %22 = getelementptr inbounds %struct.android_app, %struct.android_app* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load i32, i32* @RARCH_CTL_IS_PAUSED, align 4
  %27 = call i64 @rarch_ctl(i32 %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @CMD_EVENT_REINIT, align 4
  %31 = call i32 @command_event(i32 %30, i32* null)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.android_app*, %struct.android_app** %4, align 8
  %34 = load i32, i32* @APP_CMD_REINIT_DONE, align 4
  %35 = call i32 @android_app_write_cmd(%struct.android_app* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %20
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @ALooper_pollOnce(i32, i32*, i32*, i32*) #1

declare dso_local i32 @android_input_poll_main_cmd(...) #1

declare dso_local i64 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i32 @android_app_write_cmd(%struct.android_app*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
