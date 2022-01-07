; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_distributed_planner.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_distributed_planner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@CURSOR_OPT_FORCE_DISTRIBUTED = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"cannot INSERT rows from a distributed query into a local table\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"Consider using CREATE TEMPORARY TABLE tmp AS SELECT ... and inserting from the temporary table.\00", align 1
@NextPlanId = common dso_local global i32 0, align 4
@FLT_MAX = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [147 x i8] c"cannot perform distributed planning on this query because parameterized queries for SQL functions referencing distributed tables are not supported\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Consider using PL/pgSQL functions instead.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @distributed_planner(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @ExtractRangeTableEntryList(i32* %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CURSOR_OPT_FORCE_DISTRIBUTED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = call i64 (...) @CitusHasBeenLoaded()
  %24 = call i32 @Assert(i64 %23)
  store i32 1, i32* %8, align 4
  br label %41

25:                                               ; preds = %3
  %26 = call i64 (...) @CitusHasBeenLoaded()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i64 @IsLocalReferenceTableJoin(i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @UpdateReferenceTablesWithShard(i32* %34, i32* null)
  br label %39

36:                                               ; preds = %28
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @ListContainsDistributedTableRTE(i32* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 @InsertSelectIntoLocalTable(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @errhint(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @ereport(i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @AssignRTEIdentities(i32* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32* @copyObject(i32* %56)
  store i32* %57, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @AdjustPartitioningForDistributedPlanning(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %41
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @ReplaceTableVisibleFunction(i32* %62)
  %64 = call i32* (...) @CreateAndPushPlannerRestrictionContext()
  store i32* %64, i32** %10, align 8
  %65 = call i32 (...) @PG_TRY()
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @FastPathRouterQuery(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call %struct.TYPE_11__* @FastPathPlanner(i32* %73, i32* %74, i32 %75)
  store %struct.TYPE_11__* %76, %struct.TYPE_11__** %7, align 8
  br label %82

77:                                               ; preds = %68, %61
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call %struct.TYPE_11__* @standard_planner(i32* %78, i32 %79, i32 %80)
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %7, align 8
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* @NextPlanId, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @NextPlanId, align 4
  store i32 %86, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call %struct.TYPE_11__* @CreateDistributedPlannedStmt(i32 %88, %struct.TYPE_11__* %89, i32* %90, i32* %91, i32 %92, i32* %93)
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %7, align 8
  store i32 1, i32* %11, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @AdjustPartitioningForDistributedPlanning(i32* %95, i32 %96)
  br label %119

98:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = call i32* @TryToDelegateFunctionCall(i32* %99, i32* %14)
  store i32* %100, i32** %15, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = call %struct.TYPE_11__* @FinalizePlan(%struct.TYPE_11__* %104, i32* %105)
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %7, align 8
  br label %118

107:                                              ; preds = %98
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32, i32* @FLT_MAX, align 4
  %112 = sdiv i32 %111, 100000000
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %110, %107
  br label %118

118:                                              ; preds = %117, %103
  br label %119

119:                                              ; preds = %118, %85
  %120 = call i32 (...) @PG_CATCH()
  %121 = call i32 (...) @PopPlannerRestrictionContext()
  %122 = call i32 (...) @PG_RE_THROW()
  %123 = call i32 (...) @PG_END_TRY()
  %124 = call i32 (...) @PopPlannerRestrictionContext()
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %119
  %128 = load i32*, i32** %4, align 8
  %129 = call i64 @NeedsDistributedPlanning(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load i32, i32* @ERROR, align 4
  %133 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %134 = call i32 @errcode(i32 %133)
  %135 = call i32 @errmsg(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.2, i64 0, i64 0))
  %136 = call i32 @errhint(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %137 = call i32 @ereport(i32 %132, i32 %136)
  br label %138

138:                                              ; preds = %131, %127, %119
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %139
}

declare dso_local i32* @ExtractRangeTableEntryList(i32*) #1

declare dso_local i32 @Assert(i64) #1

declare dso_local i64 @CitusHasBeenLoaded(...) #1

declare dso_local i64 @IsLocalReferenceTableJoin(i32*, i32*) #1

declare dso_local i32 @UpdateReferenceTablesWithShard(i32*, i32*) #1

declare dso_local i32 @ListContainsDistributedTableRTE(i32*) #1

declare dso_local i64 @InsertSelectIntoLocalTable(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @AssignRTEIdentities(i32*) #1

declare dso_local i32* @copyObject(i32*) #1

declare dso_local i32 @AdjustPartitioningForDistributedPlanning(i32*, i32) #1

declare dso_local i32 @ReplaceTableVisibleFunction(i32*) #1

declare dso_local i32* @CreateAndPushPlannerRestrictionContext(...) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i64 @FastPathRouterQuery(i32*) #1

declare dso_local %struct.TYPE_11__* @FastPathPlanner(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @standard_planner(i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @CreateDistributedPlannedStmt(i32, %struct.TYPE_11__*, i32*, i32*, i32, i32*) #1

declare dso_local i32* @TryToDelegateFunctionCall(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @FinalizePlan(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PopPlannerRestrictionContext(...) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i64 @NeedsDistributedPlanning(i32*) #1

declare dso_local i32 @errcode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
