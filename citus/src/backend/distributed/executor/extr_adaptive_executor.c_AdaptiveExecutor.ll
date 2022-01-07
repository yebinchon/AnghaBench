; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_AdaptiveExecutor.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_AdaptiveExecutor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { i64, i32 }

@MaxAdaptiveExecutorPoolSize = common dso_local global i32 0, align 4
@MultiShardConnectionType = common dso_local global i64 0, align 8
@SEQUENTIAL_CONNECTION = common dso_local global i64 0, align 8
@work_mem = common dso_local global i32 0, align 4
@ROW_MODIFY_READONLY = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_NONE = common dso_local global i64 0, align 8
@SortReturning = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @AdaptiveExecutor(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  store i32* null, i32** %3, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %5, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %18 = call %struct.TYPE_22__* @ScanStateGetExecutorState(%struct.TYPE_25__* %17)
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %6, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %23 = call i32 @ScanStateGetTupleDescriptor(%struct.TYPE_25__* %22)
  store i32 %23, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* @MaxAdaptiveExecutorPoolSize, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %12, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = call i32 @LockPartitionsForDistributedPlan(%struct.TYPE_23__* %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %41 = call i32 @ExecuteSubPlans(%struct.TYPE_23__* %40)
  %42 = load i64, i64* @MultiShardConnectionType, align 8
  %43 = load i64, i64* @SEQUENTIAL_CONNECTION, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @work_mem, align 4
  %50 = call i32 @tuplestore_begin_heap(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call %struct.TYPE_24__* @CreateDistributedExecution(i64 %55, i32* %56, i64 %59, i32 %60, i32 %61, i32 %64, i32 %65)
  store %struct.TYPE_24__* %66, %struct.TYPE_24__** %5, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %68 = call i32 @StartDistributedExecution(%struct.TYPE_24__* %67)
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @list_length(i32 %71)
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %46
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = call i32 @RunLocalExecution(%struct.TYPE_25__* %75, %struct.TYPE_24__* %76)
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %79 = call i32 @AdjustDistributedExecutionAfterLocalExecution(%struct.TYPE_24__* %78)
  br label %80

80:                                               ; preds = %74, %46
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @ShouldRunTasksSequentially(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %88 = call i32 @SequentialRunDistributedExecution(%struct.TYPE_24__* %87)
  br label %92

89:                                               ; preds = %80
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %91 = call i32 @RunDistributedExecution(%struct.TYPE_24__* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ROW_MODIFY_READONLY, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %139

98:                                               ; preds = %92
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @list_length(i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %98
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @Assert(i32 %109)
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %138

116:                                              ; preds = %98
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @InvalidOid, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @PartitionMethod(i64 %125)
  %127 = load i64, i64* @DISTRIBUTE_BY_NONE, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %129, %122, %116
  br label %138

138:                                              ; preds = %137, %104
  br label %139

139:                                              ; preds = %138, %92
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %141 = call i32 @FinishDistributedExecution(%struct.TYPE_24__* %140)
  %142 = load i64, i64* @SortReturning, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %151 = call i32 @SortTupleStore(%struct.TYPE_25__* %150)
  br label %152

152:                                              ; preds = %149, %144, %139
  %153 = load i32*, i32** %3, align 8
  ret i32* %153
}

declare dso_local %struct.TYPE_22__* @ScanStateGetExecutorState(%struct.TYPE_25__*) #1

declare dso_local i32 @ScanStateGetTupleDescriptor(%struct.TYPE_25__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LockPartitionsForDistributedPlan(%struct.TYPE_23__*) #1

declare dso_local i32 @ExecuteSubPlans(%struct.TYPE_23__*) #1

declare dso_local i32 @tuplestore_begin_heap(i32, i32, i32) #1

declare dso_local %struct.TYPE_24__* @CreateDistributedExecution(i64, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @StartDistributedExecution(%struct.TYPE_24__*) #1

declare dso_local i64 @list_length(i32) #1

declare dso_local i32 @RunLocalExecution(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @AdjustDistributedExecutionAfterLocalExecution(%struct.TYPE_24__*) #1

declare dso_local i64 @ShouldRunTasksSequentially(i32) #1

declare dso_local i32 @SequentialRunDistributedExecution(%struct.TYPE_24__*) #1

declare dso_local i32 @RunDistributedExecution(%struct.TYPE_24__*) #1

declare dso_local i64 @PartitionMethod(i64) #1

declare dso_local i32 @FinishDistributedExecution(%struct.TYPE_24__*) #1

declare dso_local i32 @SortTupleStore(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
