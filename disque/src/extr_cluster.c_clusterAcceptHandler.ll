; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterAcceptHandler.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterAcceptHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MAX_CLUSTER_ACCEPTS_PER_CALL = common dso_local global i32 0, align 4
@NET_IP_STR_LEN = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ANET_ERR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Accepting cluster node: %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Accepted cluster node %s:%d\00", align 1
@AE_READABLE = common dso_local global i32 0, align 4
@clusterReadHandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterAcceptHandler(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @MAX_CLUSTER_ACCEPTS_PER_CALL, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @NET_IP_STR_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @UNUSED(i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @UNUSED(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @UNUSED(i8* %27)
  br label %29

29:                                               ; preds = %52, %4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %11, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 4
  %35 = load i32, i32* %6, align 4
  %36 = trunc i64 %18 to i32
  %37 = call i32 @anetTcpAccept(i32 %34, i32 %35, i8* %20, i32 %36, i32* %9)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ANET_ERR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EWOULDBLOCK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @LL_VERBOSE, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %45, %41
  store i32 1, i32* %15, align 4
  br label %71

52:                                               ; preds = %33
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @anetNonBlock(i32* null, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @anetEnableTcpNoDelay(i32* null, i32 %55)
  %57 = load i32, i32* @LL_VERBOSE, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 (i32, i8*, i8*, ...) @serverLog(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %20, i32 %58)
  %60 = call %struct.TYPE_5__* @createClusterLink(i32* null)
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %14, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @AE_READABLE, align 4
  %67 = load i32, i32* @clusterReadHandler, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %69 = call i32 @aeCreateFileEvent(i32 %64, i32 %65, i32 %66, i32 %67, %struct.TYPE_5__* %68)
  br label %29

70:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %70, %51
  %72 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %15, align 4
  switch i32 %73, label %75 [
    i32 0, label %74
    i32 1, label %74
  ]

74:                                               ; preds = %71, %71
  ret void

75:                                               ; preds = %71
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UNUSED(i8*) #2

declare dso_local i32 @anetTcpAccept(i32, i32, i8*, i32, i32*) #2

declare dso_local i32 @serverLog(i32, i8*, i8*, ...) #2

declare dso_local i32 @anetNonBlock(i32*, i32) #2

declare dso_local i32 @anetEnableTcpNoDelay(i32*, i32) #2

declare dso_local %struct.TYPE_5__* @createClusterLink(i32*) #2

declare dso_local i32 @aeCreateFileEvent(i32, i32, i32, i32, %struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
