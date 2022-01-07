; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_disable_typefilter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_disable_typefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KDBG_TYPEFILTER_CHECK = common dso_local global i32 0, align 4
@KDBG_PIDCHECK = common dso_local global i32 0, align 4
@KDBG_PIDEXCLUDE = common dso_local global i32 0, align 4
@SLOW_CHECKS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@kdbg_typefilter = common dso_local global i32 0, align 4
@KD_CALLBACK_TYPEFILTER_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kdbg_disable_typefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdbg_disable_typefilter() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %3 = load i32, i32* @KDBG_TYPEFILTER_CHECK, align 4
  %4 = and i32 %2, %3
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @KDBG_TYPEFILTER_CHECK, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %10 = load i32, i32* @KDBG_PIDCHECK, align 4
  %11 = load i32, i32* @KDBG_PIDEXCLUDE, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32, i32* @SLOW_CHECKS, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @kdbg_set_flags(i32 %16, i32 0, i32 %17)
  br label %23

19:                                               ; preds = %0
  %20 = load i32, i32* @SLOW_CHECKS, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @kdbg_set_flags(i32 %20, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = call i32 (...) @commpage_update_kdebug_state()
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @kdbg_typefilter, align 4
  %29 = call i32 @typefilter_allow_all(i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 1), align 4
  %31 = load i32, i32* @KD_CALLBACK_TYPEFILTER_CHANGED, align 4
  %32 = load i32, i32* @kdbg_typefilter, align 4
  %33 = call i32 @kdbg_iop_list_callback(i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @kdbg_set_flags(i32, i32, i32) #1

declare dso_local i32 @commpage_update_kdebug_state(...) #1

declare dso_local i32 @typefilter_allow_all(i32) #1

declare dso_local i32 @kdbg_iop_list_callback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
