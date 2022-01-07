; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@THREAD_AWAKENED = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"kdbg_wait() called with interrupts disabled\00", align 1
@kdw_spin_lock = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@n_storage_threshold = common dso_local global i64 0, align 8
@kds_waiter = common dso_local global i32 0, align 4
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @kdbg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdbg_wait(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @THREAD_AWAKENED, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = call i32 (...) @ktrace_assert_lock_held()
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @NSEC_PER_MSEC, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @nanoseconds_to_absolutetime(i32 %18, i32* %6)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @clock_absolutetime_interval_to_deadline(i32 %20, i32* %6)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @ml_set_interrupts_enabled(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* @kdw_spin_lock, align 4
  %31 = call i32 @lck_spin_lock(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 (...) @ktrace_unlock()
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @THREAD_AWAKENED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 8
  %43 = load i64, i64* @n_storage_threshold, align 8
  %44 = icmp slt i64 %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %60

47:                                               ; preds = %45
  store i32 1, i32* @kds_waiter, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @kdw_spin_lock, align 4
  %52 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @lck_spin_sleep_deadline(i32 %51, i32 0, i32* @kds_waiter, i32 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %59

55:                                               ; preds = %47
  %56 = load i32, i32* @kdw_spin_lock, align 4
  %57 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %58 = call i32 @lck_spin_sleep(i32 %56, i32 0, i32* @kds_waiter, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %50
  store i32 0, i32* @kds_waiter, align 4
  br label %37

60:                                               ; preds = %45
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 8
  %62 = load i64, i64* @n_storage_threshold, align 8
  %63 = icmp sge i64 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @kdw_spin_lock, align 4
  %66 = call i32 @lck_spin_unlock(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @ml_set_interrupts_enabled(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %60
  %72 = call i32 (...) @ktrace_lock()
  br label %73

73:                                               ; preds = %71, %60
  %74 = load i32, i32* %9, align 4
  ret i32 %74
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i32*) #1

declare dso_local i32 @clock_absolutetime_interval_to_deadline(i32, i32*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lck_spin_lock(i32) #1

declare dso_local i32 @ktrace_unlock(...) #1

declare dso_local i32 @lck_spin_sleep_deadline(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @lck_spin_sleep(i32, i32, i32*, i32) #1

declare dso_local i32 @lck_spin_unlock(i32) #1

declare dso_local i32 @ktrace_lock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
