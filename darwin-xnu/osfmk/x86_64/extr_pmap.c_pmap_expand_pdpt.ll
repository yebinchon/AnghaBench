; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_expand_pdpt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_expand_pdpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"pmap_expand_pdpt(%p,%p)\0A\00", align 1
@PDPT_ENTRY_NULL = common dso_local global i32* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_PAGE_NULL = common dso_local global i32 0, align 4
@PMAP_EXPAND_OPTIONS_NOWAIT = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@VM_KERN_MEMORY_PTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@inuse_ptepages_count = common dso_local global i32 0, align 4
@alloc_ptepages_count = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PD_ENTRY_NULL = common dso_local global i64 0, align 8
@INTEL_EPT_EX = common dso_local global i32 0, align 4
@INTEL_PTE_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_expand_pdpt(%struct.TYPE_14__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = call i64 @is_ept_pmap(%struct.TYPE_14__* %15)
  store i64 %16, i64* %13, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %17, i8* %19)
  br label %21

21:                                               ; preds = %37, %3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32* @pmap64_pdpt(%struct.TYPE_14__* %22, i64 %23)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** @PDPT_ENTRY_NULL, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @pmap_expand_pml4(%struct.TYPE_14__* %28, i64 %29, i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* %14, align 8
  store i64 %36, i64* %4, align 8
  br label %138

37:                                               ; preds = %27
  br label %21

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %50, %38
  %40 = call i32 (...) @vm_page_grab()
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @VM_PAGE_NULL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @PMAP_EXPAND_OPTIONS_NOWAIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  store i64 %49, i64* %4, align 8
  br label %138

50:                                               ; preds = %43
  %51 = call i32 (...) @VM_PAGE_WAIT()
  br label %39

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @VM_PAGE_GET_PHYS_PAGE(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @i386_ptob(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @pdptidx(%struct.TYPE_14__* %57, i64 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @pmap_zero_page(i32 %60)
  %62 = call i32 (...) @vm_page_lockspin_queues()
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @VM_KERN_MEMORY_PTE, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @vm_page_wire(i32 %63, i32 %64, i32 %65)
  %67 = call i32 (...) @vm_page_unlock_queues()
  %68 = call i32 @OSAddAtomic(i32 1, i32* @inuse_ptepages_count)
  %69 = call i32 @OSAddAtomic64(i32 1, i32* @alloc_ptepages_count)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = call i32 @PMAP_ZINFO_PALLOC(%struct.TYPE_14__* %70, i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @vm_object_lock(i32 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = call i32 @PMAP_LOCK(%struct.TYPE_14__* %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @pmap64_pde(%struct.TYPE_14__* %79, i64 %80)
  %82 = load i64, i64* @PD_ENTRY_NULL, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %52
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = call i32 @PMAP_UNLOCK(%struct.TYPE_14__* %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @vm_object_unlock(i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @VM_PAGE_FREE(i32 %91)
  %93 = call i32 @OSAddAtomic(i32 -1, i32* @inuse_ptepages_count)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = call i32 @PMAP_ZINFO_PFREE(%struct.TYPE_14__* %94, i32 %95)
  %97 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %97, i64* %4, align 8
  br label %138

98:                                               ; preds = %52
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %10, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* @VM_KERN_MEMORY_PTE, align 4
  %108 = call i32 @vm_page_insert_wired(i32 %99, i32 %102, i32 %106, i32 %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @vm_object_unlock(i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32* @pmap64_pdpt(%struct.TYPE_14__* %113, i64 %114)
  store i32* %115, i32** %12, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @pa_to_pte(i32 %117)
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @PTE_READ(i64 %119)
  %121 = or i32 %118, %120
  %122 = load i64, i64* %13, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %98
  %125 = load i32, i32* @INTEL_EPT_EX, align 4
  br label %128

126:                                              ; preds = %98
  %127 = load i32, i32* @INTEL_PTE_USER, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = or i32 %121, %129
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @PTE_WRITE(i64 %131)
  %133 = or i32 %130, %132
  %134 = call i32 @pmap_store_pte(i32* %116, i32 %133)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %136 = call i32 @PMAP_UNLOCK(%struct.TYPE_14__* %135)
  %137 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %137, i64* %4, align 8
  br label %138

138:                                              ; preds = %128, %84, %48, %35
  %139 = load i64, i64* %4, align 8
  ret i64 %139
}

declare dso_local i64 @is_ept_pmap(%struct.TYPE_14__*) #1

declare dso_local i32 @DBG(i8*, %struct.TYPE_14__*, i8*) #1

declare dso_local i32* @pmap64_pdpt(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @pmap_expand_pml4(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @vm_page_grab(...) #1

declare dso_local i32 @VM_PAGE_WAIT(...) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(i32) #1

declare dso_local i32 @i386_ptob(i32) #1

declare dso_local i64 @pdptidx(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @pmap_zero_page(i32) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i32 @vm_page_wire(i32, i32, i32) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @PMAP_ZINFO_PALLOC(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @vm_object_lock(i32) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_14__*) #1

declare dso_local i64 @pmap64_pde(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @vm_object_unlock(i32) #1

declare dso_local i32 @VM_PAGE_FREE(i32) #1

declare dso_local i32 @PMAP_ZINFO_PFREE(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @vm_page_insert_wired(i32, i32, i32, i32) #1

declare dso_local i32 @pmap_store_pte(i32*, i32) #1

declare dso_local i32 @pa_to_pte(i32) #1

declare dso_local i32 @PTE_READ(i64) #1

declare dso_local i32 @PTE_WRITE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
