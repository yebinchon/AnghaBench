; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_paging_map_object.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_paging_map_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@VM_PAGE_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_NOT_SUPPORTED = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4
@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_NONE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_INHERIT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"vm_paging_map_object: no page !?\00", align 1
@VM_MAP_REMOVE_NO_FLAGS = common dso_local global i32 0, align 4
@KERN_MEMORY_ERROR = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@vm_paging_objects_mapped_slow = common dso_local global i32 0, align 4
@vm_paging_pages_mapped_slow = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@VM_PAGING_NUM_PAGES = common dso_local global i32 0, align 4
@vm_paging_base_address = common dso_local global i64 0, align 8
@vm_paging_lock = common dso_local global i32 0, align 4
@vm_paging_max_index = common dso_local global i32 0, align 4
@vm_paging_no_kernel_page = common dso_local global i32 0, align 4
@vm_paging_objects_mapped = common dso_local global i32 0, align 4
@vm_paging_page_inuse = common dso_local global i64* null, align 8
@vm_paging_page_waiter = common dso_local global i32 0, align 4
@vm_paging_page_waiter_total = common dso_local global i32 0, align 4
@vm_paging_pages_mapped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_paging_map_object(%struct.TYPE_7__* %0, i32 %1, i64 %2, i32 %3, i64 %4, i32* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i64* %7, i64** %17, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VM_PAGE_NULL, align 8
  %25 = icmp ne %struct.TYPE_7__* %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %8
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = call i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_7__* %32)
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = call i64 @PHYSMAP_PTOV(i32 %36)
  %38 = load i64*, i64** %16, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* @FALSE, align 8
  %40 = load i64*, i64** %17, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %41, i64* %9, align 8
  br label %169

42:                                               ; preds = %26, %8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i64*, i64** %16, align 8
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %15, align 8
  store i32 0, i32* %47, align 4
  %48 = load i64, i64* @FALSE, align 8
  %49 = load i64*, i64** %17, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @KERN_NOT_SUPPORTED, align 8
  store i64 %50, i64* %9, align 8
  br label %169

51:                                               ; preds = %42
  %52 = load i64, i64* %12, align 8
  %53 = call i64 @vm_object_trunc_page(i64 %52)
  store i64 %53, i64* %21, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @kernel_map, align 4
  %57 = call i32 @VM_MAP_PAGE_MASK(i32 %56)
  %58 = call i32 @vm_map_round_page(i32 %55, i32 %57)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @vm_object_reference_locked(i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @vm_object_unlock(i32 %61)
  %63 = load i32, i32* @kernel_map, align 4
  %64 = load i64*, i64** %16, align 8
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %67 = load i32, i32* @VM_MAP_KERNEL_FLAGS_NONE, align 4
  %68 = load i32, i32* @VM_KERN_MEMORY_NONE, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i64, i64* %21, align 8
  %71 = load i64, i64* @FALSE, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @VM_PROT_ALL, align 4
  %74 = load i32, i32* @VM_INHERIT_NONE, align 4
  %75 = call i64 @vm_map_enter(i32 %63, i64* %64, i32 %65, i32 0, i32 %66, i32 %67, i32 %68, i32 %69, i64 %70, i64 %71, i32 %72, i32 %73, i32 %74)
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* @KERN_SUCCESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %51
  %80 = load i64*, i64** %16, align 8
  store i64 0, i64* %80, align 8
  %81 = load i32*, i32** %15, align 8
  store i32 0, i32* %81, align 4
  %82 = load i64, i64* @FALSE, align 8
  %83 = load i64*, i64** %17, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @vm_object_deallocate(i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @vm_object_lock(i32 %86)
  %88 = load i64, i64* %18, align 8
  store i64 %88, i64* %9, align 8
  br label %169

89:                                               ; preds = %51
  %90 = load i32, i32* %20, align 4
  %91 = load i32*, i32** %15, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @vm_object_lock(i32 %92)
  store i64 0, i64* %19, align 8
  br label %94

94:                                               ; preds = %149, %89
  %95 = load i32, i32* %20, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %157

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %19, align 8
  %101 = add nsw i64 %99, %100
  %102 = call %struct.TYPE_7__* @vm_page_lookup(i32 %98, i64 %101)
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %10, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @VM_PAGE_NULL, align 8
  %105 = icmp eq %struct.TYPE_7__* %103, %104
  br i1 %105, label %106, label %129

106:                                              ; preds = %97
  %107 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @vm_object_unlock(i32 %108)
  %110 = load i32, i32* @kernel_map, align 4
  %111 = load i64*, i64** %16, align 8
  %112 = load i64, i64* %111, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @VM_MAP_REMOVE_NO_FLAGS, align 4
  %116 = call i64 @vm_map_remove(i32 %110, i64 %112, i32 %114, i32 %115)
  store i64 %116, i64* %18, align 8
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* @KERN_SUCCESS, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i64*, i64** %16, align 8
  store i64 0, i64* %122, align 8
  %123 = load i32*, i32** %15, align 8
  store i32 0, i32* %123, align 4
  %124 = load i64, i64* @FALSE, align 8
  %125 = load i64*, i64** %17, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @vm_object_lock(i32 %126)
  %128 = load i64, i64* @KERN_MEMORY_ERROR, align 8
  store i64 %128, i64* %9, align 8
  br label %169

129:                                              ; preds = %97
  %130 = load i64, i64* @TRUE, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* @kernel_pmap, align 4
  %134 = load i64*, i64** %16, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %19, align 8
  %137 = add nsw i64 %135, %136
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @VM_PROT_NONE, align 4
  %141 = load i64, i64* @TRUE, align 8
  %142 = load i64, i64* %18, align 8
  %143 = call i32 @PMAP_ENTER(i32 %133, i64 %137, %struct.TYPE_7__* %138, i32 %139, i32 %140, i32 0, i64 %141, i64 %142)
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* @KERN_SUCCESS, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  br label %149

149:                                              ; preds = %129
  %150 = load i32, i32* @PAGE_SIZE_64, align 4
  %151 = load i32, i32* %20, align 4
  %152 = sub nsw i32 %151, %150
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* @PAGE_SIZE_64, align 4
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %19, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %19, align 8
  br label %94

157:                                              ; preds = %94
  %158 = load i32, i32* @vm_paging_objects_mapped_slow, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @vm_paging_objects_mapped_slow, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* @PAGE_SIZE_64, align 4
  %162 = sdiv i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* @vm_paging_pages_mapped_slow, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* @vm_paging_pages_mapped_slow, align 8
  %166 = load i64, i64* @TRUE, align 8
  %167 = load i64*, i64** %17, align 8
  store i64 %166, i64* %167, align 8
  %168 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %168, i64* %9, align 8
  br label %169

169:                                              ; preds = %157, %106, %79, %45, %31
  %170 = load i64, i64* %9, align 8
  ret i64 %170
}

declare dso_local i64 @PHYSMAP_PTOV(i32) #1

declare dso_local i64 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_7__*) #1

declare dso_local i64 @vm_object_trunc_page(i64) #1

declare dso_local i32 @vm_map_round_page(i32, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i32 @vm_object_reference_locked(i32) #1

declare dso_local i32 @vm_object_unlock(i32) #1

declare dso_local i64 @vm_map_enter(i32, i64*, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @vm_object_lock(i32) #1

declare dso_local %struct.TYPE_7__* @vm_page_lookup(i32, i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @vm_map_remove(i32, i64, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PMAP_ENTER(i32, i64, %struct.TYPE_7__*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
