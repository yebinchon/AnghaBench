; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_hasUnsupportFunctionsForMetricQuery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_hasUnsupportFunctionsForMetricQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"TWA not allowed to apply to super table directly\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"functions not supported for super table\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"TWA only support group by tbname for super table query\00", align 1
@aAggs = common dso_local global %struct.TYPE_11__* null, align 8
@TSDB_FUNCSTATE_METRIC = common dso_local global i32 0, align 4
@TSDB_TBNAME_COLUMN_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hasUnsupportFunctionsForMetricQuery(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %10, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %9
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call %struct.TYPE_16__* @tscSqlExprGet(%struct.TYPE_15__* %17, i64 %18)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aAggs, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TSDB_FUNCSTATE_METRIC, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %71

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %7, align 8
  br label %9

35:                                               ; preds = %9
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = call i64 @tscIsTWAQuery(%struct.TYPE_15__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @setErrMsg(%struct.TYPE_15__* %46, i8* %47)
  store i32 1, i32* %2, align 4
  br label %71

49:                                               ; preds = %39
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %65, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %55, %49
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @setErrMsg(%struct.TYPE_15__* %66, i8* %67)
  store i32 1, i32* %2, align 4
  br label %71

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %35
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %65, %45, %30
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_16__* @tscSqlExprGet(%struct.TYPE_15__*, i64) #1

declare dso_local i64 @tscIsTWAQuery(%struct.TYPE_15__*) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
