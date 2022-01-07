; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeOpenVnode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeOpenVnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_6__* null, align 8
@TSDB_VN_ALL_ACCCESS = common dso_local global i32 0, align 4
@dmutex = common dso_local global i32 0, align 4
@tsMaxVnode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"vid:%d, vnode is opened, openVnodes:%d\00", align 1
@tsOpenVnodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeOpenVnode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vnodeList, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 %9
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @TSDB_VN_ALL_ACCCESS, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

23:                                               ; preds = %1
  %24 = call i32 @pthread_mutex_lock(i32* @dmutex)
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @vnodeOpenShellVnode(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @pthread_mutex_unlock(i32* @dmutex)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %23
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @vnodeOpenPeerVnode(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @tsMaxVnode, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* @tsMaxVnode, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = call i32 (...) @vnodeCalcOpenVnodes()
  %42 = call i32 @pthread_mutex_unlock(i32* @dmutex)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = call i32 @vnodeOpenStreams(%struct.TYPE_6__* %43, i32* null)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @tsOpenVnodes, align 4
  %47 = call i32 @dTrace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %40, %29, %22
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @vnodeOpenShellVnode(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @vnodeOpenPeerVnode(i32) #1

declare dso_local i32 @vnodeCalcOpenVnodes(...) #1

declare dso_local i32 @vnodeOpenStreams(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dTrace(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
