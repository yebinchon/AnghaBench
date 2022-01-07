; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_JoinPrunable.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_JoinPrunable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@CITUS_RTE_REMOTE_QUERY = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"join prunable for task partitionId %u and %u\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"join prunable for intervals %s and %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*)* @JoinPrunable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JoinPrunable(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CITUS_RTE_REMOTE_QUERY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CITUS_RTE_REMOTE_QUERY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %10, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %11, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %25
  %42 = load i32, i32* @DEBUG2, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %48)
  %50 = call i32 @ereport(i32 %42, i32 %49)
  store i32 1, i32* %3, align 4
  br label %83

51:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %83

52:                                               ; preds = %19, %2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = call i32* @FragmentInterval(%struct.TYPE_10__* %53)
  store i32* %54, i32** %8, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = call i32* @FragmentInterval(%struct.TYPE_10__* %55)
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @ShardIntervalsOverlap(i32* %57, i32* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %81, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @DEBUG2, align 4
  %64 = call i64 @IsLoggableLevel(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load i32*, i32** %8, align 8
  %68 = call %struct.TYPE_9__* @FragmentIntervalString(i32* %67)
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %12, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call %struct.TYPE_9__* @FragmentIntervalString(i32* %69)
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %13, align 8
  %71 = load i32, i32* @DEBUG2, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %77)
  %79 = call i32 @ereport(i32 %71, i32 %78)
  br label %80

80:                                               ; preds = %66, %62
  store i32 1, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %51, %41
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i64, i64) #1

declare dso_local i32* @FragmentInterval(%struct.TYPE_10__*) #1

declare dso_local i32 @ShardIntervalsOverlap(i32*, i32*) #1

declare dso_local i64 @IsLoggableLevel(i32) #1

declare dso_local %struct.TYPE_9__* @FragmentIntervalString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
