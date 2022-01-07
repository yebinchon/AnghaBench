; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterUpdateReachableNodes.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterUpdateReachableNodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32 }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@CLUSTER_NODE_HANDSHAKE = common dso_local global i32 0, align 4
@CLUSTER_NODE_LEAVING = common dso_local global i32 0, align 4
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterUpdateReachableNodes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @dictSize(i32 %7)
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.TYPE_8__** @zrealloc(%struct.TYPE_8__** %14, i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store %struct.TYPE_8__** %16, %struct.TYPE_8__*** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @dictGetSafeIterator(i32 %23)
  store i32* %24, i32** %1, align 8
  br label %25

25:                                               ; preds = %47, %46, %0
  %26 = load i32*, i32** %1, align 8
  %27 = call i32* @dictNext(i32* %26)
  store i32* %27, i32** %2, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load i32*, i32** %2, align 8
  %31 = call %struct.TYPE_8__* @dictGetVal(i32* %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %4, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %36 = load i32, i32* @CLUSTER_NODE_HANDSHAKE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @CLUSTER_NODE_LEAVING, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %34, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %29
  br label %25

47:                                               ; preds = %29
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %54
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %56, align 8
  br label %25

57:                                               ; preds = %25
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @dictReleaseIterator(i32* %58)
  ret void
}

declare dso_local i32 @dictSize(i32) #1

declare dso_local %struct.TYPE_8__** @zrealloc(%struct.TYPE_8__**, i32) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.TYPE_8__* @dictGetVal(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
