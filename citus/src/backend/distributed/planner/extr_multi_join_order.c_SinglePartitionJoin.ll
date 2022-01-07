; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_join_order.c_SinglePartitionJoin.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_join_order.c_SinglePartitionJoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8, i64, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, i32 }

@DUAL_PARTITION_JOIN = common dso_local global i64 0, align 8
@CARTESIAN_PRODUCT = common dso_local global i64 0, align 8
@DISTRIBUTE_BY_HASH = common dso_local global i8 0, align 1
@EnableSingleHashRepartitioning = common dso_local global i32 0, align 4
@SINGLE_HASH_PARTITION_JOIN = common dso_local global i32 0, align 4
@SINGLE_RANGE_PARTITION_JOIN = common dso_local global i32 0, align 4
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32)* @SinglePartitionJoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @SinglePartitionJoin(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8, align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 8
  store i8 %24, i8* %11, align 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %12, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32* @PartitionColumn(i32 %37, i32 %38)
  store i32* %39, i32** %17, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call signext i8 @PartitionMethod(i32 %40)
  store i8 %41, i8* %18, align 1
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @IS_OUTER_JOIN(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %123

46:                                               ; preds = %4
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @DUAL_PARTITION_JOIN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* @CARTESIAN_PRODUCT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %123

55:                                               ; preds = %50
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32* @SinglePartitionJoinClause(i32* %56, i32* %57)
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %85

61:                                               ; preds = %55
  %62 = load i8, i8* %11, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i32, i32* @EnableSingleHashRepartitioning, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %123

71:                                               ; preds = %67
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = load i32, i32* @SINGLE_HASH_PARTITION_JOIN, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i8, i8* %11, align 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = call %struct.TYPE_10__* @MakeJoinOrderNode(%struct.TYPE_9__* %72, i32 %73, i32* %74, i8 signext %75, %struct.TYPE_9__* %76)
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %5, align 8
  br label %123

78:                                               ; preds = %61
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = load i32, i32* @SINGLE_RANGE_PARTITION_JOIN, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i8, i8* %11, align 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %84 = call %struct.TYPE_10__* @MakeJoinOrderNode(%struct.TYPE_9__* %79, i32 %80, i32* %81, i8 signext %82, %struct.TYPE_9__* %83)
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %5, align 8
  br label %123

85:                                               ; preds = %55
  %86 = load i8, i8* %18, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %85
  %92 = load i32*, i32** %17, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = call i32* @SinglePartitionJoinClause(i32* %92, i32* %93)
  store i32* %94, i32** %14, align 8
  %95 = load i32*, i32** %14, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %121

97:                                               ; preds = %91
  %98 = load i8, i8* %18, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* @DISTRIBUTE_BY_HASH, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load i32, i32* @EnableSingleHashRepartitioning, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %123

107:                                              ; preds = %103
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = load i32, i32* @SINGLE_HASH_PARTITION_JOIN, align 4
  %110 = load i32*, i32** %17, align 8
  %111 = load i8, i8* %18, align 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = call %struct.TYPE_10__* @MakeJoinOrderNode(%struct.TYPE_9__* %108, i32 %109, i32* %110, i8 signext %111, %struct.TYPE_9__* %112)
  store %struct.TYPE_10__* %113, %struct.TYPE_10__** %5, align 8
  br label %123

114:                                              ; preds = %97
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = load i32, i32* @SINGLE_RANGE_PARTITION_JOIN, align 4
  %117 = load i32*, i32** %17, align 8
  %118 = load i8, i8* %18, align 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %120 = call %struct.TYPE_10__* @MakeJoinOrderNode(%struct.TYPE_9__* %115, i32 %116, i32* %117, i8 signext %118, %struct.TYPE_9__* %119)
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %5, align 8
  br label %123

121:                                              ; preds = %91
  br label %122

122:                                              ; preds = %121, %85
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %123

123:                                              ; preds = %122, %114, %107, %106, %78, %71, %70, %54, %45
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %124
}

declare dso_local i32* @PartitionColumn(i32, i32) #1

declare dso_local signext i8 @PartitionMethod(i32) #1

declare dso_local i64 @IS_OUTER_JOIN(i32) #1

declare dso_local i32* @SinglePartitionJoinClause(i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @MakeJoinOrderNode(%struct.TYPE_9__*, i32, i32*, i8 signext, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
