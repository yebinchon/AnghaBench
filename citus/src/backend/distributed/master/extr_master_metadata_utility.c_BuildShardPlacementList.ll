; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_BuildShardPlacementList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_BuildShardPlacementList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_placement_shardid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT8EQ = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BuildShardPlacementList(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [1 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** @NIL, align 8
  store i32* %16, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %17 = call i32 (...) @DistPlacementRelationId()
  %18 = load i32, i32* @AccessShareLock, align 4
  %19 = call i32* @heap_open(i32 %17, i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %21 = load i32, i32* @Anum_pg_dist_placement_shardid, align 4
  %22 = load i32, i32* @BTEqualStrategyNumber, align 4
  %23 = load i32, i32* @F_INT8EQ, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @Int64GetDatum(i32 %24)
  %26 = call i32 @ScanKeyInit(i32* %20, i32 %21, i32 %22, i32 %23, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 (...) @DistPlacementShardidIndexId()
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %32 = call i32* @systable_beginscan(i32* %27, i32 %28, i32 %29, i32* null, i32 %30, i32* %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @systable_getnext(i32* %33)
  store i32* %34, i32** %10, align 8
  br label %35

35:                                               ; preds = %39, %1
  %36 = load i32*, i32** %10, align 8
  %37 = call i64 @HeapTupleIsValid(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @RelationGetDescr(i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @TupleToGroupShardPlacement(i32 %42, i32* %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = call i32* @lappend(i32* %45, i32* %46)
  store i32* %47, i32** %4, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32* @systable_getnext(i32* %48)
  store i32* %49, i32** %10, align 8
  br label %35

50:                                               ; preds = %35
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @systable_endscan(i32* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @NoLock, align 4
  %55 = call i32 @heap_close(i32* %53, i32 %54)
  %56 = load i32*, i32** %4, align 8
  ret i32* %56
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistPlacementRelationId(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int64GetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DistPlacementShardidIndexId(...) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @RelationGetDescr(i32*) #1

declare dso_local i32* @TupleToGroupShardPlacement(i32, i32*) #1

declare dso_local i32* @lappend(i32*, i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
