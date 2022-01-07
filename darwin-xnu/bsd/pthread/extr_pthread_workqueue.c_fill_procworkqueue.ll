; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_fill_procworkqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_fill_procworkqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_workqueueinfo = type { i64, i32, i32, i64 }
%struct.workqueue = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@WORKQ_THREAD_QOS_MIN = common dso_local global i32 0, align 4
@WORKQ_THREAD_QOS_MANAGER = common dso_local global i32 0, align 4
@wq_max_constrained_threads = common dso_local global i64 0, align 8
@WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT = common dso_local global i32 0, align 4
@wq_max_threads = common dso_local global i64 0, align 8
@WQ_EXCEEDED_TOTAL_THREAD_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_procworkqueue(i32 %0, %struct.proc_workqueueinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_workqueueinfo*, align 8
  %6 = alloca %struct.workqueue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.proc_workqueueinfo* %1, %struct.proc_workqueueinfo** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.workqueue* @proc_get_wqptr(i32 %11)
  store %struct.workqueue* %12, %struct.workqueue** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %14 = icmp eq %struct.workqueue* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %19 = call i32 @workq_lock_try(%struct.workqueue* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EBUSY, align 4
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %17
  %25 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %26 = call i32 @_wq_thactive(%struct.workqueue* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @WORKQ_THREAD_QOS_MIN, align 4
  %30 = call i32 @_wq_thactive_aggregate_downto_qos(%struct.workqueue* %27, i32 %28, i32 %29, i32* null, i32* null)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @WORKQ_THREAD_QOS_MANAGER, align 4
  %33 = call i32 @_wq_thactive_offset_for_qos(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %24
  %40 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %41 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.proc_workqueueinfo*, %struct.proc_workqueueinfo** %5, align 8
  %44 = getelementptr inbounds %struct.proc_workqueueinfo, %struct.proc_workqueueinfo* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.proc_workqueueinfo*, %struct.proc_workqueueinfo** %5, align 8
  %47 = getelementptr inbounds %struct.proc_workqueueinfo, %struct.proc_workqueueinfo* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %49 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = load %struct.proc_workqueueinfo*, %struct.proc_workqueueinfo** %5, align 8
  %55 = getelementptr inbounds %struct.proc_workqueueinfo, %struct.proc_workqueueinfo* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.proc_workqueueinfo*, %struct.proc_workqueueinfo** %5, align 8
  %57 = getelementptr inbounds %struct.proc_workqueueinfo, %struct.proc_workqueueinfo* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %59 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @wq_max_constrained_threads, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %39
  %64 = load i32, i32* @WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT, align 4
  %65 = load %struct.proc_workqueueinfo*, %struct.proc_workqueueinfo** %5, align 8
  %66 = getelementptr inbounds %struct.proc_workqueueinfo, %struct.proc_workqueueinfo* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %39
  %70 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %71 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @wq_max_threads, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @WQ_EXCEEDED_TOTAL_THREAD_LIMIT, align 4
  %77 = load %struct.proc_workqueueinfo*, %struct.proc_workqueueinfo** %5, align 8
  %78 = getelementptr inbounds %struct.proc_workqueueinfo, %struct.proc_workqueueinfo* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %83 = call i32 @workq_unlock(%struct.workqueue* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %22, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.workqueue* @proc_get_wqptr(i32) #1

declare dso_local i32 @workq_lock_try(%struct.workqueue*) #1

declare dso_local i32 @_wq_thactive(%struct.workqueue*) #1

declare dso_local i32 @_wq_thactive_aggregate_downto_qos(%struct.workqueue*, i32, i32, i32*, i32*) #1

declare dso_local i32 @_wq_thactive_offset_for_qos(i32) #1

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
