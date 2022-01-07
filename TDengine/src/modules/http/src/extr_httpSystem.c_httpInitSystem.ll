; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSystem.c_httpInitSystem.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSystem.c_httpInitSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@httpServer = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"rest\00", align 1
@tsHttpIp = common dso_local global i8* null, align 8
@tsHttpPort = common dso_local global i32 0, align 4
@tsHttpCacheSessions = common dso_local global i32 0, align 4
@tsHttpSessionExpire = common dso_local global i32 0, align 4
@tsHttpMaxThreads = common dso_local global i32 0, align 4
@httpProcessData = common dso_local global i32 0, align 4
@tsHttpEnableRecordSql = common dso_local global i64 0, align 8
@tsNumOfLogLines = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpInitSystem() #0 {
  %1 = call i32 (...) @taos_init()
  %2 = call i64 @malloc(i32 32)
  %3 = inttoptr i64 %2 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** @httpServer, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %5 = call i32 @memset(%struct.TYPE_9__* %4, i32 0, i32 32)
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @strcpy(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** @tsHttpIp, align 8
  %14 = call i32 @strcpy(i32 %12, i8* %13)
  %15 = load i32, i32* @tsHttpPort, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @tsHttpCacheSessions, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @tsHttpSessionExpire, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @tsHttpMaxThreads, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @httpProcessData, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i32 @pthread_mutex_init(i32* %31, i32* null)
  %33 = load i64, i64* @tsHttpEnableRecordSql, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %0
  %36 = load i32, i32* @tsNumOfLogLines, align 4
  %37 = sdiv i32 %36, 10
  %38 = call i32 @taosInitNote(i32 %37, i32 1)
  br label %39

39:                                               ; preds = %35, %0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %41 = call i32 @restInitHandle(%struct.TYPE_9__* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %43 = call i32 @adminInitHandle(%struct.TYPE_9__* %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %45 = call i32 @gcInitHandle(%struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %47 = call i32 @tgInitHandle(%struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @httpServer, align 8
  %49 = call i32 @opInitHandle(%struct.TYPE_9__* %48)
  ret i32 0
}

declare dso_local i32 @taos_init(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @taosInitNote(i32, i32) #1

declare dso_local i32 @restInitHandle(%struct.TYPE_9__*) #1

declare dso_local i32 @adminInitHandle(%struct.TYPE_9__*) #1

declare dso_local i32 @gcInitHandle(%struct.TYPE_9__*) #1

declare dso_local i32 @tgInitHandle(%struct.TYPE_9__*) #1

declare dso_local i32 @opInitHandle(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
