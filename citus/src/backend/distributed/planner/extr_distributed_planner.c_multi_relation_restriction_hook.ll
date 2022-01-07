; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_multi_relation_restriction_hook.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_multi_relation_restriction_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@RTE_RELATION = common dso_local global i64 0, align 8
@NIL = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multi_relation_restriction_hook(i32* %0, i32* %1, i32 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @AdjustReadIntermediateResultCost(%struct.TYPE_14__* %17, i32* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RTE_RELATION, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %109

26:                                               ; preds = %4
  %27 = call %struct.TYPE_15__* (...) @CurrentPlannerRestrictionContext()
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %9, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32* @MemoryContextSwitchTo(i32* %31)
  store i32* %32, i32** %12, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IsDistributedTable(i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %16, align 4
  %41 = call %struct.TYPE_13__* @palloc0(i32 48)
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %13, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 5
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %52, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* @NIL, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @OuterPlanParamsList(i32* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %10, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %26
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.TYPE_16__* @DistributedTableCacheEntry(i32 %87)
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %14, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DISTRIBUTE_BY_NONE, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %84, %26
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %104 = call i32 @lappend(i32 %102, %struct.TYPE_13__* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %12, align 8
  %108 = call i32* @MemoryContextSwitchTo(i32* %107)
  br label %109

109:                                              ; preds = %99, %25
  ret void
}

declare dso_local i32 @AdjustReadIntermediateResultCost(%struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_15__* @CurrentPlannerRestrictionContext(...) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32 @IsDistributedTable(i32) #1

declare dso_local %struct.TYPE_13__* @palloc0(i32) #1

declare dso_local i32 @OuterPlanParamsList(i32*) #1

declare dso_local %struct.TYPE_16__* @DistributedTableCacheEntry(i32) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
