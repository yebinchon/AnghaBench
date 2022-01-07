; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_adjust_eq_iothrottle.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_pageout_adjust_eq_iothrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_pageout_queue = type { i64, i64, i32 }

@hibernate_cleaning_in_progress = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@THROTTLE_LEVEL_PAGEOUT_THROTTLED = common dso_local global i32 0, align 4
@laundrythrottle = common dso_local global i32 0, align 4
@THROTTLE_LEVEL_PAGEOUT_UNTHROTTLED = common dso_local global i32 0, align 4
@laundryunthrottle = common dso_local global i32 0, align 4
@kernel_task = common dso_local global i32 0, align 4
@TASK_POLICY_EXTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_pageout_queue*, i64)* @vm_pageout_adjust_eq_iothrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_adjust_eq_iothrottle(%struct.vm_pageout_queue* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_pageout_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vm_pageout_queue* %0, %struct.vm_pageout_queue** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @hibernate_cleaning_in_progress, align 8
  %7 = load i64, i64* @TRUE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %13 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TRUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %19 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = call i32 (...) @vm_page_unlock_queues()
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @TRUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @THROTTLE_LEVEL_PAGEOUT_THROTTLED, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @laundrythrottle, align 4
  %31 = call i32 @DTRACE_VM(i32 %30)
  br label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @THROTTLE_LEVEL_PAGEOUT_UNTHROTTLED, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @laundryunthrottle, align 4
  %35 = call i32 @DTRACE_VM(i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @kernel_task, align 4
  %38 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %39 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %42 = load i32, i32* @TASK_POLICY_IO, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @proc_set_thread_policy_with_tid(i32 %37, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.vm_pageout_queue*, %struct.vm_pageout_queue** %3, align 8
  %47 = getelementptr inbounds %struct.vm_pageout_queue, %struct.vm_pageout_queue* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = call i32 (...) @vm_page_lock_queues()
  br label %49

49:                                               ; preds = %36, %17, %11
  ret void
}

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @DTRACE_VM(i32) #1

declare dso_local i32 @proc_set_thread_policy_with_tid(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_page_lock_queues(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
