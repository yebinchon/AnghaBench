; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_citus_custom_scan.c_CitusModifyBeginScan.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_citus_custom_scan.c_CitusModifyBeginScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_13__, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i32, i64, i64, i32* }

@NIL = common dso_local global i32* null, align 8
@ERROR = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_16__*, i32)* @CitusModifyBeginScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CitusModifyBeginScan(i32* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  store i32* null, i32** %10, align 8
  %17 = load i32*, i32** @NIL, align 8
  store i32* %17, i32** %11, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = call %struct.TYPE_17__* @copyObject(%struct.TYPE_17__* %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %8, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %3
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %12, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %13, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %47 = call i32 @ExecuteMasterEvaluableFunctions(i32* %45, %struct.TYPE_14__* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %37
  store i32* null, i32** %14, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32* @RouterInsertTaskList(i32* %55, i32** %14)
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* @ERROR, align 4
  %62 = call i32 @RaiseDeferredError(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32*, i32** %11, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i32* %64, i32** %66, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @ExtractInsertPartitionKeyValue(i32* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %63, %37
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @RebuildQueryStrings(i32* %72, i32* %73)
  br label %75

75:                                               ; preds = %71, %3
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @AcquireMetadataLocks(i32* %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @AccessShareLock, align 4
  %82 = call i32 @LockPartitionsInRelationList(i32 %80, i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @FirstReplicaAssignTaskList(i32* %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  ret void
}

declare dso_local %struct.TYPE_17__* @copyObject(%struct.TYPE_17__*) #1

declare dso_local i32 @ExecuteMasterEvaluableFunctions(i32*, %struct.TYPE_14__*) #1

declare dso_local i32* @RouterInsertTaskList(i32*, i32**) #1

declare dso_local i32 @RaiseDeferredError(i32*, i32) #1

declare dso_local i32 @ExtractInsertPartitionKeyValue(i32*) #1

declare dso_local i32 @RebuildQueryStrings(i32*, i32*) #1

declare dso_local i32 @AcquireMetadataLocks(i32*) #1

declare dso_local i32 @LockPartitionsInRelationList(i32, i32) #1

declare dso_local i32* @FirstReplicaAssignTaskList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
