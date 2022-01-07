; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_testcancel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_testcancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@PThreadStateCancelPending = common dso_local global i64 0, align 8
@PTHREAD_CANCEL_DISABLE = common dso_local global i64 0, align 8
@PThreadStateCanceling = common dso_local global i64 0, align 8
@PTE_EPS_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pthread_testcancel() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_2__*, align 8
  %3 = call i64 (...) @pthread_self()
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = inttoptr i64 %4 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %2, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %41

9:                                                ; preds = %0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PThreadStateCancelPending, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %41

16:                                               ; preds = %9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @pthread_mutex_lock(i32* %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PTHREAD_CANCEL_DISABLE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  %26 = load i64, i64* @PThreadStateCanceling, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* @PTHREAD_CANCEL_DISABLE, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = call i32 @pthread_mutex_unlock(i32* %33)
  %35 = load i32, i32* @PTE_EPS_CANCEL, align 4
  %36 = call i32 @pte_throw(i32 %35)
  br label %37

37:                                               ; preds = %25, %16
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = call i32 @pthread_mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %37, %15, %8
  ret void
}

declare dso_local i64 @pthread_self(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pte_throw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
