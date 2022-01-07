; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeCleanUpOneVnode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeCleanUpOneVnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@vnodeCleanUpOneVnode.again = internal global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_3__* null, align 8
@dmutex = common dso_local global i32 0, align 4
@TSDB_STATUS_OFFLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeCleanUpOneVnode(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vnodeList, align 8
  %4 = icmp eq %struct.TYPE_3__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %57

6:                                                ; preds = %1
  %7 = call i32 @pthread_mutex_lock(i32* @dmutex)
  %8 = load i32, i32* @vnodeCleanUpOneVnode.again, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @pthread_mutex_unlock(i32* @dmutex)
  br label %57

12:                                               ; preds = %6
  store i32 1, i32* @vnodeCleanUpOneVnode.again, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vnodeList, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load i32, i32* @TSDB_STATUS_OFFLINE, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vnodeList, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 %21, i32* %26, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @vnodeClosePeerVnode(i32 %27)
  br label %29

29:                                               ; preds = %20, %12
  %30 = call i32 @pthread_mutex_unlock(i32* @dmutex)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vnodeList, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %29
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vnodeList, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = call i32 @vnodeProcessCommitTimer(%struct.TYPE_3__* %42, i32* null)
  br label %44

44:                                               ; preds = %52, %38
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vnodeList, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @taosMsleep(i32 10)
  br label %44

54:                                               ; preds = %44
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @vnodeCleanUpCommit(i32 %55)
  br label %57

57:                                               ; preds = %5, %10, %54, %29
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @vnodeClosePeerVnode(i32) #1

declare dso_local i32 @vnodeProcessCommitTimer(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @taosMsleep(i32) #1

declare dso_local i32 @vnodeCleanUpCommit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
