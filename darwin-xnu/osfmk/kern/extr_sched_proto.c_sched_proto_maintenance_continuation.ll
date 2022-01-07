; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_proto.c_sched_proto_maintenance_continuation.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_proto.c_sched_proto_maintenance_continuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@sched_proto_tick = common dso_local global i32 0, align 4
@proto_processor = common dso_local global %struct.TYPE_5__* null, align 8
@PROCESSOR_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@master_processor = common dso_local global %struct.TYPE_5__* null, align 8
@sched_proto_tick_deadline = common dso_local global i64 0, align 8
@sched_one_second_interval = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sched_proto_maintenance_continuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_proto_maintenance_continuation() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = call i64 (...) @mach_absolute_time()
  store i64 %3, i64* %1, align 8
  %4 = load i32, i32* @sched_proto_tick, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @sched_proto_tick, align 4
  %6 = load i32, i32* @sched_proto_tick, align 4
  %7 = and i32 %6, 7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @proto_processor, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %2, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PROCESSOR_NULL, align 8
  %15 = icmp eq %struct.TYPE_5__* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @master_processor, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** @proto_processor, align 8
  br label %20

18:                                               ; preds = %9
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** @proto_processor, align 8
  br label %20

20:                                               ; preds = %18, %16
  br label %21

21:                                               ; preds = %20, %0
  %22 = call i32 @compute_averages(i32 1)
  %23 = load i64, i64* @sched_proto_tick_deadline, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* %1, align 8
  store i64 %26, i64* @sched_proto_tick_deadline, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* @sched_one_second_interval, align 4
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @clock_deadline_for_periodic_event(i32 %28, i64 %29, i64* @sched_proto_tick_deadline)
  %31 = load i32, i32* @THREAD_UNINT, align 4
  %32 = load i64, i64* @sched_proto_tick_deadline, align 8
  %33 = call i32 @assert_wait_deadline(i32 ptrtoint (void ()* @sched_proto_maintenance_continuation to i32), i32 %31, i64 %32)
  %34 = call i32 @thread_block(i32 ptrtoint (void ()* @sched_proto_maintenance_continuation to i32))
  ret void
}

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @compute_averages(i32) #1

declare dso_local i32 @clock_deadline_for_periodic_event(i32, i64, i64*) #1

declare dso_local i32 @assert_wait_deadline(i32, i32, i64) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
