; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_spin_destroy.c_pthread_spin_destroy.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_spin_destroy.c_pthread_spin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_SPINLOCK_INITIALIZER = common dso_local global %struct.TYPE_7__* null, align 8
@PTW32_SPIN_USE_MUTEX = common dso_local global i64 0, align 8
@PTW32_SPIN_UNLOCKED = common dso_local global i64 0, align 8
@PTW32_SPIN_INVALID = common dso_local global i64 0, align 8
@ptw32_spinlock_test_init_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_spin_destroy(%struct.TYPE_7__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %8 = icmp eq %struct.TYPE_7__** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %9
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %4, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_SPINLOCK_INITIALIZER, align 8
  %19 = icmp ne %struct.TYPE_7__* %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PTW32_SPIN_USE_MUTEX, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @pthread_mutex_destroy(i32* %29)
  store i32 %30, i32* %5, align 4
  br label %43

31:                                               ; preds = %20
  %32 = load i64, i64* @PTW32_SPIN_UNLOCKED, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = ptrtoint i64* %34 to i32
  %36 = load i64, i64* @PTW32_SPIN_INVALID, align 8
  %37 = load i64, i64* @PTW32_SPIN_UNLOCKED, align 8
  %38 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32 %35, i64 %36, i64 %37)
  %39 = icmp ne i64 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %31
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 0, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = call i32 @free(%struct.TYPE_7__* %48)
  br label %50

50:                                               ; preds = %46, %43
  br label %63

51:                                               ; preds = %15
  %52 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_spinlock_test_init_lock, i32* %6)
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_SPINLOCK_INITIALIZER, align 8
  %56 = icmp eq %struct.TYPE_7__* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %58, align 8
  br label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = call i32 @ptw32_mcs_lock_release(i32* %6)
  br label %63

63:                                               ; preds = %61, %50
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32, i64, i64) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
