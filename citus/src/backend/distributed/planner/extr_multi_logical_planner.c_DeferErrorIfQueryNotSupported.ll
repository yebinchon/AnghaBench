; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_planner.c_DeferErrorIfQueryNotSupported.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_planner.c_DeferErrorIfQueryNotSupported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [86 x i8] c"Consider joining tables on partition column and have equal filter on joining columns.\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Consider using an equality filter on the distributed table's partition column.\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"could not run distributed query with subquery outside the FROM, WHERE and HAVING clauses\00", align 1
@.str.3 = private unnamed_addr constant [95 x i8] c"could not run distributed query because the window function that is used cannot be pushed down\00", align 1
@.str.4 = private unnamed_addr constant [208 x i8] c"Window functions are supported in two ways. Either add an equality filter on the distributed tables' partition column or use the window functions with a PARTITION BY clause containing the distribution column\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"could not run distributed query with UNION, INTERSECT, or EXCEPT\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"could not run distributed query with RECURSIVE\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"could not run distributed query with common table expressions\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"could not run distributed query with FOR UPDATE/SHARE commands\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"could not run distributed query with GROUPING SETS, CUBE, or ROLLUP\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"could not run distributed query which use TABLESAMPLE\00", align 1
@.str.11 = private unnamed_addr constant [80 x i8] c"could not run distributed query with join types other than INNER or OUTER JOINS\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"could not run distributed query with complex table expressions\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DeferErrorIfQueryNotSupported(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = call i64 @TargetListContainsSubquery(%struct.TYPE_8__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %23 = load i8*, i8** %12, align 8
  store i8* %23, i8** %10, align 8
  br label %24

24:                                               ; preds = %22, %18, %1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = call i32 @SafeToPushdownWindowFunction(%struct.TYPE_8__* %30, i32** %9)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %34

34:                                               ; preds = %33, %29, %24
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %40 = load i8*, i8** %12, align 8
  store i8* %40, i8** %10, align 8
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  %54 = load i8*, i8** %12, align 8
  store i8* %54, i8** %10, align 8
  br label %55

55:                                               ; preds = %53, %48
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %61 = load i8*, i8** %12, align 8
  store i8* %61, i8** %10, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  %68 = load i8*, i8** %12, align 8
  store i8* %68, i8** %10, align 8
  br label %69

69:                                               ; preds = %67, %62
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = call i32 @HasTablesample(%struct.TYPE_8__* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  %75 = load i8*, i8** %12, align 8
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = call i32 @HasUnsupportedJoinWalker(i32* %80, i32* null)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  %85 = load i8*, i8** %11, align 8
  store i8* %85, i8** %10, align 8
  br label %86

86:                                               ; preds = %84, %76
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = call i32 @HasComplexRangeTableType(%struct.TYPE_8__* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  %92 = load i8*, i8** %12, align 8
  store i8* %92, i8** %10, align 8
  br label %93

93:                                               ; preds = %91, %86
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = call i32 @ErrorHintRequired(i8* %97, %struct.TYPE_8__* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %101 = load i8*, i8** %4, align 8
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i8*, i8** %10, align 8
  br label %107

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i8* [ %105, %104 ], [ null, %106 ]
  %109 = call i32* @DeferredError(i32 %100, i8* %101, i32* null, i8* %108)
  store i32* %109, i32** %2, align 8
  br label %111

110:                                              ; preds = %93
  store i32* null, i32** %2, align 8
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i32*, i32** %2, align 8
  ret i32* %112
}

declare dso_local i64 @TargetListContainsSubquery(%struct.TYPE_8__*) #1

declare dso_local i32 @SafeToPushdownWindowFunction(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @HasTablesample(%struct.TYPE_8__*) #1

declare dso_local i32 @HasUnsupportedJoinWalker(i32*, i32*) #1

declare dso_local i32 @HasComplexRangeTableType(%struct.TYPE_8__*) #1

declare dso_local i32 @ErrorHintRequired(i8*, %struct.TYPE_8__*) #1

declare dso_local i32* @DeferredError(i32, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
