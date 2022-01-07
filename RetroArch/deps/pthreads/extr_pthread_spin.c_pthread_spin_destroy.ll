; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_spin.c_pthread_spin_destroy.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread_spin.c_pthread_spin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_SPINLOCK_INITIALIZER = common dso_local global %struct.TYPE_7__* null, align 8
@PTE_SPIN_USE_MUTEX = common dso_local global i64 0, align 8
@PTE_SPIN_UNLOCKED = common dso_local global i64 0, align 8
@PTE_OBJECT_INVALID = common dso_local global i64 0, align 8
@pte_spinlock_test_init_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_spin_destroy(%struct.TYPE_7__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %7 = icmp eq %struct.TYPE_7__** %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %66

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_SPINLOCK_INITIALIZER, align 8
  %18 = icmp ne %struct.TYPE_7__* %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PTE_SPIN_USE_MUTEX, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_destroy(i32* %28)
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %19
  %31 = load i64, i64* @PTE_SPIN_UNLOCKED, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* @PTE_OBJECT_INVALID, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* @PTE_SPIN_UNLOCKED, align 8
  %37 = call i64 @PTE_ATOMIC_COMPARE_EXCHANGE(i64* %33, i32 %35, i64 %36)
  %38 = icmp ne i64 %31, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %30
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 0, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i32 @free(%struct.TYPE_7__* %47)
  br label %49

49:                                               ; preds = %45, %42
  br label %64

50:                                               ; preds = %14
  %51 = load i32, i32* @pte_spinlock_test_init_lock, align 4
  %52 = call i32 @pte_osMutexLock(i32 %51)
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_SPINLOCK_INITIALIZER, align 8
  %56 = icmp eq %struct.TYPE_7__* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %58, align 8
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load i32, i32* @pte_spinlock_test_init_lock, align 4
  %63 = call i32 @pte_osMutexUnlock(i32 %62)
  br label %64

64:                                               ; preds = %61, %49
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i64 @PTE_ATOMIC_COMPARE_EXCHANGE(i64*, i32, i64) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @pte_osMutexLock(i32) #1

declare dso_local i32 @pte_osMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
