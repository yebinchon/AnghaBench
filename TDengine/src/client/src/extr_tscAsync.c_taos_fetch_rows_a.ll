; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_taos_fetch_rows_a.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_taos_fetch_rows_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { void (i8*, i32*, i32)*, i8*, i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"sql object is NULL\00", align 1
@TSDB_CODE_DISCONNECTED = common dso_local global i32 0, align 4
@globalCode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"qhandle is NULL\00", align 1
@tscProcessAsyncFetchRowsProxy = common dso_local global i32 0, align 4
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i64 0, align 8
@TSDB_SQL_LOCAL = common dso_local global i64 0, align 8
@TSDB_SQL_MGMT = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE = common dso_local global i64 0, align 8
@TSDB_SQL_FETCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taos_fetch_rows_a(i32* %0, void (i8*, i32*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca void (i8*, i32*, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store void (i8*, i32*, i32)* %1, void (i8*, i32*, i32)** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = icmp ne %struct.TYPE_7__* %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14, %3
  %21 = call i32 @tscError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @TSDB_CODE_DISCONNECTED, align 4
  store i32 %22, i32* @globalCode, align 4
  %23 = load void (i8*, i32*, i32)*, void (i8*, i32*, i32)** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @tscQueueAsyncError(void (i8*, i32*, i32)* %23, i8* %24)
  br label %80

26:                                               ; preds = %14
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = call i32 @tscError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %37 = load void (i8*, i32*, i32)*, void (i8*, i32*, i32)** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @tscQueueAsyncError(void (i8*, i32*, i32)* %37, i8* %38)
  br label %80

40:                                               ; preds = %26
  %41 = load void (i8*, i32*, i32)*, void (i8*, i32*, i32)** %5, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store void (i8*, i32*, i32)* %41, void (i8*, i32*, i32)** %43, align 8
  %44 = load i32, i32* @tscProcessAsyncFetchRowsProxy, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = call i32 @tscResetForNextRetrieve(%struct.TYPE_6__* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TSDB_SQL_RETRIEVE_METRIC, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %40
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TSDB_SQL_LOCAL, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TSDB_SQL_MGMT, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i64, i64* @TSDB_SQL_RETRIEVE, align 8
  br label %73

71:                                               ; preds = %63
  %72 = load i64, i64* @TSDB_SQL_FETCH, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i64 [ %70, %69 ], [ %72, %71 ]
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %73, %57, %40
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = call i32 @tscProcessSql(%struct.TYPE_7__* %78)
  br label %80

80:                                               ; preds = %77, %35, %20
  ret void
}

declare dso_local i32 @tscError(i8*) #1

declare dso_local i32 @tscQueueAsyncError(void (i8*, i32*, i32)*, i8*) #1

declare dso_local i32 @tscResetForNextRetrieve(%struct.TYPE_6__*) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
