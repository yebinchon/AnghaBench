; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_distributed_deadlock_detection.c_BuildAdjacencyListsForWaitGraph.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_distributed_deadlock_detection.c_BuildAdjacencyListsForWaitGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@DistributedTransactionIdHash = common dso_local global i32 0, align 4
@DistributedTransactionIdCompare = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_FUNCTION = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@HASH_COMPARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"distributed deadlock detection\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BuildAdjacencyListsForWaitGraph(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_15__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__, align 4
  %13 = alloca %struct.TYPE_16__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = call i32 @memset(%struct.TYPE_15__* %3, i32 0, i32 20)
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  store i32 16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  store i32 4, i32* %19, align 4
  %20 = load i32, i32* @DistributedTransactionIdHash, align 4
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @DistributedTransactionIdCompare, align 4
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @CurrentMemoryContext, align 4
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @HASH_ELEM, align 4
  %27 = load i32, i32* @HASH_FUNCTION, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @HASH_CONTEXT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @HASH_COMPARE, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32* @hash_create(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 64, %struct.TYPE_15__* %3, i32 %33)
  store i32* %34, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %85, %1
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %88

39:                                               ; preds = %35
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 %44
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %10, align 8
  store i32 0, i32* %11, align 4
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %52, align 4
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 3
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %56, align 4
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %60, align 4
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %66, align 4
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %70, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call %struct.TYPE_14__* @GetOrCreateTransactionNode(i32* %74, %struct.TYPE_16__* %12)
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %9, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call %struct.TYPE_14__* @GetOrCreateTransactionNode(i32* %76, %struct.TYPE_16__* %13)
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %10, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = call i32 @lappend(i32 %80, %struct.TYPE_14__* %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %39
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %35

88:                                               ; preds = %35
  %89 = load i32*, i32** %5, align 8
  ret i32* %89
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_14__* @GetOrCreateTransactionNode(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
