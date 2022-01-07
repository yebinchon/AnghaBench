; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_proc_init_wqptr_or_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_proc_init_wqptr_or_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i32 }
%struct.proc = type { %struct.workqueue* }

@WQPTR_IS_INITING_VALUE = common dso_local global %struct.workqueue* null, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*)* @proc_init_wqptr_or_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_init_wqptr_or_wait(%struct.proc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.workqueue*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  %5 = load %struct.proc*, %struct.proc** %3, align 8
  %6 = call i32 @proc_lock(%struct.proc* %5)
  %7 = load %struct.proc*, %struct.proc** %3, align 8
  %8 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 0
  %9 = load %struct.workqueue*, %struct.workqueue** %8, align 8
  store %struct.workqueue* %9, %struct.workqueue** %4, align 8
  %10 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %11 = icmp eq %struct.workqueue* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.workqueue*, %struct.workqueue** @WQPTR_IS_INITING_VALUE, align 8
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 0
  store %struct.workqueue* %13, %struct.workqueue** %15, align 8
  %16 = load %struct.proc*, %struct.proc** %3, align 8
  %17 = call i32 @proc_unlock(%struct.proc* %16)
  store i32 1, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %20 = load %struct.workqueue*, %struct.workqueue** @WQPTR_IS_INITING_VALUE, align 8
  %21 = icmp eq %struct.workqueue* %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.proc*, %struct.proc** %3, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 0
  %25 = load i32, i32* @THREAD_UNINT, align 4
  %26 = call i32 @assert_wait(%struct.workqueue** %24, i32 %25)
  %27 = load %struct.proc*, %struct.proc** %3, align 8
  %28 = call i32 @proc_unlock(%struct.proc* %27)
  %29 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %30 = call i32 @thread_block(i32 %29)
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.proc*, %struct.proc** %3, align 8
  %33 = call i32 @proc_unlock(%struct.proc* %32)
  br label %34

34:                                               ; preds = %31, %22
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @proc_lock(%struct.proc*) #1

declare dso_local i32 @proc_unlock(%struct.proc*) #1

declare dso_local i32 @assert_wait(%struct.workqueue**, i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
