; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_tscRestoreSQLFunctionForMetricQuery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_tscRestoreSQLFunctionForMetricQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@TSDB_FUNC_FIRST_DST = common dso_local global i64 0, align 8
@TSDB_FUNC_LAST_DST = common dso_local global i64 0, align 8
@TSDB_FUNC_SUM = common dso_local global i64 0, align 8
@TSDB_FUNC_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscRestoreSQLFunctionForMetricQuery(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i32* @tscGetMeterMetaInfo(%struct.TYPE_14__* %7, i32 0)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @UTIL_METER_IS_METRIC(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %66

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %63, %13
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %15, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %14
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call %struct.TYPE_13__* @tscSqlExprGet(%struct.TYPE_14__* %22, i64 %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %5, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call %struct.TYPE_12__* @tscFieldInfoGetField(%struct.TYPE_14__* %25, i64 %26)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %6, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TSDB_FUNC_FIRST_DST, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %21
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TSDB_FUNC_LAST_DST, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33, %21
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TSDB_FUNC_SUM, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TSDB_FUNC_MAX, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45, %33
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %51, %45, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %4, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %4, align 8
  br label %14

66:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32* @tscGetMeterMetaInfo(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @UTIL_METER_IS_METRIC(i32*) #1

declare dso_local %struct.TYPE_13__* @tscSqlExprGet(%struct.TYPE_14__*, i64) #1

declare dso_local %struct.TYPE_12__* @tscFieldInfoGetField(%struct.TYPE_14__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
