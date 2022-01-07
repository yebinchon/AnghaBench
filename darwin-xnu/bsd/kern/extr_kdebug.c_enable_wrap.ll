; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_enable_wrap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_enable_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@kds_spin_lock = common dso_local global i32 0, align 4
@KDBG_NOWRAP = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SLOW_NOLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @enable_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_wrap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @FALSE, align 4
  %5 = call i32 @ml_set_interrupts_enabled(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @kds_spin_lock, align 4
  %7 = call i32 @lck_spin_lock(i32 %6)
  %8 = load i32, i32* @KDBG_NOWRAP, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 1), align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 1), align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @SLOW_NOLOG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @SLOW_NOLOG, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @kds_spin_lock, align 4
  %23 = call i32 @lck_spin_unlock(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @ml_set_interrupts_enabled(i32 %24)
  ret void
}

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @lck_spin_lock(i32) #1

declare dso_local i32 @lck_spin_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
