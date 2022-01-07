; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_handle_delayed_trims.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_handle_delayed_trims.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swapfile = type { i32, i32 }

@vm_swap_data_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@delayed_trim_handling_in_progress = common dso_local global i64 0, align 8
@swf_global_queue = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SWAP_READY = common dso_local global i32 0, align 4
@SWAP_RECLAIM = common dso_local global i32 0, align 4
@vm_swapfile_gc_thread_running = common dso_local global i32 0, align 4
@vm_swapfile_gc_needed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vm_swap_handle_delayed_trims to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_swap_handle_delayed_trims(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.swapfile*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.swapfile* null, %struct.swapfile** %3, align 8
  %4 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %5 = load i64, i64* @TRUE, align 8
  store i64 %5, i64* @delayed_trim_handling_in_progress, align 8
  %6 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %7 = call i64 @queue_first(i32* @swf_global_queue)
  %8 = inttoptr i64 %7 to %struct.swapfile*
  store %struct.swapfile* %8, %struct.swapfile** %3, align 8
  br label %9

9:                                                ; preds = %42, %1
  %10 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %11 = ptrtoint %struct.swapfile* %10 to i32
  %12 = call i64 @queue_end(i32* @swf_global_queue, i32 %11)
  %13 = load i64, i64* @FALSE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %17 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SWAP_READY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %15
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @TRUE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %28 = call i64 @VM_SWAP_SHOULD_TRIM(%struct.swapfile* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26, %22
  %31 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %32 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SWAP_RECLAIM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %41 = call i32 @vm_swap_do_delayed_trim(%struct.swapfile* %40)
  br label %42

42:                                               ; preds = %30, %26, %15
  %43 = load %struct.swapfile*, %struct.swapfile** %3, align 8
  %44 = getelementptr inbounds %struct.swapfile, %struct.swapfile* %43, i32 0, i32 1
  %45 = call i64 @queue_next(i32* %44)
  %46 = inttoptr i64 %45 to %struct.swapfile*
  store %struct.swapfile* %46, %struct.swapfile** %3, align 8
  br label %9

47:                                               ; preds = %9
  %48 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* @delayed_trim_handling_in_progress, align 8
  %50 = call i32 @thread_wakeup(i32 ptrtoint (i64* @delayed_trim_handling_in_progress to i32))
  %51 = call i64 (...) @VM_SWAP_SHOULD_RECLAIM()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @vm_swapfile_gc_thread_running, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 @thread_wakeup(i32 ptrtoint (i32* @vm_swapfile_gc_needed to i32))
  br label %58

58:                                               ; preds = %56, %53, %47
  %59 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i64 @queue_end(i32*, i32) #1

declare dso_local i64 @VM_SWAP_SHOULD_TRIM(%struct.swapfile*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_swap_do_delayed_trim(%struct.swapfile*) #1

declare dso_local i64 @queue_next(i32*) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i64 @VM_SWAP_SHOULD_RECLAIM(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
