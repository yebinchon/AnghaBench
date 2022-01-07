; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_RemoveNodeFromCluster.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_node_metadata.c_RemoveNodeFromCluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"you cannot remove the primary node of a node group which has shard placements\00", align 1
@WORKERS_WITH_METADATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @RemoveNodeFromCluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RemoveNodeFromCluster(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_4__* @ModifiableWorkerNode(i8* %8, i32 %9)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = call i64 @NodeIsPrimary(%struct.TYPE_4__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DeleteAllReferenceTablePlacementsFromNodeGroup(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @NodeGroupHasShardPlacements(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32, i32* @ERROR, align 4
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %14
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @DeleteNodeRow(i32 %33, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @NodeDeleteCommand(i32 %38)
  store i8* %39, i8** %5, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @CloseNodeConnectionsAfterTransaction(i32 %42, i32 %43)
  %45 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @SendCommandToWorkers(i32 %45, i8* %46)
  ret void
}

declare dso_local %struct.TYPE_4__* @ModifiableWorkerNode(i8*, i32) #1

declare dso_local i64 @NodeIsPrimary(%struct.TYPE_4__*) #1

declare dso_local i32 @DeleteAllReferenceTablePlacementsFromNodeGroup(i32) #1

declare dso_local i64 @NodeGroupHasShardPlacements(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @DeleteNodeRow(i32, i32) #1

declare dso_local i8* @NodeDeleteCommand(i32) #1

declare dso_local i32 @CloseNodeConnectionsAfterTransaction(i32, i32) #1

declare dso_local i32 @SendCommandToWorkers(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
