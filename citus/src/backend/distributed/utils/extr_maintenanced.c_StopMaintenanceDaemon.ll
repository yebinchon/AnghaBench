; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_maintenanced.c_StopMaintenanceDaemon.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_maintenanced.c_StopMaintenanceDaemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@MaintenanceDaemonControl = common dso_local global %struct.TYPE_4__* null, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MaintenanceDaemonDBHash = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StopMaintenanceDaemon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MaintenanceDaemonControl, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* @LW_EXCLUSIVE, align 4
  %9 = call i32 @LWLockAcquire(i32* %7, i32 %8)
  %10 = load i32, i32* @MaintenanceDaemonDBHash, align 4
  %11 = load i32, i32* @HASH_REMOVE, align 4
  %12 = call i64 @hash_search(i32 %10, i32* %2, i32 %11, i32* %3)
  %13 = inttoptr i64 %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MaintenanceDaemonControl, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @LWLockRelease(i32* %22)
  %24 = load i64, i64* %5, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @SIGTERM, align 4
  %29 = call i32 @kill(i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i64 @hash_search(i32, i32*, i32, i32*) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @kill(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
