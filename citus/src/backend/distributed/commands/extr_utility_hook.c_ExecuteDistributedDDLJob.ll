; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_utility_hook.c_ExecuteDistributedDDLJob.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_utility_hook.c_ExecuteDistributedDDLJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@WORKERS_WITH_METADATA = common dso_local global i32 0, align 4
@DISABLE_DDL_PROPAGATION = common dso_local global i8* null, align 8
@SavedMultiShardCommitProtocol = common dso_local global i64 0, align 8
@COMMIT_PROTOCOL_BARE = common dso_local global i64 0, align 8
@MultiShardCommitProtocol = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"CONCURRENTLY-enabled index command failed\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"CONCURRENTLY-enabled index commands can fail partially, leaving behind an INVALID index.\00", align 1
@.str.2 = private unnamed_addr constant [100 x i8] c"Use DROP INDEX CONCURRENTLY IF EXISTS to remove the invalid index, then retry the original command.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @ExecuteDistributedDDLJob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExecuteDistributedDDLJob(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = call i32 (...) @EnsureCoordinator()
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @InvalidOid, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ShouldSyncTableMetadata(i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @EnsurePartitionTableNotReplicated(i64 %20)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = call i8* (...) @SetSearchPathToCurrentSearchPathCommand()
  store i8* %31, i8** %4, align 8
  %32 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %33 = load i8*, i8** @DISABLE_DDL_PROPAGATION, align 8
  %34 = call i32 @SendCommandToWorkers(i32 %32, i8* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @SendCommandToWorkers(i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @SendCommandToWorkers(i32 %42, i8* %46)
  br label %48

48:                                               ; preds = %41, %27
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ExecuteUtilityTaskListWithoutResults(i32 %51)
  br label %96

53:                                               ; preds = %22
  %54 = load i64, i64* @SavedMultiShardCommitProtocol, align 8
  %55 = load i64, i64* @COMMIT_PROTOCOL_BARE, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @Assert(i32 %57)
  %59 = load i64, i64* @MultiShardCommitProtocol, align 8
  store i64 %59, i64* @SavedMultiShardCommitProtocol, align 8
  %60 = load i64, i64* @COMMIT_PROTOCOL_BARE, align 8
  store i64 %60, i64* @MultiShardCommitProtocol, align 8
  %61 = call i32 (...) @PG_TRY()
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ExecuteUtilityTaskListWithoutResults(i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %53
  %69 = load i8*, i8** @DISABLE_DDL_PROPAGATION, align 8
  %70 = call i32* @list_make1(i8* %69)
  store i32* %70, i32** %5, align 8
  %71 = call i8* (...) @SetSearchPathToCurrentSearchPathCommand()
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32* @lappend(i32* %75, i8* %76)
  store i32* %77, i32** %5, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32* @lappend(i32* %79, i8* %83)
  store i32* %84, i32** %5, align 8
  %85 = load i32, i32* @WORKERS_WITH_METADATA, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @SendBareCommandListToWorkers(i32 %85, i32* %86)
  br label %88

88:                                               ; preds = %78, %53
  %89 = call i32 (...) @PG_CATCH()
  %90 = load i32, i32* @ERROR, align 4
  %91 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %92 = call i32 @errdetail(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %93 = call i32 @errhint(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0))
  %94 = call i32 @ereport(i32 %90, i32 %93)
  %95 = call i32 (...) @PG_END_TRY()
  br label %96

96:                                               ; preds = %88, %48
  ret void
}

declare dso_local i32 @EnsureCoordinator(...) #1

declare dso_local i32 @ShouldSyncTableMetadata(i64) #1

declare dso_local i32 @EnsurePartitionTableNotReplicated(i64) #1

declare dso_local i8* @SetSearchPathToCurrentSearchPathCommand(...) #1

declare dso_local i32 @SendCommandToWorkers(i32, i8*) #1

declare dso_local i32 @ExecuteUtilityTaskListWithoutResults(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32* @list_make1(i8*) #1

declare dso_local i32* @lappend(i32*, i8*) #1

declare dso_local i32 @SendBareCommandListToWorkers(i32, i32*) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
