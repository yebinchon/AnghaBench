; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CopyFromWorkerNode.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_CopyFromWorkerNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i8*, i32 }

@InvalidOid = common dso_local global i32 0, align 4
@FOR_DML = common dso_local global i32 0, align 4
@masterConnection = common dso_local global i32* null, align 8
@NoLock = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_APPEND = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"copy from worker nodes is only supported for append-partitioned tables\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8*)* @CopyFromWorkerNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyFromWorkerNode(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = call %struct.TYPE_10__* @MasterNodeAddress(%struct.TYPE_11__* %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @InvalidOid, align 4
  store i32 %20, i32* %8, align 4
  store i8 0, i8* %9, align 1
  store i8* null, i8** %10, align 8
  %21 = load i32, i32* @FOR_DML, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @GetNodeConnection(i32 %22, i8* %23, i32 %24)
  store i32* %25, i32** @masterConnection, align 8
  %26 = load i32*, i32** @masterConnection, align 8
  %27 = call i32 @MarkRemoteTransactionCritical(i32* %26)
  %28 = load i32*, i32** @masterConnection, align 8
  %29 = call i32 @ClaimConnectionExclusively(i32* %28)
  %30 = load i32*, i32** @masterConnection, align 8
  %31 = call i32 @RemoteTransactionBeginIfNecessary(i32* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %10, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i8* null, i8** %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* @NoLock, align 4
  %45 = call i32 @RangeVarGetRelid(%struct.TYPE_12__* %43, i32 %44, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = call signext i8 @MasterPartitionMethod(%struct.TYPE_12__* %53)
  store i8 %54, i8* %9, align 1
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @DISTRIBUTE_BY_APPEND, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %2
  %61 = load i32, i32* @ERROR, align 4
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %2
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = call i32 @RemoveMasterOptions(%struct.TYPE_11__* %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @CopyToNewShards(%struct.TYPE_11__* %67, i8* %68, i32 %69)
  %71 = load i32*, i32** @masterConnection, align 8
  %72 = call i32 @UnclaimConnection(i32* %71)
  store i32* null, i32** @masterConnection, align 8
  ret void
}

declare dso_local %struct.TYPE_10__* @MasterNodeAddress(%struct.TYPE_11__*) #1

declare dso_local i32* @GetNodeConnection(i32, i8*, i32) #1

declare dso_local i32 @MarkRemoteTransactionCritical(i32*) #1

declare dso_local i32 @ClaimConnectionExclusively(i32*) #1

declare dso_local i32 @RemoteTransactionBeginIfNecessary(i32*) #1

declare dso_local i32 @RangeVarGetRelid(%struct.TYPE_12__*, i32, i32) #1

declare dso_local signext i8 @MasterPartitionMethod(%struct.TYPE_12__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @RemoveMasterOptions(%struct.TYPE_11__*) #1

declare dso_local i32 @CopyToNewShards(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @UnclaimConnection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
