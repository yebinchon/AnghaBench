; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_taos_fetch_row_a.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_taos_fetch_row_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { void (i8*, i32*, i32)*, i32, i8*, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.TYPE_11__ = type { i32*, i32, %struct.TYPE_9__*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"sql object is NULL\00", align 1
@TSDB_CODE_DISCONNECTED = common dso_local global i32 0, align 4
@globalCode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"qhandle is NULL\00", align 1
@tscProcessAsyncRetrieve = common dso_local global i32 0, align 4
@TSDB_SQL_MGMT = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE = common dso_local global i64 0, align 8
@TSDB_SQL_FETCH = common dso_local global i64 0, align 8
@tscProcessFetchRow = common dso_local global i32 0, align 4
@tscQhandle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taos_fetch_row_a(i32* %0, void (i8*, i32*, i32)* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca void (i8*, i32*, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  store i32* %0, i32** %4, align 8
  store void (i8*, i32*, i32)* %1, void (i8*, i32*, i32)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = icmp ne %struct.TYPE_9__* %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15, %3
  %22 = call i32 @tscError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @TSDB_CODE_DISCONNECTED, align 4
  store i32 %23, i32* @globalCode, align 4
  %24 = load void (i8*, i32*, i32)*, void (i8*, i32*, i32)** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @tscQueueAsyncError(void (i8*, i32*, i32)* %24, i8* %25)
  br label %88

27:                                               ; preds = %15
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %8, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %9, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = call i32 @tscError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %38 = load void (i8*, i32*, i32)*, void (i8*, i32*, i32)** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @tscQueueAsyncError(void (i8*, i32*, i32)* %38, i8* %39)
  br label %88

41:                                               ; preds = %27
  %42 = load void (i8*, i32*, i32)*, void (i8*, i32*, i32)** %5, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store void (i8*, i32*, i32)* %42, void (i8*, i32*, i32)** %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %41
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = call i32 @tscResetForNextRetrieve(%struct.TYPE_8__* %56)
  %58 = load i32, i32* @tscProcessAsyncRetrieve, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TSDB_SQL_MGMT, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i64, i64* @TSDB_SQL_RETRIEVE, align 8
  br label %70

68:                                               ; preds = %55
  %69 = load i64, i64* @TSDB_SQL_FETCH, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = call i32 @tscProcessSql(%struct.TYPE_9__* %74)
  br label %88

76:                                               ; preds = %41
  %77 = load i32, i32* @tscProcessFetchRow, align 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  store i32 %77, i32* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %83, i32* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load i32, i32* @tscQhandle, align 4
  %87 = call i32 @taosScheduleTask(i32 %86, %struct.TYPE_11__* %10)
  br label %88

88:                                               ; preds = %21, %36, %76, %70
  ret void
}

declare dso_local i32 @tscError(i8*) #1

declare dso_local i32 @tscQueueAsyncError(void (i8*, i32*, i32)*, i8*) #1

declare dso_local i32 @tscResetForNextRetrieve(%struct.TYPE_8__*) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_9__*) #1

declare dso_local i32 @taosScheduleTask(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
