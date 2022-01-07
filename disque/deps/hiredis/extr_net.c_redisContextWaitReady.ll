; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c_redisContextWaitReady.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_net.c_redisContextWaitReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.pollfd = type { i32, i32 }

@POLLOUT = common dso_local global i32 0, align 4
@__MAX_MSEC = common dso_local global i32 0, align 4
@REDIS_ERR_IO = common dso_local global i32 0, align 4
@REDIS_ERR = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"poll(2)\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@REDIS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.timeval*)* @redisContextWaitReady to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redisContextWaitReady(%struct.TYPE_6__* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca [1 x %struct.pollfd], align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  store i64 -1, i64* %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @POLLOUT, align 4
  %15 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.timeval*, %struct.timeval** %5, align 8
  %18 = icmp ne %struct.timeval* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %2
  %20 = load %struct.timeval*, %struct.timeval** %5, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 1000000
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.timeval*, %struct.timeval** %5, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @__MAX_MSEC, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24, %19
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = load i32, i32* @REDIS_ERR_IO, align 4
  %33 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_6__* %31, i32 %32, i8* null)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = call i32 @redisContextCloseFd(%struct.TYPE_6__* %34)
  %36 = load i32, i32* @REDIS_ERR, align 4
  store i32 %36, i32* %3, align 4
  br label %103

37:                                               ; preds = %24
  %38 = load %struct.timeval*, %struct.timeval** %5, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 1000
  %42 = load %struct.timeval*, %struct.timeval** %5, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 999
  %46 = sdiv i32 %45, 1000
  %47 = add nsw i32 %41, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %37
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @INT_MAX, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %37
  %56 = load i64, i64* @INT_MAX, align 8
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %2
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EINPROGRESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @poll(%struct.pollfd* %63, i32 1, i64 %64)
  store i32 %65, i32* %8, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = load i32, i32* @REDIS_ERR_IO, align 4
  %70 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_6__* %68, i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = call i32 @redisContextCloseFd(%struct.TYPE_6__* %71)
  %73 = load i32, i32* @REDIS_ERR, align 4
  store i32 %73, i32* %3, align 4
  br label %103

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %78, i64* @errno, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = load i32, i32* @REDIS_ERR_IO, align 4
  %81 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_6__* %79, i32 %80, i8* null)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = call i32 @redisContextCloseFd(%struct.TYPE_6__* %82)
  %84 = load i32, i32* @REDIS_ERR, align 4
  store i32 %84, i32* %3, align 4
  br label %103

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = call i64 @redisCheckSocketError(%struct.TYPE_6__* %87)
  %89 = load i64, i64* @REDIS_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @REDIS_ERR, align 4
  store i32 %92, i32* %3, align 4
  br label %103

93:                                               ; preds = %86
  %94 = load i64, i64* @REDIS_OK, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %3, align 4
  br label %103

96:                                               ; preds = %58
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = load i32, i32* @REDIS_ERR_IO, align 4
  %99 = call i32 @__redisSetErrorFromErrno(%struct.TYPE_6__* %97, i32 %98, i8* null)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = call i32 @redisContextCloseFd(%struct.TYPE_6__* %100)
  %102 = load i32, i32* @REDIS_ERR, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %96, %93, %91, %77, %67, %30
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @__redisSetErrorFromErrno(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @redisContextCloseFd(%struct.TYPE_6__*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i64) #1

declare dso_local i64 @redisCheckSocketError(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
