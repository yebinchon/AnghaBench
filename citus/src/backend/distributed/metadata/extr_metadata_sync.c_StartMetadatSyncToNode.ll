; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_StartMetadatSyncToNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_StartMetadatSyncToNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"start_metadata_sync_to_node\00", align 1
@ExclusiveLock = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"you cannot sync metadata to a non-existent node\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"First, add the node with SELECT master_add_node(%s,%d)\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"you cannot sync metadata to an inactive node\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"First, activate the node with SELECT master_activate_node(%s,%d)\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [86 x i8] c"%s:%d is the coordinator and already contains metadata, skipping syncing the metadata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartMetadatSyncToNode(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @quote_literal_cstr(i8* %8)
  store i8* %9, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = call i32 (...) @EnsureCoordinator()
  %11 = call i32 (...) @EnsureSuperUser()
  %12 = call i32 (...) @EnsureModificationsCanRun()
  %13 = load i32, i32* @ERROR, align 4
  %14 = call i32 @CheckCitusVersion(i32 %13)
  %15 = call i32 @PreventInTransactionBlock(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @DistNodeRelationId()
  %17 = load i32, i32* @ExclusiveLock, align 4
  %18 = call i32 @LockRelationOid(i32 %16, i32 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.TYPE_6__* @FindWorkerNode(i8* %19, i32 %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %27 = call i32 @errcode(i32 %26)
  %28 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @errhint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %30)
  %32 = call i32 @ereport(i32 %25, i32 %31)
  br label %33

33:                                               ; preds = %24, %2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %41 = call i32 @errcode(i32 %40)
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @errhint(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %43, i32 %44)
  %46 = call i32 @ereport(i32 %39, i32 %45)
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = call i64 @NodeIsCoordinator(%struct.TYPE_6__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* @NOTICE, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0), i8* %53, i32 %54)
  %56 = call i32 @ereport(i32 %52, i32 %55)
  br label %76

57:                                               ; preds = %47
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @MarkNodeHasMetadata(i8* %58, i32 %59, i32 1)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = call i32 @NodeIsPrimary(%struct.TYPE_6__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %76

65:                                               ; preds = %57
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @SyncMetadataSnapshotToNode(%struct.TYPE_6__* %66, i32 %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MarkNodeMetadataSynced(i32 %71, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %65, %64, %51
  ret void
}

declare dso_local i8* @quote_literal_cstr(i8*) #1

declare dso_local i32 @EnsureCoordinator(...) #1

declare dso_local i32 @EnsureSuperUser(...) #1

declare dso_local i32 @EnsureModificationsCanRun(...) #1

declare dso_local i32 @CheckCitusVersion(i32) #1

declare dso_local i32 @PreventInTransactionBlock(i32, i8*) #1

declare dso_local i32 @LockRelationOid(i32, i32) #1

declare dso_local i32 @DistNodeRelationId(...) #1

declare dso_local %struct.TYPE_6__* @FindWorkerNode(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errhint(i8*, i8*, i32) #1

declare dso_local i64 @NodeIsCoordinator(%struct.TYPE_6__*) #1

declare dso_local i32 @MarkNodeHasMetadata(i8*, i32, i32) #1

declare dso_local i32 @NodeIsPrimary(%struct.TYPE_6__*) #1

declare dso_local i32 @SyncMetadataSnapshotToNode(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @MarkNodeMetadataSynced(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
