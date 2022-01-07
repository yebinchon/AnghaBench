; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_setschedparam.c_ptw32_setthreadpriority.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_setschedparam.c_ptw32_setthreadpriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@THREAD_PRIORITY_IDLE = common dso_local global i32 0, align 4
@THREAD_PRIORITY_LOWEST = common dso_local global i32 0, align 4
@THREAD_PRIORITY_TIME_CRITICAL = common dso_local global i32 0, align 4
@THREAD_PRIORITY_HIGHEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptw32_setthreadpriority(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i64 %0, i64* %12, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %11, align 8
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @sched_get_priority_min(i32 %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @sched_get_priority_max(i32 %23)
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %4, align 4
  br label %68

28:                                               ; preds = %21
  %29 = load i32, i32* @THREAD_PRIORITY_IDLE, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @THREAD_PRIORITY_LOWEST, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @THREAD_PRIORITY_LOWEST, align 4
  store i32 %37, i32* %8, align 4
  br label %49

38:                                               ; preds = %32, %28
  %39 = load i32, i32* @THREAD_PRIORITY_TIME_CRITICAL, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @THREAD_PRIORITY_HIGHEST, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @THREAD_PRIORITY_HIGHEST, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %42, %38
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = call i32 @ptw32_mcs_lock_acquire(i32* %51, i32* %9)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @SetThreadPriority(i32 %55, i32 %56)
  %58 = icmp eq i64 0, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %10, align 4
  br label %65

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %59
  %66 = call i32 @ptw32_mcs_lock_release(i32* %9)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %26
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @sched_get_priority_min(i32) #1

declare dso_local i32 @sched_get_priority_max(i32) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i64 @SetThreadPriority(i32, i32) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
