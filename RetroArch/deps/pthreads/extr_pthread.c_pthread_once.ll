; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_once.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/pthreads/extr_pthread.c_pthread_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTE_ONCE_STARTED = common dso_local global i64 0, align 8
@PTE_ONCE_INIT = common dso_local global i32 0, align 4
@PTE_ONCE_DONE = common dso_local global i32 0, align 4
@pte_once_init_routine_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_once(%struct.TYPE_3__* %0, void ()* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load void ()*, void ()** %4, align 8
  %12 = icmp eq void ()* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %5, align 4
  br label %106

15:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %104, %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* @PTE_ONCE_STARTED, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @PTE_ONCE_INIT, align 4
  %23 = call i32 @PTE_ATOMIC_COMPARE_EXCHANGE(i32* %19, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @PTE_ONCE_DONE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %105

26:                                               ; preds = %17
  %27 = load i32, i32* @PTE_ONCE_INIT, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load i32, i32* @pte_once_init_routine_cleanup, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = bitcast %struct.TYPE_3__* %32 to i8*
  %34 = call i32 @pthread_cleanup_push(i32 %31, i8* %33)
  %35 = load void ()*, void ()** %4, align 8
  call void %35()
  %36 = call i32 @pthread_cleanup_pop(i32 0)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* @PTE_ONCE_DONE, align 4
  %40 = call i64 @PTE_ATOMIC_EXCHANGE(i32* %38, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = bitcast i64* %42 to i32*
  %44 = call i64 @PTE_ATOMIC_EXCHANGE_ADD(i32* %43, i64 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %30
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pte_osSemaphorePost(i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %46, %30
  br label %104

55:                                               ; preds = %26
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = call i32 @PTE_ATOMIC_INCREMENT(i32* %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = bitcast i64* %60 to i32*
  %62 = call i64 @PTE_ATOMIC_EXCHANGE_ADD(i32* %61, i64 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %55
  %65 = call i32 @pte_osSemaphoreCreate(i32 0, i64* %7)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = bitcast i64* %67 to i32*
  %69 = load i64, i64* %7, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @PTE_ATOMIC_COMPARE_EXCHANGE(i32* %68, i32 %70, i32 0)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @pte_osSemaphoreDelete(i64 %74)
  br label %76

76:                                               ; preds = %73, %64
  br label %77

77:                                               ; preds = %76, %55
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = call i64 @PTE_ATOMIC_EXCHANGE_ADD(i32* %79, i64 0)
  %81 = load i64, i64* @PTE_ONCE_STARTED, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @pte_osSemaphorePend(i64 %86, i32* null)
  br label %88

88:                                               ; preds = %83, %77
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = call i64 @PTE_ATOMIC_DECREMENT(i32* %90)
  %92 = icmp eq i64 0, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = bitcast i64* %95 to i32*
  %97 = call i64 @PTE_ATOMIC_EXCHANGE(i32* %96, i32 0)
  store i64 %97, i64* %7, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @pte_osSemaphoreDelete(i64 %100)
  br label %102

102:                                              ; preds = %99, %93
  br label %103

103:                                              ; preds = %102, %88
  br label %104

104:                                              ; preds = %103, %54
  br label %17

105:                                              ; preds = %17
  br label %106

106:                                              ; preds = %105, %13
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @PTE_ATOMIC_COMPARE_EXCHANGE(i32*, i32, i32) #1

declare dso_local i32 @pthread_cleanup_push(i32, i8*) #1

declare dso_local i32 @pthread_cleanup_pop(i32) #1

declare dso_local i64 @PTE_ATOMIC_EXCHANGE(i32*, i32) #1

declare dso_local i64 @PTE_ATOMIC_EXCHANGE_ADD(i32*, i64) #1

declare dso_local i32 @pte_osSemaphorePost(i64, i32) #1

declare dso_local i32 @PTE_ATOMIC_INCREMENT(i32*) #1

declare dso_local i32 @pte_osSemaphoreCreate(i32, i64*) #1

declare dso_local i32 @pte_osSemaphoreDelete(i64) #1

declare dso_local i32 @pte_osSemaphorePend(i64, i32*) #1

declare dso_local i64 @PTE_ATOMIC_DECREMENT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
