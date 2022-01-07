; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_multi_join_restriction_hook.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_multi_join_restriction_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32*, i32*, i32*, i32 }

@NIL = common dso_local global i32* null, align 8
@JOIN_SEMI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multi_join_restriction_hook(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.TYPE_14__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %19 = load i32*, i32** @NIL, align 8
  store i32* %19, i32** %18, align 8
  %20 = call %struct.TYPE_11__* (...) @CurrentPlannerRestrictionContext()
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %13, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %16, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = call i32* @MemoryContextSwitchTo(i32* %24)
  store i32* %25, i32** %17, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @copyObject(i32 %28)
  store i32* %29, i32** %18, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %14, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = call %struct.TYPE_13__* @palloc0(i32 40)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %15, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %57 = call i32 @lappend(i32 %55, %struct.TYPE_13__* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %6
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @JOIN_SEMI, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %64, %6
  %73 = phi i1 [ true, %6 ], [ %71, %64 ]
  %74 = zext i1 %73 to i32
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = call i32* @MemoryContextSwitchTo(i32* %77)
  ret void
}

declare dso_local %struct.TYPE_11__* @CurrentPlannerRestrictionContext(...) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32* @copyObject(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_13__* @palloc0(i32) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
