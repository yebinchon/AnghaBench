; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_drain_depot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_drain_depot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.zone_cache* }
%struct.zone_cache = type { i32, i32, i32* }

@ZCACHE_DEPOT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcache_drain_depot(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.zone_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.zone_cache*, %struct.zone_cache** %7, align 8
  store %struct.zone_cache* %8, %struct.zone_cache** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %10 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %9, i32 0, i32 1
  %11 = call i32 @lck_mtx_lock_spin_always(i32* %10)
  %12 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %13 = call i32 @zcache_depot_available(%struct.zone_cache* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %17 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %1
  %21 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %22 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %21, i32 0, i32 1
  %23 = call i32 @lck_mtx_unlock(i32* %22)
  br label %60

24:                                               ; preds = %15
  %25 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %26 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @ZCACHE_DEPOT_INVALID, align 4
  %29 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %30 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %32 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %31, i32 0, i32 1
  %33 = call i32 @lck_mtx_unlock(i32* %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %48, %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %41 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @zcache_mag_drain(%struct.TYPE_4__* %39, i32 %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %34

51:                                               ; preds = %34
  %52 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %53 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %52, i32 0, i32 1
  %54 = call i32 @lck_mtx_lock_spin_always(i32* %53)
  %55 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %56 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.zone_cache*, %struct.zone_cache** %3, align 8
  %58 = getelementptr inbounds %struct.zone_cache, %struct.zone_cache* %57, i32 0, i32 1
  %59 = call i32 @lck_mtx_unlock(i32* %58)
  br label %60

60:                                               ; preds = %51, %20
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin_always(i32*) #1

declare dso_local i32 @zcache_depot_available(%struct.zone_cache*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @zcache_mag_drain(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
