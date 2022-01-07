; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_pages_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_pages_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_PAGE_NULL = common dso_local global i64 0, align 8
@PMAP_PAGES_RECLAIM_NOWAIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@PMAP_PAGES_ALLOCATE_NOWAIT = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@VM_KERN_MEMORY_PTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@pmap_object = common dso_local global i32 0, align 4
@gPhysBase = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@inuse_pmap_pages_count = common dso_local global i32 0, align 4
@alloc_pmap_pages_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i32)* @pmap_pages_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmap_pages_alloc(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @VM_PAGE_NULL, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PMAP_PAGES_RECLAIM_NOWAIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = call i64 (...) @pmap_pages_reclaim()
  %22 = load i64*, i64** %5, align 8
  store i64 %21, i64* %22, align 8
  %23 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %23, i64* %4, align 8
  br label %111

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %40, %28
  %30 = call i64 (...) @vm_page_grab()
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* @VM_PAGE_NULL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PMAP_PAGES_ALLOCATE_NOWAIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %39, i64* %4, align 8
  br label %111

40:                                               ; preds = %33
  %41 = call i32 (...) @VM_PAGE_WAIT()
  br label %29

42:                                               ; preds = %29
  %43 = call i32 (...) @vm_page_lock_queues()
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* @VM_KERN_MEMORY_PTE, align 4
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @vm_page_wire(i64 %44, i32 %45, i32 %46)
  %48 = call i32 (...) @vm_page_unlock_queues()
  br label %49

49:                                               ; preds = %42, %24
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = mul i32 2, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = call i64 @cpm_allocate(i32 %56, i64* %8, i32 0, i32 1, i32 %57, i32 0)
  %59 = load i64, i64* @KERN_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PMAP_PAGES_ALLOCATE_NOWAIT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %67, i64* %4, align 8
  br label %111

68:                                               ; preds = %61
  %69 = call i32 (...) @VM_PAGE_WAIT()
  br label %55

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %49
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @VM_PAGE_GET_PHYS_PAGE(i64 %72)
  %74 = call i64 @ptoa(i32 %73)
  %75 = load i64*, i64** %5, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* @pmap_object, align 4
  %77 = call i32 @vm_object_lock(i32 %76)
  br label %78

78:                                               ; preds = %82, %71
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @VM_PAGE_NULL, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* @pmap_object, align 4
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @VM_PAGE_GET_PHYS_PAGE(i64 %85)
  %87 = call i64 @ptoa(i32 %86)
  %88 = load i64, i64* @gPhysBase, align 8
  %89 = sub nsw i64 %87, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @VM_KERN_MEMORY_PTE, align 4
  %92 = call i32 @vm_page_insert_wired(i64 %83, i32 %84, i32 %90, i32 %91)
  %93 = load i64, i64* %8, align 8
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i64 @NEXT_PAGE(i64 %94)
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* @VM_PAGE_NULL, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i64* @NEXT_PAGE_PTR(i64 %97)
  store i64 %96, i64* %98, align 8
  br label %78

99:                                               ; preds = %78
  %100 = load i32, i32* @pmap_object, align 4
  %101 = call i32 @vm_object_unlock(i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @PAGE_SHIFT, align 4
  %104 = lshr i32 %102, %103
  %105 = call i32 @OSAddAtomic(i32 %104, i32* @inuse_pmap_pages_count)
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @PAGE_SHIFT, align 4
  %108 = lshr i32 %106, %107
  %109 = call i32 @OSAddAtomic64(i32 %108, i32* @alloc_pmap_pages_count)
  %110 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %99, %66, %38, %15
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pmap_pages_reclaim(...) #1

declare dso_local i64 @vm_page_grab(...) #1

declare dso_local i32 @VM_PAGE_WAIT(...) #1

declare dso_local i32 @vm_page_lock_queues(...) #1

declare dso_local i32 @vm_page_wire(i64, i32, i32) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i64 @cpm_allocate(i32, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @ptoa(i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(i64) #1

declare dso_local i32 @vm_object_lock(i32) #1

declare dso_local i32 @vm_page_insert_wired(i64, i32, i32, i32) #1

declare dso_local i64 @NEXT_PAGE(i64) #1

declare dso_local i64* @NEXT_PAGE_PTR(i64) #1

declare dso_local i32 @vm_object_unlock(i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
