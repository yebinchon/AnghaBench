; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_delay_np.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_delay_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PTHREAD_CANCEL_ENABLE = common dso_local global i64 0, align 8
@PTE_OS_INTERRUPTED = common dso_local global i64 0, align 8
@PThreadStateCanceling = common dso_local global i64 0, align 8
@PTHREAD_CANCEL_DISABLE = common dso_local global i64 0, align 8
@PTE_EPS_CANCEL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PTE_OS_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_delay_np(%struct.timespec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  %10 = load %struct.timespec*, %struct.timespec** %3, align 8
  %11 = icmp eq %struct.timespec* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %101

14:                                               ; preds = %1
  %15 = load %struct.timespec*, %struct.timespec** %3, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.timespec*, %struct.timespec** %3, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 (...) @pthread_testcancel()
  %26 = call i32 @pte_osThreadSleep(i32 1)
  %27 = call i32 (...) @pthread_testcancel()
  store i32 0, i32* %2, align 4
  br label %101

28:                                               ; preds = %19, %14
  %29 = load %struct.timespec*, %struct.timespec** %3, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul nsw i64 %31, 1000
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.timespec*, %struct.timespec** %3, align 8
  %35 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 999999
  %38 = sdiv i64 %37, 1000000
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %40, %41
  store i32 %42, i32* %4, align 4
  %43 = call i32* (...) @pthread_self()
  store i32* %43, i32** %7, align 8
  %44 = icmp eq i32* null, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %101

47:                                               ; preds = %28
  %48 = load i32*, i32** %7, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %49, %struct.TYPE_2__** %8, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PTHREAD_CANCEL_ENABLE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %97

55:                                               ; preds = %47
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @pte_osThreadCheckCancel(i32 %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @PTE_OS_INTERRUPTED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %55
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = call i32 @pthread_mutex_lock(i32* %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PThreadStateCanceling, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %63
  %73 = load i64, i64* @PThreadStateCanceling, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* @PTHREAD_CANCEL_DISABLE, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = call i32 @pthread_mutex_unlock(i32* %80)
  %82 = load i32, i32* @PTE_EPS_CANCEL, align 4
  %83 = call i32 @pte_throw(i32 %82)
  br label %84

84:                                               ; preds = %72, %63
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = call i32 @pthread_mutex_unlock(i32* %86)
  %88 = load i32, i32* @ESRCH, align 4
  store i32 %88, i32* %2, align 4
  br label %101

89:                                               ; preds = %55
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @PTE_OS_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %2, align 4
  br label %101

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  br label %100

97:                                               ; preds = %47
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @pte_osThreadSleep(i32 %98)
  br label %100

100:                                              ; preds = %97, %96
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %93, %84, %45, %24, %12
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @pthread_testcancel(...) #1

declare dso_local i32 @pte_osThreadSleep(i32) #1

declare dso_local i32* @pthread_self(...) #1

declare dso_local i64 @pte_osThreadCheckCancel(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pte_throw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
