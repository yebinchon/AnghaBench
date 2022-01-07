; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_DeleteNodeRow.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_DeleteNodeRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodename = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_TEXTEQ = common dso_local global i32 0, align 4
@Anum_pg_dist_node_nodeport = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not find valid entry for node \22%s:%d\22\00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @DeleteNodeRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DeleteNodeRow(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = call i32 (...) @DistNodeRelationId()
  %13 = load i32, i32* @RowExclusiveLock, align 4
  %14 = call i32 @heap_open(i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @RelationGetReplicaIndex(i32 %15)
  %17 = load i32, i32* @AccessShareLock, align 4
  %18 = call i32 @index_open(i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %20 = load i32, i32* @Anum_pg_dist_node_nodename, align 4
  %21 = load i32, i32* @BTEqualStrategyNumber, align 4
  %22 = load i32, i32* @F_TEXTEQ, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @CStringGetTextDatum(i8* %23)
  %25 = call i32 @ScanKeyInit(i32* %19, i32 %20, i32 %21, i32 %22, i32 %24)
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %27 = load i32, i32* @Anum_pg_dist_node_nodeport, align 4
  %28 = load i32, i32* @BTEqualStrategyNumber, align 4
  %29 = load i32, i32* @F_INT4EQ, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @Int32GetDatum(i32 %30)
  %32 = call i32 @ScanKeyInit(i32* %26, i32 %27, i32 %28, i32 %29, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @InvalidOid, align 4
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %37 = call i32* @systable_beginscan(i32 %33, i32 %34, i32 %35, i32* null, i32 2, i32* %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call %struct.TYPE_4__* @systable_getnext(i32* %38)
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = call i32 @HeapTupleIsValid(%struct.TYPE_4__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %46)
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %2
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @simple_heap_delete(i32 %50, i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @systable_endscan(i32* %54)
  %56 = call i32 (...) @DistNodeRelationId()
  %57 = call i32 @CitusInvalidateRelcacheByRelid(i32 %56)
  %58 = call i32 (...) @CommandCounterIncrement()
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @AccessShareLock, align 4
  %61 = call i32 @heap_close(i32 %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @NoLock, align 4
  %64 = call i32 @heap_close(i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistNodeRelationId(...) #1

declare dso_local i32 @index_open(i32, i32) #1

declare dso_local i32 @RelationGetReplicaIndex(i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @CStringGetTextDatum(i8*) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32* @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @systable_getnext(i32*) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_4__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @simple_heap_delete(i32, i32*) #1

declare dso_local i32 @systable_endscan(i32*) #1

declare dso_local i32 @CitusInvalidateRelcacheByRelid(i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @heap_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
