; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_relation_restriction_equivalence.c_FilterPlannerRestrictionForQuery.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_relation_restriction_equivalence.c_FilterPlannerRestrictionForQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @FilterPlannerRestrictionForQuery(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @QueryRteIdentities(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.TYPE_9__* @FilterRelationRestrictionContext(%struct.TYPE_9__* %21, i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %11, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @FilterJoinRestrictionContext(i32* %24, i32 %25)
  store i32* %26, i32** %12, align 8
  %27 = call %struct.TYPE_10__* @palloc0(i32 24)
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %5, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @list_length(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %38 = call i32 @ReferenceRelationCount(%struct.TYPE_9__* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store i32 1, i32* %48, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %51, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %55
}

declare dso_local i32 @QueryRteIdentities(i32*) #1

declare dso_local %struct.TYPE_9__* @FilterRelationRestrictionContext(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @FilterJoinRestrictionContext(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @palloc0(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @ReferenceRelationCount(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
