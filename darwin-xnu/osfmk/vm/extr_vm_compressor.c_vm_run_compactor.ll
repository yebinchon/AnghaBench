; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_run_compactor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_run_compactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@c_segment_count = common dso_local global i64 0, align 8
@c_list_lock = common dso_local global i32 0, align 4
@c_minor_count = common dso_local global i64 0, align 8
@vm_run_compactor_empty_minor_q = common dso_local global i32 0, align 4
@compaction_swapper_running = common dso_local global i32 0, align 4
@vm_pageout_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@vm_run_compactor_already_running = common dso_local global i32 0, align 4
@vm_run_compactor_waited = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@vm_run_compactor_did_compact = common dso_local global i32 0, align 4
@fastwake_warmup = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_run_compactor() #0 {
  %1 = load i64, i64* @c_segment_count, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %44

4:                                                ; preds = %0
  %5 = load i32, i32* @c_list_lock, align 4
  %6 = call i32 @lck_mtx_lock_spin_always(i32 %5)
  %7 = load i64, i64* @c_minor_count, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load i32, i32* @vm_run_compactor_empty_minor_q, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @vm_run_compactor_empty_minor_q, align 4
  %12 = load i32, i32* @c_list_lock, align 4
  %13 = call i32 @lck_mtx_unlock_always(i32 %12)
  br label %44

14:                                               ; preds = %4
  %15 = load i32, i32* @compaction_swapper_running, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_pageout_state, i32 0, i32 0), align 8
  %19 = load i64, i64* @FALSE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @vm_run_compactor_already_running, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @vm_run_compactor_already_running, align 4
  %24 = load i32, i32* @c_list_lock, align 4
  %25 = call i32 @lck_mtx_unlock_always(i32 %24)
  br label %44

26:                                               ; preds = %17
  %27 = load i32, i32* @vm_run_compactor_waited, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @vm_run_compactor_waited, align 4
  %29 = load i32, i32* @THREAD_UNINT, align 4
  %30 = call i32 @assert_wait(i32 ptrtoint (i32* @compaction_swapper_running to i32), i32 %29)
  %31 = load i32, i32* @c_list_lock, align 4
  %32 = call i32 @lck_mtx_unlock_always(i32 %31)
  %33 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %34 = call i32 @thread_block(i32 %33)
  br label %44

35:                                               ; preds = %14
  %36 = load i32, i32* @vm_run_compactor_did_compact, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @vm_run_compactor_did_compact, align 4
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* @fastwake_warmup, align 8
  store i32 1, i32* @compaction_swapper_running, align 4
  %39 = load i64, i64* @FALSE, align 8
  %40 = call i32 @vm_compressor_do_delayed_compactions(i64 %39)
  store i32 0, i32* @compaction_swapper_running, align 4
  %41 = load i32, i32* @c_list_lock, align 4
  %42 = call i32 @lck_mtx_unlock_always(i32 %41)
  %43 = call i32 @thread_wakeup(i32 ptrtoint (i32* @compaction_swapper_running to i32))
  br label %44

44:                                               ; preds = %35, %26, %21, %9, %3
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @vm_compressor_do_delayed_compactions(i64) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
