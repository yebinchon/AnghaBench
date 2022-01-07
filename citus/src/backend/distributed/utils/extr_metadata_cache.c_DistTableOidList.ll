; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_DistTableOidList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_DistTableOidList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@Anum_pg_dist_partition_logicalrelid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DistTableOidList() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [1 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %12 = call i32 (...) @DistPartitionRelationId()
  %13 = load i32, i32* @AccessShareLock, align 4
  %14 = call i32 @heap_open(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @InvalidOid, align 4
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %19 = call i32* @systable_beginscan(i32 %15, i32 %16, i32 0, i32* null, i32 %17, i32* %18)
  store i32* %19, i32** %1, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32* @RelationGetDescr(i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = call i32* @systable_getnext(i32* %22)
  store i32* %23, i32** %4, align 8
  br label %24

24:                                               ; preds = %28, %0
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @HeapTupleIsValid(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* @InvalidOid, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @Anum_pg_dist_partition_logicalrelid, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @heap_getattr(i32* %30, i32 %31, i32* %32, i32* %8)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @DatumGetObjectId(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32* @lappend_oid(i32* %36, i32 %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = call i32* @systable_getnext(i32* %39)
  store i32* %40, i32** %4, align 8
  br label %24

41:                                               ; preds = %24
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @systable_endscan(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @AccessShareLock, align 4
  %46 = call i32 @heap_close(i32 %44, i32 %45)
  %47 = load i32*, i32** %5, align 8
  ret i32* %47
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistPartitionRelationId(...) #1

declare dso_local i32* @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @RelationGetDescr(i32) #1

declare dso_local i32* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @heap_getattr(i32*, i32, i32*, i32*) #1

declare dso_local i32 @DatumGetObjectId(i32) #1

declare dso_local i32* @lappend_oid(i32*, i32) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
