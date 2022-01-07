; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_wait_to_return.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_task_wait_to_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@TF_LRETURNWAIT = common dso_local global i32 0, align 4
@TF_LRETURNWAITER = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @task_wait_to_return() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = call %struct.TYPE_6__* (...) @current_task()
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %1, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %4 = call i32 @task_lock(%struct.TYPE_6__* %3)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TF_LRETURNWAIT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %0
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* @TF_LRETURNWAITER, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %19 = call i32 @task_get_return_wait_event(%struct.TYPE_6__* %18)
  %20 = load i32, i32* @THREAD_UNINT, align 4
  %21 = call i32 @assert_wait(i32 %19, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %23 = call i32 @task_unlock(%struct.TYPE_6__* %22)
  %24 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %25 = call i32 @thread_block(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = call i32 @task_lock(%struct.TYPE_6__* %26)
  br label %28

28:                                               ; preds = %12
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TF_LRETURNWAIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %12, label %35

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %38 = call i32 @task_unlock(%struct.TYPE_6__* %37)
  %39 = call i32 (...) @thread_bootstrap_return()
  unreachable
}

declare dso_local %struct.TYPE_6__* @current_task(...) #1

declare dso_local i32 @task_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @task_get_return_wait_event(%struct.TYPE_6__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @thread_bootstrap_return(...) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
