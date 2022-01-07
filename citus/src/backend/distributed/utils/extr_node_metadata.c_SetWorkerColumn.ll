; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_SetWorkerColumn.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_SetWorkerColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@Natts_pg_dist_node = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not find valid entry for node \22%s:%d\22\00", align 1
@NoLock = common dso_local global i32 0, align 4
@WORKERS_WITH_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*, i32, i32)* @SetWorkerColumn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @SetWorkerColumn(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = call i32 (...) @DistNodeRelationId()
  %17 = load i32, i32* @RowExclusiveLock, align 4
  %18 = call i32 @heap_open(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @RelationGetDescr(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_12__* @GetNodeTuple(i32 %23, i32 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %28 = load i32, i32* @Natts_pg_dist_node, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %32 = load i32, i32* @Natts_pg_dist_node, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %13, align 8
  %35 = load i32, i32* @Natts_pg_dist_node, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  store i8* null, i8** %15, align 8
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %53 [
    i32 129, label %39
    i32 128, label %46
  ]

39:                                               ; preds = %3
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @DatumGetBool(i32 %43)
  %45 = call i8* @NodeStateUpdateCommand(i32 %42, i32 %44)
  store i8* %45, i8** %15, align 8
  br label %63

46:                                               ; preds = %3
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @DatumGetBool(i32 %50)
  %52 = call i8* @ShouldHaveShardsUpdateCommand(i32 %49, i32 %51)
  store i8* %52, i8** %15, align 8
  br label %63

53:                                               ; preds = %3
  %54 = load i32, i32* @ERROR, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  %62 = call i32 @ereport(i32 %54, i32 %61)
  br label %63

63:                                               ; preds = %53, %46, %39
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = icmp eq %struct.TYPE_12__* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, i32* @ERROR, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73)
  %75 = call i32 @ereport(i32 %67, i32 %74)
  br label %76

76:                                               ; preds = %66, %63
  %77 = mul nuw i64 4, %36
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memset(i32* %37, i32 0, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %31, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %34, i64 %87
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %37, i64 %91
  store i32 1, i32* %92, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call %struct.TYPE_12__* @heap_modify_tuple(%struct.TYPE_12__* %93, i32 %94, i32* %31, i32* %34, i32* %37)
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %9, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %100 = call i32 @CatalogTupleUpdate(i32 %96, i32* %98, %struct.TYPE_12__* %99)
  %101 = call i32 (...) @DistNodeRelationId()
  %102 = call i32 @CitusInvalidateRelcacheByRelid(i32 %101)
  %103 = call i32 (...) @CommandCounterIncrement()
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %106 = call %struct.TYPE_11__* @TupleToWorkerNode(i32 %104, %struct.TYPE_12__* %105)
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %10, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @NoLock, align 4
  %109 = call i32 @heap_close(i32 %107, i32 %108)
  %110 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %111 = load i8*, i8** %15, align 8
  %112 = call i32 @SendCommandToWorkers(i32 %110, i8* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %114)
  ret %struct.TYPE_11__* %113
}

declare dso_local i32 @heap_open(i32, i32) #1

declare dso_local i32 @DistNodeRelationId(...) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_12__* @GetNodeTuple(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @NodeStateUpdateCommand(i32, i32) #1

declare dso_local i32 @DatumGetBool(i32) #1

declare dso_local i8* @ShouldHaveShardsUpdateCommand(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @heap_modify_tuple(%struct.TYPE_12__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @CitusInvalidateRelcacheByRelid(i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local %struct.TYPE_11__* @TupleToWorkerNode(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @heap_close(i32, i32) #1

declare dso_local i32 @SendCommandToWorkers(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
