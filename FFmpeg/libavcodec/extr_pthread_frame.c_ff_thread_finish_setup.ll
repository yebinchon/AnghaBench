; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_ff_thread_finish_setup.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_ff_thread_finish_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@HWACCEL_CAP_ASYNC_SAFE = common dso_local global i32 0, align 4
@STATE_SETUP_FINISHED = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Multiple ff_thread_finish_setup() calls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_thread_finish_setup(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FF_THREAD_FRAME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_lock(i32* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %26, %21, %16
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HWACCEL_CAP_ASYNC_SAFE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = call i32 @async_lock(%struct.TYPE_12__* %53)
  br label %55

55:                                               ; preds = %48, %39, %34
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = call i32 @pthread_mutex_lock(i32* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = call i64 @atomic_load(i32* %60)
  %62 = load i64, i64* @STATE_SETUP_FINISHED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = load i32, i32* @AV_LOG_WARNING, align 4
  %67 = call i32 @av_log(%struct.TYPE_11__* %65, i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %55
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = load i64, i64* @STATE_SETUP_FINISHED, align 8
  %72 = call i32 @atomic_store(i32* %70, i64 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = call i32 @pthread_cond_broadcast(i32* %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = call i32 @pthread_mutex_unlock(i32* %77)
  br label %79

79:                                               ; preds = %68, %15
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @async_lock(%struct.TYPE_12__*) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @atomic_store(i32*, i64) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
