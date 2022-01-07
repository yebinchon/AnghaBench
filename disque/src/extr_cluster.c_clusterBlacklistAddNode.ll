; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterBlacklistAddNode.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterBlacklistAddNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CLUSTER_NAMELEN = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@DICT_OK = common dso_local global i64 0, align 8
@CLUSTER_BLACKLIST_TTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterBlacklistAddNode(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %9 = call i32 @sdsnewlen(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = call i32 (...) @clusterBlacklistCleanup()
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @dictAdd(i32 %13, i32 %14, i32* null)
  %16 = load i64, i64* @DICT_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sdsdup(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32* @dictFind(i32 %24, i32 %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @time(i32* null)
  %29 = load i64, i64* @CLUSTER_BLACKLIST_TTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @dictSetUnsignedIntegerVal(i32* %27, i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @sdsfree(i32 %32)
  ret void
}

declare dso_local i32 @sdsnewlen(i32, i32) #1

declare dso_local i32 @clusterBlacklistCleanup(...) #1

declare dso_local i64 @dictAdd(i32, i32, i32*) #1

declare dso_local i32 @sdsdup(i32) #1

declare dso_local i32* @dictFind(i32, i32) #1

declare dso_local i32 @dictSetUnsignedIntegerVal(i32*, i64) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
