; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_TaskListRequires2PC.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_TaskListRequires2PC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@INVALID_SHARD_ID = common dso_local global i64 0, align 8
@NIL = common dso_local global i32* null, align 8
@REPLICATION_MODEL_2PC = common dso_local global i64 0, align 8
@MultiShardCommitProtocol = common dso_local global i64 0, align 8
@COMMIT_PROTOCOL_2PC = common dso_local global i64 0, align 8
@DDL_TASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @TaskListRequires2PC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TaskListRequires2PC(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i64, i64* @INVALID_SHARD_ID, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** @NIL, align 8
  %10 = icmp eq i32* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @linitial(i32* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %4, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REPLICATION_MODEL_2PC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %71

22:                                               ; preds = %12
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @INVALID_SHARD_ID, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @ReferenceTableShardId(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %71

34:                                               ; preds = %29, %22
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @list_length(i32* %35)
  %37 = icmp sgt i32 %36, 1
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ReadOnlyTask(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i64, i64* @MultiShardCommitProtocol, align 8
  %49 = load i64, i64* @COMMIT_PROTOCOL_2PC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %71

52:                                               ; preds = %47, %44, %34
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DDL_TASK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i64, i64* @MultiShardCommitProtocol, align 8
  %60 = load i64, i64* @COMMIT_PROTOCOL_2PC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @REPLICATION_MODEL_2PC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %58
  store i32 1, i32* %2, align 4
  br label %71

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %52
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %68, %51, %33, %21, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @linitial(i32*) #1

declare dso_local i64 @ReferenceTableShardId(i64) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @ReadOnlyTask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
