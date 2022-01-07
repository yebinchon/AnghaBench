; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_expand_pml4.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_expand_pml4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"pmap_expand_pml4(%p,%p)\0A\00", align 1
@kernel_pmap = common dso_local global %struct.TYPE_15__* null, align 8
@KERNEL_BASEMENT = common dso_local global i64 0, align 8
@VM_PAGE_NULL = common dso_local global i32 0, align 4
@PMAP_EXPAND_OPTIONS_NOWAIT = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_PTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@inuse_ptepages_count = common dso_local global i32 0, align 4
@alloc_ptepages_count = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PDPT_ENTRY_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@INTEL_EPT_EX = common dso_local global i32 0, align 4
@INTEL_PTE_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_expand_pml4(%struct.TYPE_15__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = call i64 @is_ept_pmap(%struct.TYPE_15__* %15)
  store i64 %16, i64* %13, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %17, i8* %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** @kernel_pmap, align 8
  %23 = icmp ne %struct.TYPE_15__* %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @KERNEL_BASEMENT, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i1 [ true, %3 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %32

32:                                               ; preds = %43, %28
  %33 = call i32 (...) @vm_page_grab()
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @VM_PAGE_NULL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PMAP_EXPAND_OPTIONS_NOWAIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %42, i32* %4, align 4
  br label %153

43:                                               ; preds = %36
  %44 = call i32 (...) @VM_PAGE_WAIT()
  br label %32

45:                                               ; preds = %32
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @VM_PAGE_GET_PHYS_PAGE(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @i386_ptob(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @pml4idx(%struct.TYPE_15__* %50, i64 %51)
  store i64 %52, i64* %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @pmap_zero_page(i32 %53)
  %55 = call i32 (...) @vm_page_lockspin_queues()
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @VM_KERN_MEMORY_PTE, align 4
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @vm_page_wire(i32 %56, i32 %57, i32 %58)
  %60 = call i32 (...) @vm_page_unlock_queues()
  %61 = call i32 @OSAddAtomic(i32 1, i32* @inuse_ptepages_count)
  %62 = call i32 @OSAddAtomic64(i32 1, i32* @alloc_ptepages_count)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = call i32 @PMAP_ZINFO_PALLOC(%struct.TYPE_15__* %63, i32 %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @vm_object_lock(i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = call i32 @PMAP_LOCK(%struct.TYPE_15__* %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @pmap64_pdpt(%struct.TYPE_15__* %72, i64 %73)
  %75 = load i64, i64* @PDPT_ENTRY_NULL, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %45
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = call i32 @PMAP_UNLOCK(%struct.TYPE_15__* %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @vm_object_unlock(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @VM_PAGE_FREE(i32 %84)
  %86 = call i32 @OSAddAtomic(i32 -1, i32* @inuse_ptepages_count)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = call i32 @PMAP_ZINFO_PFREE(%struct.TYPE_15__* %87, i32 %88)
  %90 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %90, i32* %4, align 4
  br label %153

91:                                               ; preds = %45
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %10, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* @VM_KERN_MEMORY_PTE, align 4
  %101 = call i32 @vm_page_insert_wired(i32 %92, i32 %95, i32 %99, i32 %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @vm_object_unlock(i32 %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32* @pmap64_pml4(%struct.TYPE_15__* %106, i64 %107)
  store i32* %108, i32** %12, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @pa_to_pte(i32 %110)
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @PTE_READ(i64 %112)
  %114 = or i32 %111, %113
  %115 = load i64, i64* %13, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %91
  %118 = load i32, i32* @INTEL_EPT_EX, align 4
  br label %121

119:                                              ; preds = %91
  %120 = load i32, i32* @INTEL_PTE_USER, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = or i32 %114, %122
  %124 = load i64, i64* %13, align 8
  %125 = call i32 @PTE_WRITE(i64 %124)
  %126 = or i32 %123, %125
  %127 = call i32 @pmap_store_pte(i32* %109, i32 %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i32* @pmap64_user_pml4(%struct.TYPE_15__* %128, i64 %129)
  store i32* %130, i32** %14, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @pa_to_pte(i32 %132)
  %134 = load i64, i64* %13, align 8
  %135 = call i32 @PTE_READ(i64 %134)
  %136 = or i32 %133, %135
  %137 = load i64, i64* %13, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %121
  %140 = load i32, i32* @INTEL_EPT_EX, align 4
  br label %143

141:                                              ; preds = %121
  %142 = load i32, i32* @INTEL_PTE_USER, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = or i32 %136, %144
  %146 = load i64, i64* %13, align 8
  %147 = call i32 @PTE_WRITE(i64 %146)
  %148 = or i32 %145, %147
  %149 = call i32 @pmap_store_pte(i32* %131, i32 %148)
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %151 = call i32 @PMAP_UNLOCK(%struct.TYPE_15__* %150)
  %152 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %143, %77, %41
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i64 @is_ept_pmap(%struct.TYPE_15__*) #1

declare dso_local i32 @DBG(i8*, %struct.TYPE_15__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_page_grab(...) #1

declare dso_local i32 @VM_PAGE_WAIT(...) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(i32) #1

declare dso_local i32 @i386_ptob(i32) #1

declare dso_local i64 @pml4idx(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @pmap_zero_page(i32) #1

declare dso_local i32 @vm_page_lockspin_queues(...) #1

declare dso_local i32 @vm_page_wire(i32, i32, i32) #1

declare dso_local i32 @vm_page_unlock_queues(...) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i32 @PMAP_ZINFO_PALLOC(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @vm_object_lock(i32) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_15__*) #1

declare dso_local i64 @pmap64_pdpt(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_unlock(i32) #1

declare dso_local i32 @VM_PAGE_FREE(i32) #1

declare dso_local i32 @PMAP_ZINFO_PFREE(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @vm_page_insert_wired(i32, i32, i32, i32) #1

declare dso_local i32* @pmap64_pml4(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @pmap_store_pte(i32*, i32) #1

declare dso_local i32 @pa_to_pte(i32) #1

declare dso_local i32 @PTE_READ(i64) #1

declare dso_local i32 @PTE_WRITE(i64) #1

declare dso_local i32* @pmap64_user_pml4(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
