; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_thread_detach_common.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_thread_detach_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@pte_processInitialized = common dso_local global i64 0, align 8
@pte_selfThreadKey = common dso_local global %struct.TYPE_8__* null, align 8
@PThreadStateLast = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @pte_thread_detach_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pte_thread_detach_common(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_7__*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i64, i64* @pte_processInitialized, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pte_selfThreadKey, align 8
  %8 = call i64 @pthread_getspecific(%struct.TYPE_8__* %7)
  %9 = inttoptr i64 %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = call i32 @pte_callUserDestroyRoutines(%struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  %18 = load i32, i32* @PThreadStateLast, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = call i32 @pthread_mutex_unlock(i32* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PTHREAD_CREATE_DETACHED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %12
  %30 = load i8, i8* %2, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i32 @pte_threadExitAndDestroy(%struct.TYPE_7__* %33)
  br label %38

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @pte_threadDestroy(%struct.TYPE_7__* %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %45

39:                                               ; preds = %12
  %40 = load i8, i8* %2, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (...) @pte_osThreadExit()
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %38
  br label %46

46:                                               ; preds = %45, %6
  br label %47

47:                                               ; preds = %46, %1
  ret i32 1
}

declare dso_local i64 @pthread_getspecific(%struct.TYPE_8__*) #1

declare dso_local i32 @pte_callUserDestroyRoutines(%struct.TYPE_7__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pte_threadExitAndDestroy(%struct.TYPE_7__*) #1

declare dso_local i32 @pte_threadDestroy(%struct.TYPE_7__*) #1

declare dso_local i32 @pte_osThreadExit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
