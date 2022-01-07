; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_colocation_checker.c_CreateColocatedJoinChecker.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_colocation_checker.c_CreateColocatedJoinChecker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i8*, %struct.TYPE_14__*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { i64, i32* }

@NIL = common dso_local global i8* null, align 8
@RTE_RELATION = common dso_local global i64 0, align 8
@RTE_SUBQUERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateColocatedJoinChecker(%struct.TYPE_15__* noalias sret %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  %11 = load i8*, i8** @NIL, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_13__* @AnchorRte(i32* %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %6, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = icmp eq %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i8*, i8** @NIL, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  br label %61

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RTE_RELATION, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = call i32* @WrapRteRelationIntoSubquery(%struct.TYPE_13__* %27)
  store i32* %28, i32** %7, align 8
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RTE_SUBQUERY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %7, align 8
  br label %41

39:                                               ; preds = %29
  %40 = call i32 (...) @pg_unreachable()
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %26
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call %struct.TYPE_14__* @FilterPlannerRestrictionForQuery(%struct.TYPE_14__* %43, i32* %44)
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %8, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %9, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = call i32* @GenerateAllAttributeEquivalences(%struct.TYPE_14__* %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  store i32* %51, i32** %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 2
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  store i8* %57, i8** %58, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  store i32* %59, i32** %60, align 8
  br label %61

61:                                               ; preds = %42, %17
  ret void
}

declare dso_local %struct.TYPE_13__* @AnchorRte(i32*) #1

declare dso_local i32* @WrapRteRelationIntoSubquery(%struct.TYPE_13__*) #1

declare dso_local i32 @pg_unreachable(...) #1

declare dso_local %struct.TYPE_14__* @FilterPlannerRestrictionForQuery(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @GenerateAllAttributeEquivalences(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
