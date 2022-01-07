; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_StartDistributedExecution.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_StartDistributedExecution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@MultiShardCommitProtocol = common dso_local global i64 0, align 8
@COMMIT_PROTOCOL_BARE = common dso_local global i64 0, align 8
@LocalExecutionHappened = common dso_local global i64 0, align 8
@COMMIT_PROTOCOL_2PC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartDistributedExecution(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i64, i64* @MultiShardCommitProtocol, align 8
  %8 = load i64, i64* @COMMIT_PROTOCOL_BARE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = call i64 @DistributedExecutionRequiresRollback(%struct.TYPE_6__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* @LocalExecutionHappened, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %14, %10
  %18 = call i32 (...) @BeginOrContinueCoordinatedTransaction()
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @TaskListRequires2PC(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @LocalExecutionHappened, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %17
  %26 = call i32 (...) @CoordinatedTransactionUse2PC()
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %45

29:                                               ; preds = %22
  %30 = load i64, i64* @MultiShardCommitProtocol, align 8
  %31 = load i64, i64* @COMMIT_PROTOCOL_2PC, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @list_length(i32* %34)
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = call i64 @DistributedExecutionModifiesDatabase(%struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %37, %33, %29
  br label %45

45:                                               ; preds = %44, %25
  br label %46

46:                                               ; preds = %45, %14
  br label %50

47:                                               ; preds = %1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = call i32 @AcquireExecutorShardLocksForExecution(%struct.TYPE_6__* %51)
  %53 = call i32 (...) @InCoordinatedTransaction()
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @RecordParallelRelationAccessForTaskList(i32* %61)
  br label %63

63:                                               ; preds = %60, %50
  ret void
}

declare dso_local i64 @DistributedExecutionRequiresRollback(%struct.TYPE_6__*) #1

declare dso_local i32 @BeginOrContinueCoordinatedTransaction(...) #1

declare dso_local i64 @TaskListRequires2PC(i32*) #1

declare dso_local i32 @CoordinatedTransactionUse2PC(...) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @DistributedExecutionModifiesDatabase(%struct.TYPE_6__*) #1

declare dso_local i32 @AcquireExecutorShardLocksForExecution(%struct.TYPE_6__*) #1

declare dso_local i32 @InCoordinatedTransaction(...) #1

declare dso_local i32 @RecordParallelRelationAccessForTaskList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
