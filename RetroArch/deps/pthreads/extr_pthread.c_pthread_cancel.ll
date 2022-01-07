; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_cancel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ASYNCHRONOUS = common dso_local global i64 0, align 8
@PTHREAD_CANCEL_ENABLE = common dso_local global i64 0, align 8
@PThreadStateCanceling = common dso_local global i64 0, align 8
@PTHREAD_CANCEL_DISABLE = common dso_local global i64 0, align 8
@PTE_EPS_CANCEL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PThreadStateCancelPending = common dso_local global i64 0, align 8
@PTE_OS_OK = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_cancel(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @pthread_kill(i32* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 0, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = call i32* (...) @pthread_self()
  store i32* %15, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %2, align 4
  br label %100

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @pthread_equal(i32* %20, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = bitcast i32* %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %7, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PTHREAD_CANCEL_ASYNCHRONOUS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %19
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PTHREAD_CANCEL_ENABLE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PThreadStateCanceling, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i64, i64* @PThreadStateCanceling, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* @PTHREAD_CANCEL_DISABLE, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  %57 = call i32 @pthread_mutex_unlock(i32* %56)
  %58 = load i32, i32* @PTE_EPS_CANCEL, align 4
  %59 = call i32 @pte_throw(i32 %58)
  br label %65

60:                                               ; preds = %45
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = call i32 @pthread_mutex_unlock(i32* %62)
  %64 = load i32, i32* @EPERM, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %48
  br label %98

66:                                               ; preds = %39, %33, %19
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PThreadStateCancelPending, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load i64, i64* @PThreadStateCancelPending, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @pte_osThreadCancel(i32 %78)
  %80 = load i64, i64* @PTE_OS_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @ESRCH, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %72
  br label %94

85:                                               ; preds = %66
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PThreadStateCanceling, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @ESRCH, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %85
  br label %94

94:                                               ; preds = %93, %84
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = call i32 @pthread_mutex_unlock(i32* %96)
  br label %98

98:                                               ; preds = %94, %65
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %17, %12
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @pthread_kill(i32*, i32) #1

declare dso_local i32* @pthread_self(...) #1

declare dso_local i32 @pthread_equal(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pte_throw(i32) #1

declare dso_local i64 @pte_osThreadCancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
