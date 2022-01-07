; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_recursive_planning.c_RecursivelyPlanSubqueriesAndCTEs.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_recursive_planning.c_RecursivelyPlanSubqueriesAndCTEs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i64 }

@SubqueryPushdown = common dso_local global i64 0, align 8
@RecursivelyPlanSubqueryWalker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i32*)* @RecursivelyPlanSubqueriesAndCTEs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @RecursivelyPlanSubqueriesAndCTEs(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32* @RecursivelyPlanCTEs(%struct.TYPE_13__* %7, i32* %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %3, align 8
  br label %60

14:                                               ; preds = %2
  %15 = load i64, i64* @SubqueryPushdown, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %60

18:                                               ; preds = %14
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = call i32 @WrapFunctionsInSubqueries(%struct.TYPE_13__* %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = load i32, i32* @RecursivelyPlanSubqueryWalker, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @query_tree_walker(%struct.TYPE_13__* %21, i32 %22, i32* %23, i32 0)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @ShouldRecursivelyPlanSetOperation(%struct.TYPE_13__* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @RecursivelyPlanSetOperations(%struct.TYPE_13__* %30, i32* %34, i32* %35)
  br label %37

37:                                               ; preds = %29, %18
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = call i64 @ShouldRecursivelyPlanAllSubqueriesInWhere(%struct.TYPE_13__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @RecursivelyPlanAllSubqueries(i32* %47, i32* %48)
  br label %50

50:                                               ; preds = %41, %37
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @ShouldRecursivelyPlanNonColocatedSubqueries(%struct.TYPE_13__* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @RecursivelyPlanNonColocatedSubqueries(%struct.TYPE_13__* %56, i32* %57)
  br label %59

59:                                               ; preds = %55, %50
  store i32* null, i32** %3, align 8
  br label %60

60:                                               ; preds = %59, %17, %12
  %61 = load i32*, i32** %3, align 8
  ret i32* %61
}

declare dso_local i32* @RecursivelyPlanCTEs(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @WrapFunctionsInSubqueries(%struct.TYPE_13__*) #1

declare dso_local i32 @query_tree_walker(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i64 @ShouldRecursivelyPlanSetOperation(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @RecursivelyPlanSetOperations(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i64 @ShouldRecursivelyPlanAllSubqueriesInWhere(%struct.TYPE_13__*) #1

declare dso_local i32 @RecursivelyPlanAllSubqueries(i32*, i32*) #1

declare dso_local i64 @ShouldRecursivelyPlanNonColocatedSubqueries(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @RecursivelyPlanNonColocatedSubqueries(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
