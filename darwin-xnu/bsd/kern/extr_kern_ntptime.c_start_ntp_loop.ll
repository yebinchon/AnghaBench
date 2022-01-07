; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ntptime.c_start_ntp_loop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ntptime.c_start_ntp_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ntp_loop_period = common dso_local global i64 0, align 8
@ntp_loop_deadline = common dso_local global i64 0, align 8
@ntp_loop_update = common dso_local global i32 0, align 4
@TIMER_CALL_SYS_CRITICAL = common dso_local global i32 0, align 4
@ntp_loop_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_ntp_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_ntp_loop() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 @NTP_LOCK(i32 %2)
  %4 = call i64 (...) @mach_absolute_time()
  %5 = load i64, i64* @ntp_loop_period, align 8
  %6 = add nsw i64 %4, %5
  store i64 %6, i64* @ntp_loop_deadline, align 8
  %7 = load i64, i64* @ntp_loop_deadline, align 8
  %8 = load i32, i32* @TIMER_CALL_SYS_CRITICAL, align 4
  %9 = call i32 @timer_call_enter(i32* @ntp_loop_update, i64 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @ntp_loop_active, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @ntp_loop_active, align 4
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @NTP_UNLOCK(i32 %15)
  ret void
}

declare dso_local i32 @NTP_LOCK(i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @timer_call_enter(i32*, i64, i32) #1

declare dso_local i32 @NTP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
