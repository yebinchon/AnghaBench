; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ExecuteTaskListExtended.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ExecuteTaskListExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@MultiShardConnectionType = common dso_local global i64 0, align 8
@SEQUENTIAL_CONNECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecuteTaskListExtended(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  store i32* null, i32** %14, align 8
  %15 = call i32 (...) @ErrorIfLocalExecutionHappened()
  %16 = load i64, i64* @MultiShardConnectionType, align 8
  %17 = load i64, i64* @SEQUENTIAL_CONNECTION, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 1, i32* %12, align 4
  br label %20

20:                                               ; preds = %19, %6
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call %struct.TYPE_6__* @CreateDistributedExecution(i32 %21, i32* %22, i32 %23, i32* %24, i32 %25, i32* %26, i32 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %13, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = call i32 @StartDistributedExecution(%struct.TYPE_6__* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %32 = call i32 @RunDistributedExecution(%struct.TYPE_6__* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = call i32 @FinishDistributedExecution(%struct.TYPE_6__* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @ErrorIfLocalExecutionHappened(...) #1

declare dso_local %struct.TYPE_6__* @CreateDistributedExecution(i32, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @StartDistributedExecution(%struct.TYPE_6__*) #1

declare dso_local i32 @RunDistributedExecution(%struct.TYPE_6__*) #1

declare dso_local i32 @FinishDistributedExecution(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
