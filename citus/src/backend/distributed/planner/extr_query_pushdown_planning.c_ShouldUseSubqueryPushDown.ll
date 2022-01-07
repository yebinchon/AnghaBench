; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_pushdown_planning.c_ShouldUseSubqueryPushDown.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_pushdown_planning.c_ShouldUseSubqueryPushDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@IsFunctionRTE = common dso_local global i32 0, align 4
@IsOuterJoinExpr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShouldUseSubqueryPushDown(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %10 = load i32*, i32** @NIL, align 8
  store i32* %10, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = call i64 @JoinTreeContainsSubquery(%struct.TYPE_9__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %71

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = call i64 @WhereOrHavingClauseContainsSubquery(%struct.TYPE_9__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %71

20:                                               ; preds = %15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %71

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = bitcast %struct.TYPE_9__* %27 to i32*
  %29 = load i32, i32* @IsFunctionRTE, align 4
  %30 = call i64 @FindNodeCheck(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %71

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* @IsOuterJoinExpr, align 4
  %39 = call i64 @FindNodeCheck(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %71

42:                                               ; preds = %33
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load i32, i32* @IsOuterJoinExpr, align 4
  %48 = call i64 @FindNodeCheck(i32* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %71

51:                                               ; preds = %42
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32* @QualifierList(i64 %54)
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32* @DeferErrorIfUnsupportedClause(i32* %56)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  br label %71

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = call i64 @SafeToPushdownWindowFunction(%struct.TYPE_9__* %66, i32** %9)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %71

70:                                               ; preds = %65, %60
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %69, %59, %50, %41, %32, %25, %19, %14
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @JoinTreeContainsSubquery(%struct.TYPE_9__*) #1

declare dso_local i64 @WhereOrHavingClauseContainsSubquery(%struct.TYPE_9__*) #1

declare dso_local i64 @FindNodeCheck(i32*, i32) #1

declare dso_local i32* @QualifierList(i64) #1

declare dso_local i32* @DeferErrorIfUnsupportedClause(i32*) #1

declare dso_local i64 @SafeToPushdownWindowFunction(%struct.TYPE_9__*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
