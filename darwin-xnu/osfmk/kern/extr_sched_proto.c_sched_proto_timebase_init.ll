; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_proto.c_sched_proto_timebase_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_proto.c_sched_proto_timebase_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proto_quantum_us = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@proto_quantum = common dso_local global i32 0, align 4
@thread_depress_time = common dso_local global i32 0, align 4
@default_timeshare_computation = common dso_local global i32 0, align 4
@default_timeshare_constraint = common dso_local global i32 0, align 4
@max_unsafe_quanta = common dso_local global i32 0, align 4
@max_unsafe_computation = common dso_local global i32 0, align 4
@sched_safe_duration = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sched_proto_timebase_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_proto_timebase_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @proto_quantum_us, align 4
  %3 = load i32, i32* @NSEC_PER_USEC, align 4
  %4 = call i32 @clock_interval_to_absolutetime_interval(i32 %2, i32 %3, i32* %1)
  %5 = load i32, i32* %1, align 4
  %6 = ashr i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %8, %0
  %13 = phi i1 [ false, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @proto_quantum, align 4
  %19 = load i32, i32* @proto_quantum, align 4
  %20 = mul nsw i32 1, %19
  store i32 %20, i32* @thread_depress_time, align 4
  %21 = load i32, i32* @proto_quantum, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* @default_timeshare_computation, align 4
  %23 = load i32, i32* @proto_quantum, align 4
  store i32 %23, i32* @default_timeshare_constraint, align 4
  %24 = load i32, i32* @max_unsafe_quanta, align 4
  %25 = load i32, i32* @proto_quantum, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* @max_unsafe_computation, align 4
  %27 = load i32, i32* @max_unsafe_quanta, align 4
  %28 = mul nsw i32 2, %27
  %29 = load i32, i32* @proto_quantum, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* @sched_safe_duration, align 4
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
