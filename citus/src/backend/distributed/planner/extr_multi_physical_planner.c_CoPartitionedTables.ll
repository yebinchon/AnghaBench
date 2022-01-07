; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_CoPartitionedTables.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_CoPartitionedTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32*, i32** }

@INVALID_COLOCATION_ID = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_HASH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CoPartitionedTables(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.TYPE_3__* @DistributedTableCacheEntry(i32 %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_3__* @DistributedTableCacheEntry(i32 %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %9, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32**, i32*** %23, align 8
  store i32** %24, i32*** %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32**, i32*** %26, align 8
  store i32** %27, i32*** %11, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %14, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %109

41:                                               ; preds = %2
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %109

45:                                               ; preds = %41
  %46 = load i32*, i32** %14, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @INVALID_COLOCATION_ID, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %109

64:                                               ; preds = %55, %45
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DISTRIBUTE_BY_HASH, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DISTRIBUTE_BY_HASH, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %64
  store i32 0, i32* %3, align 4
  br label %109

77:                                               ; preds = %70
  store i64 0, i64* %7, align 8
  br label %78

78:                                               ; preds = %104, %77
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = load i32**, i32*** %10, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds i32*, i32** %83, i64 %84
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %15, align 8
  %87 = load i32**, i32*** %11, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %16, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @ShardIntervalsEqual(i32* %91, i32* %92, i32* %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load i32*, i32** %15, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @CoPlacedShardIntervals(i32* %98, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97, %82
  store i32 0, i32* %6, align 4
  br label %107

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %7, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %7, align 8
  br label %78

107:                                              ; preds = %102, %78
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %76, %63, %44, %40
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_3__* @DistributedTableCacheEntry(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ShardIntervalsEqual(i32*, i32*, i32*) #1

declare dso_local i32 @CoPlacedShardIntervals(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
