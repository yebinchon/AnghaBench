; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateSqlFunctionInStreamSql.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateSqlFunctionInStreamSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"sample interval can not be less than 10ms.\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"functions not allowed in select clause\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@aAggs = common dso_local global %struct.TYPE_11__* null, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @validateSqlFunctionInStreamSql(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @setErrMsg(%struct.TYPE_9__* %18, i8* %19)
  %21 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %21, i64* %2, align 8
  br label %54

22:                                               ; preds = %12, %1
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.TYPE_10__* @tscSqlExprGet(%struct.TYPE_9__* %31, i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aAggs, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IS_STREAM_QUERY_VALID(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %30
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @setErrMsg(%struct.TYPE_9__* %44, i8* %45)
  %47 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %47, i64* %2, align 8
  br label %54

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %23

52:                                               ; preds = %23
  %53 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %52, %43, %17
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local i32 @setErrMsg(%struct.TYPE_9__*, i8*) #1

declare dso_local %struct.TYPE_10__* @tscSqlExprGet(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @IS_STREAM_QUERY_VALID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
