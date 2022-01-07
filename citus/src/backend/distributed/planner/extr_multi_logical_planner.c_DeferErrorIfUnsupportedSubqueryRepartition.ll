; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_planner.c_DeferErrorIfUnsupportedSubqueryRepartition.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_planner.c_DeferErrorIfUnsupportedSubqueryRepartition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }

@NIL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"Subqueries without aggregates are not supported yet\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Subqueries without group by clause are not supported yet\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Subqueries with order by clause are not supported yet\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Subqueries with limit are not supported yet\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Subqueries with offset are not supported yet\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Subqueries other than from-clause subqueries are unsupported\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"cannot perform distributed planning on this query\00", align 1
@RTE_RELATION = common dso_local global i64 0, align 8
@RTE_SUBQUERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DeferErrorIfUnsupportedSubqueryRepartition(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 1, i32* %5, align 4
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** @NIL, align 8
  %21 = icmp eq i32* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %23

23:                                               ; preds = %22, %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %41

41:                                               ; preds = %40, %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32* @DeferredError(i32 %51, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %52, i32* null)
  store i32* %53, i32** %2, align 8
  br label %91

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = call i32 @ExtractRangeTableIndexWalker(i32* %58, i32** %6)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @list_length(i32* %60)
  %62 = icmp eq i32 %61, 1
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @linitial_int(i32* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_5__* @rt_fetch(i32 %67, i32 %70)
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %8, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RTE_RELATION, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %54
  store i32* null, i32** %2, align 8
  br label %91

78:                                               ; preds = %54
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RTE_SUBQUERY, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %9, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = call i32* @DeferErrorIfUnsupportedSubqueryRepartition(%struct.TYPE_6__* %89)
  store i32* %90, i32** %2, align 8
  br label %91

91:                                               ; preds = %78, %77, %50
  %92 = load i32*, i32** %2, align 8
  ret i32* %92
}

declare dso_local i32* @DeferredError(i32, i8*, i8*, i32*) #1

declare dso_local i32 @ExtractRangeTableIndexWalker(i32*, i32**) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @linitial_int(i32*) #1

declare dso_local %struct.TYPE_5__* @rt_fetch(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
