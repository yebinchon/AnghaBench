; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workqueue_get_pwq_state_kdp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workqueue_get_pwq_state_kdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i64, i64 }

@WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT = common dso_local global i32 0, align 4
@kTaskWqExceededConstrainedThreadLimit = common dso_local global i32 0, align 4
@WQ_EXCEEDED_TOTAL_THREAD_LIMIT = common dso_local global i32 0, align 4
@kTaskWqExceededTotalThreadLimit = common dso_local global i32 0, align 4
@WQ_FLAGS_AVAILABLE = common dso_local global i32 0, align 4
@kTaskWqFlagsAvailable = common dso_local global i32 0, align 4
@wq_max_constrained_threads = common dso_local global i64 0, align 8
@wq_max_threads = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @workqueue_get_pwq_state_kdp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.workqueue*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT, align 4
  %8 = shl i32 %7, 17
  %9 = load i32, i32* @kTaskWqExceededConstrainedThreadLimit, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @static_assert(i32 %11)
  %13 = load i32, i32* @WQ_EXCEEDED_TOTAL_THREAD_LIMIT, align 4
  %14 = shl i32 %13, 17
  %15 = load i32, i32* @kTaskWqExceededTotalThreadLimit, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @static_assert(i32 %17)
  %19 = load i32, i32* @WQ_FLAGS_AVAILABLE, align 4
  %20 = shl i32 %19, 17
  %21 = load i32, i32* @kTaskWqFlagsAvailable, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @static_assert(i32 %23)
  %25 = load i32, i32* @WQ_FLAGS_AVAILABLE, align 4
  %26 = load i32, i32* @WQ_EXCEEDED_TOTAL_THREAD_LIMIT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT, align 4
  %29 = or i32 %27, %28
  %30 = icmp eq i32 %29, 7
  %31 = zext i1 %30 to i32
  %32 = call i32 @static_assert(i32 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

36:                                               ; preds = %1
  %37 = load i8*, i8** %3, align 8
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call %struct.workqueue* @proc_get_wqptr(i8* %38)
  store %struct.workqueue* %39, %struct.workqueue** %5, align 8
  %40 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %41 = icmp eq %struct.workqueue* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %44 = call i64 @workq_lock_spin_is_acquired_kdp(%struct.workqueue* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %36
  store i32 0, i32* %2, align 4
  br label %70

47:                                               ; preds = %42
  %48 = load i32, i32* @WQ_FLAGS_AVAILABLE, align 4
  store i32 %48, i32* %6, align 4
  %49 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %50 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @wq_max_constrained_threads, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %60 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @wq_max_threads, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @WQ_EXCEEDED_TOTAL_THREAD_LIMIT, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %46, %35
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @static_assert(i32) #1

declare dso_local %struct.workqueue* @proc_get_wqptr(i8*) #1

declare dso_local i64 @workq_lock_spin_is_acquired_kdp(%struct.workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
