; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_thread_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_thread_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_HEAP_OPERATIONS = common dso_local global i32 0, align 4
@THREAD_REMOVED_FROM_TURNSTILE_WAITQ = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.waitq*, %struct.TYPE_4__*)* @waitq_thread_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waitq_thread_remove(%struct.waitq* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.waitq*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.waitq* %0, %struct.waitq** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.waitq*, %struct.waitq** %3, align 8
  %6 = call i64 @waitq_is_turnstile_queue(%struct.waitq* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load i32, i32* @KDEBUG_TRACE, align 4
  %10 = load i32, i32* @TURNSTILE_HEAP_OPERATIONS, align 4
  %11 = load i32, i32* @THREAD_REMOVED_FROM_TURNSTILE_WAITQ, align 4
  %12 = call i32 @TURNSTILE_CODE(i32 %10, i32 %11)
  %13 = load i32, i32* @DBG_FUNC_NONE, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.waitq*, %struct.waitq** %3, align 8
  %16 = call i32 @waitq_to_turnstile(%struct.waitq* %15)
  %17 = call i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = call i32 @thread_tid(%struct.TYPE_4__* %18)
  %20 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %9, i32 %14, i32 %17, i32 %19, i32 0, i32 0, i32 0)
  %21 = load %struct.waitq*, %struct.waitq** %3, align 8
  %22 = getelementptr inbounds %struct.waitq, %struct.waitq* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* @PRIORITY_QUEUE_SCHED_PRI_MAX_HEAP_COMPARE, align 4
  %26 = call i32 @priority_queue_remove(i32* %22, i32* %24, i32 %25)
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @remqueue(i32* %29)
  br label %31

31:                                               ; preds = %27, %8
  ret void
}

declare dso_local i64 @waitq_is_turnstile_queue(%struct.waitq*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #1

declare dso_local i32 @VM_KERNEL_UNSLIDE_OR_PERM(i32) #1

declare dso_local i32 @waitq_to_turnstile(%struct.waitq*) #1

declare dso_local i32 @thread_tid(%struct.TYPE_4__*) #1

declare dso_local i32 @priority_queue_remove(i32*, i32*, i32) #1

declare dso_local i32 @remqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
