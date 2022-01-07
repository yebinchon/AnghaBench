; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_current_seg_filled.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_current_seg_filled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i32, i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }

@C_ON_AGE_Q = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@compressor_map = common dso_local global i32 0, align 4
@KMA_COMPRESSOR = common dso_local global i32 0, align 4
@C_SEG_BUFSIZE = common dso_local global i32 0, align 4
@vm_darkwake_mode = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@C_ON_SWAPOUT_Q = common dso_local global i32 0, align 4
@c_list_lock = common dso_local global i32* null, align 8
@c_generation_id = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@c_swapout_list_head = common dso_local global i32 0, align 4
@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@VM_CONFIG_FREEZER_SWAP_IS_ACTIVE = common dso_local global i64 0, align 8
@VM_CONFIG_SWAP_IS_PRESENT = common dso_local global i64 0, align 8
@c_freezer_swapout_page_count = common dso_local global i32 0, align 4
@freezer_chead = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_12__**)* @c_current_seg_filled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_current_seg_filled(%struct.TYPE_12__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %4, align 8
  %11 = load i32, i32* @C_ON_AGE_Q, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = call i32 @C_SEG_OFFSET_TO_BYTES(i64 %19)
  %21 = call i64 @trunc_page_32(i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @C_SEG_OFFSET_TO_BYTES(i64 %27)
  %29 = call i32 @round_page_32(i32 %28)
  %30 = call i64 @C_SEG_BYTES_TO_OFFSET(i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 5
  %33 = call i32 @lck_mtx_unlock_always(i32* %32)
  %34 = load i32, i32* @compressor_map, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = ptrtoint i32* %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* @KMA_COMPRESSOR, align 4
  %44 = call i32 @kernel_memory_depopulate(i32 %34, i32 %41, i64 %42, i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 5
  %47 = call i32 @lck_mtx_lock_spin_always(i32* %46)
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %24, %2
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @C_SEG_OFFSET_TO_BYTES(i64 %54)
  %56 = load i32, i32* @C_SEG_BUFSIZE, align 4
  %57 = icmp sle i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i64, i64* @vm_darkwake_mode, align 8
  %61 = load i64, i64* @TRUE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load i32, i32* @C_ON_SWAPOUT_Q, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %63, %51
  %67 = call i32 @clock_get_system_nanotime(i64* %8, i32* %9)
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load i32*, i32** @c_list_lock, align 8
  %72 = call i32 @lck_mtx_lock_spin_always(i32* %71)
  %73 = load i32, i32* @c_generation_id, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @c_generation_id, align 4
  %75 = sext i32 %73 to i64
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @c_seg_switch_state(%struct.TYPE_12__* %78, i32 %79, i64 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @C_ON_AGE_Q, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %66
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = call i64 @C_SEG_UNUSED_BYTES(%struct.TYPE_12__* %88)
  %90 = load i64, i64* @PAGE_SIZE, align 8
  %91 = icmp sge i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = load i64, i64* @TRUE, align 8
  %95 = call i32 @c_seg_need_delayed_compaction(%struct.TYPE_12__* %93, i64 %94)
  br label %96

96:                                               ; preds = %92, %87, %66
  %97 = load i32*, i32** @c_list_lock, align 8
  %98 = call i32 @lck_mtx_unlock_always(i32* %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @C_ON_SWAPOUT_Q, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = call i32 @thread_wakeup(i32 ptrtoint (i32* @c_swapout_list_head to i32))
  br label %106

106:                                              ; preds = %104, %96
  %107 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %107, align 8
  ret void
}

declare dso_local i64 @trunc_page_32(i32) #1

declare dso_local i32 @C_SEG_OFFSET_TO_BYTES(i64) #1

declare dso_local i64 @C_SEG_BYTES_TO_OFFSET(i32) #1

declare dso_local i32 @round_page_32(i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i32 @kernel_memory_depopulate(i32, i32, i64, i32) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clock_get_system_nanotime(i64*, i32*) #1

declare dso_local i32 @c_seg_switch_state(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i64 @C_SEG_UNUSED_BYTES(%struct.TYPE_12__*) #1

declare dso_local i32 @c_seg_need_delayed_compaction(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
