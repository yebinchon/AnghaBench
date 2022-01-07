; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeCloseVnode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeCloseVnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@vnodeList = common dso_local global %struct.TYPE_9__* null, align 8
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@dmutex = common dso_local global i32 0, align 4
@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i32 0, align 4
@tsMaxVnode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeCloseVnode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vnodeList, align 8
  %6 = icmp eq %struct.TYPE_9__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %8, i32* %2, align 4
  br label %80

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vnodeList, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i64 %12
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %4, align 8
  %14 = call i32 @pthread_mutex_lock(i32* @dmutex)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = call i32 @pthread_mutex_unlock(i32* @dmutex)
  %22 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %22, i32* %2, align 4
  br label %80

23:                                               ; preds = %9
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = call i32 @vnodeMarkAllMetersDropped(%struct.TYPE_9__* %24)
  %26 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 @pthread_mutex_unlock(i32* @dmutex)
  %30 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  store i32 %30, i32* %2, align 4
  br label %80

31:                                               ; preds = %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vnodeList, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = call i32 @vnodeCloseStream(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vnodeList, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = call i32 @vnodeCancelCommit(%struct.TYPE_9__* %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @vnodeClosePeerVnode(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @vnodeCloseMetersVnode(i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @vnodeCloseShellVnode(i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @vnodeCloseCachePool(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @vnodeCleanUpCommit(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vnodeList, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = call i32 @pthread_mutex_destroy(i32* %56)
  %58 = load i32, i32* @tsMaxVnode, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %31
  %62 = load i32, i32* %3, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* @tsMaxVnode, align 4
  br label %64

64:                                               ; preds = %61, %31
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vnodeList, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @tfree(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vnodeList, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = call i32 @memset(%struct.TYPE_9__* %75, i32 0, i32 16)
  %77 = call i32 (...) @vnodeCalcOpenVnodes()
  %78 = call i32 @pthread_mutex_unlock(i32* @dmutex)
  %79 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %64, %28, %20, %7
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @vnodeMarkAllMetersDropped(%struct.TYPE_9__*) #1

declare dso_local i32 @vnodeCloseStream(%struct.TYPE_9__*) #1

declare dso_local i32 @vnodeCancelCommit(%struct.TYPE_9__*) #1

declare dso_local i32 @vnodeClosePeerVnode(i32) #1

declare dso_local i32 @vnodeCloseMetersVnode(i32) #1

declare dso_local i32 @vnodeCloseShellVnode(i32) #1

declare dso_local i32 @vnodeCloseCachePool(i32) #1

declare dso_local i32 @vnodeCleanUpCommit(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @tfree(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vnodeCalcOpenVnodes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
