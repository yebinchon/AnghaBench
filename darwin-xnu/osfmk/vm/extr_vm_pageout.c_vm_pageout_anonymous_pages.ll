; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_anonymous_pages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_anonymous_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_CONFIG_COMPRESSOR_IS_PRESENT = common dso_local global i64 0, align 8
@vm_pageout_anonymous_pages_active = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@vm_page_queue_throttled = common dso_local global i32 0, align 4
@vm_page_throttled_count = common dso_local global i32 0, align 4
@vm_page_queue_anonymous = common dso_local global i32 0, align 4
@vm_page_anonymous_count = common dso_local global i32 0, align 4
@vm_page_queue_active = common dso_local global i32 0, align 4
@vm_page_active_count = common dso_local global i32 0, align 4
@VM_CONFIG_SWAP_IS_PRESENT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_pageout_anonymous_pages() #0 {
  %1 = load i64, i64* @VM_CONFIG_COMPRESSOR_IS_PRESENT, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %27

3:                                                ; preds = %0
  %4 = call i32 (...) @vm_page_lock_queues()
  %5 = load i64, i64* @vm_pageout_anonymous_pages_active, align 8
  %6 = load i64, i64* @TRUE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 (...) @vm_page_unlock_queues()
  br label %27

10:                                               ; preds = %3
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* @vm_pageout_anonymous_pages_active, align 8
  %12 = call i32 (...) @vm_page_unlock_queues()
  %13 = load i32, i32* @vm_page_throttled_count, align 4
  %14 = call i32 @vm_pageout_page_queue(i32* @vm_page_queue_throttled, i32 %13)
  %15 = load i32, i32* @vm_page_anonymous_count, align 4
  %16 = call i32 @vm_pageout_page_queue(i32* @vm_page_queue_anonymous, i32 %15)
  %17 = load i32, i32* @vm_page_active_count, align 4
  %18 = call i32 @vm_pageout_page_queue(i32* @vm_page_queue_active, i32 %17)
  %19 = load i64, i64* @VM_CONFIG_SWAP_IS_PRESENT, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = call i32 (...) @vm_consider_swapping()
  br label %23

23:                                               ; preds = %21, %10
  %24 = call i32 (...) @vm_page_lock_queues()
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* @vm_pageout_anonymous_pages_active, align 8
  %26 = call i32 (...) @vm_page_unlock_queues()
  br label %27

27:                                               ; preds = %8, %23, %0
  ret void
}

declare dso_local i32 @vm_page_lock_queues(...) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @vm_pageout_page_queue(i32*, i32) #1

declare dso_local i32 @vm_consider_swapping(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
