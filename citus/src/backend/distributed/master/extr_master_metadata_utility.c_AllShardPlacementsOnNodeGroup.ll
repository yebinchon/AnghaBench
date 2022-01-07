; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_AllShardPlacementsOnNodeGroup.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_AllShardPlacementsOnNodeGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_placement_groupid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AllShardPlacementsOnNodeGroup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %13 = call i32 (...) @DistPlacementRelationId()
  %14 = load i32, i32* @AccessShareLock, align 4
  %15 = call i32* @heap_open(i32 %13, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* @Anum_pg_dist_placement_groupid, align 4
  %18 = load i32, i32* @BTEqualStrategyNumber, align 4
  %19 = load i32, i32* @F_INT4EQ, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @Int32GetDatum(i32 %20)
  %22 = call i32 @ScanKeyInit(i32* %16, i32 %17, i32 %18, i32 %19, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (...) @DistPlacementGroupidIndexId()
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %28 = call i32* @systable_beginscan(i32* %23, i32 %24, i32 %25, i32* null, i32 %26, i32* %27)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @systable_getnext(i32* %29)
  store i32* %30, i32** %9, align 8
  br label %31

31:                                               ; preds = %35, %1
  %32 = load i32*, i32** %9, align 8
  %33 = call i64 @HeapTupleIsValid(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @RelationGetDescr(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @TupleToGroupShardPlacement(i32 %38, i32* %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32* @lappend(i32* %41, i32* %42)
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32* @systable_getnext(i32* %44)
  store i32* %45, i32** %9, align 8
  br label %31

46:                                               ; preds = %31
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @systable_endscan(i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @NoLock, align 4
  %51 = call i32 @heap_close(i32* %49, i32 %50)
  %52 = load i32*, i32** %3, align 8
  ret i32* %52
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistPlacementRelationId(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DistPlacementGroupidIndexId(...) #1

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
