; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_iothread_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_iothread_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32* }
%struct.cq = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@TH_OPT_VMPRIV = common dso_local global i32 0, align 4
@vm_pageout_queue_internal = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@vm_pageout_state = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"VM_compressor\00", align 1
@INT32_MAX = common dso_local global i32 0, align 4
@vmct_stats = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cq*)* @vm_pageout_iothread_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_iothread_internal(%struct.cq* %0) #0 {
  %2 = alloca %struct.cq*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.cq* %0, %struct.cq** %2, align 8
  %4 = call %struct.TYPE_7__* (...) @current_thread()
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %3, align 8
  %5 = load i32, i32* @TH_OPT_VMPRIV, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @vm_page_lock_queues()
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vm_pageout_queue_internal, i32 0, i32 2), align 8
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vm_pageout_queue_internal, i32 0, i32 1), align 8
  %15 = load i64, i64* @TRUE, align 8
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @vm_pageout_queue_internal, i32 0, i32 0), align 8
  %16 = call i32 (...) @vm_page_unlock_queues()
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vm_pageout_state, i32 0, i32 0), align 8
  %18 = load i64, i64* @TRUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (...) @thread_vm_bind_group_add()
  br label %22

22:                                               ; preds = %20, %1
  %23 = call %struct.TYPE_7__* (...) @current_thread()
  %24 = call i32 @thread_set_thread_name(%struct.TYPE_7__* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.cq*, %struct.cq** %2, align 8
  %26 = call i32 @vm_pageout_iothread_internal_continue(%struct.cq* %25)
  ret void
}

declare dso_local %struct.TYPE_7__* @current_thread(...) #1

declare dso_local i32 @vm_page_lock_queues(...) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @thread_vm_bind_group_add(...) #1

declare dso_local i32 @thread_set_thread_name(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @vm_pageout_iothread_internal_continue(%struct.cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
