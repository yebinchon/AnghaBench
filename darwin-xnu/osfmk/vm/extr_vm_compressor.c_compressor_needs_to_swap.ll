; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_compressor_needs_to_swap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_compressor_needs_to_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@vm_swapout_ripe_segments = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@c_overage_swapped_count = common dso_local global i64 0, align 8
@c_overage_swapped_limit = common dso_local global i64 0, align 8
@c_list_lock = common dso_local global i32 0, align 4
@c_age_list_head = common dso_local global i32 0, align 4
@vm_ripe_target_age = common dso_local global i64 0, align 8
@VM_CONFIG_SWAP_IS_ACTIVE = common dso_local global i64 0, align 8
@vm_pageout_queue_external = common dso_local global i32 0, align 4
@vm_page_anonymous_count = common dso_local global i32 0, align 4
@vm_page_inactive_count = common dso_local global i32 0, align 4
@vm_page_free_count = common dso_local global i32 0, align 4
@vm_page_free_reserved = common dso_local global i32 0, align 4
@COMPRESSOR_FREE_RESERVED_LIMIT = common dso_local global i32 0, align 4
@swapout_target_age = common dso_local global i64 0, align 8
@compressor_thrashing_induced_jetsam = common dso_local global i32 0, align 4
@filecache_thrashing_induced_jetsam = common dso_local global i32 0, align 4
@vm_compressor_thrashing_detected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @compressor_needs_to_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compressor_needs_to_swap() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* @vm_swapout_ripe_segments, align 8
  %10 = load i64, i64* @TRUE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %0
  %13 = load i64, i64* @c_overage_swapped_count, align 8
  %14 = load i64, i64* @c_overage_swapped_limit, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = call i32 @clock_get_system_nanotime(i64* %4, i32* %6)
  store i64 0, i64* %5, align 8
  %18 = load i32, i32* @c_list_lock, align 4
  %19 = call i32 @lck_mtx_lock_spin_always(i32 %18)
  %20 = call i32 @queue_empty(i32* @c_age_list_head)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = call i64 @queue_first(i32* @c_age_list_head)
  %24 = inttoptr i64 %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %22, %16
  %31 = load i32, i32* @c_list_lock, align 4
  %32 = call i32 @lck_mtx_unlock_always(i32 %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @vm_ripe_target_age, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @TRUE, align 8
  store i64 %37, i64* %1, align 8
  br label %102

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %12, %0
  %40 = load i64, i64* @VM_CONFIG_SWAP_IS_ACTIVE, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = call i64 (...) @COMPRESSOR_NEEDS_TO_SWAP()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, i64* @TRUE, align 8
  store i64 %46, i64* %1, align 8
  br label %102

47:                                               ; preds = %42
  %48 = call i64 @VM_PAGE_Q_THROTTLED(i32* @vm_pageout_queue_external)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @vm_page_anonymous_count, align 4
  %52 = load i32, i32* @vm_page_inactive_count, align 4
  %53 = sdiv i32 %52, 20
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %1, align 8
  br label %102

57:                                               ; preds = %50, %47
  %58 = load i32, i32* @vm_page_free_count, align 4
  %59 = load i32, i32* @vm_page_free_reserved, align 4
  %60 = load i32, i32* @COMPRESSOR_FREE_RESERVED_LIMIT, align 4
  %61 = mul nsw i32 %60, 2
  %62 = sub nsw i32 %59, %61
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %1, align 8
  br label %102

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %39
  %68 = call i32 (...) @compute_swapout_target_age()
  %69 = load i64, i64* @swapout_target_age, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load i32, i32* @c_list_lock, align 4
  %73 = call i32 @lck_mtx_lock_spin_always(i32 %72)
  %74 = call i32 @queue_empty(i32* @c_age_list_head)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = call i64 @queue_first(i32* @c_age_list_head)
  %78 = inttoptr i64 %77 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %78, %struct.TYPE_2__** %7, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @swapout_target_age, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i64 0, i64* @swapout_target_age, align 8
  br label %85

85:                                               ; preds = %84, %76
  br label %86

86:                                               ; preds = %85, %71
  %87 = load i32, i32* @c_list_lock, align 4
  %88 = call i32 @lck_mtx_unlock_always(i32 %87)
  br label %89

89:                                               ; preds = %86, %67
  %90 = load i64, i64* @swapout_target_age, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i64, i64* @TRUE, align 8
  store i64 %93, i64* %2, align 8
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i64, i64* %2, align 8
  %96 = load i64, i64* @FALSE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i64 (...) @vm_compressor_needs_to_major_compact()
  store i64 %99, i64* %2, align 8
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i64, i64* %2, align 8
  store i64 %101, i64* %1, align 8
  br label %102

102:                                              ; preds = %100, %64, %55, %45, %36
  %103 = load i64, i64* %1, align 8
  ret i64 %103
}

declare dso_local i32 @clock_get_system_nanotime(i64*, i32*) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

declare dso_local i32 @queue_empty(i32*) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

declare dso_local i64 @COMPRESSOR_NEEDS_TO_SWAP(...) #1

declare dso_local i64 @VM_PAGE_Q_THROTTLED(i32*) #1

declare dso_local i32 @compute_swapout_target_age(...) #1

declare dso_local i64 @vm_compressor_needs_to_major_compact(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
