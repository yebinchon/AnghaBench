; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_swapin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_swapin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i32, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@compressor_map = common dso_local global i32 0, align 4
@KMA_COMPRESSOR = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_COMPRESSOR = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@compressor_bytes_used = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_seg_swapin(%struct.TYPE_13__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = call i32 @C_SEG_IS_ONDISK(%struct.TYPE_13__* %11)
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = call i32 @c_seg_trim_tail(%struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @C_SEG_OFFSET_TO_BYTES(i32 %18)
  %20 = call i64 @round_page_32(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = call i32 @C_SEG_BUSY(%struct.TYPE_13__* %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = call i32 (...) @set_thread_rwlock_boost()
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = call i32 @lck_mtx_unlock_always(i32* %31)
  %33 = load i64, i64* @FALSE, align 8
  %34 = call i32 @PAGE_REPLACEMENT_DISALLOWED(i64 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @C_SEG_BUFFER_ADDRESS(i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  %44 = load i32, i32* @compressor_map, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* @KMA_COMPRESSOR, align 4
  %48 = load i32, i32* @VM_KERN_MEMORY_COMPRESSOR, align 4
  %49 = call i32 @kernel_memory_populate(i32 %44, i64 %45, i64 %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @vm_swap_get(%struct.TYPE_13__* %50, i32 %51, i64 %52)
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %3
  %57 = load i64, i64* @TRUE, align 8
  %58 = call i32 @PAGE_REPLACEMENT_DISALLOWED(i64 %57)
  %59 = load i32, i32* @compressor_map, align 4
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* @KMA_COMPRESSOR, align 4
  %63 = call i32 @kernel_memory_depopulate(i32 %59, i64 %60, i64 %61, i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = load i64, i64* @FALSE, align 8
  %66 = load i64, i64* @TRUE, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @c_seg_swapin_requeue(%struct.TYPE_13__* %64, i64 %65, i64 %66, i64 %67)
  br label %104

69:                                               ; preds = %3
  %70 = load i64, i64* @TRUE, align 8
  %71 = call i32 @PAGE_REPLACEMENT_DISALLOWED(i64 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = load i64, i64* @TRUE, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @TRUE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i64, i64* @FALSE, align 8
  br label %81

79:                                               ; preds = %69
  %80 = load i64, i64* @TRUE, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i64 [ %78, %77 ], [ %80, %79 ]
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @c_seg_swapin_requeue(%struct.TYPE_13__* %72, i64 %73, i64 %82, i64 %83)
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @OSAddAtomic64(i32 %87, i32* @compressor_bytes_used)
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @TRUE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %81
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = load i64, i64* @FALSE, align 8
  %95 = call i64 @c_seg_minor_compaction_and_unlock(%struct.TYPE_13__* %93, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 (...) @clear_thread_rwlock_boost()
  store i32 1, i32* %4, align 4
  br label %108

99:                                               ; preds = %92
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 3
  %102 = call i32 @lck_mtx_lock_spin_always(i32* %101)
  br label %103

103:                                              ; preds = %99, %81
  br label %104

104:                                              ; preds = %103, %56
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = call i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_13__* %105)
  %107 = call i32 (...) @clear_thread_rwlock_boost()
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @C_SEG_IS_ONDISK(%struct.TYPE_13__*) #1

declare dso_local i32 @c_seg_trim_tail(%struct.TYPE_13__*) #1

declare dso_local i64 @round_page_32(i32) #1

declare dso_local i32 @C_SEG_OFFSET_TO_BYTES(i32) #1

declare dso_local i32 @C_SEG_BUSY(%struct.TYPE_13__*) #1

declare dso_local i32 @set_thread_rwlock_boost(...) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i32 @PAGE_REPLACEMENT_DISALLOWED(i64) #1

declare dso_local i64 @C_SEG_BUFFER_ADDRESS(i32) #1

declare dso_local i32 @kernel_memory_populate(i32, i64, i64, i32, i32) #1

declare dso_local i64 @vm_swap_get(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i32 @kernel_memory_depopulate(i32, i64, i64, i32) #1

declare dso_local i32 @c_seg_swapin_requeue(%struct.TYPE_13__*, i64, i64, i64) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i64 @c_seg_minor_compaction_and_unlock(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @clear_thread_rwlock_boost(...) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
