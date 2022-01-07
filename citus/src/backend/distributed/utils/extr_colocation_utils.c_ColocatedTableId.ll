; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_ColocatedTableId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_ColocatedTableId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@INVALID_COLOCATION_ID = common dso_local global i64 0, align 8
@Anum_pg_dist_partition_colocationid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_partition_logicalrelid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ColocatedTableId(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %14 = load i64, i64* @InvalidOid, align 8
  store i64 %14, i64* %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %72

20:                                               ; preds = %1
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %22 = load i32, i32* @Anum_pg_dist_partition_colocationid, align 4
  %23 = load i32, i32* @BTEqualStrategyNumber, align 4
  %24 = load i32, i32* @F_INT4EQ, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @ObjectIdGetDatum(i64 %25)
  %27 = call i32 @ScanKeyInit(i32* %21, i32 %22, i32 %23, i32 %24, i32 %26)
  %28 = call i32 (...) @DistPartitionRelationId()
  %29 = load i32, i32* @AccessShareLock, align 4
  %30 = call i32* @heap_open(i32 %28, i32 %29)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @RelationGetDescr(i32* %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 (...) @DistPartitionColocationidIndexId()
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %12, align 4
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %38 = call i32* @systable_beginscan(i32* %33, i32 %34, i32 %35, i32* null, i32 %36, i32* %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32* @systable_getnext(i32* %39)
  store i32* %40, i32** %8, align 8
  br label %41

41:                                               ; preds = %61, %20
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @HeapTupleIsValid(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  store i32* null, i32** %13, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @Anum_pg_dist_partition_logicalrelid, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @heap_getattr(i32* %46, i32 %47, i32* %48, i32* %10)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* @AccessShareLock, align 4
  %52 = call i32 @LockRelationOid(i64 %50, i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = call i32* @RelationIdGetRelation(i64 %53)
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i64 @RelationIsValid(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @RelationClose(i32* %59)
  br label %65

61:                                               ; preds = %45
  %62 = load i64, i64* @InvalidOid, align 8
  store i64 %62, i64* %4, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32* @systable_getnext(i32* %63)
  store i32* %64, i32** %8, align 8
  br label %41

65:                                               ; preds = %58, %41
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @systable_endscan(i32* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* @AccessShareLock, align 4
  %70 = call i32 @heap_close(i32* %68, i32 %69)
  %71 = load i64, i64* %4, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %65, %18
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistPartitionRelationId(...) #1

declare dso_local i32* @RelationGetDescr(i32*) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @DistPartitionColocationidIndexId(...) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i64 @heap_getattr(i32*, i32, i32*, i32*) #1

declare dso_local i32 @LockRelationOid(i64, i32) #1

declare dso_local i32* @RelationIdGetRelation(i64) #1

declare dso_local i64 @RelationIsValid(i32*) #1

declare dso_local i32 @RelationClose(i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
