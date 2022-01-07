; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_spin_trylock.c_pthread_spin_trylock.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_spin_trylock.c_pthread_spin_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_SPINLOCK_INITIALIZER = common dso_local global %struct.TYPE_7__* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_spin_trylock(%struct.TYPE_7__** %0) #0 {
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
  br label %43

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
  br label %43

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %4, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = ptrtoint i32* %30 to i32
  %32 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32 %31, i32 130, i32 129)
  switch i64 %32, label %41 [
    i64 129, label %33
    i64 130, label %34
    i64 128, label %36
  ]

33:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %43

34:                                               ; preds = %26
  %35 = load i32, i32* @EBUSY, align 4
  store i32 %35, i32* %2, align 4
  br label %43

36:                                               ; preds = %26
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @pthread_mutex_trylock(i32* %39)
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %26
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %36, %34, %33, %23, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @ptw32_spinlock_check_need_init(%struct.TYPE_7__**) #1

declare dso_local i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_trylock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
