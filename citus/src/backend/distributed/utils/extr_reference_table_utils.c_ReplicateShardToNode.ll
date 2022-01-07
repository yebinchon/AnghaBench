; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_reference_table_utils.c_ReplicateShardToNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_reference_table_utils.c_ReplicateShardToNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i64, i32, i32, i32 }

@FILE_FINALIZED = common dso_local global i64 0, align 8
@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Replicating reference table \22%s\22 to the node %s:%d\00", align 1
@WORKERS_WITH_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*, i32)* @ReplicateShardToNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReplicateShardToNode(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_7__* @FinalizedShardPlacement(i32 %24, i32 %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32* @CopyShardCommandList(%struct.TYPE_8__* %33, i8* %34, i32 %35, i32 %36)
  store i32* %37, i32** %13, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32* @ShardPlacementList(i32 %38)
  store i32* %39, i32** %14, align 8
  store i32 1, i32* %15, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call %struct.TYPE_7__* @SearchShardPlacementInList(i32* %40, i8* %41, i32 %42, i32 %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %16, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @TableOwner(i32 %47)
  store i8* %48, i8** %17, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %50 = icmp eq %struct.TYPE_7__* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %3
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FILE_FINALIZED, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %111

57:                                               ; preds = %51, %3
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %58 = load i32, i32* @NOTICE, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @get_rel_name(i32 %61)
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %63, i32 %64)
  %66 = call i32 @ereport(i32 %58, i32 %65)
  %67 = call i32 (...) @EnsureNoModificationsHaveBeenDone()
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %17, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @SendCommandListToWorkerInSingleTransaction(i8* %68, i32 %69, i8* %70, i32* %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %74 = icmp eq %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %57
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @GroupForNode(i8* %76, i32 %77)
  store i32 %78, i32* %19, align 4
  %79 = call i32 (...) @GetNextPlacementId()
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i64, i64* @FILE_FINALIZED, align 8
  %83 = load i32, i32* %19, align 4
  %84 = call i32 @InsertShardPlacementRow(i32 %80, i32 %81, i64 %82, i32 0, i32 %83)
  br label %95

85:                                               ; preds = %57
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %19, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i64, i64* @FILE_FINALIZED, align 8
  %94 = call i32 @UpdateShardPlacementState(i32 %92, i64 %93)
  br label %95

95:                                               ; preds = %85, %75
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @ShouldSyncTableMetadata(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i64, i64* @FILE_FINALIZED, align 8
  %105 = load i32, i32* %19, align 4
  %106 = call i8* @PlacementUpsertCommand(i32 %102, i32 %103, i64 %104, i32 0, i32 %105)
  store i8* %106, i8** %20, align 8
  %107 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %108 = load i8*, i8** %20, align 8
  %109 = call i32 @SendCommandToWorkers(i32 %107, i8* %108)
  br label %110

110:                                              ; preds = %101, %95
  br label %111

111:                                              ; preds = %110, %51
  ret void
}

declare dso_local %struct.TYPE_7__* @FinalizedShardPlacement(i32, i32) #1

declare dso_local i32* @CopyShardCommandList(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32* @ShardPlacementList(i32) #1

declare dso_local %struct.TYPE_7__* @SearchShardPlacementInList(i32*, i8*, i32, i32) #1

declare dso_local i8* @TableOwner(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*, i32) #1

declare dso_local i32 @get_rel_name(i32) #1

declare dso_local i32 @EnsureNoModificationsHaveBeenDone(...) #1

declare dso_local i32 @SendCommandListToWorkerInSingleTransaction(i8*, i32, i8*, i32*) #1

declare dso_local i32 @GroupForNode(i8*, i32) #1

declare dso_local i32 @GetNextPlacementId(...) #1

declare dso_local i32 @InsertShardPlacementRow(i32, i32, i64, i32, i32) #1

declare dso_local i32 @UpdateShardPlacementState(i32, i64) #1

declare dso_local i64 @ShouldSyncTableMetadata(i32) #1

declare dso_local i8* @PlacementUpsertCommand(i32, i32, i64, i32, i32) #1

declare dso_local i32 @SendCommandToWorkers(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
