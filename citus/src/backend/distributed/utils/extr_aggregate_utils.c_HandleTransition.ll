; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_aggregate_utils.c_HandleTransition.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_aggregate_utils.c_HandleTransition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"HandleTransition called from non aggregate context\00", align 1
@CurrentMemoryContext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__*)* @HandleTransition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleTransition(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = call i32 @FunctionCallInvoke(%struct.TYPE_10__* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %94, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @DatumGetPointer(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @DatumGetPointer(i32 %25)
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %28, label %94

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %67, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = call i32 @AggCheckCallContext(%struct.TYPE_10__* %32, i32* %9)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @MemoryContextSwitchTo(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @DatumIsReadWriteExpandedObject(i32 %41, i32 0, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.TYPE_11__* @DatumGetEOHP(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @MemoryContextGetParent(i32 %51)
  %53 = load i64, i64* @CurrentMemoryContext, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %47, %38
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @datumCopy(i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %55, %47
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @MemoryContextSwitchTo(i32 %65)
  br label %67

67:                                               ; preds = %64, %28
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @DatumIsReadWriteExpandedObject(i32 %75, i32 0, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %72
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @DeleteExpandedObject(i32 %84)
  br label %92

86:                                               ; preds = %72
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @DatumGetPointer(i32 %89)
  %91 = call i32 @pfree(i64 %90)
  br label %92

92:                                               ; preds = %86, %81
  br label %93

93:                                               ; preds = %92, %67
  br label %94

94:                                               ; preds = %93, %20, %3
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  ret void
}

declare dso_local i32 @FunctionCallInvoke(%struct.TYPE_10__*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @AggCheckCallContext(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @DatumIsReadWriteExpandedObject(i32, i32, i32) #1

declare dso_local i64 @MemoryContextGetParent(i32) #1

declare dso_local %struct.TYPE_11__* @DatumGetEOHP(i32) #1

declare dso_local i32 @datumCopy(i32, i32, i32) #1

declare dso_local i32 @DeleteExpandedObject(i32) #1

declare dso_local i32 @pfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
