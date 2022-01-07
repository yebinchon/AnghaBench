; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_tscTansformSQLFunctionForMetricQuery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_tscTansformSQLFunctionForMetricQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, %struct.TYPE_24__, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }

@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@aAggs = common dso_local global %struct.TYPE_20__* null, align 8
@TSDB_FUNC_SUM = common dso_local global i64 0, align 8
@TSDB_FUNC_TWA = common dso_local global i64 0, align 8
@TSDB_FUNC_FIRST_DST = common dso_local global i64 0, align 8
@TSDB_FUNC_LAST_DST = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tscTansformSQLFunctionForMetricQuery(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %13 = call %struct.TYPE_28__* @tscGetMeterMetaInfo(%struct.TYPE_27__* %12, i32 0)
  store %struct.TYPE_28__* %13, %struct.TYPE_28__** %4, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %17 = icmp eq %struct.TYPE_21__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %20 = call i32 @UTIL_METER_IS_METRIC(%struct.TYPE_28__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %1
  %23 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %23, i64* %2, align 8
  br label %110

24:                                               ; preds = %18
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %103, %24
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %33
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call %struct.TYPE_26__* @tscSqlExprGet(%struct.TYPE_27__* %41, i64 %42)
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %9, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call %struct.TYPE_25__* @tscFieldInfoGetField(%struct.TYPE_27__* %44, i64 %45)
  store %struct.TYPE_25__* %46, %struct.TYPE_25__** %10, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** @aAggs, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* @TSDB_FUNC_SUM, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @TSDB_FUNC_TWA, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %57, %40
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @TSDB_FUNC_FIRST_DST, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %102

65:                                               ; preds = %61
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @TSDB_FUNC_LAST_DST, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %65, %57
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @getResultDataInfo(i32 %72, i32 %75, i64 %76, i32 %82, i64* %6, i64* %5, i64* %7, i32 0, i32 1)
  %84 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %69
  %87 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %87, i64* %2, align 8
  br label %110

88:                                               ; preds = %69
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @tscSqlExprUpdate(%struct.TYPE_27__* %89, i64 %90, i64 %91, i32 %95, i32 %96, i64 %97)
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %88, %65, %61
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %8, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %8, align 8
  br label %33

106:                                              ; preds = %33
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %108 = call i32 @tscFieldInfoUpdateOffset(%struct.TYPE_27__* %107)
  %109 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %109, i64* %2, align 8
  br label %110

110:                                              ; preds = %106, %86, %22
  %111 = load i64, i64* %2, align 8
  ret i64 %111
}

declare dso_local %struct.TYPE_28__* @tscGetMeterMetaInfo(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @UTIL_METER_IS_METRIC(%struct.TYPE_28__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_26__* @tscSqlExprGet(%struct.TYPE_27__*, i64) #1

declare dso_local %struct.TYPE_25__* @tscFieldInfoGetField(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @getResultDataInfo(i32, i32, i64, i32, i64*, i64*, i64*, i32, i32) #1

declare dso_local i32 @tscSqlExprUpdate(%struct.TYPE_27__*, i64, i64, i32, i32, i64) #1

declare dso_local i32 @tscFieldInfoUpdateOffset(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
