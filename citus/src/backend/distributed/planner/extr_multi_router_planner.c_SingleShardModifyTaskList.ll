; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_SingleShardModifyTaskList.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_router_planner.c_SingleShardModifyTaskList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32*, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i8, i32 }
%struct.TYPE_13__ = type { i32 }

@MODIFY_TASK = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8
@DISTRIBUTE_BY_NONE = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"cannot perform select on a distributed table and modify a reference table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i32*, i8*)* @SingleShardModifyTaskList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @SingleShardModifyTaskList(i32* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load i32, i32* @MODIFY_TASK, align 4
  %18 = call %struct.TYPE_11__* @CreateTask(i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %11, align 8
  %19 = call %struct.TYPE_12__* (...) @makeStringInfo()
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  store i8 0, i8* %14, align 1
  %20 = load i32*, i32** @NIL, align 8
  store i32* %20, i32** %15, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %16, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ExtractRangeTableEntryWalker(i32* %21, i32** %15)
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.TYPE_13__* @GetUpdateOrDeleteRTE(i32* %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %16, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_14__* @DistributedTableCacheEntry(i32 %27)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %13, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  store i8 %31, i8* %14, align 1
  %32 = load i8, i8* %14, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @DISTRIBUTE_BY_NONE, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %5
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @SelectsFromDistributedTable(i32* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %37, %5
  %49 = load i32*, i32** %6, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = call i32 @pg_get_query_def(i32* %49, %struct.TYPE_12__* %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %75 = call i32* @list_make1(%struct.TYPE_11__* %74)
  ret i32* %75
}

declare dso_local %struct.TYPE_11__* @CreateTask(i32) #1

declare dso_local %struct.TYPE_12__* @makeStringInfo(...) #1

declare dso_local i32 @ExtractRangeTableEntryWalker(i32*, i32**) #1

declare dso_local %struct.TYPE_13__* @GetUpdateOrDeleteRTE(i32*) #1

declare dso_local %struct.TYPE_14__* @DistributedTableCacheEntry(i32) #1

declare dso_local i64 @SelectsFromDistributedTable(i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pg_get_query_def(i32*, %struct.TYPE_12__*) #1

declare dso_local i32* @list_make1(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
