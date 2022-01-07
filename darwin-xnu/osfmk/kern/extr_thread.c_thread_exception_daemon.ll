; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_exception_daemon.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_exception_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_exception_elt = type { i32, i32, i32 }

@thread_exception_lock = common dso_local global i32 0, align 4
@thread_exception_queue = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @thread_exception_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_exception_daemon() #0 {
  %1 = alloca %struct.thread_exception_elt*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @simple_lock(i32* @thread_exception_lock)
  br label %6

6:                                                ; preds = %10, %0
  %7 = call i64 @dequeue_head(i32* @thread_exception_queue)
  %8 = inttoptr i64 %7 to %struct.thread_exception_elt*
  store %struct.thread_exception_elt* %8, %struct.thread_exception_elt** %1, align 8
  %9 = icmp ne %struct.thread_exception_elt* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = call i32 @simple_unlock(i32* @thread_exception_lock)
  %12 = load %struct.thread_exception_elt*, %struct.thread_exception_elt** %1, align 8
  %13 = getelementptr inbounds %struct.thread_exception_elt, %struct.thread_exception_elt* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.thread_exception_elt*, %struct.thread_exception_elt** %1, align 8
  %16 = getelementptr inbounds %struct.thread_exception_elt, %struct.thread_exception_elt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  %18 = load %struct.thread_exception_elt*, %struct.thread_exception_elt** %1, align 8
  %19 = getelementptr inbounds %struct.thread_exception_elt, %struct.thread_exception_elt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @assert_thread_magic(i32 %21)
  %23 = load %struct.thread_exception_elt*, %struct.thread_exception_elt** %1, align 8
  %24 = call i32 @kfree(%struct.thread_exception_elt* %23, i32 12)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @task_lock(i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @task_wait_till_threads_terminate_locked(i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @task_unlock(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @task_deallocate(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @thread_deallocate(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @task_deliver_crash_notification(i32 %35, i32 %36, i32 %37, i32 0)
  %39 = call i32 @simple_lock(i32* @thread_exception_lock)
  br label %6

40:                                               ; preds = %6
  %41 = load i32, i32* @THREAD_UNINT, align 4
  %42 = call i32 @assert_wait(i32 ptrtoint (i32* @thread_exception_queue to i32), i32 %41)
  %43 = call i32 @simple_unlock(i32* @thread_exception_lock)
  %44 = call i32 @thread_block(i32 ptrtoint (void ()* @thread_exception_daemon to i32))
  ret void
}

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i64 @dequeue_head(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @assert_thread_magic(i32) #1

declare dso_local i32 @kfree(%struct.thread_exception_elt*, i32) #1

declare dso_local i32 @task_lock(i32) #1

declare dso_local i32 @task_wait_till_threads_terminate_locked(i32) #1

declare dso_local i32 @task_unlock(i32) #1

declare dso_local i32 @task_deallocate(i32) #1

declare dso_local i32 @thread_deallocate(i32) #1

declare dso_local i32 @task_deliver_crash_notification(i32, i32, i32, i32) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
