; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/Config/extr_SEGGER_SYSVIEW_Config_FreeRTOS.c_SEGGER_SYSVIEW_Conf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/Config/extr_SEGGER_SYSVIEW_Config_FreeRTOS.c_SEGGER_SYSVIEW_Conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSVIEW_TIMESTAMP_FREQ = common dso_local global i32 0, align 4
@SYSVIEW_CPU_FREQ = common dso_local global i32 0, align 4
@SYSVIEW_X_OS_TraceAPI = common dso_local global i32 0, align 4
@_cbSendSystemDesc = common dso_local global i32 0, align 4
@SYSVIEW_RAM_BASE = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_OVERFLOW = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_ISR_ENTER = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_ISR_EXIT = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_TASK_START_EXEC = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_TASK_STOP_EXEC = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_TASK_START_READY = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_TASK_STOP_READY = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_TASK_CREATE = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_TASK_TERMINATE = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_IDLE = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_ISR_TO_SCHEDULER = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_TIMER_ENTER = common dso_local global i32 0, align 4
@SYSVIEW_EVTMASK_TIMER_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_Conf() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @SEGGER_SYSVIEW_TS_Init()
  %3 = load i32, i32* @SYSVIEW_TIMESTAMP_FREQ, align 4
  %4 = load i32, i32* @SYSVIEW_CPU_FREQ, align 4
  %5 = load i32, i32* @_cbSendSystemDesc, align 4
  %6 = call i32 @SEGGER_SYSVIEW_Init(i32 %3, i32 %4, i32* @SYSVIEW_X_OS_TraceAPI, i32 %5)
  %7 = load i32, i32* @SYSVIEW_RAM_BASE, align 4
  %8 = call i32 @SEGGER_SYSVIEW_SetRAMBase(i32 %7)
  %9 = load i32, i32* @SYSVIEW_EVTMASK_OVERFLOW, align 4
  %10 = load i32, i32* %1, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* @SYSVIEW_EVTMASK_ISR_ENTER, align 4
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @SYSVIEW_EVTMASK_ISR_EXIT, align 4
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @SYSVIEW_EVTMASK_TASK_START_EXEC, align 4
  %19 = load i32, i32* %1, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @SYSVIEW_EVTMASK_TASK_STOP_EXEC, align 4
  %22 = load i32, i32* %1, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* @SYSVIEW_EVTMASK_TASK_START_READY, align 4
  %25 = load i32, i32* %1, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* @SYSVIEW_EVTMASK_TASK_STOP_READY, align 4
  %28 = load i32, i32* %1, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* @SYSVIEW_EVTMASK_TASK_CREATE, align 4
  %31 = load i32, i32* %1, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* @SYSVIEW_EVTMASK_TASK_TERMINATE, align 4
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* @SYSVIEW_EVTMASK_IDLE, align 4
  %37 = load i32, i32* %1, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* @SYSVIEW_EVTMASK_ISR_TO_SCHEDULER, align 4
  %40 = load i32, i32* %1, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* @SYSVIEW_EVTMASK_TIMER_ENTER, align 4
  %43 = load i32, i32* %1, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @SYSVIEW_EVTMASK_TIMER_EXIT, align 4
  %46 = load i32, i32* %1, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @SEGGER_SYSVIEW_DisableEvents(i32 %48)
  ret void
}

declare dso_local i32 @SEGGER_SYSVIEW_TS_Init(...) #1

declare dso_local i32 @SEGGER_SYSVIEW_Init(i32, i32, i32*, i32) #1

declare dso_local i32 @SEGGER_SYSVIEW_SetRAMBase(i32) #1

declare dso_local i32 @SEGGER_SYSVIEW_DisableEvents(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
