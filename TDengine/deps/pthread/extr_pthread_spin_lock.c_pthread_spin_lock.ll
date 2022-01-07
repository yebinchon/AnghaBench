; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_spin_lock.c_pthread_spin_lock.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_spin_lock.c_pthread_spin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_SPINLOCK_INITIALIZER = common dso_local global %struct.TYPE_7__* null, align 8
@PTW32_SPIN_LOCKED = common dso_local global i64 0, align 8
@PTW32_SPIN_UNLOCKED = common dso_local global i64 0, align 8
@PTW32_SPIN_USE_MUTEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_spin_lock(%struct.TYPE_7__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  %6 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %7 = icmp eq %struct.TYPE_7__** null, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = icmp eq %struct.TYPE_7__* null, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PTHREAD_SPINLOCK_INITIALIZER, align 8
  %18 = icmp eq %struct.TYPE_7__* %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %21 = call i32 @ptw32_spinlock_check_need_init(%struct.TYPE_7__** %20)
  store i32 %21, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %60

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %4, align 8
  br label %29

29:                                               ; preds = %38, %26
  %30 = load i64, i64* @PTW32_SPIN_LOCKED, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = ptrtoint i64* %32 to i32
  %34 = load i64, i64* @PTW32_SPIN_LOCKED, align 8
  %35 = load i64, i64* @PTW32_SPIN_UNLOCKED, align 8
  %36 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32 %33, i64 %34, i64 %35)
  %37 = icmp eq i64 %30, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %29

39:                                               ; preds = %29
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PTW32_SPIN_LOCKED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %60

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PTW32_SPIN_USE_MUTEX, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @pthread_mutex_lock(i32* %55)
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* @EINVAL, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %52, %45, %23, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ptw32_spinlock_check_need_init(%struct.TYPE_7__**) #1

declare dso_local i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32, i64, i64) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
