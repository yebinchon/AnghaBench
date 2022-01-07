; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setSlidingClause.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setSlidingClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"sliding value too small\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"sliding value no larger than the interval value\00", align 1
@TSDB_TIME_PRECISION_MILLI = common dso_local global i64 0, align 8
@tsMinSlidingTime = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setSlidingClause(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = call %struct.TYPE_15__* @tscGetMeterMetaInfo(%struct.TYPE_12__* %10, i32 0)
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %8, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = call i32 @getTimestampInUsFromStr(i32 %21, i64 %24, i32* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TSDB_TIME_PRECISION_MILLI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 1000
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %18
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @tsMinSlidingTime, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @setErrMsg(%struct.TYPE_12__* %47, i8* %48)
  %50 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %50, i32* %3, align 4
  br label %67

51:                                               ; preds = %40
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @setErrMsg(%struct.TYPE_12__* %60, i8* %61)
  %63 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %59, %46
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_15__* @tscGetMeterMetaInfo(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @getTimestampInUsFromStr(i32, i64, i32*) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
