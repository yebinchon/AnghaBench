; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_pushdown_planning.c_DeferErrorIfFromClauseRecurs.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_pushdown_planning.c_DeferErrorIfFromClauseRecurs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@RECURRING_TUPLES_INVALID = common dso_local global i64 0, align 8
@RECURRING_TUPLES_REFERENCE_TABLE = common dso_local global i64 0, align 8
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot pushdown the subquery\00", align 1
@.str.1 = private unnamed_addr constant [140 x i8] c"Reference tables are not allowed in FROM clause when the query has subqueries in WHERE clause and it references a column from another query\00", align 1
@RECURRING_TUPLES_FUNCTION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [133 x i8] c"Functions are not allowed in FROM clause when the query has subqueries in WHERE clause and it references a column from another query\00", align 1
@RECURRING_TUPLES_RESULT_FUNCTION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [159 x i8] c"Complex subqueries and CTEs are not allowed in the FROM clause when the query has subqueries in the WHERE clause and it references a column from another query\00", align 1
@RECURRING_TUPLES_EMPTY_JOIN_TREE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [153 x i8] c"Subqueries without FROM are not allowed in FROM clause when the outer query has subqueries in WHERE clause and it references a column from another query\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*)* @DeferErrorIfFromClauseRecurs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DeferErrorIfFromClauseRecurs(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load i64, i64* @RECURRING_TUPLES_INVALID, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i64 @FromClauseRecurringTupleType(%struct.TYPE_4__* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @RECURRING_TUPLES_REFERENCE_TABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %19 = call i32* @DeferredError(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %19, i32** %2, align 8
  br label %45

20:                                               ; preds = %11
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @RECURRING_TUPLES_FUNCTION, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %26 = call i32* @DeferredError(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %26, i32** %2, align 8
  br label %45

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @RECURRING_TUPLES_RESULT_FUNCTION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %33 = call i32* @DeferredError(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %33, i32** %2, align 8
  br label %45

34:                                               ; preds = %27
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @RECURRING_TUPLES_EMPTY_JOIN_TREE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %40 = call i32* @DeferredError(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %40, i32** %2, align 8
  br label %45

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  store i32* null, i32** %2, align 8
  br label %45

45:                                               ; preds = %44, %38, %31, %24, %17, %10
  %46 = load i32*, i32** %2, align 8
  ret i32* %46
}

declare dso_local i64 @FromClauseRecurringTupleType(%struct.TYPE_4__*) #1

declare dso_local i32* @DeferredError(i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
