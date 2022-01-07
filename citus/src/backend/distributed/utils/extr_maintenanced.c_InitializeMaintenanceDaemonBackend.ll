; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_maintenanced.c_InitializeMaintenanceDaemonBackend.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_maintenanced.c_InitializeMaintenanceDaemonBackend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MaintenanceDaemonControl = common dso_local global %struct.TYPE_8__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MaintenanceDaemonDBHash = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@HASH_ENTER_NULL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ran out of database slots\00", align 1
@BGW_MAXLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Citus Maintenance Daemon: %u/%u\00", align 1
@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BGWORKER_BACKEND_DATABASE_CONNECTION = common dso_local global i32 0, align 4
@BgWorkerStart_ConsistentState = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"citus\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"CitusMaintenanceDaemonMain\00", align 1
@MyProcPid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"could not start maintenance background worker\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Increasing max_worker_processes might help.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitializeMaintenanceDaemonBackend() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  %7 = call i32 (...) @CitusExtensionOwner()
  store i32 %7, i32* %2, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MaintenanceDaemonControl, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* @LW_EXCLUSIVE, align 4
  %11 = call i32 @LWLockAcquire(i32* %9, i32 %10)
  %12 = load i32, i32* @MaintenanceDaemonDBHash, align 4
  %13 = load i32, i32* @HASH_ENTER_NULL, align 4
  %14 = call i64 @hash_search(i32 %12, i32* @MyDatabaseId, i32 %13, i32* %3)
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %1, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32, i32* @ERROR, align 4
  %20 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @ereport(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %0
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %81, label %30

30:                                               ; preds = %25, %22
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = call i32 @memset(%struct.TYPE_7__* %4, i32 0, i32 36)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BGW_MAXLEN, align 4
  %38 = load i32, i32* @MyDatabaseId, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @snprintf(i32 %36, i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %42 = load i32, i32* @BGWORKER_BACKEND_DATABASE_CONNECTION, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @BgWorkerStart_ConsistentState, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 7
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 5, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sprintf(i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sprintf(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @MyDatabaseId, align 4
  %55 = call i32 @ObjectIdGetDatum(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %58, i32* %2, i32 4)
  %60 = load i32, i32* @MyProcPid, align 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = call i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_7__* %4, i32** %5)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %30
  %65 = load i32, i32* @ERROR, align 4
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %67 = call i32 @errhint(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %68 = call i32 @ereport(i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %64, %30
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MaintenanceDaemonControl, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i32 @LWLockRelease(i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @WaitForBackgroundWorkerStartup(i32* %79, i32* %6)
  br label %109

81:                                               ; preds = %25
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @Assert(i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %2, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %81
  %92 = load i32, i32* %2, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @SetLatch(i64 %102)
  br label %104

104:                                              ; preds = %99, %91
  br label %105

105:                                              ; preds = %104, %81
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MaintenanceDaemonControl, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = call i32 @LWLockRelease(i32* %107)
  br label %109

109:                                              ; preds = %105, %69
  ret void
}

declare dso_local i32 @CitusExtensionOwner(...) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i64 @hash_search(i32, i32*, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_7__*, i32**) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @WaitForBackgroundWorkerStartup(i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SetLatch(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
