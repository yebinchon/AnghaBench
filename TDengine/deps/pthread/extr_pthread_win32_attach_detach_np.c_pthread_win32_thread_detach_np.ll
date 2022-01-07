; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_win32_attach_detach_np.c_pthread_win32_thread_detach_np.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_win32_attach_detach_np.c_pthread_win32_thread_detach_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@ptw32_processInitialized = common dso_local global i64 0, align 8
@ptw32_selfThreadKey = common dso_local global %struct.TYPE_13__* null, align 8
@PThreadStateLast = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_win32_thread_detach_np() #0 {
  %1 = alloca %struct.TYPE_11__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = load i64, i64* @ptw32_processInitialized, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %64

6:                                                ; preds = %0
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ptw32_selfThreadKey, align 8
  %8 = call i64 @pthread_getspecific(%struct.TYPE_13__* %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %1, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %63

12:                                               ; preds = %6
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ptw32_callUserDestroyRoutines(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 4
  %19 = call i32 @ptw32_mcs_lock_acquire(i32* %18, i32* %2)
  %20 = load i32, i32* @PThreadStateLast, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = call i32 @ptw32_mcs_lock_release(i32* %2)
  br label %24

24:                                               ; preds = %29, %12
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %3, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %36 = call i32 @ptw32_robust_mutex_remove(%struct.TYPE_12__** %3, %struct.TYPE_11__* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %41, i32 -1)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @SetEvent(i32 %45)
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PTHREAD_CREATE_DETACHED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ptw32_threadDestroy(i32 %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ptw32_selfThreadKey, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TlsSetValue(i32 %60, i32* null)
  br label %62

62:                                               ; preds = %53, %47
  br label %63

63:                                               ; preds = %62, %6
  br label %64

64:                                               ; preds = %63, %0
  %65 = load i32, i32* @TRUE, align 4
  ret i32 %65
}

declare dso_local i64 @pthread_getspecific(%struct.TYPE_13__*) #1

declare dso_local i32 @ptw32_callUserDestroyRoutines(i32) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local i32 @ptw32_robust_mutex_remove(%struct.TYPE_12__**, %struct.TYPE_11__*) #1

declare dso_local i32 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32, i32) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @ptw32_threadDestroy(i32) #1

declare dso_local i32 @TlsSetValue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
