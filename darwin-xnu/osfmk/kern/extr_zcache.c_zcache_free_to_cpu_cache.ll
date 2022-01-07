; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_free_to_cpu_cache.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_free_to_cpu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.zone_cache* }
%struct.zone_cache = type { i64, i32, %struct.zcc_per_cpu_cache* }
%struct.zcc_per_cpu_cache = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@depot_element_count = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ASAN_HEAP_FREED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcache_free_to_cpu_cache(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zone_cache*, align 8
  %8 = alloca %struct.zcc_per_cpu_cache*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = call i32 (...) @disable_preemption()
  %10 = call %struct.TYPE_7__* (...) @current_processor()
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.zone_cache*, %struct.zone_cache** %14, align 8
  store %struct.zone_cache* %15, %struct.zone_cache** %7, align 8
  %16 = load %struct.zone_cache*, %struct.zone_cache** %7, align 8
  %17 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %16, i32 0, i32 2
  %18 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %18, i64 %20
  store %struct.zcc_per_cpu_cache* %21, %struct.zcc_per_cpu_cache** %8, align 8
  %22 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %8, align 8
  %23 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @zcache_mag_has_space(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %80

28:                                               ; preds = %2
  %29 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %8, align 8
  %30 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @zcache_mag_has_space(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %8, align 8
  %36 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %35, i32 0, i32 1
  %37 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %8, align 8
  %38 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %37, i32 0, i32 0
  %39 = call i32 @zcache_swap_magazines(i32* %36, i32* %38)
  br label %80

40:                                               ; preds = %28
  %41 = load %struct.zone_cache*, %struct.zone_cache** %7, align 8
  %42 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %41, i32 0, i32 1
  %43 = call i32 @lck_mtx_lock_spin_always(i32* %42)
  %44 = load %struct.zone_cache*, %struct.zone_cache** %7, align 8
  %45 = call i64 @zcache_depot_available(%struct.zone_cache* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load %struct.zone_cache*, %struct.zone_cache** %7, align 8
  %49 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @depot_element_count, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.zone_cache*, %struct.zone_cache** %7, align 8
  %55 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %8, align 8
  %56 = call i32 @zcache_mag_depot_swap_for_free(%struct.zone_cache* %54, %struct.zcc_per_cpu_cache* %55)
  %57 = load %struct.zone_cache*, %struct.zone_cache** %7, align 8
  %58 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %57, i32 0, i32 1
  %59 = call i32 @lck_mtx_unlock(i32* %58)
  br label %80

60:                                               ; preds = %47, %40
  %61 = load %struct.zone_cache*, %struct.zone_cache** %7, align 8
  %62 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %61, i32 0, i32 1
  %63 = call i32 @lck_mtx_unlock(i32* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %8, align 8
  %66 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @zcache_mag_drain(%struct.TYPE_6__* %64, i32 %67)
  %69 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %8, align 8
  %70 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @zcache_mag_has_space(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  br label %80

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = call i32 (...) @enable_preemption()
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %96

80:                                               ; preds = %74, %53, %34, %27
  %81 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %8, align 8
  %82 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @zcache_mag_has_space(i32 %83)
  %85 = call i32 @assert(i64 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = call i32 @zcache_canary_add(%struct.TYPE_6__* %86, i8* %87)
  %89 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %8, align 8
  %90 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @zcache_mag_push(i32 %91, i8* %92)
  %94 = call i32 (...) @enable_preemption()
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %80, %77
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @disable_preemption(...) #1

declare dso_local %struct.TYPE_7__* @current_processor(...) #1

declare dso_local i64 @zcache_mag_has_space(i32) #1

declare dso_local i32 @zcache_swap_magazines(i32*, i32*) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i64 @zcache_depot_available(%struct.zone_cache*) #1

declare dso_local i32 @zcache_mag_depot_swap_for_free(%struct.zone_cache*, %struct.zcc_per_cpu_cache*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @zcache_mag_drain(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @zcache_canary_add(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @zcache_mag_push(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
