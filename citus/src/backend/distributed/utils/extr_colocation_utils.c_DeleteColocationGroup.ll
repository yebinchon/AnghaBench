; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_DeleteColocationGroup.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_colocation_utils.c_DeleteColocationGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_dist_colocation_colocationid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @DeleteColocationGroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DeleteColocationGroup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  %10 = call i32 (...) @DistColocationRelationId()
  %11 = load i32, i32* @RowExclusiveLock, align 4
  %12 = call i32* @heap_open(i32 %10, i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* @Anum_pg_dist_colocation_colocationid, align 4
  %15 = load i32, i32* @BTEqualStrategyNumber, align 4
  %16 = load i32, i32* @F_INT4EQ, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @UInt32GetDatum(i32 %17)
  %19 = call i32 @ScanKeyInit(i32* %13, i32 %14, i32 %15, i32 %16, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @InvalidOid, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %25 = call i32* @systable_beginscan(i32* %20, i32 %21, i32 %22, i32* null, i32 %23, i32* %24)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call %struct.TYPE_4__* @systable_getnext(i32* %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = call i64 @HeapTupleIsValid(%struct.TYPE_4__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %1
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @RelationGetReplicaIndex(i32* %32)
  %34 = load i32, i32* @AccessShareLock, align 4
  %35 = call i32* @index_open(i32 %33, i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @simple_heap_delete(i32* %36, i32* %38)
  %40 = call i32 (...) @DistColocationRelationId()
  %41 = call i32 @CitusInvalidateRelcacheByRelid(i32 %40)
  %42 = call i32 (...) @CommandCounterIncrement()
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @AccessShareLock, align 4
  %45 = call i32 @heap_close(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %31, %1
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @systable_endscan(i32* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @RowExclusiveLock, align 4
  %51 = call i32 @heap_close(i32* %49, i32 %50)
  ret void
}

declare dso_local i32* @heap_open(i32, i32) #1

declare dso_local i32 @DistColocationRelationId(...) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @UInt32GetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @systable_getnext(i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_4__*) #1

declare dso_local i32* @index_open(i32, i32) #1

declare dso_local i32 @RelationGetReplicaIndex(i32*) #1

declare dso_local i32 @simple_heap_delete(i32*, i32*) #1

declare dso_local i32 @CitusInvalidateRelcacheByRelid(i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @heap_close(i32*, i32) #1

declare dso_local i32 @systable_endscan(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
