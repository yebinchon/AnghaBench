; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_terminate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@pte_processInitialized = common dso_local global i64 0, align 8
@pte_selfThreadKey = common dso_local global i32* null, align 8
@pte_cleanupKey = common dso_local global i32* null, align 8
@pte_thread_reuse_lock = common dso_local global i32 0, align 4
@pte_threadReuseTop = common dso_local global %struct.TYPE_5__* null, align 8
@PTE_THREAD_REUSE_EMPTY = common dso_local global %struct.TYPE_5__* null, align 8
@PTE_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pthread_terminate() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load i64, i64* @pte_processInitialized, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %37

6:                                                ; preds = %0
  %7 = load i32*, i32** @pte_selfThreadKey, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32*, i32** @pte_selfThreadKey, align 8
  %11 = call i32 @pthread_key_delete(i32* %10)
  store i32* null, i32** @pte_selfThreadKey, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32*, i32** @pte_cleanupKey, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** @pte_cleanupKey, align 8
  %17 = call i32 @pthread_key_delete(i32* %16)
  store i32* null, i32** @pte_cleanupKey, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* @pte_thread_reuse_lock, align 4
  %20 = call i32 @pte_osMutexLock(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pte_threadReuseTop, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %1, align 8
  br label %22

22:                                               ; preds = %26, %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PTE_THREAD_REUSE_EMPTY, align 8
  %25 = icmp ne %struct.TYPE_5__* %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %2, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = call i32 @free(%struct.TYPE_5__* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %1, align 8
  br label %22

33:                                               ; preds = %22
  %34 = load i32, i32* @pte_thread_reuse_lock, align 4
  %35 = call i32 @pte_osMutexUnlock(i32 %34)
  %36 = load i64, i64* @PTE_FALSE, align 8
  store i64 %36, i64* @pte_processInitialized, align 8
  br label %37

37:                                               ; preds = %33, %5
  ret void
}

declare dso_local i32 @pthread_key_delete(i32*) #1

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
