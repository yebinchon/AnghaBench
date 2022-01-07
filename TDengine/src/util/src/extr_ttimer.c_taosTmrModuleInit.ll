; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_ttimer.c_taosTmrModuleInit.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_ttimer.c_taosTmrModuleInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i32**, i64, i64, i64, i32 }
%struct.TYPE_11__ = type { i32*, i64, i64 }

@taosMaxTmrCtrl = common dso_local global i32 0, align 4
@tmrCtrls = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"failed to allocate memory for timer controllers.\00", align 1
@unusedTmrCtrl = common dso_local global %struct.TYPE_9__* null, align 8
@tmrCtrlMutex = common dso_local global i32 0, align 4
@wheels = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to create the mutex for wheel, reason:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to allocate wheel slots\00", align 1
@timerMap = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to allocate hash map\00", align 1
@taosTmrThreads = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"tmr\00", align 1
@tmrQhandle = common dso_local global i32 0, align 4
@taosTimerLoopFunc = common dso_local global i32 0, align 4
@MSECONDS_PER_TICK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"timer module is initialized, number of threads: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @taosTmrModuleInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @taosTmrModuleInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = load i32, i32* @taosMaxTmrCtrl, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 8, %7
  %9 = trunc i64 %8 to i32
  %10 = call %struct.TYPE_9__* @malloc(i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** @tmrCtrls, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tmrCtrls, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @tmrError(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %103

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @taosMaxTmrCtrl, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tmrCtrls, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %24
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %2, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @tmrCtrls, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** @unusedTmrCtrl, align 8
  %35 = call i64 @pthread_mutex_init(i32* @tmrCtrlMutex, i32* null)
  %36 = call i64 (...) @taosGetTimestampMs()
  store i64 %36, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %84, %33
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wheels, align 8
  %40 = call i32 @tListLen(%struct.TYPE_10__* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wheels, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %45
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %5, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  %49 = call i64 @pthread_mutex_init(i32* %48, i32* null)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = call i32 (i8*, ...) @tmrError(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %103

55:                                               ; preds = %42
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @calloc(i64 %67, i32 8)
  %69 = inttoptr i64 %68 to i32**
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32** %69, i32*** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = icmp eq i32** %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %55
  %77 = call i32 (i8*, ...) @tmrError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %103

78:                                               ; preds = %55
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @timerMap, i32 0, i32 1), align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @timerMap, i32 0, i32 1), align 8
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %37

87:                                               ; preds = %37
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @timerMap, i32 0, i32 2), align 8
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @timerMap, i32 0, i32 1), align 8
  %89 = call i64 @calloc(i64 %88, i32 4)
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @timerMap, i32 0, i32 0), align 8
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @timerMap, i32 0, i32 0), align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 (i8*, ...) @tmrError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %103

95:                                               ; preds = %87
  %96 = load i32, i32* @taosTmrThreads, align 4
  %97 = call i32 @taosInitScheduler(i32 10000, i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %97, i32* @tmrQhandle, align 4
  %98 = load i32, i32* @taosTimerLoopFunc, align 4
  %99 = load i32, i32* @MSECONDS_PER_TICK, align 4
  %100 = call i32 @taosInitTimer(i32 %98, i32 %99)
  %101 = load i32, i32* @taosTmrThreads, align 4
  %102 = call i32 @tmrTrace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %95, %93, %76, %51, %13
  ret void
}

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32 @tmrError(i8*, ...) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @taosGetTimestampMs(...) #1

declare dso_local i32 @tListLen(%struct.TYPE_10__*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @taosInitScheduler(i32, i32, i8*) #1

declare dso_local i32 @taosInitTimer(i32, i32) #1

declare dso_local i32 @tmrTrace(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
