; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_master_planner.c_BuildAggregatePlan.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_master_planner.c_BuildAggregatePlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32*, i32*, i64 }

@AGG_PLAIN = common dso_local global i32 0, align 4
@AGGSPLIT_SIMPLE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"grouped column list cannot be hashed or sorted\00", align 1
@enable_hashagg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Consider setting enable_hashagg to on.\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"grouped column list must cannot be sorted\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"Having a distinct aggregate requires grouped column list to be sortable.\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AGG_SORTED = common dso_local global i32 0, align 4
@AGG_HASHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, %struct.TYPE_10__*, i32*)* @BuildAggregatePlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @BuildAggregatePlan(i32* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br label %26

26:                                               ; preds = %21, %3
  %27 = phi i1 [ true, %3 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* @AGG_PLAIN, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32* @SS_process_sublinks(i32* %37, i32 %40, i32 1)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @SS_replace_correlation_vars(i32* %42, i32* %43)
  store i32* %44, i32** %11, align 8
  %45 = call i32 @memset(i32* %7, i32 0, i32 4)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @AGGSPLIT_SIMPLE, align 4
  %49 = call i32 @get_agg_clause_costs(i32* %46, i32* %47, i32 %48, i32* %7)
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @AGGSPLIT_SIMPLE, align 4
  %53 = call i32 @get_agg_clause_costs(i32* %50, i32* %51, i32 %52, i32* %7)
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @list_length(i32* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %118

57:                                               ; preds = %26
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @grouping_is_hashable(i32* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @grouping_is_sortable(i32* %60)
  store i32 %61, i32* %13, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = call i32 @HasDistinctAggregate(%struct.TYPE_10__* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ERROR, align 4
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 @ereport(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %66, %57
  %74 = load i32, i32* @enable_hashagg, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = call i64 @UseGroupAggregateWithHLL(%struct.TYPE_10__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %82, %79, %76, %73
  store i8* null, i8** %15, align 8
  %87 = load i32, i32* @enable_hashagg, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %93

93:                                               ; preds = %92, %89, %86
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @ERROR, align 4
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 @errdetail(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i8*, i8** %15, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @errhint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %103)
  br label %106

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %102
  %107 = phi i32 [ %104, %102 ], [ 0, %105 ]
  %108 = call i32 @ereport(i32 %97, i32 %107)
  br label %109

109:                                              ; preds = %106, %93
  %110 = load i32, i32* @AGG_SORTED, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i64 @make_sort_from_sortclauses(i32* %111, i32* %112)
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %6, align 8
  br label %117

115:                                              ; preds = %82
  %116 = load i32, i32* @AGG_HASHED, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %115, %109
  br label %118

118:                                              ; preds = %117, %26
  %119 = load i32*, i32** %9, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = call %struct.TYPE_11__* @makeAggNode(i32* %119, i32* %120, i32 %121, i32* %122, i32* %123)
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %16, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  ret %struct.TYPE_11__* %134
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @SS_process_sublinks(i32*, i32, i32) #1

declare dso_local i32* @SS_replace_correlation_vars(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_agg_clause_costs(i32*, i32*, i32, i32*) #1

declare dso_local i64 @list_length(i32*) #1

declare dso_local i32 @grouping_is_hashable(i32*) #1

declare dso_local i32 @grouping_is_sortable(i32*) #1

declare dso_local i32 @HasDistinctAggregate(%struct.TYPE_10__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i64 @UseGroupAggregateWithHLL(%struct.TYPE_10__*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @errhint(i8*, i8*) #1

declare dso_local i64 @make_sort_from_sortclauses(i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @makeAggNode(i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
