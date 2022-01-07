; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_schedule_immediate_thread_creation.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_schedule_immediate_thread_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i32, i32 }

@WQ_IMMEDIATE_CALL_SCHEDULED = common dso_local global i64 0, align 8
@WQ_IMMEDIATE_CALL_PENDED = common dso_local global i32 0, align 4
@TRACE_wq_start_add_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"immediate_call was already enqueued\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.workqueue*)* @workq_schedule_immediate_thread_creation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workq_schedule_immediate_thread_creation(%struct.workqueue* %0) #0 {
  %2 = alloca %struct.workqueue*, align 8
  %3 = alloca i64, align 8
  store %struct.workqueue* %0, %struct.workqueue** %2, align 8
  %4 = call i32 (...) @preemption_enabled()
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %10 = load i64, i64* @WQ_IMMEDIATE_CALL_SCHEDULED, align 8
  %11 = load i32, i32* @WQ_IMMEDIATE_CALL_PENDED, align 4
  %12 = call i64 @workq_thread_call_prepost(%struct.workqueue* %9, i64 %10, i32 %11, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @TRACE_wq_start_add_timer, align 4
  %16 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %17 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %18 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %21 = call i32 @_wq_flags(%struct.workqueue* %20)
  %22 = call i32 @WQ_TRACE_WQ(i32 %15, %struct.workqueue* %16, i32 %19, i32 %21, i32 0, i32 0)
  %23 = load i64, i64* @WQ_IMMEDIATE_CALL_SCHEDULED, align 8
  store i64 %23, i64* %3, align 8
  %24 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %25 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %3, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i64 @thread_call_enter1(i32 %26, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %14
  br label %34

34:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @preemption_enabled(...) #1

declare dso_local i64 @workq_thread_call_prepost(%struct.workqueue*, i64, i32, i32) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @_wq_flags(%struct.workqueue*) #1

declare dso_local i64 @thread_call_enter1(i32, i8*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
