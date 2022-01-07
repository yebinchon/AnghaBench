; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_tscProcessQueryTags.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscLocal.c_tscProcessQueryTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }

@.str = private unnamed_addr constant [14 x i8] c"invalid table\00", align 1
@TSDB_CODE_INVALID_TABLE = common dso_local global i32 0, align 4
@TSDB_FUNC_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @tscProcessQueryTags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscProcessQueryTags(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = call %struct.TYPE_18__* @tscGetMeterMetaInfo(%struct.TYPE_16__* %9, i32 0)
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = icmp eq %struct.TYPE_17__* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20, %15, %1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @TSDB_CODE_INVALID_TABLE, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %52

38:                                               ; preds = %20
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = call %struct.TYPE_15__* @tscSqlExprGet(%struct.TYPE_16__* %39, i32 0)
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %6, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TSDB_FUNC_COUNT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = call i32 @tscBuildMetricTagSqlFunctionResult(%struct.TYPE_14__* %47)
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %38
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = call i32 @tscBuildMetricTagProjectionResult(%struct.TYPE_14__* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %46, %25
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_18__* @tscGetMeterMetaInfo(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.TYPE_15__* @tscSqlExprGet(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @tscBuildMetricTagSqlFunctionResult(%struct.TYPE_14__*) #1

declare dso_local i32 @tscBuildMetricTagProjectionResult(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
