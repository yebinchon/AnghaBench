; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_backend_data.c_AssignDistributedTransactionId.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_backend_data.c_AssignDistributedTransactionId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@backendManagementShmemData = common dso_local global %struct.TYPE_7__* null, align 8
@MyBackendData = common dso_local global %struct.TYPE_8__* null, align 8
@MyDatabaseId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AssignDistributedTransactionId() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @backendManagementShmemData, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @pg_atomic_fetch_add_u64(i32* %8, i32 1)
  store i32 %9, i32* %2, align 4
  %10 = call i32 (...) @GetLocalGroupId()
  store i32 %10, i32* %3, align 4
  %11 = call i32 (...) @GetCurrentTimestamp()
  store i32 %11, i32* %4, align 4
  %12 = call i32 (...) @GetUserId()
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = call i32 @SpinLockAcquire(i32* %14)
  %16 = load i32, i32* @MyDatabaseId, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyBackendData, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i32 @SpinLockRelease(i32* %45)
  ret void
}

declare dso_local i32 @pg_atomic_fetch_add_u64(i32*, i32) #1

declare dso_local i32 @GetLocalGroupId(...) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
