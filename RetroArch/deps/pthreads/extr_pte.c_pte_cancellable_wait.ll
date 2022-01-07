; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_cancellable_wait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pte.c_pte_cancellable_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ENABLE = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@PThreadStateCanceling = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_DISABLE = common dso_local global i64 0, align 8
@PTE_EPS_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pte_cancellable_wait(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = call i64 (...) @pthread_self()
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %9, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PTHREAD_CANCEL_ENABLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %16
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @pte_osSemaphoreCancellablePend(i32 %28, i32* %29)
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @pte_osSemaphorePend(i32 %32, i32* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %69 [
    i32 129, label %37
    i32 128, label %38
    i32 130, label %40
  ]

37:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %71

38:                                               ; preds = %35
  %39 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %39, i32* %6, align 4
  br label %71

40:                                               ; preds = %35
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @pthread_mutex_lock(i32* %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PThreadStateCanceling, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %43
  %53 = load i32, i32* @PThreadStateCanceling, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* @PTHREAD_CANCEL_DISABLE, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i32 @pthread_mutex_unlock(i32* %60)
  %62 = load i32, i32* @PTE_EPS_CANCEL, align 4
  %63 = call i32 @pte_throw(i32 %62)
  br label %64

64:                                               ; preds = %52, %43
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = call i32 @pthread_mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %40
  br label %71

69:                                               ; preds = %35
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %68, %38, %37
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i64 @pthread_self(...) #1

declare dso_local i32 @pte_osSemaphoreCancellablePend(i32, i32*) #1

declare dso_local i32 @pte_osSemaphorePend(i32, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pte_throw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
