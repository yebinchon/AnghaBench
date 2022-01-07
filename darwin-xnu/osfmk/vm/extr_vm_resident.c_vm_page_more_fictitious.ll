; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_more_fictitious.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_more_fictitious.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_vm_page_more_fictitious = common dso_local global i32 0, align 4
@vm_page_alloc_lock = common dso_local global i32 0, align 4
@vm_page_zone = common dso_local global i32 0, align 4
@zone_map = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KMA_KOBJECT = common dso_local global i32 0, align 4
@KMA_NOPAGEWAIT = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_ZONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_more_fictitious() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @c_vm_page_more_fictitious, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @c_vm_page_more_fictitious, align 4
  %5 = call i32 @lck_mtx_lock(i32* @vm_page_alloc_lock)
  %6 = load i32, i32* @vm_page_zone, align 4
  %7 = call i32 @zone_free_count(i32 %6)
  %8 = icmp sgt i32 %7, 5
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @lck_mtx_unlock(i32* @vm_page_alloc_lock)
  br label %32

11:                                               ; preds = %0
  %12 = load i32, i32* @zone_map, align 4
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = load i32, i32* @KMA_KOBJECT, align 4
  %15 = load i32, i32* @KMA_NOPAGEWAIT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @VM_KERN_MEMORY_ZONE, align 4
  %18 = call i64 @kernel_memory_allocate(i32 %12, i32* %1, i32 %13, i32 0, i32 %16, i32 %17)
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @KERN_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = call i32 @lck_mtx_unlock(i32* @vm_page_alloc_lock)
  %24 = load i32, i32* @THREAD_UNINT, align 4
  %25 = call i32 @vm_page_wait(i32 %24)
  br label %32

26:                                               ; preds = %11
  %27 = load i32, i32* @vm_page_zone, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = call i32 @zcram(i32 %27, i32 %28, i32 %29)
  %31 = call i32 @lck_mtx_unlock(i32* @vm_page_alloc_lock)
  br label %32

32:                                               ; preds = %26, %22, %9
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @zone_free_count(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @kernel_memory_allocate(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vm_page_wait(i32) #1

declare dso_local i32 @zcram(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
