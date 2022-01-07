; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_detach.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32 }

@PTE_FALSE = common dso_local global i8 0, align 1
@pte_thread_reuse_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PThreadStateLast = common dso_local global i64 0, align 8
@PTE_TRUE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_detach(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i8, i8* @PTE_FALSE, align 1
  store i8 %6, i8* %4, align 1
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %5, align 8
  %9 = load i32, i32* @pte_thread_reuse_lock, align 4
  %10 = call i32 @pte_osMutexLock(i32 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %12 = icmp eq %struct.TYPE_2__* null, %11
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13, %1
  %23 = load i32, i32* @ESRCH, align 4
  store i32 %23, i32* %3, align 4
  br label %64

24:                                               ; preds = %13
  %25 = load i64, i64* @PTHREAD_CREATE_DETACHED, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  %35 = call i64 @pthread_mutex_lock(i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PThreadStateLast, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i64, i64* @PTHREAD_CREATE_DETACHED, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %56

47:                                               ; preds = %37
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PTHREAD_CREATE_DETACHED, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i8, i8* @PTE_TRUE, align 1
  store i8 %54, i8* %4, align 1
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = call i32 @pthread_mutex_unlock(i32* %58)
  br label %62

60:                                               ; preds = %32
  %61 = load i32, i32* @ESRCH, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %30
  br label %64

64:                                               ; preds = %63, %22
  %65 = load i32, i32* @pte_thread_reuse_lock, align 4
  %66 = call i32 @pte_osMutexUnlock(i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i8, i8* %4, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pte_osThreadWaitForEnd(i32 %75)
  %77 = load i64, i64* %2, align 8
  %78 = call i32 @pte_threadDestroy(i64 %77)
  br label %79

79:                                               ; preds = %72, %69
  br label %80

80:                                               ; preds = %79, %64
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i64 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

declare dso_local i32 @pte_osThreadWaitForEnd(i32) #1

declare dso_local i32 @pte_threadDestroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
