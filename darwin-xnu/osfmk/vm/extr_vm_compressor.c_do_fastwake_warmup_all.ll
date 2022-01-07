; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_do_fastwake_warmup_all.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_do_fastwake_warmup_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_list_lock = common dso_local global i32 0, align 4
@c_swappedout_list_head = common dso_local global i32 0, align 4
@c_swappedout_sparse_list_head = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@fastwake_warmup = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_fastwake_warmup_all() #0 {
  %1 = load i32, i32* @c_list_lock, align 4
  %2 = call i32 @lck_mtx_lock_spin_always(i32 %1)
  %3 = call i64 @queue_empty(i32* @c_swappedout_list_head)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = call i64 @queue_empty(i32* @c_swappedout_sparse_list_head)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @c_list_lock, align 4
  %10 = call i32 @lck_mtx_unlock_always(i32 %9)
  br label %20

11:                                               ; preds = %5, %0
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* @fastwake_warmup, align 4
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i32 @do_fastwake_warmup(i32* @c_swappedout_list_head, i32 %13)
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @do_fastwake_warmup(i32* @c_swappedout_sparse_list_head, i32 %15)
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* @fastwake_warmup, align 4
  %18 = load i32, i32* @c_list_lock, align 4
  %19 = call i32 @lck_mtx_unlock_always(i32 %18)
  br label %20

20:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

declare dso_local i64 @queue_empty(i32*) #1

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

declare dso_local i32 @do_fastwake_warmup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
