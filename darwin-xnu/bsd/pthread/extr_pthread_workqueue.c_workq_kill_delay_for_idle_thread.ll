; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_kill_delay_for_idle_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_kill_delay_for_idle_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.workqueue = type { i64 }

@wq_reduce_pool_window = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@wq_death_max_load = common dso_local global i64 0, align 8
@wq_max_constrained_threads = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.workqueue*)* @workq_kill_delay_for_idle_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @workq_kill_delay_for_idle_thread(%struct.workqueue* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.workqueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.workqueue* %0, %struct.workqueue** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wq_reduce_pool_window, i32 0, i32 0), align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %8 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @wq_death_max_load, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %2, align 8
  br label %33

15:                                               ; preds = %1
  %16 = load i64, i64* @wq_max_constrained_threads, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @wq_death_max_load, align 8
  %19 = sub nsw i64 %17, %18
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i64, i64* @wq_max_constrained_threads, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @wq_death_max_load, align 8
  %25 = sub nsw i64 %23, %24
  %26 = sub nsw i64 %22, %25
  %27 = load i64, i64* %4, align 8
  %28 = mul nsw i64 %27, %26
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %21, %15
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @wq_max_constrained_threads, align 8
  %32 = sdiv i64 %30, %31
  store i64 %32, i64* %2, align 8
  br label %33

33:                                               ; preds = %29, %13
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
