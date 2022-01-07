; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_do_warmup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_do_warmup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_list_lock = common dso_local global i32 0, align 4
@first_c_segment_to_warm_generation_id = common dso_local global i64 0, align 8
@last_c_segment_to_warm_generation_id = common dso_local global i64 0, align 8
@compaction_swapper_running = common dso_local global i64 0, align 8
@compaction_swapper_awakened = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@fastwake_warmup = common dso_local global i32 0, align 4
@c_compressor_swap_trigger = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compressor_do_warmup() #0 {
  %1 = load i32, i32* @c_list_lock, align 4
  %2 = call i32 @lck_mtx_lock_spin_always(i32 %1)
  %3 = load i64, i64* @first_c_segment_to_warm_generation_id, align 8
  %4 = load i64, i64* @last_c_segment_to_warm_generation_id, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  store i64 0, i64* @last_c_segment_to_warm_generation_id, align 8
  store i64 0, i64* @first_c_segment_to_warm_generation_id, align 8
  %7 = load i32, i32* @c_list_lock, align 4
  %8 = call i32 @lck_mtx_unlock_always(i32 %7)
  br label %21

9:                                                ; preds = %0
  %10 = load i64, i64* @compaction_swapper_running, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @compaction_swapper_awakened, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* @fastwake_warmup, align 4
  store i32 1, i32* @compaction_swapper_awakened, align 4
  %17 = call i32 @thread_wakeup(i32 ptrtoint (i32* @c_compressor_swap_trigger to i32))
  br label %18

18:                                               ; preds = %15, %12, %9
  %19 = load i32, i32* @c_list_lock, align 4
  %20 = call i32 @lck_mtx_unlock_always(i32 %19)
  br label %21

21:                                               ; preds = %18, %6
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
