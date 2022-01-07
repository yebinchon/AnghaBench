; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_thread_insert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_thread_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_HEAP_OPERATIONS = common dso_local global i32 0, align 4
@THREAD_ADDED_TO_TURNSTILE_WAITQ = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@TSU_TURNSTILE_BLOCK_COUNT = common dso_local global i32 0, align 4
@PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE = common dso_local global i32 0, align 4
@TSU_REGULAR_WAITQ_BLOCK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.waitq*, %struct.TYPE_4__*, i64)* @waitq_thread_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waitq_thread_insert(%struct.waitq* %0, %struct.TYPE_4__* %1, i64 %2) #0 {
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.waitq*, %struct.waitq** %4, align 8
  %8 = call i64 @waitq_is_turnstile_queue(%struct.waitq* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = load i32, i32* @KDEBUG_TRACE, align 4
  %12 = load i32, i32* @TURNSTILE_HEAP_OPERATIONS, align 4
  %13 = load i32, i32* @THREAD_ADDED_TO_TURNSTILE_WAITQ, align 4
  %14 = call i32 @TURNSTILE_CODE(i32 %12, i32 %13)
  %15 = load i32, i32* @DBG_FUNC_NONE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.waitq*, %struct.waitq** %4, align 8
  %18 = call i32 @waitq_to_turnstile(%struct.waitq* %17)
  %19 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = call i32 @thread_tid(%struct.TYPE_4__* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %11, i32 %16, i32 %19, i32 %21, i32 %24, i32 0, i32 0)
  %26 = load i32, i32* @TSU_TURNSTILE_BLOCK_COUNT, align 4
  %27 = call i32 @turnstile_stats_update(i32 0, i32 %26, i32* null)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = call i32 @priority_queue_entry_init(i32* %29)
  %31 = load %struct.waitq*, %struct.waitq** %4, align 8
  %32 = getelementptr inbounds %struct.waitq, %struct.waitq* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE, align 4
  %39 = call i32 @priority_queue_insert(i32* %32, i32* %34, i32 %37, i32 %38)
  br label %58

40:                                               ; preds = %3
  %41 = load i32, i32* @TSU_REGULAR_WAITQ_BLOCK_COUNT, align 4
  %42 = call i32 @turnstile_stats_update(i32 0, i32 %41, i32* null)
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.waitq*, %struct.waitq** %4, align 8
  %47 = getelementptr inbounds %struct.waitq, %struct.waitq* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @enqueue_tail(i32* %47, i32* %49)
  br label %57

51:                                               ; preds = %40
  %52 = load %struct.waitq*, %struct.waitq** %4, align 8
  %53 = getelementptr inbounds %struct.waitq, %struct.waitq* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @enqueue_head(i32* %53, i32* %55)
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %10
  ret void
}

declare dso_local i64 @waitq_is_turnstile_queue(%struct.waitq*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32) #1

declare dso_local i32 @waitq_to_turnstile(%struct.waitq*) #1

declare dso_local i32 @thread_tid(%struct.TYPE_4__*) #1

declare dso_local i32 @turnstile_stats_update(i32, i32, i32*) #1

declare dso_local i32 @priority_queue_entry_init(i32*) #1

declare dso_local i32 @priority_queue_insert(i32*, i32*, i32, i32) #1

declare dso_local i32 @enqueue_tail(i32*, i32*) #1

declare dso_local i32 @enqueue_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
