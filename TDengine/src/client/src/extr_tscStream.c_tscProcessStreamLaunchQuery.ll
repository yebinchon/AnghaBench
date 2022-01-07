; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscProcessStreamLaunchQuery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscStream.c_tscProcessStreamLaunchQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, %struct.TYPE_20__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

@tscProcessStreamQueryCallback = common dso_local global i32 0, align 4
@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%p stream:%p,get metermeta failed, retry in %lldms\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%p stream:%p start stream query on:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @tscProcessStreamLaunchQuery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tscProcessStreamLaunchQuery(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %3, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %4, align 8
  %15 = load i32, i32* @tscProcessStreamQueryCallback, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %20, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = call %struct.TYPE_23__* @tscGetMeterMetaInfo(i32* %22, i32 0)
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %5, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tscGetMeterMeta(%struct.TYPE_21__* %24, i32 %27, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %94

37:                                               ; preds = %1
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = call i64 @UTIL_METER_IS_METRIC(%struct.TYPE_23__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = call i32 @tscGetMetricMeta(%struct.TYPE_21__* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %94

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %40, %37
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = call i32 @tscTansformSQLFunctionForMetricQuery(i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @tscGetRetryDelayTime(i32 %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @tscError(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %73, %struct.TYPE_20__* %74, i32 %75)
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @tscSetRetryTimer(%struct.TYPE_20__* %77, %struct.TYPE_21__* %78, i32 %79)
  br label %94

81:                                               ; preds = %56
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @tscTrace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_21__* %82, %struct.TYPE_20__* %83, i32 %86)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = call i32 @tscProcessSql(%struct.TYPE_21__* %90)
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = call i32 @tscIncStreamExecutionCount(%struct.TYPE_20__* %92)
  br label %94

94:                                               ; preds = %81, %63, %54, %36
  ret void
}

declare dso_local %struct.TYPE_23__* @tscGetMeterMetaInfo(i32*, i32) #1

declare dso_local i32 @tscGetMeterMeta(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @UTIL_METER_IS_METRIC(%struct.TYPE_23__*) #1

declare dso_local i32 @tscGetMetricMeta(%struct.TYPE_21__*) #1

declare dso_local i32 @tscTansformSQLFunctionForMetricQuery(i32*) #1

declare dso_local i32 @tscGetRetryDelayTime(i32, i32) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @tscSetRetryTimer(%struct.TYPE_20__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @tscTrace(i8*, %struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_21__*) #1

declare dso_local i32 @tscIncStreamExecutionCount(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
