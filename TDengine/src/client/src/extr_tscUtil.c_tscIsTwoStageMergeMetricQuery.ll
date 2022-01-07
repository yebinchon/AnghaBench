; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscIsTwoStageMergeMetricQuery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscIsTwoStageMergeMetricQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32* }

@TSDB_QUERY_TYPE_STABLE_SUBQUERY = common dso_local global i32 0, align 4
@TSDB_SQL_SELECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscIsTwoStageMergeMetricQuery(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = call %struct.TYPE_9__* @tscGetMeterMetaInfo(%struct.TYPE_8__* %9, i32 0)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %42

19:                                               ; preds = %13
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = call i64 @tscProjectionQueryOnMetric(%struct.TYPE_8__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %42

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TSDB_QUERY_TYPE_STABLE_SUBQUERY, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @TSDB_QUERY_TYPE_STABLE_SUBQUERY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TSDB_SQL_SELECT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i32 @UTIL_METER_IS_METRIC(%struct.TYPE_9__* %39)
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %32, %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %38, %23, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @tscGetMeterMetaInfo(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @tscProjectionQueryOnMetric(%struct.TYPE_8__*) #1

declare dso_local i32 @UTIL_METER_IS_METRIC(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
