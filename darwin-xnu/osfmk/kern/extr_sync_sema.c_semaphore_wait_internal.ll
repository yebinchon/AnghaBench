; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_wait_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sync_sema.c_semaphore_wait_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, void (i64)*, %struct.TYPE_14__*, %struct.TYPE_14__* }

@KERN_ALREADY_WAITING = common dso_local global i64 0, align 8
@KERN_TERMINATED = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@SEMAPHORE_TIMEOUT_NOBLOCK = common dso_local global i32 0, align 4
@KERN_OPERATION_TIMED_OUT = common dso_local global i64 0, align 8
@kThreadWaitSemaphore = common dso_local global i32 0, align 4
@SEMAPHORE_EVENT = common dso_local global i32 0, align 4
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@TIMEOUT_URGENCY_USER_NORMAL = common dso_local global i32 0, align 4
@TIMEOUT_NO_LEEWAY = common dso_local global i32 0, align 4
@SEMAPHORE_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@THREAD_NULL = common dso_local global i32 0, align 4
@SEMAPHORE_SIGNAL_PREPOST = common dso_local global i32 0, align 4
@KERN_NOT_WAITING = common dso_local global i64 0, align 8
@THREAD_INTERRUPTED = common dso_local global i32 0, align 4
@KERN_ABORTED = common dso_local global i64 0, align 8
@semaphore_wait_continue = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, %struct.TYPE_14__*, i32, i32, void (i64)*)* @semaphore_wait_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @semaphore_wait_internal(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, void (i64)* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (i64)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store void (i64)* %4, void (i64)** %11, align 8
  %19 = load i64, i64* @KERN_ALREADY_WAITING, align 8
  store i64 %19, i64* %14, align 8
  %20 = call i32 (...) @splsched()
  store i32 %20, i32* %13, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = call i32 @semaphore_lock(%struct.TYPE_14__* %21)
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* @KERN_TERMINATED, align 8
  store i64 %28, i64* %14, align 8
  br label %65

29:                                               ; preds = %5
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  %39 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %39, i64* %14, align 8
  br label %64

40:                                               ; preds = %29
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @SEMAPHORE_TIMEOUT_NOBLOCK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @KERN_OPERATION_TIMED_OUT, align 8
  store i64 %46, i64* %14, align 8
  br label %63

47:                                               ; preds = %40
  %48 = call %struct.TYPE_13__* (...) @current_thread()
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %15, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %52 = load i32, i32* @kThreadWaitSemaphore, align 4
  %53 = call i32 @thread_set_pending_block_hint(%struct.TYPE_13__* %51, i32 %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* @SEMAPHORE_EVENT, align 4
  %57 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %58 = load i32, i32* @TIMEOUT_URGENCY_USER_NORMAL, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @TIMEOUT_NO_LEEWAY, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %62 = call i32 @waitq_assert_wait64_locked(i32* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, %struct.TYPE_13__* %61)
  br label %63

63:                                               ; preds = %47, %45
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %64, %27
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = call i32 @semaphore_unlock(%struct.TYPE_14__* %66)
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @splx(i32 %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SEMAPHORE_NULL, align 8
  %72 = icmp ne %struct.TYPE_14__* %70, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %65
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = load i32, i32* @THREAD_NULL, align 4
  %76 = load i32, i32* @SEMAPHORE_SIGNAL_PREPOST, align 4
  %77 = call i64 @semaphore_signal_internal(%struct.TYPE_14__* %74, i32 %75, i32 %76)
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* @KERN_NOT_WAITING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %82, i64* %16, align 8
  br label %103

83:                                               ; preds = %73
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* @KERN_TERMINATED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = call %struct.TYPE_13__* (...) @current_thread()
  store %struct.TYPE_13__* %88, %struct.TYPE_13__** %17, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %90 = load i32, i32* @THREAD_INTERRUPTED, align 4
  %91 = call i32 @clear_wait(%struct.TYPE_13__* %89, i32 %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @semaphore_convert_wait_result(i32 %94)
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* @KERN_ABORTED, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %87
  %100 = load i64, i64* @KERN_TERMINATED, align 8
  store i64 %100, i64* %14, align 8
  br label %101

101:                                              ; preds = %99, %87
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %102, %81
  br label %104

104:                                              ; preds = %103, %65
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @KERN_ALREADY_WAITING, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* %14, align 8
  store i64 %109, i64* %6, align 8
  br label %133

110:                                              ; preds = %104
  %111 = load void (i64)*, void (i64)** %11, align 8
  %112 = icmp ne void (i64)* %111, null
  br i1 %112, label %113, label %127

113:                                              ; preds = %110
  %114 = call %struct.TYPE_13__* (...) @current_thread()
  store %struct.TYPE_13__* %114, %struct.TYPE_13__** %18, align 8
  %115 = load void (i64)*, void (i64)** %11, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store void (i64)* %115, void (i64)** %117, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %120, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %123, align 8
  %124 = load i64, i64* @semaphore_wait_continue, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i32 @thread_block(i32 %125)
  store i32 %126, i32* %12, align 4
  br label %130

127:                                              ; preds = %110
  %128 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %129 = call i32 @thread_block(i32 %128)
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %127, %113
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @semaphore_convert_wait_result(i32 %131)
  store i64 %132, i64* %6, align 8
  br label %133

133:                                              ; preds = %130, %108
  %134 = load i64, i64* %6, align 8
  ret i64 %134
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @semaphore_lock(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @current_thread(...) #1

declare dso_local i32 @thread_set_pending_block_hint(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @waitq_assert_wait64_locked(i32*, i32, i32, i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @semaphore_unlock(%struct.TYPE_14__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i64 @semaphore_signal_internal(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @clear_wait(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @semaphore_convert_wait_result(i32) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
