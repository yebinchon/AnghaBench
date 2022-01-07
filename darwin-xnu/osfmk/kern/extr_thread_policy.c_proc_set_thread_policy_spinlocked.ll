; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_set_thread_policy_spinlocked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_set_thread_policy_spinlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TASK_POLICY_THREAD = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @proc_set_thread_policy_spinlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_set_thread_policy_spinlocked(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @KDEBUG_TRACE, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @TASK_POLICY_THREAD, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @IMPORTANCE_CODE(i32 %14, i32 %17)
  %19 = load i32, i32* @DBG_FUNC_START, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @thread_tid(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @threquested_0(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @threquested_1(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %13, i32 %20, i32 %22, i32 %24, i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @thread_set_requested_policy_spinlocked(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @thread_policy_update_spinlocked(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @KDEBUG_TRACE, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @TASK_POLICY_THREAD, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @IMPORTANCE_CODE(i32 %40, i32 %43)
  %45 = load i32, i32* @DBG_FUNC_END, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @thread_tid(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @threquested_0(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @threquested_1(i32 %51)
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @tpending(i32 %53)
  %55 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %39, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 0)
  ret void
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IMPORTANCE_CODE(i32, i32) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @threquested_0(i32) #1

declare dso_local i32 @threquested_1(i32) #1

declare dso_local i32 @thread_set_requested_policy_spinlocked(i32, i32, i32, i32, i32) #1

declare dso_local i32 @thread_policy_update_spinlocked(i32, i32, i32) #1

declare dso_local i32 @tpending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
