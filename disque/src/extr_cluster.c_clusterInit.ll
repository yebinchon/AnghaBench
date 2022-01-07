; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterInit.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__*, i64, i32*, i64, i64, i8*, i8*, i8*, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CLUSTER_OK = common dso_local global i32 0, align 4
@clusterNodesDictType = common dso_local global i32 0, align 4
@clusterNodesBlackListDictType = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@CLUSTER_NODE_MYSELF = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_8__* null, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"No cluster configuration found, I'm %.40s\00", align 1
@CLUSTER_PORT_INCR = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [169 x i8] c"Disque port number too high. Cluster communication port is 10,000 port numbers higher than your Disque node port. Your Disque node port number must be lower than 55535.\00", align 1
@AE_READABLE = common dso_local global i32 0, align 4
@clusterAcceptHandler = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"Unrecoverable error creating Disque Cluster Bus file event.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call %struct.TYPE_6__* @zmalloc(i32 4)
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  %6 = load i32, i32* @CLUSTER_OK, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 10
  store i32 %6, i32* %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = call i8* @dictCreate(i32* @clusterNodesDictType, i32* null)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 8
  store i8* %13, i8** %15, align 8
  %16 = call i8* @dictCreate(i32* @clusterNodesDictType, i32* null)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 7
  store i8* %16, i8** %18, align 8
  %19 = call i8* @dictCreate(i32* @clusterNodesBlackListDictType, i32* null)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %31 = call i64 @clusterLockConfig(i32 %30)
  %32 = load i64, i64* @C_ERR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %0
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %0
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 5), align 8
  %38 = call i64 @clusterLoadConfig(i32 %37)
  %39 = load i64, i64* @C_ERR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i32, i32* @CLUSTER_NODE_MYSELF, align 4
  %43 = call %struct.TYPE_8__* @createClusterNode(i32* null, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 4), align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %45, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** @myself, align 8
  %46 = load i32, i32* @LL_NOTICE, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @serverLog(i32 %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %52 = call i32 @clusterAddNode(%struct.TYPE_8__* %51)
  store i32 1, i32* %1, align 4
  br label %53

53:                                               ; preds = %41, %36
  %54 = load i32, i32* %1, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @clusterSaveConfigOrDie(i32 1)
  br label %58

58:                                               ; preds = %56, %53
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %60 = load i32, i32* @CLUSTER_PORT_INCR, align 4
  %61 = sub nsw i32 65535, %60
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @LL_WARNING, align 4
  %65 = call i32 (i32, i8*, ...) @serverLog(i32 %64, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @exit(i32 1) #3
  unreachable

67:                                               ; preds = %58
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %69 = load i32, i32* @CLUSTER_PORT_INCR, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 8
  %72 = call i64 @listenToPort(i32 %70, i32* %71, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0))
  %73 = load i64, i64* @C_ERR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %97, %77
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 3), align 8
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AE_READABLE, align 4
  %90 = load i32, i32* @clusterAcceptHandler, align 4
  %91 = call i64 @aeCreateFileEvent(i32 %83, i32 %88, i32 %89, i32 %90, i32* null)
  %92 = load i64, i64* @AE_ERR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = call i32 @serverPanic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %82
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %78

100:                                              ; preds = %78
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @myself, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = call i32 (...) @clusterUpdateState()
  %106 = call i32 (...) @clusterUpdateReachableNodes()
  ret void
}

declare dso_local %struct.TYPE_6__* @zmalloc(i32) #1

declare dso_local i8* @dictCreate(i32*, i32*) #1

declare dso_local i64 @clusterLockConfig(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @clusterLoadConfig(i32) #1

declare dso_local %struct.TYPE_8__* @createClusterNode(i32*, i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @clusterAddNode(%struct.TYPE_8__*) #1

declare dso_local i32 @clusterSaveConfigOrDie(i32) #1

declare dso_local i64 @listenToPort(i32, i32*, i32*) #1

declare dso_local i64 @aeCreateFileEvent(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i32 @clusterUpdateState(...) #1

declare dso_local i32 @clusterUpdateReachableNodes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
