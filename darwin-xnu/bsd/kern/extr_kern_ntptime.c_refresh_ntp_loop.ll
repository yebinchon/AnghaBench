; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ntptime.c_refresh_ntp_loop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ntptime.c_refresh_ntp_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ntp_loop_active = common dso_local global i64 0, align 8
@updated = common dso_local global i64 0, align 8
@ntp_loop_period = common dso_local global i32 0, align 4
@ntp_loop_deadline = common dso_local global i32 0, align 4
@ntp_loop_update = common dso_local global i32 0, align 4
@TIMER_CALL_SYS_CRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @refresh_ntp_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refresh_ntp_loop() #0 {
  %1 = call i32 (...) @NTP_ASSERT_LOCKED()
  %2 = load i64, i64* @ntp_loop_active, align 8
  %3 = add nsw i64 %2, -1
  store i64 %3, i64* @ntp_loop_active, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %0
  %6 = load i64, i64* @updated, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i32, i32* @ntp_loop_period, align 4
  %10 = call i32 (...) @mach_absolute_time()
  %11 = call i32 @clock_deadline_for_periodic_event(i32 %9, i32 %10, i32* @ntp_loop_deadline)
  %12 = load i32, i32* @ntp_loop_deadline, align 4
  %13 = load i32, i32* @TIMER_CALL_SYS_CRITICAL, align 4
  %14 = call i32 @timer_call_enter(i32* @ntp_loop_update, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  %17 = load i64, i64* @ntp_loop_active, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @ntp_loop_active, align 8
  br label %19

19:                                               ; preds = %16, %8
  br label %20

20:                                               ; preds = %19, %5
  br label %21

21:                                               ; preds = %20, %0
  ret void
}

declare dso_local i32 @NTP_ASSERT_LOCKED(...) #1

declare dso_local i32 @clock_deadline_for_periodic_event(i32, i32, i32*) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @timer_call_enter(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
