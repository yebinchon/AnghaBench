; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_set_tracing_enabled.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_set_tracing_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@kds_spin_lock = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@kdebug_enable = common dso_local global i32 0, align 4
@SLOW_NOLOG = common dso_local global i32 0, align 4
@KDEBUG_ENABLE_TRACE = common dso_local global i32 0, align 4
@KDEBUG_ENABLE_PPT = common dso_local global i32 0, align 4
@KD_CALLBACK_KDEBUG_ENABLED = common dso_local global i32 0, align 4
@KD_CALLBACK_KDEBUG_DISABLED = common dso_local global i32 0, align 4
@KD_CALLBACK_SYNC_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @kdbg_set_tracing_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdbg_set_tracing_enabled(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @FALSE, align 4
  %7 = call i32 @ml_set_interrupts_enabled(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @kds_spin_lock, align 4
  %9 = call i32 @lck_spin_lock(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = call i32 (...) @kdbg_timestamp()
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 3), align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @kdebug_enable, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* @kdebug_enable, align 4
  %17 = load i32, i32* @SLOW_NOLOG, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 2), align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %21 = call i32 (...) @commpage_update_kdebug_state()
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @KDEBUG_ENABLE_TRACE, align 4
  %24 = load i32, i32* @KDEBUG_ENABLE_PPT, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @kdebug_enable, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* @kdebug_enable, align 4
  %29 = load i32, i32* @SLOW_NOLOG, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 2), align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %32 = call i32 (...) @commpage_update_kdebug_state()
  br label %33

33:                                               ; preds = %22, %12
  %34 = load i32, i32* @kds_spin_lock, align 4
  %35 = call i32 @lck_spin_unlock(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @ml_set_interrupts_enabled(i32 %36)
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 1), align 4
  %42 = load i32, i32* @KD_CALLBACK_KDEBUG_ENABLED, align 4
  %43 = call i32 @kdbg_iop_list_callback(i32 %41, i32 %42, i32* null)
  br label %51

44:                                               ; preds = %33
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 1), align 4
  %46 = load i32, i32* @KD_CALLBACK_KDEBUG_DISABLED, align 4
  %47 = call i32 @kdbg_iop_list_callback(i32 %45, i32 %46, i32* null)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 1), align 4
  %49 = load i32, i32* @KD_CALLBACK_SYNC_FLUSH, align 4
  %50 = call i32 @kdbg_iop_list_callback(i32 %48, i32 %49, i32* null)
  br label %51

51:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @lck_spin_lock(i32) #1

declare dso_local i32 @kdbg_timestamp(...) #1

declare dso_local i32 @commpage_update_kdebug_state(...) #1

declare dso_local i32 @lck_spin_unlock(i32) #1

declare dso_local i32 @kdbg_iop_list_callback(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
