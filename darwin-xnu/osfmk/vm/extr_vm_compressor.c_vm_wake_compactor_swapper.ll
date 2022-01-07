; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_wake_compactor_swapper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_wake_compactor_swapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@compaction_swapper_running = common dso_local global i64 0, align 8
@compaction_swapper_awakened = common dso_local global i32 0, align 4
@c_segment_count = common dso_local global i64 0, align 8
@c_minor_count = common dso_local global i64 0, align 8
@c_list_lock = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@fastwake_warmup = common dso_local global i32 0, align 4
@vm_wake_compactor_swapper_calls = common dso_local global i32 0, align 4
@c_compressor_swap_trigger = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_wake_compactor_swapper() #0 {
  %1 = load i64, i64* @compaction_swapper_running, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @compaction_swapper_awakened, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i64, i64* @c_segment_count, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %3, %0
  br label %32

10:                                               ; preds = %6
  %11 = load i64, i64* @c_minor_count, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i64 (...) @vm_compressor_needs_to_major_compact()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13, %10
  %17 = load i32, i32* @c_list_lock, align 4
  %18 = call i32 @lck_mtx_lock_spin_always(i32 %17)
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* @fastwake_warmup, align 4
  %20 = load i64, i64* @compaction_swapper_running, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* @compaction_swapper_awakened, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @vm_wake_compactor_swapper_calls, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @vm_wake_compactor_swapper_calls, align 4
  store i32 1, i32* @compaction_swapper_awakened, align 4
  %28 = call i32 @thread_wakeup(i32 ptrtoint (i32* @c_compressor_swap_trigger to i32))
  br label %29

29:                                               ; preds = %25, %22, %16
  %30 = load i32, i32* @c_list_lock, align 4
  %31 = call i32 @lck_mtx_unlock_always(i32 %30)
  br label %32

32:                                               ; preds = %9, %29, %13
  ret void
}

declare dso_local i64 @vm_compressor_needs_to_major_compact(...) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
