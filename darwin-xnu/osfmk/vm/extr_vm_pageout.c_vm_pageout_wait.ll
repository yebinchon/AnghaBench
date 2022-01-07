; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_page_queue_free_lock = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@vm_pageout_running = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@vm_pageout_waiter = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i64 0, align 8
@LCK_SLEEP_DEFAULT = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@KERN_OPERATION_TIMED_OUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_pageout_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @lck_mtx_lock(i32* @vm_page_queue_free_lock)
  %5 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i64, i64* @vm_pageout_running, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i64, i64* @KERN_SUCCESS, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %10, %11
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %26

15:                                               ; preds = %13
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* @vm_pageout_waiter, align 4
  %17 = load i64, i64* @THREAD_AWAKENED, align 8
  %18 = load i32, i32* @LCK_SLEEP_DEFAULT, align 4
  %19 = load i32, i32* @THREAD_UNINT, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @lck_mtx_sleep_deadline(i32* @vm_page_queue_free_lock, i32 %18, i32 ptrtoint (i32* @vm_pageout_waiter to i32), i32 %19, i32 %20)
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* @KERN_OPERATION_TIMED_OUT, align 8
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %23, %15
  br label %6

26:                                               ; preds = %13
  %27 = call i32 @lck_mtx_unlock(i32* @vm_page_queue_free_lock)
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @lck_mtx_sleep_deadline(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
