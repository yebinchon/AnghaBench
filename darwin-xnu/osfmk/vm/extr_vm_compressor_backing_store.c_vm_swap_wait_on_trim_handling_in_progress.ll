; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_wait_on_trim_handling_in_progress.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swap_wait_on_trim_handling_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@delayed_trim_handling_in_progress = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@vm_swap_data_lock = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vm_swap_wait_on_trim_handling_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_swap_wait_on_trim_handling_in_progress() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = load i64, i64* @delayed_trim_handling_in_progress, align 8
  %3 = load i64, i64* @TRUE, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i32, i32* @THREAD_UNINT, align 4
  %7 = call i32 @assert_wait(i32 ptrtoint (i64* @delayed_trim_handling_in_progress to i32), i32 %6)
  %8 = call i32 @lck_mtx_unlock(i32* @vm_swap_data_lock)
  %9 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %10 = call i32 @thread_block(i32 %9)
  %11 = call i32 @lck_mtx_lock(i32* @vm_swap_data_lock)
  br label %1

12:                                               ; preds = %1
  ret void
}

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @thread_block(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
