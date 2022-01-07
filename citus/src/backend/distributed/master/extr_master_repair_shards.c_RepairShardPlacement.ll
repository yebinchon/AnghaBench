; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_repair_shards.c_RepairShardPlacement.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_repair_shards.c_RepairShardPlacement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cannot repair shard\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Table %s is a foreign table. Repairing shards backed by foreign tables is not supported.\00", align 1
@ExclusiveLock = common dso_local global i32 0, align 4
@WORKER_APPEND_TABLE_TO_SHARD = common dso_local global i32 0, align 4
@FILE_FINALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, i8*, i32)* @RepairShardPlacement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RepairShardPlacement(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_14__* @LoadShardInterval(i32 %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %11, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call signext i8 @get_rel_relkind(i32 %31)
  store i8 %32, i8* %13, align 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @TableOwner(i32 %35)
  store i8* %36, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %37 = load i32*, i32** @NIL, align 8
  store i32* %37, i32** %18, align 8
  %38 = load i32*, i32** @NIL, align 8
  store i32* %38, i32** %19, align 8
  %39 = load i32*, i32** @NIL, align 8
  store i32* %39, i32** %20, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %21, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @AccessShareLock, align 4
  %42 = call i32 @LockRelationOid(i32 %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @EnsureTableOwner(i32 %43)
  %45 = load i8, i8* %13, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %5
  %51 = load i32, i32* %12, align 4
  %52 = call i8* @get_rel_name(i32 %51)
  store i8* %52, i8** %22, align 8
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %57 = load i8*, i8** %22, align 8
  %58 = call i32 @errdetail(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = call i32 @ereport(i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %50, %5
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @EnsurePartitionTableNotReplicated(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @ExclusiveLock, align 4
  %65 = call i32 @LockReferencedReferenceShardDistributionMetadata(i32 %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @ExclusiveLock, align 4
  %68 = call i32 @LockShardDistributionMetadata(i32 %66, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @EnsureShardCanBeRepaired(i32 %69, i8* %70, i32 %71, i8* %72, i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @PartitionedTableNoLock(i32 %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %16, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32* @CopyShardCommandList(%struct.TYPE_14__* %81, i8* %82, i32 %83, i32 %84)
  store i32* %85, i32** %18, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %87 = call i32* @CopyShardForeignConstraintCommandList(%struct.TYPE_14__* %86)
  store i32* %87, i32** %19, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = call i32* @list_concat(i32* %88, i32* %89)
  store i32* %90, i32** %18, align 8
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %60
  %94 = load i32*, i32** @NIL, align 8
  store i32* %94, i32** %23, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %96 = call i8* @ConstructQualifiedShardName(%struct.TYPE_14__* %95)
  store i8* %96, i8** %24, align 8
  %97 = call %struct.TYPE_12__* (...) @makeStringInfo()
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %25, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32* @CopyPartitionShardsCommandList(%struct.TYPE_14__* %98, i8* %99, i32 %100)
  store i32* %101, i32** %23, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = load i32*, i32** %23, align 8
  %104 = call i32* @list_concat(i32* %102, i32* %103)
  store i32* %104, i32** %18, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %106 = load i32, i32* @WORKER_APPEND_TABLE_TO_SHARD, align 4
  %107 = load i8*, i8** %24, align 8
  %108 = call i32 @quote_literal_cstr(i8* %107)
  %109 = load i8*, i8** %24, align 8
  %110 = call i32 @quote_literal_cstr(i8* %109)
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @quote_literal_cstr(i8* %111)
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @appendStringInfo(%struct.TYPE_12__* %105, i32 %106, i32 %108, i32 %110, i32 %112, i32 %113)
  %115 = load i32*, i32** %18, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32* @lappend(i32* %115, i32 %118)
  store i32* %119, i32** %18, align 8
  br label %120

120:                                              ; preds = %93, %60
  %121 = call i32 (...) @EnsureNoModificationsHaveBeenDone()
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i8*, i8** %14, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = call i32 @SendCommandListToWorkerInSingleTransaction(i8* %122, i32 %123, i8* %124, i32* %125)
  %127 = load i32, i32* %6, align 4
  %128 = call i32* @ShardPlacementList(i32 %127)
  store i32* %128, i32** %20, align 8
  %129 = load i32*, i32** %20, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call %struct.TYPE_13__* @SearchShardPlacementInList(i32* %129, i8* %130, i32 %131, i32 %132)
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %21, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @FILE_FINALIZED, align 4
  %138 = call i32 @UpdateShardPlacementState(i32 %136, i32 %137)
  ret void
}

declare dso_local %struct.TYPE_14__* @LoadShardInterval(i32) #1

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i8* @TableOwner(i32) #1

declare dso_local i32 @LockRelationOid(i32, i32) #1

declare dso_local i32 @EnsureTableOwner(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

declare dso_local i32 @EnsurePartitionTableNotReplicated(i32) #1

declare dso_local i32 @LockReferencedReferenceShardDistributionMetadata(i32, i32) #1

declare dso_local i32 @LockShardDistributionMetadata(i32, i32) #1

declare dso_local i32 @EnsureShardCanBeRepaired(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @PartitionedTableNoLock(i32) #1

declare dso_local i32* @CopyShardCommandList(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32* @CopyShardForeignConstraintCommandList(%struct.TYPE_14__*) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

declare dso_local i8* @ConstructQualifiedShardName(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_12__* @makeStringInfo(...) #1

declare dso_local i32* @CopyPartitionShardsCommandList(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_12__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @quote_literal_cstr(i8*) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @EnsureNoModificationsHaveBeenDone(...) #1

declare dso_local i32 @SendCommandListToWorkerInSingleTransaction(i8*, i32, i8*, i32*) #1

declare dso_local i32* @ShardPlacementList(i32) #1

declare dso_local %struct.TYPE_13__* @SearchShardPlacementInList(i32*, i8*, i32, i32) #1

declare dso_local i32 @UpdateShardPlacementState(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
