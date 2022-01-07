; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_DeletePartitionRow.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_metadata_utility.c_DeletePartitionRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_dist_partition_logicalrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not find valid entry for partition %d\00", align 1
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeletePartitionRow(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = call i32 (...) @DistPartitionRelationId()
  %9 = load i32, i32* @RowExclusiveLock, align 4
  %10 = call i32* @heap_open(i32 %8, i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %12 = load i32, i32* @Anum_pg_dist_partition_logicalrelid, align 4
  %13 = load i32, i32* @BTEqualStrategyNumber, align 4
  %14 = load i32, i32* @F_OIDEQ, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ObjectIdGetDatum(i32 %15)
  %17 = call i32 @ScanKeyInit(i32* %11, i32 %12, i32 %13, i32 %14, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @InvalidOid, align 4
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %22 = call i32* @systable_beginscan(i32* %18, i32 %19, i32 0, i32* null, i32 %20, i32* %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call %struct.TYPE_4__* @systable_getnext(i32* %23)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = call i32 @HeapTupleIsValid(%struct.TYPE_4__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @ereport(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load i32*, i32** %3, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @simple_heap_delete(i32* %34, i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @systable_endscan(i32* %38)
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @CitusInvalidateRelcacheByRelid(i32 %40)
  %42 = call i32 (...) @CommandCounterIncrement()
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @NoLock, align 4
  %45 = call i32 @heap_close(i32* %43, i32 %44)
  ret void
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistPartitionRelationId(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @systable_getnext(i32*) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_4__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @simple_heap_delete(i32*, i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @CitusInvalidateRelcacheByRelid(i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @heap_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
