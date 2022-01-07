; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_pushdown_planning.c_SubqueryMultiNodeTree.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_pushdown_planning.c_SubqueryMultiNodeTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@ERROR = common dso_local global i32 0, align 4
@RTE_SUBQUERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SubqueryMultiNodeTree(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @DeferErrorIfQueryNotSupported(i32* %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 @RaiseDeferredError(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @DeferErrorIfUnsupportedSubqueryPushdown(i32* %24, i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = call i32* @SubqueryPushdownMultiNodeTree(i32* %30)
  store i32* %31, i32** %7, align 8
  br label %72

32:                                               ; preds = %23
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @SingleRelationRepartitionSubquery(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @RaiseDeferredErrorInternal(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32*, i32** %5, align 8
  %46 = call i32* @SubqueryEntryList(i32* %45)
  store i32* %46, i32** %14, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = call i64 @linitial(i32* %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %11, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RTE_SUBQUERY, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i32* @DeferErrorIfUnsupportedSubqueryRepartition(i32* %60)
  store i32* %61, i32** %13, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %44
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* @ERROR, align 4
  %67 = call i32 @RaiseDeferredErrorInternal(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %44
  %69 = load i32*, i32** %5, align 8
  %70 = call i32* @MultiNodeTree(i32* %69)
  store i32* %70, i32** %7, align 8
  br label %71

71:                                               ; preds = %68, %32
  br label %72

72:                                               ; preds = %71, %29
  %73 = load i32*, i32** %7, align 8
  %74 = icmp ne i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @Assert(i32 %75)
  %77 = load i32*, i32** %7, align 8
  ret i32* %77
}

declare dso_local i32* @DeferErrorIfQueryNotSupported(i32*) #1

declare dso_local i32 @RaiseDeferredError(i32*, i32) #1

declare dso_local i32* @DeferErrorIfUnsupportedSubqueryPushdown(i32*, i32*) #1

declare dso_local i32* @SubqueryPushdownMultiNodeTree(i32*) #1

declare dso_local i32 @SingleRelationRepartitionSubquery(i32*) #1

declare dso_local i32 @RaiseDeferredErrorInternal(i32*, i32) #1

declare dso_local i32* @SubqueryEntryList(i32*) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @DeferErrorIfUnsupportedSubqueryRepartition(i32*) #1

declare dso_local i32* @MultiNodeTree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
