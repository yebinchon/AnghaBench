; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_phantom_cache.c_vm_phantom_cache_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_phantom_cache.c_vm_phantom_cache_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@vm_phantom_cache_num_entries = common dso_local global i64 0, align 8
@pg_masks = common dso_local global i32* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VM_GHOST_PAGE_MASK = common dso_local global i64 0, align 8
@phantom_cache_stats = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@vm_pageout_vminfo = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@sample_period_ghost_found_count_ssd = common dso_local global i32 0, align 4
@sample_period_ghost_found_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_phantom_cache_update(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = call %struct.TYPE_13__* @VM_PAGE_OBJECT(%struct.TYPE_12__* %6)
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %5, align 8
  %8 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %9 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_13__* %10)
  %12 = load i64, i64* @vm_phantom_cache_num_entries, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %50

15:                                               ; preds = %1
  %16 = load i32*, i32** @pg_masks, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = lshr i64 %19, %20
  %22 = load i64, i64* @VM_GHOST_PAGE_MASK, align 8
  %23 = and i64 %21, %22
  %24 = getelementptr inbounds i32, i32* %16, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.TYPE_14__* @vm_phantom_cache_lookup_ghost(%struct.TYPE_12__* %26, i32 %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %4, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %15
  %31 = load i32, i32* %3, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @phantom_cache_stats, i32 0, i32 0), align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @phantom_cache_stats, i32 0, i32 0), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @vm_pageout_vminfo, i32 0, i32 0), align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @vm_pageout_vminfo, i32 0, i32 0), align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = call i32 @OSAddAtomic(i32 1, i32* @sample_period_ghost_found_count_ssd)
  br label %49

47:                                               ; preds = %30
  %48 = call i32 @OSAddAtomic(i32 1, i32* @sample_period_ghost_found_count)
  br label %49

49:                                               ; preds = %47, %45
  br label %50

50:                                               ; preds = %14, %49, %15
  ret void
}

declare dso_local %struct.TYPE_13__* @VM_PAGE_OBJECT(%struct.TYPE_12__*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @vm_phantom_cache_lookup_ghost(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
