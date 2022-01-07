; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inpcb_timer_sched.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inpcb_timer_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@inpcb_timeout_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@inpcb_ticking = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inpcb_timer_sched(%struct.inpcbinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcbinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.inpcbinfo* %0, %struct.inpcbinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @lck_mtx_lock_spin(i32* @inpcb_timeout_lock)
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* @inpcb_ticking, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %20 [
    i32 128, label %8
    i32 129, label %14
  ]

8:                                                ; preds = %2
  %9 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %10 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = call i32 @atomic_add_32(i32* %11, i32 1)
  %13 = call i32 (...) @inpcb_sched_timeout()
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %16 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @atomic_add_32(i32* %17, i32 1)
  %19 = call i32 (...) @inpcb_sched_timeout()
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.inpcbinfo*, %struct.inpcbinfo** %3, align 8
  %22 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @atomic_add_32(i32* %23, i32 1)
  %25 = call i32 (...) @inpcb_sched_lazy_timeout()
  br label %26

26:                                               ; preds = %20, %14, %8
  %27 = call i32 @lck_mtx_unlock(i32* @inpcb_timeout_lock)
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

declare dso_local i32 @inpcb_sched_timeout(...) #1

declare dso_local i32 @inpcb_sched_lazy_timeout(...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
