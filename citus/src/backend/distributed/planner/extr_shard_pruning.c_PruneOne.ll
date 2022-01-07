; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_shard_pruning.c_PruneOne.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_shard_pruning.c_PruneOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_25__** }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, i64, i64, %struct.TYPE_24__*, %struct.TYPE_23__*, i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@NIL = common dso_local global i32* null, align 8
@INVALID_SHARD_INDEX = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_HASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_26__*)* @PruneOne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PruneOne(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__**, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %8, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32*, i32** @NIL, align 8
  store i32* %16, i32** %4, align 8
  br label %155

17:                                               ; preds = %3
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %21 = icmp ne %struct.TYPE_23__* %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %34 = call %struct.TYPE_25__* @FindShardInterval(i32 %32, %struct.TYPE_27__* %33)
  store %struct.TYPE_25__* %34, %struct.TYPE_25__** %8, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %36 = icmp ne %struct.TYPE_25__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = load i32*, i32** @NIL, align 8
  store i32* %38, i32** %4, align 8
  br label %155

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %22, %17
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = icmp ne %struct.TYPE_24__* %43, null
  br i1 %44, label %45, label %93

45:                                               ; preds = %40
  %46 = load i32, i32* @INVALID_SHARD_INDEX, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %48, align 8
  store %struct.TYPE_25__** %49, %struct.TYPE_25__*** %10, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DISTRIBUTE_BY_HASH, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %63 = call i32 @FindShardIntervalIndex(i32 %61, %struct.TYPE_27__* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @INVALID_SHARD_INDEX, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %45
  %68 = load i32*, i32** @NIL, align 8
  store i32* %68, i32** %4, align 8
  br label %155

69:                                               ; preds = %45
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %71 = icmp ne %struct.TYPE_25__* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %10, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %73, i64 %75
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i32*, i32** @NIL, align 8
  store i32* %85, i32** %4, align 8
  br label %155

86:                                               ; preds = %72, %69
  %87 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %10, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %87, i64 %89
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = call i32* @list_make1(%struct.TYPE_25__* %91)
  store i32* %92, i32** %4, align 8
  br label %155

93:                                               ; preds = %40
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %95 = icmp ne %struct.TYPE_25__* %94, null
  br i1 %95, label %96, label %113

96:                                               ; preds = %93
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @DISTRIBUTE_BY_HASH, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %106 = call i64 @ExhaustivePruneOne(%struct.TYPE_25__* %103, %struct.TYPE_28__* %104, %struct.TYPE_26__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32*, i32** @NIL, align 8
  store i32* %109, i32** %4, align 8
  br label %155

110:                                              ; preds = %102, %96
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %112 = call i32* @list_make1(%struct.TYPE_25__* %111)
  store i32* %112, i32** %4, align 8
  br label %155

113:                                              ; preds = %93
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DISTRIBUTE_BY_HASH, align 8
  %118 = icmp ne i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @Assert(i32 %119)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %150, label %125

125:                                              ; preds = %113
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140, %135, %130, %125
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %149 = call i32* @PruneWithBoundaries(%struct.TYPE_27__* %146, %struct.TYPE_28__* %147, %struct.TYPE_26__* %148)
  store i32* %149, i32** %4, align 8
  br label %155

150:                                              ; preds = %140, %113
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %154 = call i32* @ExhaustivePrune(%struct.TYPE_27__* %151, %struct.TYPE_28__* %152, %struct.TYPE_26__* %153)
  store i32* %154, i32** %4, align 8
  br label %155

155:                                              ; preds = %150, %145, %110, %108, %86, %84, %67, %37, %15
  %156 = load i32*, i32** %4, align 8
  ret i32* %156
}

declare dso_local %struct.TYPE_25__* @FindShardInterval(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FindShardIntervalIndex(i32, %struct.TYPE_27__*) #1

declare dso_local i32* @list_make1(%struct.TYPE_25__*) #1

declare dso_local i64 @ExhaustivePruneOne(%struct.TYPE_25__*, %struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32* @PruneWithBoundaries(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32* @ExhaustivePrune(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
