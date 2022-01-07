; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_schedule.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf_timer.c_kperf_timer_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kperf_timer = type { i64, i32 }

@PERF_TM_SCHED = common dso_local global i32 0, align 4
@TIMER_CALL_SYS_CRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kperf_timer*, i64)* @kperf_timer_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kperf_timer_schedule(%struct.kperf_timer* %0, i64 %1) #0 {
  %3 = alloca %struct.kperf_timer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.kperf_timer* %0, %struct.kperf_timer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @PERF_TM_SCHED, align 4
  %7 = load %struct.kperf_timer*, %struct.kperf_timer** %3, align 8
  %8 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @BUF_INFO(i32 %6, i64 %9)
  %11 = load %struct.kperf_timer*, %struct.kperf_timer** %3, align 8
  %12 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %27

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.kperf_timer*, %struct.kperf_timer** %3, align 8
  %19 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  store i64 %21, i64* %5, align 8
  %22 = load %struct.kperf_timer*, %struct.kperf_timer** %3, align 8
  %23 = getelementptr inbounds %struct.kperf_timer, %struct.kperf_timer* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @TIMER_CALL_SYS_CRITICAL, align 4
  %26 = call i32 @timer_call_enter(i32* %23, i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @BUF_INFO(i32, i64) #1

declare dso_local i32 @timer_call_enter(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
