; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_oldest_killable_idle_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_oldest_killable_idle_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.workqueue = type { i32 }

@workq_uthread_head = common dso_local global i32 0, align 4
@uu_workq_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uthread* (%struct.workqueue*)* @workq_oldest_killable_idle_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uthread* @workq_oldest_killable_idle_thread(%struct.workqueue* %0) #0 {
  %2 = alloca %struct.workqueue*, align 8
  %3 = alloca %struct.uthread*, align 8
  store %struct.workqueue* %0, %struct.workqueue** %2, align 8
  %4 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %5 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %4, i32 0, i32 0
  %6 = load i32, i32* @workq_uthread_head, align 4
  %7 = call %struct.uthread* @TAILQ_LAST(i32* %5, i32 %6)
  store %struct.uthread* %7, %struct.uthread** %3, align 8
  %8 = load %struct.uthread*, %struct.uthread** %3, align 8
  %9 = icmp ne %struct.uthread* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.uthread*, %struct.uthread** %3, align 8
  %12 = getelementptr inbounds %struct.uthread, %struct.uthread* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %10
  %18 = load %struct.uthread*, %struct.uthread** %3, align 8
  %19 = load i32, i32* @workq_uthread_head, align 4
  %20 = load i32, i32* @uu_workq_entry, align 4
  %21 = call %struct.uthread* @TAILQ_PREV(%struct.uthread* %18, i32 %19, i32 %20)
  store %struct.uthread* %21, %struct.uthread** %3, align 8
  %22 = load %struct.uthread*, %struct.uthread** %3, align 8
  %23 = icmp ne %struct.uthread* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.uthread*, %struct.uthread** %3, align 8
  %26 = getelementptr inbounds %struct.uthread, %struct.uthread* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @assert(i32 %29)
  br label %31

31:                                               ; preds = %24, %17
  br label %32

32:                                               ; preds = %31, %10, %1
  %33 = load %struct.uthread*, %struct.uthread** %3, align 8
  ret %struct.uthread* %33
}

declare dso_local %struct.uthread* @TAILQ_LAST(i32*, i32) #1

declare dso_local %struct.uthread* @TAILQ_PREV(%struct.uthread*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
