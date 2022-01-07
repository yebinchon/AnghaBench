; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_colocation_checker.c_SubqueryColocated.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_query_colocation_checker.c_SubqueryColocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SubqueryColocated(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.TYPE_9__* @FilterPlannerRestrictionForQuery(%struct.TYPE_9__* %23, i32* %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %9, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @list_length(i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @QueryContainsDistributedTableRTE(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  store i32 1, i32* %3, align 4
  br label %61

41:                                               ; preds = %2
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @UnionRelationRestrictionLists(i32* %42, i32* %43)
  store i32* %44, i32** %11, align 8
  %45 = call i8* @palloc0(i32 8)
  %46 = bitcast i8* %45 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %12, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = call i8* @palloc0(i32 8)
  %51 = bitcast i8* %50 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %13, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @RestrictionEquivalenceForPartitionKeysViaEquivalances(%struct.TYPE_9__* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %61

60:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %34
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_9__* @FilterPlannerRestrictionForQuery(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @list_length(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @QueryContainsDistributedTableRTE(i32*) #1

declare dso_local i32* @UnionRelationRestrictionLists(i32*, i32*) #1

declare dso_local i8* @palloc0(i32) #1

declare dso_local i32 @RestrictionEquivalenceForPartitionKeysViaEquivalances(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
