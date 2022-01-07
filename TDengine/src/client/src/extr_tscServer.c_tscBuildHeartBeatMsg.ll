; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscBuildHeartBeatMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscBuildHeartBeatMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"%p failed to malloc for heartbeat msg\00", align 1
@tsRpcHeadSize = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_HEARTBEAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tscBuildHeartBeatMsg(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = call i32 @tscEstimateHeartBeatMsgLength(%struct.TYPE_11__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @tscAllocPayload(%struct.TYPE_12__* %22, i32 %23)
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call i32 @tscError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %27)
  store i32 -1, i32* %2, align 4
  br label %74

29:                                               ; preds = %1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @tsRpcHeadSize, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %10, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcpy(i32 %41, i32 %44)
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  store i8* %47, i8** %4, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = call i8* @tscBuildQueryStreamDesc(i8* %48, %struct.TYPE_10__* %49)
  store i8* %50, i8** %4, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = call i32 @pthread_mutex_unlock(i32* %52)
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @TSDB_MSG_TYPE_HEARTBEAT, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (...) @minMsgSize()
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = icmp sle i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %29, %26
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @tscEstimateHeartBeatMsgLength(%struct.TYPE_11__*) #1

declare dso_local i64 @tscAllocPayload(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @tscError(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @tscBuildQueryStreamDesc(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @minMsgSize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
