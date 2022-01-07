; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscKillMetricQuery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscKillMetricQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, i32*, %struct.TYPE_7__**, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@TSDB_CODE_QUERY_CANCELLED = common dso_local global i32 0, align 4
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i64 0, align 8
@TSDB_SQL_RETRIEVE_EMPTY_RESULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%p metric query is cancelled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscKillMetricQuery(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = call i32 @tscIsTwoStageMergeMetricQuery(%struct.TYPE_8__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %90

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %56, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %22, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %4, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %19
  br label %56

35:                                               ; preds = %29
  %36 = load i32, i32* @TSDB_CODE_QUERY_CANCELLED, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %39, i64 %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %36, i32* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @taosStopRpcConn(i32* %54)
  br label %56

56:                                               ; preds = %35, %34
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %13

59:                                               ; preds = %13
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  store i64 10000, i64* %5, align 8
  %62 = call i64 (...) @taosGetTimestampMs()
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %86, %59
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TSDB_SQL_RETRIEVE_METRIC, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TSDB_SQL_RETRIEVE_EMPTY_RESULT, align 8
  %76 = icmp ne i64 %74, %75
  br label %77

77:                                               ; preds = %70, %63
  %78 = phi i1 [ false, %63 ], [ %76, %70 ]
  br i1 %78, label %79, label %87

79:                                               ; preds = %77
  %80 = call i32 @taosMsleep(i32 100)
  %81 = call i64 (...) @taosGetTimestampMs()
  %82 = load i64, i64* %6, align 8
  %83 = sub nsw i64 %81, %82
  %84 = icmp sgt i64 %83, 10000
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %87

86:                                               ; preds = %79
  br label %63

87:                                               ; preds = %85, %77
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = call i32 @tscTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %88)
  br label %90

90:                                               ; preds = %87, %11
  ret void
}

declare dso_local i32 @tscIsTwoStageMergeMetricQuery(%struct.TYPE_8__*) #1

declare dso_local i32 @taosStopRpcConn(i32*) #1

declare dso_local i64 @taosGetTimestampMs(...) #1

declare dso_local i32 @taosMsleep(i32) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
