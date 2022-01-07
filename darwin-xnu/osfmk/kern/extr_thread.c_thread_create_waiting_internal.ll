; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_create_waiting_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_create_waiting_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@TASK_NULL = common dso_local global %struct.TYPE_18__* null, align 8
@kernel_task = common dso_local global %struct.TYPE_18__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@TH_OPTION_WORKQ = common dso_local global i32 0, align 4
@THREAD_INTERRUPTIBLE = common dso_local global i32 0, align 4
@tasks_threads_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i32, i32, i32, i32, %struct.TYPE_17__**)* @thread_create_waiting_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thread_create_waiting_internal(%struct.TYPE_18__* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_17__** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_17__** %5, %struct.TYPE_17__*** %13, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** @TASK_NULL, align 8
  %18 = icmp eq %struct.TYPE_18__* %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** @kernel_task, align 8
  %22 = icmp eq %struct.TYPE_18__* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %6
  %24 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %24, i64* %7, align 8
  br label %72

25:                                               ; preds = %19
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @thread_create_internal(%struct.TYPE_18__* %26, i32 -1, i32 %27, i32* null, i32 %28, %struct.TYPE_17__** %15)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @KERN_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* %14, align 8
  store i64 %34, i64* %7, align 8
  br label %72

35:                                               ; preds = %25
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %42 = call i32 @thread_hold(%struct.TYPE_17__* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %45 = call i32 @thread_mtx_lock(%struct.TYPE_17__* %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @thread_set_pending_block_hint(%struct.TYPE_17__* %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @TH_OPTION_WORKQ, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %58 = call i32 @workq_thread_init_and_wq_lock(%struct.TYPE_18__* %56, %struct.TYPE_17__* %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %53, %43
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @THREAD_INTERRUPTIBLE, align 4
  %63 = call i32 @thread_start_in_assert_wait(%struct.TYPE_17__* %60, i32 %61, i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %65 = call i32 @thread_mtx_unlock(%struct.TYPE_17__* %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = call i32 @task_unlock(%struct.TYPE_18__* %66)
  %68 = call i32 @lck_mtx_unlock(i32* @tasks_threads_lock)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %70 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %13, align 8
  store %struct.TYPE_17__* %69, %struct.TYPE_17__** %70, align 8
  %71 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %71, i64* %7, align 8
  br label %72

72:                                               ; preds = %59, %33, %23
  %73 = load i64, i64* %7, align 8
  ret i64 %73
}

declare dso_local i64 @thread_create_internal(%struct.TYPE_18__*, i32, i32, i32*, i32, %struct.TYPE_17__**) #1

declare dso_local i32 @thread_hold(%struct.TYPE_17__*) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_17__*) #1

declare dso_local i32 @thread_set_pending_block_hint(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @workq_thread_init_and_wq_lock(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @thread_start_in_assert_wait(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_17__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
