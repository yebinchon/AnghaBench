; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_signal_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_signal_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@KERN_TERMINATED = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@SEMAPHORE_EVENT = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@WAITQ_UNLOCK = common dso_local global i32 0, align 4
@KERN_NOT_WAITING = common dso_local global i64 0, align 8
@SEMAPHORE_SIGNAL_ALL = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4
@SEMAPHORE_SIGNAL_PREPOST = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@WAITQ_KEEP_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @semaphore_signal_internal(%struct.TYPE_5__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @splsched()
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = call i32 @semaphore_lock(%struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = call i32 @semaphore_unlock(%struct.TYPE_5__* %19)
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @splx(i32 %21)
  %23 = load i64, i64* @KERN_TERMINATED, align 8
  store i64 %23, i64* %4, align 8
  br label %131

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @THREAD_NULL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* @SEMAPHORE_EVENT, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @THREAD_AWAKENED, align 4
  %39 = load i32, i32* @WAITQ_UNLOCK, align 4
  %40 = call i64 @waitq_wakeup64_thread_locked(i32* %35, i32 %36, i64 %37, i32 %38, i32 %39)
  store i64 %40, i64* %8, align 8
  br label %45

41:                                               ; preds = %28
  %42 = load i64, i64* @KERN_NOT_WAITING, align 8
  store i64 %42, i64* %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = call i32 @semaphore_unlock(%struct.TYPE_5__* %43)
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @splx(i32 %46)
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %4, align 8
  br label %131

49:                                               ; preds = %24
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @SEMAPHORE_SIGNAL_ALL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %89

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i64, i64* @KERN_NOT_WAITING, align 8
  store i64 %58, i64* %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* @SEMAPHORE_EVENT, align 4
  %67 = load i32, i32* @THREAD_AWAKENED, align 4
  %68 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %69 = load i32, i32* @WAITQ_UNLOCK, align 4
  %70 = call i64 @waitq_wakeup64_all_locked(i32* %65, i32 %66, i32 %67, i32* null, i32 %68, i32 %69)
  store i64 %70, i64* %8, align 8
  br label %85

71:                                               ; preds = %54
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @SEMAPHORE_SIGNAL_PREPOST, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %82, i64* %8, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = call i32 @semaphore_unlock(%struct.TYPE_5__* %83)
  br label %85

85:                                               ; preds = %81, %61
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @splx(i32 %86)
  %88 = load i64, i64* %8, align 8
  store i64 %88, i64* %4, align 8
  br label %131

89:                                               ; preds = %49
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %89
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32, i32* @SEMAPHORE_EVENT, align 4
  %98 = load i32, i32* @THREAD_AWAKENED, align 4
  %99 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %100 = load i32, i32* @WAITQ_KEEP_LOCKED, align 4
  %101 = call i64 @waitq_wakeup64_one_locked(i32* %96, i32 %97, i32 %98, i32* null, i32 %99, i32 %100)
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @KERN_SUCCESS, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %94
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = call i32 @semaphore_unlock(%struct.TYPE_5__* %106)
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @splx(i32 %108)
  %110 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %110, i64* %4, align 8
  br label %131

111:                                              ; preds = %94
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %111
  br label %115

115:                                              ; preds = %114, %89
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @SEMAPHORE_SIGNAL_PREPOST, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %120, %115
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = call i32 @semaphore_unlock(%struct.TYPE_5__* %126)
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @splx(i32 %128)
  %130 = load i64, i64* @KERN_NOT_WAITING, align 8
  store i64 %130, i64* %4, align 8
  br label %131

131:                                              ; preds = %125, %105, %85, %45, %18
  %132 = load i64, i64* %4, align 8
  ret i64 %132
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @semaphore_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @semaphore_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i64 @waitq_wakeup64_thread_locked(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @waitq_wakeup64_all_locked(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @waitq_wakeup64_one_locked(i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
