; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_backend_data.c_BackendManagementShmemInit.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_backend_data.c_BackendManagementShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@AddinShmemInitLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Backend Management Shmem\00", align 1
@backendManagementShmemData = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Backend Management Tranche\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @BackendManagementShmemInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BackendManagementShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @AddinShmemInitLock, align 4
  %8 = load i32, i32* @LW_EXCLUSIVE, align 4
  %9 = call i32 @LWLockAcquire(i32 %7, i32 %8)
  %10 = call i32 (...) @BackendManagementShmemSize()
  %11 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10, i32* %1)
  %12 = inttoptr i64 %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** @backendManagementShmemData, align 8
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %60, label %15

15:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @backendManagementShmemData, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 3
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @backendManagementShmemData, align 8
  %19 = call i32 (...) @BackendManagementShmemSize()
  %20 = call i32 @memset(%struct.TYPE_9__* %18, i32 0, i32 %19)
  %21 = call i32 (...) @LWLockNewTrancheId()
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @LWLockRegisterTranche(i32 %26, i8* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @backendManagementShmemData, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LWLockInitialize(i32* %30, i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @backendManagementShmemData, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = call i32 @pg_atomic_init_u64(i32* %36, i32 1)
  %38 = call i32 (...) @TotalProcCount()
  store i32 %38, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %56, %15
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @backendManagementShmemData, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %48
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %6, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = call i32 @SpinLockInit(i32* %54)
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %2, align 4
  br label %39

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %0
  %61 = load i32, i32* @AddinShmemInitLock, align 4
  %62 = call i32 @LWLockRelease(i32 %61)
  %63 = call i32 (...) @prev_shmem_startup_hook()
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @BackendManagementShmemSize(...) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @LWLockNewTrancheId(...) #1

declare dso_local i32 @LWLockRegisterTranche(i32, i8*) #1

declare dso_local i32 @LWLockInitialize(i32*, i32) #1

declare dso_local i32 @pg_atomic_init_u64(i32*, i32) #1

declare dso_local i32 @TotalProcCount(...) #1

declare dso_local i32 @SpinLockInit(i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @prev_shmem_startup_hook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
