; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeCache.c_vnodeCreateCommitThread.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeCache.c_vnodeCreateCommitThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"vid:%d, commit is already in process\00", align 1
@TSDB_STATUS_UNSYNCED = common dso_local global i64 0, align 8
@vnodeProcessCommitTimer = common dso_local global i32 0, align 4
@vnodeTmrCtrl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"vid:%d, it is in unsyc state, commit later\00", align 1
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@vnodeCommitToFile = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"vid:%d, failed to create thread to commit file, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"vid:%d, commit thread: 0x%lx is created\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeCreateCommitThread(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, i32, ...) @dTrace(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %2, align 4
  br label %82

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = call i32 @taosTmrStopA(i32* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TSDB_STATUS_UNSYNCED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %22
  %32 = load i32, i32* @vnodeProcessCommitTimer, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = load i32, i32* @vnodeTmrCtrl, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = call i32 @taosTmrReset(i32 %32, i32 %37, %struct.TYPE_8__* %38, i32 %39, i32* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, i32, ...) @dTrace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %2, align 4
  br label %82

50:                                               ; preds = %22
  %51 = call i32 @pthread_attr_init(i32* %4)
  %52 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %53 = call i32 @pthread_attr_setdetachstate(i32* %4, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* @vnodeCommitToFile, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = call i64 @pthread_create(i32* %55, i32* %4, i32 %56, %struct.TYPE_8__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = call i32 @strerror(i32 %64)
  %66 = call i32 @dError(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65)
  br label %77

67:                                               ; preds = %50
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, i32, ...) @dTrace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %67, %60
  %78 = call i32 @pthread_attr_destroy(i32* %4)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %31, %14
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @dTrace(i8*, i32, ...) #1

declare dso_local i32 @taosTmrStopA(i32*) #1

declare dso_local i32 @taosTmrReset(i32, i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dError(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
