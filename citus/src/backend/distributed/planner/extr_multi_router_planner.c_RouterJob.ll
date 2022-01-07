; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_RouterJob.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_RouterJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i8*, i32* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@INVALID_SHARD_ID = common dso_local global i64 0, align 8
@NIL = common dso_local global i8* null, align 8
@RTE_SUBQUERY = common dso_local global i64 0, align 8
@CMD_SELECT = common dso_local global i64 0, align 8
@TaskAssignmentPolicy = common dso_local global i32 0, align 4
@MODIFY_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_22__* (%struct.TYPE_20__*, %struct.TYPE_21__*, i32**)* @RouterJob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_22__* @RouterJob(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  %18 = load i64, i64* @INVALID_SHARD_ID, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i8*, i8** @NIL, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %10, align 8
  %21 = load i8*, i8** @NIL, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %11, align 8
  %23 = load i8*, i8** @NIL, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %15, align 8
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32 1, i32* %13, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = call i32 @RequiresMasterEvaluation(%struct.TYPE_20__* %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32* @PlanRouterQuery(%struct.TYPE_20__* %27, %struct.TYPE_21__* %28, i32** %10, i64* %9, i32** %11, i32** %12, i32 %29, i32* %16, i32** %17)
  %31 = load i32**, i32*** %7, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  br label %117

36:                                               ; preds = %3
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = call %struct.TYPE_22__* @CreateJob(%struct.TYPE_20__* %37)
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %8, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = call %struct.TYPE_19__* @GetUpdateOrDeleteRTE(%struct.TYPE_20__* %42)
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %15, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %45 = icmp ne %struct.TYPE_19__* %44, null
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RTE_SUBQUERY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i8*, i8** @NIL, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %4, align 8
  br label %117

57:                                               ; preds = %46, %36
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CMD_SELECT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i8* @SingleShardSelectTaskList(%struct.TYPE_20__* %64, i32 %67, i32* %68, i32* %69, i64 %70)
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* @INVALID_SHARD_ID, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %63
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %79 = load i32, i32* @TaskAssignmentPolicy, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @ReorderTaskPlacementsByTaskAssignmentPolicy(%struct.TYPE_22__* %78, i32 %79, i32* %80)
  br label %82

82:                                               ; preds = %77, %63
  br label %112

83:                                               ; preds = %57
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* @MODIFY_TASK, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i8* @QueryPushdownSqlTaskList(%struct.TYPE_20__* %87, i32 %90, i32 %93, i32* %94, i32 %95, i32 %96)
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %111

100:                                              ; preds = %83
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i8* @SingleShardModifyTaskList(%struct.TYPE_20__* %101, i32 %104, i32* %105, i32* %106, i64 %107)
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %100, %86
  br label %112

112:                                              ; preds = %111, %82
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %116, %struct.TYPE_22__** %4, align 8
  br label %117

117:                                              ; preds = %112, %52, %35
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %118
}

declare dso_local i32 @RequiresMasterEvaluation(%struct.TYPE_20__*) #1

declare dso_local i32* @PlanRouterQuery(%struct.TYPE_20__*, %struct.TYPE_21__*, i32**, i64*, i32**, i32**, i32, i32*, i32**) #1

declare dso_local %struct.TYPE_22__* @CreateJob(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @GetUpdateOrDeleteRTE(%struct.TYPE_20__*) #1

declare dso_local i8* @SingleShardSelectTaskList(%struct.TYPE_20__*, i32, i32*, i32*, i64) #1

declare dso_local i32 @ReorderTaskPlacementsByTaskAssignmentPolicy(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i8* @QueryPushdownSqlTaskList(%struct.TYPE_20__*, i32, i32, i32*, i32, i32) #1

declare dso_local i8* @SingleShardModifyTaskList(%struct.TYPE_20__*, i32, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
