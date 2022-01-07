; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscFreeSqlObjPartial.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscUtil.c_tscFreeSqlObjPartial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i64, i32, i32, %struct.TYPE_11__*, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i32, i64, i64, i64, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64 }

@TSDB_SQL_INSERT = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE_EMPTY_RESULT = common dso_local global i64 0, align 8
@TSDB_SQL_METRIC_JOIN_RETRIEVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscFreeSqlObjPartial(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = icmp eq %struct.TYPE_13__* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = icmp ne %struct.TYPE_13__* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %99

16:                                               ; preds = %9
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 5
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %3, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %5, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @TSDB_SQL_INSERT, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %16
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @TSDB_SQL_RETRIEVE_METRIC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @TSDB_SQL_RETRIEVE_EMPTY_RESULT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @TSDB_SQL_METRIC_JOIN_RETRIEVE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %34, %30, %16
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = call i32 @tscRemoveFromSqlList(%struct.TYPE_13__* %43)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i64 -1, i64* %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = call i32 @pthread_mutex_lock(i32* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tfree(i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @pthread_mutex_unlock(i32* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @tfree(i32 %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @tfree(i32 %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %81 = call i32 @tscDestroyLocalReducer(%struct.TYPE_13__* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @tfree(i32 %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = call i32 @tscDestroyResPointerInfo(%struct.TYPE_12__* %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @tfree(i32 %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = call i32 @tscFreeSqlCmdData(%struct.TYPE_14__* %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = call i32 @tscRemoveAllMeterMetaInfo(%struct.TYPE_14__* %97, i32 0)
  br label %99

99:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @tscRemoveFromSqlList(%struct.TYPE_13__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @tfree(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @tscDestroyLocalReducer(%struct.TYPE_13__*) #1

declare dso_local i32 @tscDestroyResPointerInfo(%struct.TYPE_12__*) #1

declare dso_local i32 @tscFreeSqlCmdData(%struct.TYPE_14__*) #1

declare dso_local i32 @tscRemoveAllMeterMetaInfo(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
