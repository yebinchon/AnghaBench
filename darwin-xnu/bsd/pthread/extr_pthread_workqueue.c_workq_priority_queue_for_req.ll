; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_priority_queue_for_req.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_priority_queue_for_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priority_queue = type { i32 }
%struct.workqueue = type { %struct.priority_queue, %struct.priority_queue, %struct.priority_queue }
%struct.TYPE_3__ = type { i32 }

@TR_FLAG_WL_OUTSIDE_QOS = common dso_local global i32 0, align 4
@TR_FLAG_OVERCOMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.priority_queue* (%struct.workqueue*, %struct.TYPE_3__*)* @workq_priority_queue_for_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.priority_queue* @workq_priority_queue_for_req(%struct.workqueue* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.priority_queue*, align 8
  %4 = alloca %struct.workqueue*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.workqueue* %0, %struct.workqueue** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TR_FLAG_WL_OUTSIDE_QOS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %14 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %13, i32 0, i32 2
  store %struct.priority_queue* %14, %struct.priority_queue** %3, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TR_FLAG_OVERCOMMIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %24 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %23, i32 0, i32 1
  store %struct.priority_queue* %24, %struct.priority_queue** %3, align 8
  br label %28

25:                                               ; preds = %15
  %26 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %27 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %26, i32 0, i32 0
  store %struct.priority_queue* %27, %struct.priority_queue** %3, align 8
  br label %28

28:                                               ; preds = %25, %22, %12
  %29 = load %struct.priority_queue*, %struct.priority_queue** %3, align 8
  ret %struct.priority_queue* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
