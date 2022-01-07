; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_ff_thread_get_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pthread_frame.c_ff_thread_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32 }

@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@avcodec_default_get_format = common dso_local global i64 0, align 8
@STATE_SETTING_UP = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"get_format() cannot be called after ff_thread_finish_setup()\0A\00", align 1
@STATE_GET_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_thread_get_format(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FF_THREAD_FRAME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @avcodec_default_get_format, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %19, %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ff_get_format(%struct.TYPE_9__* %31, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %78

34:                                               ; preds = %24
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = call i64 @atomic_load(i32* %36)
  %38 = load i64, i64* @STATE_SETTING_UP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = call i32 @av_log(%struct.TYPE_9__* %41, i32 %42, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %78

44:                                               ; preds = %34
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = call i32 @pthread_mutex_lock(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = load i32, i32* @STATE_GET_FORMAT, align 4
  %54 = call i32 @atomic_store(i32* %52, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = call i32 @pthread_cond_broadcast(i32* %56)
  br label %58

58:                                               ; preds = %64, %44
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = call i64 @atomic_load(i32* %60)
  %62 = load i64, i64* @STATE_SETTING_UP, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = call i32 @pthread_cond_wait(i32* %66, i32* %68)
  br label %58

70:                                               ; preds = %58
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %6, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = call i32 @pthread_mutex_unlock(i32* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %40, %30
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ff_get_format(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
