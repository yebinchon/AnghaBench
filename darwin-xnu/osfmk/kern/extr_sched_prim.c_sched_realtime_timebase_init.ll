; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_sched_realtime_timebase_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_sched_realtime_timebase_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@min_rt_quantum = common dso_local global i64 0, align 8
@max_rt_quantum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sched_realtime_timebase_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_realtime_timebase_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @NSEC_PER_USEC, align 4
  %3 = call i32 @clock_interval_to_absolutetime_interval(i32 50, i32 %2, i32* %1)
  %4 = load i32, i32* %1, align 4
  %5 = ashr i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* @min_rt_quantum, align 8
  %17 = load i32, i32* @NSEC_PER_USEC, align 4
  %18 = mul nsw i32 1000, %17
  %19 = call i32 @clock_interval_to_absolutetime_interval(i32 50, i32 %18, i32* %1)
  %20 = load i32, i32* %1, align 4
  %21 = ashr i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %23, %11
  %28 = phi i1 [ false, %11 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* @max_rt_quantum, align 8
  ret void
}

declare dso_local i32 @clock_interval_to_absolutetime_interval(i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
