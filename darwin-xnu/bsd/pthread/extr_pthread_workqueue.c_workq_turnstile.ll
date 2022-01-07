; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_turnstile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_turnstile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.proc = type { i32 }
%struct.workqueue = type { %struct.turnstile* }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.turnstile* @workq_turnstile(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.workqueue*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load %struct.proc*, %struct.proc** %2, align 8
  %5 = call %struct.workqueue* @proc_get_wqptr(%struct.proc* %4)
  store %struct.workqueue* %5, %struct.workqueue** %3, align 8
  %6 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %7 = icmp ne %struct.workqueue* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %10 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %9, i32 0, i32 0
  %11 = load %struct.turnstile*, %struct.turnstile** %10, align 8
  br label %14

12:                                               ; preds = %1
  %13 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi %struct.turnstile* [ %11, %8 ], [ %13, %12 ]
  ret %struct.turnstile* %15
}

declare dso_local %struct.workqueue* @proc_get_wqptr(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
