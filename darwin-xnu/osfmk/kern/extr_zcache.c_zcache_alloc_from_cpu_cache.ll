; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_alloc_from_cpu_cache.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_alloc_from_cpu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.zone_cache* }
%struct.zone_cache = type { i64, i32, %struct.zcc_per_cpu_cache* }
%struct.zcc_per_cpu_cache = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ASAN_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcache_alloc_from_cpu_cache(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zone_cache*, align 8
  %7 = alloca %struct.zcc_per_cpu_cache*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* null, i8** %5, align 8
  %8 = call i32 (...) @disable_preemption()
  %9 = call %struct.TYPE_7__* (...) @current_processor()
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.zone_cache*, %struct.zone_cache** %13, align 8
  store %struct.zone_cache* %14, %struct.zone_cache** %6, align 8
  %15 = load %struct.zone_cache*, %struct.zone_cache** %6, align 8
  %16 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %15, i32 0, i32 2
  %17 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %17, i64 %19
  store %struct.zcc_per_cpu_cache* %20, %struct.zcc_per_cpu_cache** %7, align 8
  %21 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %7, align 8
  %22 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @zcache_mag_has_elements(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %73

27:                                               ; preds = %1
  %28 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %7, align 8
  %29 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @zcache_mag_has_elements(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %7, align 8
  %35 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %34, i32 0, i32 1
  %36 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %7, align 8
  %37 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %36, i32 0, i32 0
  %38 = call i32 @zcache_swap_magazines(i32* %35, i32* %37)
  br label %73

39:                                               ; preds = %27
  %40 = load %struct.zone_cache*, %struct.zone_cache** %6, align 8
  %41 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %40, i32 0, i32 1
  %42 = call i32 @lck_mtx_lock_spin_always(i32* %41)
  %43 = load %struct.zone_cache*, %struct.zone_cache** %6, align 8
  %44 = call i64 @zcache_depot_available(%struct.zone_cache* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.zone_cache*, %struct.zone_cache** %6, align 8
  %48 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.zone_cache*, %struct.zone_cache** %6, align 8
  %53 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %7, align 8
  %54 = call i32 @zcache_mag_depot_swap_for_alloc(%struct.zone_cache* %52, %struct.zcc_per_cpu_cache* %53)
  %55 = load %struct.zone_cache*, %struct.zone_cache** %6, align 8
  %56 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %55, i32 0, i32 1
  %57 = call i32 @lck_mtx_unlock(i32* %56)
  br label %73

58:                                               ; preds = %46, %39
  %59 = load %struct.zone_cache*, %struct.zone_cache** %6, align 8
  %60 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %59, i32 0, i32 1
  %61 = call i32 @lck_mtx_unlock(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %7, align 8
  %64 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @zcache_mag_fill(%struct.TYPE_6__* %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %73

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  %72 = call i32 (...) @enable_preemption()
  store i32 0, i32* %2, align 4
  br label %88

73:                                               ; preds = %68, %51, %33, %26
  %74 = load %struct.zcc_per_cpu_cache*, %struct.zcc_per_cpu_cache** %7, align 8
  %75 = getelementptr inbounds %struct.zcc_per_cpu_cache, %struct.zcc_per_cpu_cache* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @zcache_mag_pop(i32 %76)
  store i8* %77, i8** %5, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = icmp ne i8* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @zcache_canary_validate(%struct.TYPE_6__* %82, i8* %83)
  %85 = call i32 (...) @enable_preemption()
  %86 = load i8*, i8** %5, align 8
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %73, %71
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @disable_preemption(...) #1

declare dso_local %struct.TYPE_7__* @current_processor(...) #1

declare dso_local i64 @zcache_mag_has_elements(i32) #1

declare dso_local i32 @zcache_swap_magazines(i32*, i32*) #1

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i64 @zcache_depot_available(%struct.zone_cache*) #1

declare dso_local i32 @zcache_mag_depot_swap_for_alloc(%struct.zone_cache*, %struct.zcc_per_cpu_cache*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @zcache_mag_fill(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local i8* @zcache_mag_pop(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zcache_canary_validate(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
