; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_doCleanupSubqueries.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_doCleanupSubqueries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }

@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i32 0, align 4
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i64, i64, %struct.TYPE_12__*, i32*, i32*, i32**, %struct.TYPE_12__*)* @doCleanupSubqueries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doCleanupSubqueries(%struct.TYPE_13__* %0, i64 %1, i64 %2, %struct.TYPE_12__* %3, i32* %4, i32* %5, i32** %6, %struct.TYPE_12__* %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32** %6, i32*** %15, align 8
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %16, align 8
  %17 = load i32, i32* @TSDB_SQL_RETRIEVE_METRIC, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %8
  %28 = load i32**, i32*** %15, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @tscLocalReducerEnvDestroy(i32** %28, i32* %29, i32* %30, i64 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %34 = call i32 @tfree(%struct.TYPE_12__* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %27
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = call i32 @tfree(%struct.TYPE_12__* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = call i32 @pthread_mutex_unlock(i32* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = call i32 @pthread_mutex_destroy(i32* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %49 = call i32 @tfree(%struct.TYPE_12__* %48)
  br label %50

50:                                               ; preds = %37, %27
  br label %51

51:                                               ; preds = %50, %8
  ret void
}

declare dso_local i32 @tscLocalReducerEnvDestroy(i32**, i32*, i32*, i64) #1

declare dso_local i32 @tfree(%struct.TYPE_12__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
