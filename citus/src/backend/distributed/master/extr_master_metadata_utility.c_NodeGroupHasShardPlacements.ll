; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_NodeGroupHasShardPlacements.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_NodeGroupHasShardPlacements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_placement_groupid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@Anum_pg_dist_placement_shardstate = common dso_local global i32 0, align 4
@FILE_FINALIZED = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NodeGroupHasShardPlacements(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 2, i32 1
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %16 = call i32 (...) @DistPlacementRelationId()
  %17 = load i32, i32* @AccessShareLock, align 4
  %18 = call i32 @heap_open(i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %20 = load i32, i32* @Anum_pg_dist_placement_groupid, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_INT4EQ, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @Int32GetDatum(i32 %23)
  %25 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %30 = load i32, i32* @Anum_pg_dist_placement_shardstate, align 4
  %31 = load i32, i32* @BTEqualStrategyNumber, align 4
  %32 = load i32, i32* @F_INT4EQ, align 4
  %33 = load i32, i32* @FILE_FINALIZED, align 4
  %34 = call i32 @Int32GetDatum(i32 %33)
  %35 = call i32 @ScanKeyInit(i32* %29, i32 %30, i32 %31, i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %28, %2
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (...) @DistPlacementGroupidIndexId()
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %41 = call i32* @systable_beginscan(i32 %37, i32 %38, i32 0, i32* null, i32 %39, i32* %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32* @systable_getnext(i32* %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @HeapTupleIsValid(i32* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @systable_endscan(i32* %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @NoLock, align 4
  %50 = call i32 @heap_close(i32 %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistPlacementRelationId(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DistPlacementGroupidIndexId(...) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i32 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
