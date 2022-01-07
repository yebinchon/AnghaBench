; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_add_new_threads_call.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_add_new_threads_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i32, i32, i32, i32 }

@WQ_DELAYED_CALL_SCHEDULED = common dso_local global i32 0, align 4
@WQ_IMMEDIATE_CALL_SCHEDULED = common dso_local global i32 0, align 4
@TRACE_wq_add_timer = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@release = common dso_local global i32 0, align 4
@WORKQ_THREADREQ_CAN_CREATE_THREADS = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @workq_add_new_threads_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workq_add_new_threads_call(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.workqueue*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.workqueue* @proc_get_wqptr(i8* %9)
  store %struct.workqueue* %10, %struct.workqueue** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %15 = icmp ne %struct.workqueue* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %70

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @WQ_DELAYED_CALL_SCHEDULED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @WQ_IMMEDIATE_CALL_SCHEDULED, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ true, %17 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* @TRACE_wq_add_timer, align 4
  %30 = load i32, i32* @DBG_FUNC_START, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %33 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %34 = call i32 @_wq_flags(%struct.workqueue* %33)
  %35 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %36 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %39 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WQ_TRACE_WQ(i32 %31, %struct.workqueue* %32, i32 %34, i32 %37, i32 %40, i32 0)
  %42 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %43 = call i32 @workq_lock_spin(%struct.workqueue* %42)
  %44 = call i32 (...) @mach_absolute_time()
  %45 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %46 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %48 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %47, i32 0, i32 2
  %49 = load i32, i32* %7, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* @release, align 4
  %52 = call i32 @os_atomic_and(i32* %48, i32 %50, i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %55 = load i32, i32* @WORKQ_THREADREQ_CAN_CREATE_THREADS, align 4
  %56 = call i32 @workq_schedule_creator(i8* %53, %struct.workqueue* %54, i32 %55)
  %57 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %58 = call i32 @workq_unlock(%struct.workqueue* %57)
  %59 = load i32, i32* @TRACE_wq_add_timer, align 4
  %60 = load i32, i32* @DBG_FUNC_END, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %63 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %64 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %67 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @WQ_TRACE_WQ(i32 %61, %struct.workqueue* %62, i32 0, i32 %65, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %25, %16
  ret void
}

declare dso_local %struct.workqueue* @proc_get_wqptr(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @_wq_flags(%struct.workqueue*) #1

declare dso_local i32 @workq_lock_spin(%struct.workqueue*) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @os_atomic_and(i32*, i32, i32) #1

declare dso_local i32 @workq_schedule_creator(i8*, %struct.workqueue*, i32) #1

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
