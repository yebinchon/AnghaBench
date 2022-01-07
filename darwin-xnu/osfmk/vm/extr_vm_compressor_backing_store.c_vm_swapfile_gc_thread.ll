; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapfile_gc_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapfile_gc_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_swapfile_gc_thread_awakened = common dso_local global i32 0, align 4
@vm_swapfile_gc_thread_running = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@vm_swap_data_lock = common dso_local global i32 0, align 4
@hibernate_in_progress_with_pinned_swap = common dso_local global i64 0, align 8
@compressor_store_stop_compaction = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@vm_swap_force_defrag = common dso_local global i64 0, align 8
@vm_swap_force_reclaim = common dso_local global i64 0, align 8
@vm_swapfile_gc_needed = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm_swapfile_gc_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_swapfile_gc_thread() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @vm_swapfile_gc_thread_awakened, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @vm_swapfile_gc_thread_awakened, align 4
  store i32 1, i32* @vm_swapfile_gc_thread_running, align 4
  br label %5

5:                                                ; preds = %59, %0
  %6 = load i64, i64* @TRUE, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %5
  %9 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %10 = load i64, i64* @hibernate_in_progress_with_pinned_swap, align 8
  %11 = load i64, i64* @TRUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %60

14:                                               ; preds = %8
  %15 = call i64 (...) @VM_SWAP_BUSY()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @compressor_store_stop_compaction, align 8
  %19 = load i64, i64* @TRUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14
  br label %60

22:                                               ; preds = %17
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %2, align 8
  %25 = call i64 (...) @VM_SWAP_SHOULD_DEFRAGMENT()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %1, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = call i64 (...) @VM_SWAP_SHOULD_RECLAIM()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @TRUE, align 8
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %2, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* @FALSE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @FALSE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %60

44:                                               ; preds = %39, %35
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* @vm_swap_force_defrag, align 8
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* @vm_swap_force_reclaim, align 8
  %47 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* @TRUE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 (...) @vm_swap_defragment()
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* @TRUE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (...) @vm_swap_reclaim()
  br label %59

59:                                               ; preds = %57, %53
  br label %5

60:                                               ; preds = %43, %21, %13, %5
  store i32 0, i32* @vm_swapfile_gc_thread_running, align 4
  %61 = load i64, i64* @hibernate_in_progress_with_pinned_swap, align 8
  %62 = load i64, i64* @TRUE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 @thread_wakeup(i32 ptrtoint (i64* @hibernate_in_progress_with_pinned_swap to i32))
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* @THREAD_UNINT, align 4
  %68 = call i32 @assert_wait(i32 ptrtoint (i32* @vm_swapfile_gc_needed to i32), i32 %67)
  %69 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %70 = call i32 @thread_block(i32 ptrtoint (void ()* @vm_swapfile_gc_thread to i32))
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @VM_SWAP_BUSY(...) #1

declare dso_local i64 @VM_SWAP_SHOULD_DEFRAGMENT(...) #1

declare dso_local i64 @VM_SWAP_SHOULD_RECLAIM(...) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @vm_swap_defragment(...) #1

declare dso_local i32 @vm_swap_reclaim(...) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
