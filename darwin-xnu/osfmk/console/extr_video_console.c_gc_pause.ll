; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_pause.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@disableConsoleOutput = common dso_local global i32 0, align 4
@gc_enabled = common dso_local global i32 0, align 4
@vc_progress_lock = common dso_local global i32 0, align 4
@vc_progress_enable = common dso_local global i64 0, align 8
@gc_paused_progress = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@vc_progress_withmeter = common dso_local global i32 0, align 4
@vc_progressmeter_call = common dso_local global i32 0, align 4
@vc_progressmeter_deadline = common dso_local global i32 0, align 4
@vc_progress_call = common dso_local global i32 0, align 4
@vc_progress_deadline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @gc_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_pause(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 (...) @splhigh()
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @VCPUTC_LOCK_LOCK()
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = call i32 (...) @console_is_serial()
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* @disableConsoleOutput, align 4
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i1 [ false, %14 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* @gc_enabled, align 4
  %26 = call i32 (...) @VCPUTC_LOCK_UNLOCK()
  %27 = call i32 @simple_lock(i32* @vc_progress_lock)
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i64, i64* @vc_progress_enable, align 8
  store i64 %31, i64* @gc_paused_progress, align 8
  %32 = load i64, i64* @FALSE, align 8
  store i64 %32, i64* @vc_progress_enable, align 8
  br label %35

33:                                               ; preds = %23
  %34 = load i64, i64* @gc_paused_progress, align 8
  store i64 %34, i64* @vc_progress_enable, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i64, i64* @vc_progress_enable, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* @vc_progress_withmeter, align 4
  %40 = and i32 1, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @vc_progressmeter_deadline, align 4
  %44 = call i32 @thread_call_enter_delayed(i32* @vc_progressmeter_call, i32 %43)
  br label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @vc_progress_deadline, align 4
  %47 = call i32 @thread_call_enter_delayed(i32* @vc_progress_call, i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %35
  %50 = call i32 @simple_unlock(i32* @vc_progress_lock)
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @splx(i32 %51)
  ret void
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @VCPUTC_LOCK_LOCK(...) #1

declare dso_local i32 @console_is_serial(...) #1

declare dso_local i32 @VCPUTC_LOCK_UNLOCK(...) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @thread_call_enter_delayed(i32*, i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
