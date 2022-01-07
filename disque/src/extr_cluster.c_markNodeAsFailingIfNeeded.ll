; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_markNodeAsFailingIfNeeded.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_markNodeAsFailingIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@server = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Marking node %.40s as failing (quorum reached).\00", align 1
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@CLUSTER_TODO_UPDATE_STATE = common dso_local global i32 0, align 4
@CLUSTER_TODO_SAVE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @markNodeAsFailingIfNeeded(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @server, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sdiv i32 %7, 2
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = call i32 @nodeTimedOut(%struct.TYPE_9__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = call i64 @nodeFailed(%struct.TYPE_9__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %56

19:                                               ; preds = %14
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = call i32 @clusterNodeFailureReportsCount(%struct.TYPE_9__* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %56

28:                                               ; preds = %19
  %29 = load i32, i32* @LL_VERBOSE, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @serverLog(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = call i32 (...) @mstime()
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @clusterSendFail(i32 %50)
  %52 = load i32, i32* @CLUSTER_TODO_UPDATE_STATE, align 4
  %53 = load i32, i32* @CLUSTER_TODO_SAVE_CONFIG, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @clusterDoBeforeSleep(i32 %54)
  br label %56

56:                                               ; preds = %28, %27, %18, %13
  ret void
}

declare dso_local i32 @nodeTimedOut(%struct.TYPE_9__*) #1

declare dso_local i64 @nodeFailed(%struct.TYPE_9__*) #1

declare dso_local i32 @clusterNodeFailureReportsCount(%struct.TYPE_9__*) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @clusterSendFail(i32) #1

declare dso_local i32 @clusterDoBeforeSleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
