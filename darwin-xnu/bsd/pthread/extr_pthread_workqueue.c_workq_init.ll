; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@workq_lck_grp_attr = common dso_local global i32 0, align 4
@workq_lck_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"workq\00", align 1
@workq_lck_grp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"workq.wq\00", align 1
@workq_zone_workqueue = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"workq.threadreq\00", align 1
@workq_zone_threadreq = common dso_local global i8* null, align 8
@wq_stalled_window = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@wq_reduce_pool_window = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@wq_max_timer_interval = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workq_init() #0 {
  %1 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %1, i32* @workq_lck_grp_attr, align 4
  %2 = call i32 (...) @lck_attr_alloc_init()
  store i32 %2, i32* @workq_lck_attr, align 4
  %3 = load i32, i32* @workq_lck_grp_attr, align 4
  %4 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %3)
  store i32 %4, i32* @workq_lck_grp, align 4
  %5 = call i8* @zinit(i32 4, i32 4096, i32 8192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %5, i8** @workq_zone_workqueue, align 8
  %6 = call i8* @zinit(i32 4, i32 4096, i32 8192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i8* %6, i8** @workq_zone_threadreq, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wq_stalled_window, i32 0, i32 1), align 4
  %8 = load i32, i32* @NSEC_PER_USEC, align 4
  %9 = call i32 @clock_interval_to_absolutetime_interval(i32 %7, i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wq_stalled_window, i32 0, i32 0))
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @wq_reduce_pool_window, i32 0, i32 1), align 4
  %11 = load i32, i32* @NSEC_PER_USEC, align 4
  %12 = call i32 @clock_interval_to_absolutetime_interval(i32 %10, i32 %11, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @wq_reduce_pool_window, i32 0, i32 0))
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wq_max_timer_interval, i32 0, i32 1), align 4
  %14 = load i32, i32* @NSEC_PER_USEC, align 4
  %15 = call i32 @clock_interval_to_absolutetime_interval(i32 %13, i32 %14, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wq_max_timer_interval, i32 0, i32 0))
  ret void
}

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i8* @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @clock_interval_to_absolutetime_interval(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
