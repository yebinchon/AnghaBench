; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c_SYS_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@system_initialized = common dso_local global i32 0, align 4
@KERNEL_HEAP = common dso_local global i32 0, align 4
@sys_reset_func_queue = common dso_local global i32 0, align 4
@sys_alarm_objects = common dso_local global i32 0, align 4
@LWP_MAX_WATCHDOGS = common dso_local global i32 0, align 4
@__sys_inIPL = common dso_local global i32 0, align 4
@IRQ_PI_RSW = common dso_local global i32 0, align 4
@__RSWHandler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYS_Init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 @_CPU_ISR_Disable(i32 %2)
  %4 = call i32 (...) @__SYS_PreInit()
  %5 = load i32, i32* @system_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %47

8:                                                ; preds = %0
  store i32 1, i32* @system_initialized, align 4
  %9 = call i32 (...) @_V_EXPORTNAME()
  %10 = call i32 (...) @__init_syscall_array()
  %11 = call i32 (...) @__lowmem_init()
  %12 = load i32, i32* @KERNEL_HEAP, align 4
  %13 = call i32 @__lwp_wkspace_init(i32 %12)
  %14 = call i32 @__lwp_queue_init_empty(i32* @sys_reset_func_queue)
  %15 = load i32, i32* @LWP_MAX_WATCHDOGS, align 4
  %16 = call i32 @__lwp_objmgr_initinfo(i32* @sys_alarm_objects, i32 %15, i32 4)
  %17 = call i32 (...) @__sys_state_init()
  %18 = call i32 (...) @__lwp_priority_init()
  %19 = call i32 (...) @__lwp_watchdog_init()
  %20 = call i32 (...) @__exception_init()
  %21 = call i32 (...) @__systemcall_init()
  %22 = call i32 (...) @__decrementer_init()
  %23 = call i32 (...) @__irq_init()
  %24 = call i32 (...) @__exi_init()
  %25 = call i32 (...) @__sram_init()
  %26 = call i32 (...) @__si_init()
  %27 = call i32 (...) @__lwp_thread_coreinit()
  %28 = call i32 (...) @__lwp_sysinit()
  %29 = call i32 (...) @__memlock_init()
  %30 = call i32 (...) @__lwp_mqbox_init()
  %31 = call i32 (...) @__lwp_sema_init()
  %32 = call i32 (...) @__lwp_mutex_init()
  %33 = call i32 (...) @__lwp_cond_init()
  %34 = call i32 (...) @__timesystem_init()
  %35 = call i32 (...) @__dsp_bootstrap()
  %36 = load i32, i32* @__sys_inIPL, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %8
  %39 = call i32 (...) @__memprotect_init()
  br label %40

40:                                               ; preds = %38, %8
  %41 = call i32 (...) @DisableWriteGatherPipe()
  %42 = call i32 (...) @__SYS_InitCallbacks()
  %43 = call i32 @__libc_init(i32 1)
  %44 = call i32 (...) @__lwp_thread_startmultitasking()
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @_CPU_ISR_Restore(i32 %45)
  br label %47

47:                                               ; preds = %40, %7
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__SYS_PreInit(...) #1

declare dso_local i32 @_V_EXPORTNAME(...) #1

declare dso_local i32 @__init_syscall_array(...) #1

declare dso_local i32 @__lowmem_init(...) #1

declare dso_local i32 @__lwp_wkspace_init(i32) #1

declare dso_local i32 @__lwp_queue_init_empty(i32*) #1

declare dso_local i32 @__lwp_objmgr_initinfo(i32*, i32, i32) #1

declare dso_local i32 @__sys_state_init(...) #1

declare dso_local i32 @__lwp_priority_init(...) #1

declare dso_local i32 @__lwp_watchdog_init(...) #1

declare dso_local i32 @__exception_init(...) #1

declare dso_local i32 @__systemcall_init(...) #1

declare dso_local i32 @__decrementer_init(...) #1

declare dso_local i32 @__irq_init(...) #1

declare dso_local i32 @__exi_init(...) #1

declare dso_local i32 @__sram_init(...) #1

declare dso_local i32 @__si_init(...) #1

declare dso_local i32 @__lwp_thread_coreinit(...) #1

declare dso_local i32 @__lwp_sysinit(...) #1

declare dso_local i32 @__memlock_init(...) #1

declare dso_local i32 @__lwp_mqbox_init(...) #1

declare dso_local i32 @__lwp_sema_init(...) #1

declare dso_local i32 @__lwp_mutex_init(...) #1

declare dso_local i32 @__lwp_cond_init(...) #1

declare dso_local i32 @__timesystem_init(...) #1

declare dso_local i32 @__dsp_bootstrap(...) #1

declare dso_local i32 @__memprotect_init(...) #1

declare dso_local i32 @DisableWriteGatherPipe(...) #1

declare dso_local i32 @__SYS_InitCallbacks(...) #1

declare dso_local i32 @__libc_init(i32) #1

declare dso_local i32 @__lwp_thread_startmultitasking(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
