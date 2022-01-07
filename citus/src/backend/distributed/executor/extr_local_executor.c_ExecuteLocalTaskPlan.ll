; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_local_executor.c_ExecuteLocalTaskPlan.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_local_executor.c_ExecuteLocalTaskPlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@DestTuplestore = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@InvalidSnapshot = common dso_local global i32 0, align 4
@CMD_SELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, i8*)* @ExecuteLocalTaskPlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecuteLocalTaskPlan(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = call %struct.TYPE_20__* @ScanStateGetExecutorState(%struct.TYPE_21__* %15)
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %7, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @DestTuplestore, align 4
  %21 = call i32* @CreateDestReceiver(i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %22, i32* %10, align 4
  %23 = call i32* (...) @create_queryEnv()
  store i32* %23, i32** %11, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CurrentMemoryContext, align 4
  %29 = call i32 @SetTuplestoreDestReceiverParams(i32* %24, i32 %27, i32 %28, i32 0)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 (...) @GetActiveSnapshot()
  %33 = load i32, i32* @InvalidSnapshot, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call %struct.TYPE_18__* @CreateQueryDesc(%struct.TYPE_19__* %30, i8* %31, i32 %32, i32 %33, i32* %34, i32 %35, i32* %36, i32 0)
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %12, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @ExecutorStart(%struct.TYPE_18__* %38, i32 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ExecutorRun(%struct.TYPE_18__* %41, i32 %42, i64 0, i32 1)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CMD_SELECT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %3
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %49, %3
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = call i32 @ExecutorFinish(%struct.TYPE_18__* %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %59 = call i32 @ExecutorEnd(%struct.TYPE_18__* %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %61 = call i32 @FreeQueryDesc(%struct.TYPE_18__* %60)
  %62 = load i32, i32* %14, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_20__* @ScanStateGetExecutorState(%struct.TYPE_21__*) #1

declare dso_local i32* @CreateDestReceiver(i32) #1

declare dso_local i32* @create_queryEnv(...) #1

declare dso_local i32 @SetTuplestoreDestReceiverParams(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @CreateQueryDesc(%struct.TYPE_19__*, i8*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @GetActiveSnapshot(...) #1

declare dso_local i32 @ExecutorStart(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ExecutorRun(%struct.TYPE_18__*, i32, i64, i32) #1

declare dso_local i32 @ExecutorFinish(%struct.TYPE_18__*) #1

declare dso_local i32 @ExecutorEnd(%struct.TYPE_18__*) #1

declare dso_local i32 @FreeQueryDesc(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
