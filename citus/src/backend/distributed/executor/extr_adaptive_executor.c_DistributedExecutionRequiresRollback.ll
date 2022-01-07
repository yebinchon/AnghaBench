; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_DistributedExecutionRequiresRollback.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_DistributedExecutionRequiresRollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64, i64, i32*, i32 }

@MultiShardCommitProtocol = common dso_local global i64 0, align 8
@COMMIT_PROTOCOL_BARE = common dso_local global i64 0, align 8
@NIL = common dso_local global i64 0, align 8
@SelectOpensTransactionBlock = common dso_local global i64 0, align 8
@SingleShardCommitProtocol = common dso_local global i64 0, align 8
@COMMIT_PROTOCOL_2PC = common dso_local global i64 0, align 8
@INVALID_SHARD_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @DistributedExecutionRequiresRollback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DistributedExecutionRequiresRollback(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @list_length(i32* %11)
  store i32 %12, i32* %5, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i64, i64* @MultiShardCommitProtocol, align 8
  %14 = load i64, i64* @COMMIT_PROTOCOL_BARE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %85

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @linitial(i32* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NIL, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = call i32 (...) @IsTransactionBlock()
  store i32 %34, i32* %2, align 4
  br label %85

35:                                               ; preds = %21
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ReadOnlyTask(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load i64, i64* @SelectOpensTransactionBlock, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = call i32 (...) @IsTransactionBlock()
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %2, align 4
  br label %85

50:                                               ; preds = %35
  %51 = call i64 (...) @IsMultiStatementTransaction()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %85

54:                                               ; preds = %50
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @list_length(i32* %55)
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %85

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @list_length(i32* %62)
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %84

65:                                               ; preds = %59
  %66 = load i64, i64* @SingleShardCommitProtocol, align 8
  %67 = load i64, i64* @COMMIT_PROTOCOL_2PC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %85

70:                                               ; preds = %65
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @INVALID_SHARD_ID, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @ReferenceTableShardId(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %2, align 4
  br label %85

83:                                               ; preds = %76, %70
  store i32 0, i32* %2, align 4
  br label %85

84:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %83, %82, %69, %58, %53, %47, %33, %20, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @list_length(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32 @IsTransactionBlock(...) #1

declare dso_local i64 @ReadOnlyTask(i32) #1

declare dso_local i64 @IsMultiStatementTransaction(...) #1

declare dso_local i64 @ReferenceTableShardId(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
