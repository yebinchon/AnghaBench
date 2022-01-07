; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_consider_defragmenting.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_consider_defragmenting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_SWAP_FLAGS_FORCE_DEFRAG = common dso_local global i32 0, align 4
@VM_SWAP_FLAGS_FORCE_RECLAIM = common dso_local global i32 0, align 4
@compressor_store_stop_compaction = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@vm_swapfile_gc_thread_running = common dso_local global i32 0, align 4
@vm_swap_data_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@vm_swap_force_defrag = common dso_local global i8* null, align 8
@vm_swap_force_reclaim = common dso_local global i8* null, align 8
@vm_swapfile_gc_needed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_swap_consider_defragmenting(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @VM_SWAP_FLAGS_FORCE_DEFRAG, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @VM_SWAP_FLAGS_FORCE_RECLAIM, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @compressor_store_stop_compaction, align 8
  %12 = load i64, i64* @FALSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %1
  %15 = call i32 (...) @VM_SWAP_BUSY()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = call i64 (...) @VM_SWAP_SHOULD_DEFRAGMENT()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = call i64 (...) @VM_SWAP_SHOULD_RECLAIM()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %26, %23, %20, %17
  %30 = load i32, i32* @vm_swapfile_gc_thread_running, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35, %32, %29
  %39 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i8*, i8** @TRUE, align 8
  store i8* %43, i8** @vm_swap_force_defrag, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i8*, i8** @TRUE, align 8
  store i8* %48, i8** @vm_swap_force_reclaim, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* @vm_swapfile_gc_thread_running, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @thread_wakeup(i32 ptrtoint (i32* @vm_swapfile_gc_needed to i32))
  br label %54

54:                                               ; preds = %52, %49
  %55 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  br label %56

56:                                               ; preds = %54, %35
  br label %57

57:                                               ; preds = %56, %26, %14, %1
  ret void
}

declare dso_local i32 @VM_SWAP_BUSY(...) #1

declare dso_local i64 @VM_SWAP_SHOULD_DEFRAGMENT(...) #1

declare dso_local i64 @VM_SWAP_SHOULD_RECLAIM(...) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
