; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeSystem.c_dnodeInitModules.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeSystem.c_dnodeInitModules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mgmt\00", align 1
@tsModule = common dso_local global %struct.TYPE_2__* null, align 8
@TSDB_MOD_MGMT = common dso_local global i64 0, align 8
@mgmtInitSystem = common dso_local global i32 0, align 4
@mgmtCleanUpSystem = common dso_local global i32 0, align 4
@mgmtStartSystem = common dso_local global i32 0, align 4
@mgmtStopSystem = common dso_local global i32 0, align 4
@tsNumOfMPeers = common dso_local global i32 0, align 4
@tsMgmtEqualVnodeNum = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@TSDB_MOD_HTTP = common dso_local global i64 0, align 8
@httpInitSystem = common dso_local global i32 0, align 4
@httpCleanUpSystem = common dso_local global i32 0, align 4
@httpStartSystem = common dso_local global i32 0, align 4
@httpStopSystem = common dso_local global i32 0, align 4
@tsEnableHttpModule = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@TSDB_MOD_MONITOR = common dso_local global i64 0, align 8
@monitorInitSystem = common dso_local global i32 0, align 4
@monitorCleanUpSystem = common dso_local global i32 0, align 4
@monitorStartSystem = common dso_local global i32 0, align 4
@monitorStopSystem = common dso_local global i32 0, align 4
@tsEnableMonitorModule = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dnodeInitModules() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %2 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i64 %2
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load i32, i32* @mgmtInitSystem, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %7 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 7
  store i32 %5, i32* %9, align 4
  %10 = load i32, i32* @mgmtCleanUpSystem, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %12 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  store i32 %10, i32* %14, align 8
  %15 = load i32, i32* @mgmtStartSystem, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %17 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @mgmtStopSystem, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %22 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 4
  store i32 %20, i32* %24, align 8
  %25 = load i32, i32* @tsNumOfMPeers, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %27 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %25, i32* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %31 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i64, i64* @tsMgmtEqualVnodeNum, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %36 = load i64, i64* @TSDB_MOD_MGMT, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i64 %34, i64* %38, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %40 = load i64, i64* @TSDB_MOD_HTTP, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @httpInitSystem, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %45 = load i64, i64* @TSDB_MOD_HTTP, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 7
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @httpCleanUpSystem, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %50 = load i64, i64* @TSDB_MOD_HTTP, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 6
  store i32 %48, i32* %52, align 8
  %53 = load i32, i32* @httpStartSystem, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %55 = load i64, i64* @TSDB_MOD_HTTP, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @httpStopSystem, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %60 = load i64, i64* @TSDB_MOD_HTTP, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* @tsEnableHttpModule, align 4
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 -1, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %68 = load i64, i64* @TSDB_MOD_HTTP, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %72 = load i64, i64* @TSDB_MOD_HTTP, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %76 = load i64, i64* @TSDB_MOD_HTTP, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %80 = load i64, i64* @TSDB_MOD_MONITOR, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %82, align 8
  %83 = load i32, i32* @monitorInitSystem, align 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %85 = load i64, i64* @TSDB_MOD_MONITOR, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 7
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* @monitorCleanUpSystem, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %90 = load i64, i64* @TSDB_MOD_MONITOR, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  store i32 %88, i32* %92, align 8
  %93 = load i32, i32* @monitorStartSystem, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %95 = load i64, i64* @TSDB_MOD_MONITOR, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 5
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* @monitorStopSystem, align 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %100 = load i64, i64* @TSDB_MOD_MONITOR, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  store i32 %98, i32* %102, align 8
  %103 = load i32, i32* @tsEnableMonitorModule, align 4
  %104 = icmp eq i32 %103, 1
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 -1, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %108 = load i64, i64* @TSDB_MOD_MONITOR, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i32 %106, i32* %110, align 8
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %112 = load i64, i64* @TSDB_MOD_MONITOR, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsModule, align 8
  %116 = load i64, i64* @TSDB_MOD_MONITOR, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
