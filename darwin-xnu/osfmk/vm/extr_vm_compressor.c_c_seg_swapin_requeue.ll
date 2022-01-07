; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_swapin_requeue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_swapin_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, %struct.TYPE_7__, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32* }

@c_list_lock = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@c_overage_swapped_count = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@C_ON_SWAPPEDIN_Q = common dso_local global i32 0, align 4
@C_ON_AGE_Q = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@C_ON_BAD_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_seg_swapin_requeue(%struct.TYPE_8__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 @clock_get_system_nanotime(i64* %9, i32* %10)
  %12 = load i32*, i32** @c_list_lock, align 8
  %13 = call i32 @lck_mtx_lock_spin_always(i32* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 7
  %16 = call i32 @lck_mtx_lock_spin_always(i32* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @assert(i64 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @assert(i64 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TRUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i32, i32* @c_overage_swapped_count, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* @c_overage_swapped_count, align 4
  %35 = load i64, i64* @FALSE, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %4
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @TRUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @TRUE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = load i32, i32* @C_ON_SWAPPEDIN_Q, align 4
  %49 = load i64, i64* @FALSE, align 8
  %50 = call i32 @c_seg_switch_state(%struct.TYPE_8__* %47, i32 %48, i64 %49)
  br label %56

51:                                               ; preds = %42
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = load i32, i32* @C_ON_AGE_Q, align 4
  %54 = load i64, i64* @FALSE, align 8
  %55 = call i32 @c_seg_switch_state(%struct.TYPE_8__* %52, i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @TRUE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = call i64 @C_SEG_UNUSED_BYTES(%struct.TYPE_8__* %66)
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = load i64, i64* @TRUE, align 8
  %73 = call i32 @c_seg_need_delayed_compaction(%struct.TYPE_8__* %71, i64 %72)
  br label %74

74:                                               ; preds = %70, %65, %60, %56
  br label %86

75:                                               ; preds = %38
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = call i32 @C_SEG_BYTES_TO_OFFSET(i32 0)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load i32, i32* @C_ON_BAD_Q, align 4
  %84 = load i64, i64* @FALSE, align 8
  %85 = call i32 @c_seg_switch_state(%struct.TYPE_8__* %82, i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %75, %74
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load i32*, i32** @c_list_lock, align 8
  %91 = call i32 @lck_mtx_unlock_always(i32* %90)
  ret void
}

declare dso_local i32 @clock_get_system_nanotime(i64*, i32*) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @c_seg_switch_state(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i64 @C_SEG_UNUSED_BYTES(%struct.TYPE_8__*) #1

declare dso_local i32 @c_seg_need_delayed_compaction(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @C_SEG_BYTES_TO_OFFSET(i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
