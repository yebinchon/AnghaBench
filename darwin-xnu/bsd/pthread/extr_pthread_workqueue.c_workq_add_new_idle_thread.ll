; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_add_new_idle_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_add_new_idle_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_6__*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.workqueue = type { i32, i32, i32, i32 }
%struct.uthread = type { i32 }

@pthread_functions = common dso_local global %struct.TYPE_7__* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@TRACE_wq_thread_create_failed = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@workq_unpark_continue = common dso_local global i32 0, align 4
@uu_workq_entry = common dso_local global i32 0, align 4
@TRACE_wq_thread_create = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.workqueue*)* @workq_add_new_idle_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workq_add_new_idle_thread(%struct.TYPE_6__* %0, %struct.workqueue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.workqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uthread*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.workqueue* %1, %struct.workqueue** %5, align 8
  %11 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %12 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %16 = call i32 @workq_unlock(%struct.workqueue* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_task_map(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pthread_functions, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64 (%struct.TYPE_6__*, i32, i32*)*, i64 (%struct.TYPE_6__*, i32, i32*)** %22, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 %23(%struct.TYPE_6__* %24, i32 %25, i32* %6)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @KERN_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %2
  %31 = load i32, i32* @TRACE_wq_thread_create_failed, align 4
  %32 = load i32, i32* @DBG_FUNC_NONE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @WQ_TRACE_WQ(i32 %33, %struct.workqueue* %34, i64 %35, i32 1, i32 0, i32 0)
  br label %84

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @workq_unpark_continue, align 4
  %42 = call i64 @thread_create_workq_waiting(i32 %40, i32 %41, i32* %8)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %37
  %47 = load i32, i32* @TRACE_wq_thread_create_failed, align 4
  %48 = load i32, i32* @DBG_FUNC_NONE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @WQ_TRACE_WQ(i32 %49, %struct.workqueue* %50, i64 %51, i32 0, i32 0, i32 0)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pthread_functions, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 %55(%struct.TYPE_6__* %56, i32 %57, i32 %58)
  br label %84

60:                                               ; preds = %37
  %61 = load i32, i32* %8, align 4
  %62 = call %struct.uthread* @get_bsdthread_info(i32 %61)
  store %struct.uthread* %62, %struct.uthread** %10, align 8
  %63 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %64 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %68 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.uthread*, %struct.uthread** %10, align 8
  %73 = getelementptr inbounds %struct.uthread, %struct.uthread* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %75 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %74, i32 0, i32 1
  %76 = load %struct.uthread*, %struct.uthread** %10, align 8
  %77 = load i32, i32* @uu_workq_entry, align 4
  %78 = call i32 @TAILQ_INSERT_TAIL(i32* %75, %struct.uthread* %76, i32 %77)
  %79 = load i32, i32* @TRACE_wq_thread_create, align 4
  %80 = load i32, i32* @DBG_FUNC_NONE, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %83 = call i32 @WQ_TRACE_WQ(i32 %81, %struct.workqueue* %82, i64 0, i32 0, i32 0, i32 0)
  store i32 1, i32* %3, align 4
  br label %91

84:                                               ; preds = %46, %30
  %85 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %86 = call i32 @workq_lock_spin(%struct.workqueue* %85)
  %87 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %88 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %84, %60
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

declare dso_local i32 @get_task_map(i32) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i64, i32, i32, i32) #1

declare dso_local i64 @thread_create_workq_waiting(i32, i32, i32*) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.uthread*, i32) #1

declare dso_local i32 @workq_lock_spin(%struct.workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
