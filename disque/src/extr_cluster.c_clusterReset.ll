; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterReset.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@myself = common dso_local global %struct.TYPE_9__* null, align 8
@CLUSTER_NAMELEN = common dso_local global i32 0, align 4
@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4
@CLUSTER_TODO_UPDATE_STATE = common dso_local global i32 0, align 4
@CLUSTER_TODO_FSYNC_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterReset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @dictGetSafeIterator(i32 %9)
  store i32* %10, i32** %3, align 8
  br label %11

11:                                               ; preds = %22, %21, %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @dictNext(i32* %12)
  store i32* %13, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.TYPE_9__* @dictGetVal(i32* %16)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %20 = icmp eq %struct.TYPE_9__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %11

22:                                               ; preds = %15
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i32 @clusterDelNode(%struct.TYPE_9__* %23)
  br label %11

25:                                               ; preds = %11
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @dictReleaseIterator(i32* %26)
  %28 = call i32 (...) @clusterUpdateReachableNodes()
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %36 = call i32 @sdsnewlen(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dictDelete(i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @sdsfree(i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %48 = call i32 @getRandomHexChars(i32 %46, i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @myself, align 8
  %50 = call i32 @clusterAddNode(%struct.TYPE_9__* %49)
  br label %51

51:                                               ; preds = %31, %25
  %52 = call i32 (...) @flushServerData()
  %53 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %54 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CLUSTER_TODO_FSYNC_CONFIG, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @clusterDoBeforeSleep(i32 %57)
  ret void
}

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_9__* @dictGetVal(i32*) #1

declare dso_local i32 @clusterDelNode(%struct.TYPE_9__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @clusterUpdateReachableNodes(...) #1

declare dso_local i32 @sdsnewlen(i32, i32) #1

declare dso_local i32 @dictDelete(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @getRandomHexChars(i32, i32) #1

declare dso_local i32 @clusterAddNode(%struct.TYPE_9__*) #1

declare dso_local i32 @flushServerData(...) #1

declare dso_local i32 @clusterDoBeforeSleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
