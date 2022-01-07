; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorSaveSystemInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorSaveSystemInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8*, i32*, i32 }

@monitor = common dso_local global %struct.TYPE_2__* null, align 8
@MONITOR_STATE_INITIALIZED = common dso_local global i64 0, align 8
@monitorCountReqFp = common dso_local global i32* null, align 8
@SQL_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"insert into %s.dn_%s values(%ld\00", align 1
@tsMonitorDbName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"monitor:%p, save system info, sql:%s\00", align 1
@dnodeMontiorInsertSysCallback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@MONITOR_STATE_STOPPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @monitorSaveSystemInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MONITOR_STATE_INITIALIZED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %104

10:                                               ; preds = %0
  %11 = load i32*, i32** @monitorCountReqFp, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %104

14:                                               ; preds = %10
  %15 = call i32 (...) @taosGetTimestampUs()
  store i32 %15, i32* %1, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* @SQL_LENGTH, align 4
  %21 = load i8*, i8** @tsMonitorDbName, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @snprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = call i64 @monitorBuildCpuSql(i8* %30)
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = call i64 @monitorBuildMemorySql(i8* %39)
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  %45 = load i8*, i8** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = call i64 @monitorBuildDiskSql(i8* %48)
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %3, align 4
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = call i64 @monitorBuildBandSql(i8* %57)
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %3, align 4
  %63 = load i8*, i8** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = call i64 @monitorBuildIoSql(i8* %66)
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %3, align 4
  %72 = load i8*, i8** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = call i64 @monitorBuildReqSql(i8* %75)
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %3, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %2, align 8
  %85 = call i32 @monitorTrace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %83, i8* %84)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i8*, i8** %2, align 8
  %90 = load i32, i32* @dnodeMontiorInsertSysCallback, align 4
  %91 = call i32 @taos_query_a(i32 %88, i8* %89, i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %14
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MONITOR_STATE_STOPPED, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 (...) @monitorStartTimer()
  br label %104

104:                                              ; preds = %9, %13, %102, %96, %14
  ret void
}

declare dso_local i32 @taosGetTimestampUs(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i64 @monitorBuildCpuSql(i8*) #1

declare dso_local i64 @monitorBuildMemorySql(i8*) #1

declare dso_local i64 @monitorBuildDiskSql(i8*) #1

declare dso_local i64 @monitorBuildBandSql(i8*) #1

declare dso_local i64 @monitorBuildIoSql(i8*) #1

declare dso_local i64 @monitorBuildReqSql(i8*) #1

declare dso_local i32 @monitorTrace(i8*, i32, i8*) #1

declare dso_local i32 @taos_query_a(i32, i8*, i32, i8*) #1

declare dso_local i32 @monitorStartTimer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
