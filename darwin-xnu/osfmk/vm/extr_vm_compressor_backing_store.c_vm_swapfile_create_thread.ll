; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapfile_create_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapfile_create_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TH_OPT_VMPRIV = common dso_local global i32 0, align 4
@vm_swapfile_create_thread_awakened = common dso_local global i32 0, align 4
@vm_swapfile_create_thread_running = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@vm_swap_data_lock = common dso_local global i32 0, align 4
@hibernate_in_progress_with_pinned_swap = common dso_local global i64 0, align 8
@vm_swapfile_last_failed_to_create_ts = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"vm_swap_create_file failed @ %lu secs\0A\00", align 1
@vm_swapfile_last_successful_create_ts = common dso_local global i8* null, align 8
@vm_swapfile_create_needed = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm_swapfile_create_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_swapfile_create_thread() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TH_OPT_VMPRIV, align 4
  %4 = call %struct.TYPE_2__* (...) @current_thread()
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @vm_swapfile_create_thread_awakened, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @vm_swapfile_create_thread_awakened, align 4
  store i32 1, i32* @vm_swapfile_create_thread_running, align 4
  br label %10

10:                                               ; preds = %39, %0
  %11 = load i64, i64* @TRUE, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load i64, i64* @FALSE, align 8
  %15 = call i32 @vm_swap_handle_delayed_trims(i64 %14)
  %16 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  %17 = load i64, i64* @hibernate_in_progress_with_pinned_swap, align 8
  %18 = load i64, i64* @TRUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %40

21:                                               ; preds = %13
  %22 = call i32 @clock_get_system_nanotime(i8** %1, i32* %2)
  %23 = load i8*, i8** %1, align 8
  %24 = call i64 @VM_SWAP_SHOULD_CREATE(i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %40

27:                                               ; preds = %21
  %28 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %29 = call i64 (...) @vm_swap_create_file()
  %30 = load i64, i64* @FALSE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %1, align 8
  store i8* %33, i8** @vm_swapfile_last_failed_to_create_ts, align 8
  %34 = load i8*, i8** %1, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = call i32 @HIBLOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %39

37:                                               ; preds = %27
  %38 = load i8*, i8** %1, align 8
  store i8* %38, i8** @vm_swapfile_last_successful_create_ts, align 8
  br label %39

39:                                               ; preds = %37, %32
  br label %10

40:                                               ; preds = %26, %20, %10
  store i32 0, i32* @vm_swapfile_create_thread_running, align 4
  %41 = load i64, i64* @hibernate_in_progress_with_pinned_swap, align 8
  %42 = load i64, i64* @TRUE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 @thread_wakeup(i32 ptrtoint (i64* @hibernate_in_progress_with_pinned_swap to i32))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* @THREAD_UNINT, align 4
  %48 = call i32 @assert_wait(i32 ptrtoint (i32* @vm_swapfile_create_needed to i32), i32 %47)
  %49 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %50 = call i32 @thread_block(i32 ptrtoint (void ()* @vm_swapfile_create_thread to i32))
  ret void
}

declare dso_local %struct.TYPE_2__* @current_thread(...) #1

declare dso_local i32 @vm_swap_handle_delayed_trims(i64) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @clock_get_system_nanotime(i8**, i32*) #1

declare dso_local i64 @VM_SWAP_SHOULD_CREATE(i8*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @vm_swap_create_file(...) #1

declare dso_local i32 @HIBLOG(i8*, i64) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
