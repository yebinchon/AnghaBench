; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_LookupNodeForGroup.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_LookupNodeForGroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@WorkerNodeCount = common dso_local global i32 0, align 4
@WorkerNodeArray = common dso_local global %struct.TYPE_5__** null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"there is a shard placement in node group %d but there are no nodes in that group\00", align 1
@ReadFromSecondaries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"node group %d does not have a primary node\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"node group %d does not have a secondary node\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"unrecognized value for use_secondary_nodes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @LookupNodeForGroup(i64 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = call i32 (...) @PrepareWorkerNodeCache()
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @WorkerNodeCount, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @WorkerNodeArray, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %33

26:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = call i64 @NodeIsReadable(%struct.TYPE_5__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %2, align 8
  br label %60

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @ERROR, align 4
  %41 = load i64, i64* %3, align 8
  %42 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = call i32 @ereport(i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @ReadFromSecondaries, align 4
  switch i32 %45, label %56 [
    i32 128, label %46
    i32 129, label %51
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @ERROR, align 4
  %48 = load i64, i64* %3, align 8
  %49 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = call i32 @ereport(i32 %47, i32 %49)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %60

51:                                               ; preds = %44
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i64, i64* %3, align 8
  %54 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = call i32 @ereport(i32 %52, i32 %54)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %60

56:                                               ; preds = %44
  %57 = load i32, i32* @FATAL, align 4
  %58 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %57, i32 %58)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %60

60:                                               ; preds = %56, %51, %46, %30
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %61
}

declare dso_local i32 @PrepareWorkerNodeCache(...) #1

declare dso_local i64 @NodeIsReadable(%struct.TYPE_5__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
