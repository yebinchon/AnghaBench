; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_tscAddTimestampColumn.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_tscAddTimestampColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i32 0, align 4
@TSDB_KEYSIZE = common dso_local global i32 0, align 4
@TSDB_COL_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ts\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscAddTimestampColumn(%struct.TYPE_16__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = call %struct.TYPE_15__* @tscSqlExprGet(%struct.TYPE_16__* %16, i32 0)
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %7, align 8
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = icmp eq %struct.TYPE_15__* %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28, %21, %18
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %38 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  store i64 %38, i64* %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* @TSDB_DATA_TYPE_TIMESTAMP, align 4
  %42 = load i32, i32* @TSDB_KEYSIZE, align 4
  %43 = load i32, i32* @TSDB_KEYSIZE, align 4
  %44 = call %struct.TYPE_15__* @tscSqlExprInsert(%struct.TYPE_16__* %39, i32 0, i64 %40, %struct.TYPE_17__* %8, i32 %41, i32 %42, i32 %43)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %7, align 8
  %45 = load i32, i32* @TSDB_COL_NORMAL, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %51 = call i32 @getColumnList(i32 1, i64 %49, i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = load i32, i32* @TSDB_KEYSIZE, align 4
  %54 = load i32, i32* @TSDB_DATA_TYPE_TIMESTAMP, align 4
  %55 = call i32 @insertResultField(%struct.TYPE_16__* %52, i32 0, i32* %9, i32 %53, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %34, %28
  ret void
}

declare dso_local %struct.TYPE_15__* @tscSqlExprGet(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @tscSqlExprInsert(%struct.TYPE_16__*, i32, i64, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @getColumnList(i32, i64, i64) #1

declare dso_local i32 @insertResultField(%struct.TYPE_16__*, i32, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
