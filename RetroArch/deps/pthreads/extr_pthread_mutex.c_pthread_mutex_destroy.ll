; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_mutex.c_pthread_mutex_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_mutex.c_pthread_mutex_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }

@PTHREAD_ERRORCHECK_MUTEX_INITIALIZER = common dso_local global %struct.TYPE_7__* null, align 8
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@pte_mutex_test_init_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_destroy(%struct.TYPE_7__** %0) #0 {
  %2 = alloca %struct.TYPE_7__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_ERRORCHECK_MUTEX_INITIALIZER, align 8
  %8 = icmp ult %struct.TYPE_7__* %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = call i32 @pthread_mutex_trylock(%struct.TYPE_7__** %4)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %9
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PTHREAD_MUTEX_RECURSIVE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 1, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %21, %15
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %27, align 8
  %28 = call i32 @pthread_mutex_unlock(%struct.TYPE_7__** %4)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pte_osSemaphoreDelete(i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = call i32 @free(%struct.TYPE_7__* %36)
  br label %41

38:                                               ; preds = %26
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %40, align 8
  br label %41

41:                                               ; preds = %38, %31
  br label %48

42:                                               ; preds = %21
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @EBUSY, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %41
  br label %49

49:                                               ; preds = %48, %9
  br label %64

50:                                               ; preds = %1
  %51 = load i32, i32* @pte_mutex_test_init_lock, align 4
  %52 = call i32 @pte_osMutexLock(i32 %51)
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_ERRORCHECK_MUTEX_INITIALIZER, align 8
  %56 = icmp uge %struct.TYPE_7__* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %58, align 8
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32, i32* @pte_mutex_test_init_lock, align 4
  %63 = call i32 @pte_osMutexUnlock(i32 %62)
  br label %64

64:                                               ; preds = %61, %49
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @pthread_mutex_trylock(%struct.TYPE_7__**) #1

declare dso_local i32 @pthread_mutex_unlock(%struct.TYPE_7__**) #1

declare dso_local i32 @pte_osSemaphoreDelete(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
