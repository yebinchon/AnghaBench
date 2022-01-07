; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_wake.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_call.c_thread_call_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32, i32 }

@NO_EVENT64 = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@TCG_DEALLOC_ACTIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@thread_call_daemon_awake = common dso_local global i64 0, align 8
@daemon_waitq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @thread_call_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_call_wake(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = call i64 @group_isparallel(%struct.TYPE_5__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %6, %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  %14 = load i32, i32* @NO_EVENT64, align 4
  %15 = load i32, i32* @THREAD_AWAKENED, align 4
  %16 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %17 = call i64 @waitq_wakeup64_one(i32* %13, i32 %14, i32 %15, i32 %16)
  %18 = load i64, i64* @KERN_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %11
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %20
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TCG_DEALLOC_ACTIVE, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @TCG_DEALLOC_ACTIVE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %33
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = call i64 @timer_call_cancel(i32* %43)
  %45 = load i64, i64* @TRUE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* @TCG_DEALLOC_ACTIVE, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %47, %41
  br label %55

55:                                               ; preds = %54, %33, %20
  br label %70

56:                                               ; preds = %11
  %57 = load i64, i64* @thread_call_daemon_awake, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = call i64 @thread_call_group_should_add_thread(%struct.TYPE_5__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i64, i64* @TRUE, align 8
  store i64 %64, i64* @thread_call_daemon_awake, align 8
  %65 = load i32, i32* @NO_EVENT64, align 4
  %66 = load i32, i32* @THREAD_AWAKENED, align 4
  %67 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %68 = call i64 @waitq_wakeup64_one(i32* @daemon_waitq, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %59, %56
  br label %70

70:                                               ; preds = %69, %55
  br label %71

71:                                               ; preds = %70, %6
  ret void
}

declare dso_local i64 @group_isparallel(%struct.TYPE_5__*) #1

declare dso_local i64 @waitq_wakeup64_one(i32*, i32, i32, i32) #1

declare dso_local i64 @timer_call_cancel(i32*) #1

declare dso_local i64 @thread_call_group_should_add_thread(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
