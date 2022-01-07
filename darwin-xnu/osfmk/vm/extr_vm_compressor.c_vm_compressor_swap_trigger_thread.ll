; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_swap_trigger_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_swap_trigger_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@TH_OPT_VMPRIV = common dso_local global i32 0, align 4
@compaction_swapper_init_now = common dso_local global i64 0, align 8
@vm_pageout_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"VM_cswap_trigger\00", align 1
@c_list_lock = common dso_local global i32 0, align 4
@compaction_swap_trigger_thread_awakened = common dso_local global i32 0, align 4
@compaction_swapper_awakened = common dso_local global i64 0, align 8
@compaction_swapper_running = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@c_compressor_swap_trigger = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm_compressor_swap_trigger_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_compressor_swap_trigger_thread() #0 {
  %1 = load i32, i32* @TH_OPT_VMPRIV, align 4
  %2 = call %struct.TYPE_5__* (...) @current_thread()
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = or i32 %4, %1
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @compaction_swapper_init_now, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = call i32 (...) @vm_compaction_swapper_do_init()
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vm_pageout_state, i32 0, i32 0), align 8
  %11 = load i64, i64* @TRUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @thread_vm_bind_group_add()
  br label %15

15:                                               ; preds = %13, %8
  %16 = call %struct.TYPE_5__* (...) @current_thread()
  %17 = call i32 @thread_set_thread_name(%struct.TYPE_5__* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @compaction_swapper_init_now, align 8
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32, i32* @c_list_lock, align 4
  %20 = call i32 @lck_mtx_lock_spin_always(i32 %19)
  %21 = load i32, i32* @compaction_swap_trigger_thread_awakened, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @compaction_swap_trigger_thread_awakened, align 4
  store i64 0, i64* @compaction_swapper_awakened, align 8
  %23 = load i32, i32* @compaction_swapper_running, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  store i32 1, i32* @compaction_swapper_running, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @vm_compressor_compact_and_swap(i32 %26)
  store i32 0, i32* @compaction_swapper_running, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* @THREAD_UNINT, align 4
  %30 = call i32 @assert_wait(i32 ptrtoint (i32* @c_compressor_swap_trigger to i32), i32 %29)
  %31 = load i32, i32* @compaction_swapper_running, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @thread_wakeup(i32 ptrtoint (i32* @compaction_swapper_running to i32))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* @c_list_lock, align 4
  %37 = call i32 @lck_mtx_unlock_always(i32 %36)
  %38 = call i32 @thread_block(i32 ptrtoint (void ()* @vm_compressor_swap_trigger_thread to i32))
  ret void
}

declare dso_local %struct.TYPE_5__* @current_thread(...) #1

declare dso_local i32 @vm_compaction_swapper_do_init(...) #1

declare dso_local i32 @thread_vm_bind_group_add(...) #1

declare dso_local i32 @thread_set_thread_name(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

declare dso_local i32 @vm_compressor_compact_and_swap(i32) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
