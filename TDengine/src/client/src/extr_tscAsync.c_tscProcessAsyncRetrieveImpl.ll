; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_tscProcessAsyncRetrieveImpl.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_tscProcessAsyncRetrieveImpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { void (...)*, i32, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"sql object is NULL\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"qhandle is NULL\00", align 1
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i64 0, align 8
@TSDB_SQL_LOCAL = common dso_local global i64 0, align 8
@TSDB_SQL_MGMT = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE = common dso_local global i64 0, align 8
@TSDB_SQL_FETCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, void (...)*)* @tscProcessAsyncRetrieveImpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscProcessAsyncRetrieveImpl(i8* %0, i32* %1, i32 %2, void (...)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (...)*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (...)* %3, void (...)** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = icmp eq %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = call i32 @tscError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @tscQueueAsyncError(i32 %20, i8* %21)
  br label %84

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %10, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %11, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32, %23
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @tscError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %40
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @tscQueueAsyncError(i32 %49, i8* %50)
  br label %84

52:                                               ; preds = %32
  %53 = load void (...)*, void (...)** %8, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store void (...)* %53, void (...)** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TSDB_SQL_RETRIEVE_METRIC, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %52
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TSDB_SQL_LOCAL, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TSDB_SQL_MGMT, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64, i64* @TSDB_SQL_RETRIEVE, align 8
  br label %77

75:                                               ; preds = %67
  %76 = load i64, i64* @TSDB_SQL_FETCH, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %61, %52
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = call i32 @tscProcessSql(%struct.TYPE_6__* %82)
  br label %84

84:                                               ; preds = %81, %46, %16
  ret void
}

declare dso_local i32 @tscError(i8*) #1

declare dso_local i32 @tscQueueAsyncError(i32, i8*) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
