; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapout_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_backing_store.c_vm_swapout_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i64, i32, i64, i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }

@TRUE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@compressor_map = common dso_local global i32 0, align 4
@KMA_COMPRESSOR = common dso_local global i32 0, align 4
@c_list_lock = common dso_local global i32* null, align 8
@C_ON_SWAPPEDOUT_Q = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@hibernate_flushing = common dso_local global i64 0, align 8
@first_c_segment_to_warm_generation_id = common dso_local global i64 0, align 8
@last_c_segment_to_warm_generation_id = common dso_local global i64 0, align 8
@C_ON_SWAPPEDOUTSPARSE_Q = common dso_local global i32 0, align 4
@swapouts = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@compressor_bytes_used = common dso_local global i32 0, align 4
@c_overage_swapped_count = common dso_local global i32 0, align 4
@C_ON_AGE_Q = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32, i64)* @vm_swapout_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_swapout_finish(%struct.TYPE_11__* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* @TRUE, align 8
  %12 = call i32 @PAGE_REPLACEMENT_DISALLOWED(i64 %11)
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @KERN_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %4
  %17 = load i32, i32* @compressor_map, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @KMA_COMPRESSOR, align 4
  %25 = call i32 @kernel_memory_depopulate(i32 %17, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %16, %4
  %27 = load i32*, i32** @c_list_lock, align 8
  %28 = call i32 @lck_mtx_lock_spin_always(i32* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = call i32 @lck_mtx_lock_spin_always(i32* %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %26
  %36 = load i32, i32* @C_ON_SWAPPEDOUT_Q, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* @hibernate_flushing, align 8
  %39 = load i64, i64* @TRUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @first_c_segment_to_warm_generation_id, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @last_c_segment_to_warm_generation_id, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %53, %47, %41
  br label %63

56:                                               ; preds = %35
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = call i64 @C_SEG_ONDISK_IS_SPARSE(%struct.TYPE_11__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @C_ON_SWAPPEDOUTSPARSE_Q, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @c_seg_switch_state(%struct.TYPE_11__* %64, i32 %65, i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @swapouts, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @PAGE_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = call i32 @VM_STAT_INCR_BY(i32 %72, i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %63
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 0, %84
  %86 = call i32 @OSAddAtomic64(i32 %85, i32* @compressor_bytes_used)
  br label %87

87:                                               ; preds = %81, %63
  br label %119

88:                                               ; preds = %26
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TRUE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i64, i64* @FALSE, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* @c_overage_swapped_count, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* @c_overage_swapped_count, align 4
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = load i32, i32* @C_ON_AGE_Q, align 4
  %103 = load i64, i64* @FALSE, align 8
  %104 = call i32 @c_seg_switch_state(%struct.TYPE_11__* %101, i32 %102, i64 %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %100
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %111 = call i64 @C_SEG_UNUSED_BYTES(%struct.TYPE_11__* %110)
  %112 = load i64, i64* @PAGE_SIZE, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = load i64, i64* @TRUE, align 8
  %117 = call i32 @c_seg_need_delayed_compaction(%struct.TYPE_11__* %115, i64 %116)
  br label %118

118:                                              ; preds = %114, %109, %100
  br label %119

119:                                              ; preds = %118, %87
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @assert(i64 %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @assert(i64 %126)
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  %130 = load i32*, i32** @c_list_lock, align 8
  %131 = call i32 @lck_mtx_unlock_always(i32* %130)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = call i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_11__* %132)
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = call i32 @lck_mtx_unlock_always(i32* %135)
  %137 = load i64, i64* @FALSE, align 8
  %138 = call i32 @PAGE_REPLACEMENT_DISALLOWED(i64 %137)
  ret void
}

declare dso_local i32 @PAGE_REPLACEMENT_DISALLOWED(i64) #1

declare dso_local i32 @kernel_memory_depopulate(i32, i32, i32, i32) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i64 @C_SEG_ONDISK_IS_SPARSE(%struct.TYPE_11__*) #1

declare dso_local i32 @c_seg_switch_state(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i32 @VM_STAT_INCR_BY(i32, i32) #1

declare dso_local i32 @OSAddAtomic64(i32, i32*) #1

declare dso_local i64 @C_SEG_UNUSED_BYTES(%struct.TYPE_11__*) #1

declare dso_local i32 @c_seg_need_delayed_compaction(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i32 @C_SEG_WAKEUP_DONE(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
