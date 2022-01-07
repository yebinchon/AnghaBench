; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_paging_unmap_object.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_paging_unmap_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_paging_base_address = common dso_local global i64 0, align 8
@VM_PAGING_NUM_PAGES = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_OBJECT_NULL = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@VM_MAP_REMOVE_NO_FLAGS = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@vm_paging_lock = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@vm_paging_page_inuse = common dso_local global i32* null, align 8
@vm_paging_page_waiter = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_paging_unmap_object(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @vm_paging_base_address, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @vm_paging_base_address, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @vm_paging_base_address, align 8
  %18 = load i64, i64* @VM_PAGING_NUM_PAGES, align 8
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = mul nsw i64 %18, %19
  %21 = add nsw i64 %17, %20
  %22 = icmp sgt i64 %16, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %15, %11, %3
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @VM_OBJECT_NULL, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @vm_object_unlock(i64 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* @kernel_map, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @VM_MAP_REMOVE_NO_FLAGS, align 4
  %35 = call i64 @vm_map_remove(i32 %31, i64 %32, i64 %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @VM_OBJECT_NULL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @vm_object_lock(i64 %40)
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %89

48:                                               ; preds = %15
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @vm_paging_base_address, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = ashr i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %48
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* @VM_PAGING_NUM_PAGES, align 8
  %68 = icmp slt i64 %66, %67
  br label %69

69:                                               ; preds = %64, %48
  %70 = phi i1 [ false, %48 ], [ %68, %64 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* @kernel_pmap, align 4
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @pmap_remove(i32 %73, i64 %74, i64 %75)
  %77 = call i32 @simple_lock(i32* @vm_paging_lock)
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32*, i32** @vm_paging_page_inuse, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i64, i64* @vm_paging_page_waiter, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %69
  %86 = call i32 @thread_wakeup(i64* @vm_paging_page_waiter)
  br label %87

87:                                               ; preds = %85, %69
  %88 = call i32 @simple_unlock(i32* @vm_paging_lock)
  br label %89

89:                                               ; preds = %87, %42
  ret void
}

declare dso_local i32 @vm_object_unlock(i64) #1

declare dso_local i64 @vm_map_remove(i32, i64, i64, i32) #1

declare dso_local i32 @vm_object_lock(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pmap_remove(i32, i64, i64) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @thread_wakeup(i64*) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
