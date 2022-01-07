; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TH_OPT_VMPRIV = common dso_local global i32 0, align 4
@vm_page_queue_free_lock = common dso_local global i32 0, align 4
@vm_page_free_count = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@vm_page_free_target = common dso_local global i64 0, align 8
@vm_page_free_wanted_privileged = common dso_local global i32 0, align 4
@vm_page_free_wanted = common dso_local global i32 0, align 4
@c_vm_page_wait_block = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@vm_page_wait_block = common dso_local global i32 0, align 4
@VM_PAGE_WAIT_BLOCK = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@secluded_for_apps = common dso_local global i64 0, align 8
@vm_page_free_wanted_secluded = common dso_local global i32 0, align 4
@vm_page_secluded_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = call %struct.TYPE_2__* (...) @current_thread()
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TH_OPT_VMPRIV, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = call i32 @lck_mtx_lock_spin(i32* @vm_page_queue_free_lock)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i64, i64* @vm_page_free_count, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i32 @lck_mtx_unlock(i32* @vm_page_queue_free_lock)
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %78

21:                                               ; preds = %15, %1
  %22 = load i64, i64* @vm_page_free_count, align 8
  %23 = load i64, i64* @vm_page_free_target, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 @lck_mtx_unlock(i32* @vm_page_queue_free_lock)
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %2, align 4
  br label %78

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* @vm_page_free_wanted_privileged, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @vm_page_free_wanted_privileged, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @assert_wait(i32 ptrtoint (i32* @vm_page_free_wanted_privileged to i32), i32 %37)
  store i64 %38, i64* %4, align 8
  br label %47

39:                                               ; preds = %28
  %40 = load i32, i32* @vm_page_free_wanted, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @vm_page_free_wanted, align 4
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @assert_wait(i32 ptrtoint (i64* @vm_page_free_count to i32), i32 %45)
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %44, %36
  %48 = call i32 @lck_mtx_unlock(i32* @vm_page_queue_free_lock)
  %49 = load i32, i32* @c_vm_page_wait_block, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @c_vm_page_wait_block, align 4
  %51 = call i32 @counter(i32 %49)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @thread_wakeup(i32 ptrtoint (i32* @vm_page_free_wanted to i32))
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* @THREAD_WAITING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* @vm_page_wait_block, align 4
  %62 = load i32, i32* @VM_PAGE_WAIT_BLOCK, align 4
  %63 = load i32, i32* @DBG_FUNC_START, align 4
  %64 = load i32, i32* @vm_page_free_wanted_privileged, align 4
  %65 = load i32, i32* @vm_page_free_wanted, align 4
  %66 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) @VM_DEBUG_CONSTANT_EVENT(i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 0, i32 0)
  %67 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %68 = call i64 @thread_block(i32 %67)
  store i64 %68, i64* %4, align 8
  %69 = load i32, i32* @vm_page_wait_block, align 4
  %70 = load i32, i32* @VM_PAGE_WAIT_BLOCK, align 4
  %71 = load i32, i32* @DBG_FUNC_END, align 4
  %72 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) @VM_DEBUG_CONSTANT_EVENT(i32 %69, i32 %70, i32 %71, i32 0, i32 0, i32 0, i32 0)
  br label %73

73:                                               ; preds = %60, %56
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @THREAD_AWAKENED, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %25, %18
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_2__* @current_thread(...) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @assert_wait(i32, i32) #1

declare dso_local i32 @counter(i32) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @VM_DEBUG_CONSTANT_EVENT(i32, i32, i32, i32, i32, i32, i32, ...) #1

declare dso_local i64 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
