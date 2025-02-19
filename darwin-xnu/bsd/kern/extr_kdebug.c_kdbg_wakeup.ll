; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_wakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@kdw_spin_lock = common dso_local global i32 0, align 4
@kds_waiter = common dso_local global i64 0, align 8
@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@n_storage_threshold = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kdbg_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdbg_wakeup() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @FALSE, align 8
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* @FALSE, align 8
  %5 = call i64 @ml_set_interrupts_enabled(i64 %4)
  store i64 %5, i64* %2, align 8
  %6 = load i32, i32* @kdw_spin_lock, align 4
  %7 = call i64 @lck_spin_try_lock(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  %10 = load i64, i64* @kds_waiter, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 8
  %14 = load i64, i64* @n_storage_threshold, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  store i64 0, i64* @kds_waiter, align 8
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %1, align 8
  br label %18

18:                                               ; preds = %16, %12, %9
  %19 = load i32, i32* @kdw_spin_lock, align 4
  %20 = call i32 @lck_spin_unlock(i32 %19)
  br label %21

21:                                               ; preds = %18, %0
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @ml_set_interrupts_enabled(i64 %22)
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @TRUE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @wakeup(i64* @kds_waiter)
  br label %29

29:                                               ; preds = %27, %21
  ret void
}

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i64 @lck_spin_try_lock(i32) #1

declare dso_local i32 @lck_spin_unlock(i32) #1

declare dso_local i32 @wakeup(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
