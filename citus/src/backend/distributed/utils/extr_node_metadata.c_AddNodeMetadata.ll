; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_AddNodeMetadata.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_AddNodeMetadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@ExclusiveLock = common dso_local global i32 0, align 4
@INVALID_GROUP_ID = common dso_local global i64 0, align 8
@COORDINATOR_GROUP_ID = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"group %d already has a primary node\00", align 1
@WORKER_DEFAULT_CLUSTER = common dso_local global i32 0, align 4
@WORKER_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"primaries must be added to the default cluster\00", align 1
@WORKERS_WITH_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_9__*, i32*)* @AddNodeMetadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AddNodeMetadata(i8* %0, i32 %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  %17 = call i32 (...) @EnsureCoordinator()
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  %19 = call i32 (...) @DistNodeRelationId()
  %20 = load i32, i32* @ExclusiveLock, align 4
  %21 = call i32 @LockRelationOid(i32 %19, i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.TYPE_8__* @FindWorkerNodeAnyCluster(i8* %22, i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32*, i32** %9, align 8
  store i32 1, i32* %28, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  br label %131

32:                                               ; preds = %4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @INVALID_GROUP_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = call i64 (...) @GetNextGroupId()
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @COORDINATOR_GROUP_ID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @InvalidOid, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i64 (...) @PrimaryNodeRoleId()
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.TYPE_8__* @PrimaryNodeForGroup(i64 %68, i32* null)
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %14, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32, i32* @ERROR, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = call i32 @ereport(i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %72, %65
  br label %80

80:                                               ; preds = %79, %59, %53
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i64 (...) @PrimaryNodeRoleId()
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @WORKER_DEFAULT_CLUSTER, align 4
  %91 = load i32, i32* @WORKER_LENGTH, align 4
  %92 = call i64 @strncmp(i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32, i32* @ERROR, align 4
  %96 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %97 = call i32 @ereport(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %86
  br label %99

99:                                               ; preds = %98, %80
  %100 = call i32 (...) @GetNextNodeId()
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = call i32 @InsertNodeRow(i32 %101, i8* %102, i32 %103, %struct.TYPE_9__* %104)
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call %struct.TYPE_8__* @FindWorkerNodeAnyCluster(i8* %106, i32 %107)
  store %struct.TYPE_8__* %108, %struct.TYPE_8__** %11, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @NodeDeleteCommand(i32 %111)
  store i8* %112, i8** %12, align 8
  %113 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @SendCommandToWorkers(i32 %113, i8* %114)
  %116 = call i64 (...) @CountPrimariesWithMetadata()
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %13, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %99
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %121 = call i32* @list_make1(%struct.TYPE_8__* %120)
  store i32* %121, i32** %15, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = call i8* @NodeListInsertCommand(i32* %122)
  store i8* %123, i8** %16, align 8
  %124 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %125 = load i8*, i8** %16, align 8
  %126 = call i32 @SendCommandToWorkers(i32 %124, i8* %125)
  br label %127

127:                                              ; preds = %119, %99
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %27
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @EnsureCoordinator(...) #1

declare dso_local i32 @LockRelationOid(i32, i32) #1

declare dso_local i32 @DistNodeRelationId(...) #1

declare dso_local %struct.TYPE_8__* @FindWorkerNodeAnyCluster(i8*, i32) #1

declare dso_local i64 @GetNextGroupId(...) #1

declare dso_local i64 @PrimaryNodeRoleId(...) #1

declare dso_local %struct.TYPE_8__* @PrimaryNodeForGroup(i64, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @GetNextNodeId(...) #1

declare dso_local i32 @InsertNodeRow(i32, i8*, i32, %struct.TYPE_9__*) #1

declare dso_local i8* @NodeDeleteCommand(i32) #1

declare dso_local i32 @SendCommandToWorkers(i32, i8*) #1

declare dso_local i64 @CountPrimariesWithMetadata(...) #1

declare dso_local i32* @list_make1(%struct.TYPE_8__*) #1

declare dso_local i8* @NodeListInsertCommand(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
