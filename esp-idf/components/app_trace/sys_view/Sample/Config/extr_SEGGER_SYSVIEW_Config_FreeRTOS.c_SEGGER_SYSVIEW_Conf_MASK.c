#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SYSVIEW_CPU_FREQ ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_IDLE ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_ISR_ENTER ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_ISR_EXIT ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_ISR_TO_SCHEDULER ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_OVERFLOW ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_TASK_CREATE ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_TASK_START_EXEC ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_TASK_START_READY ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_TASK_STOP_EXEC ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_TASK_STOP_READY ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_TASK_TERMINATE ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_TIMER_ENTER ; 
 int /*<<< orphan*/  SYSVIEW_EVTMASK_TIMER_EXIT ; 
 int /*<<< orphan*/  SYSVIEW_RAM_BASE ; 
 int /*<<< orphan*/  SYSVIEW_TIMESTAMP_FREQ ; 
 int /*<<< orphan*/  SYSVIEW_X_OS_TraceAPI ; 
 int /*<<< orphan*/  _cbSendSystemDesc ; 

void FUNC4(void) {
    U32 disable_evts = 0;

    FUNC3();
    FUNC1(SYSVIEW_TIMESTAMP_FREQ, SYSVIEW_CPU_FREQ,
                        &SYSVIEW_X_OS_TraceAPI, _cbSendSystemDesc);
    FUNC2(SYSVIEW_RAM_BASE);

#if !CONFIG_SYSVIEW_EVT_OVERFLOW_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_OVERFLOW;
#endif
#if !CONFIG_SYSVIEW_EVT_ISR_ENTER_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_ISR_ENTER;
#endif
#if !CONFIG_SYSVIEW_EVT_ISR_EXIT_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_ISR_EXIT;
#endif
#if !CONFIG_SYSVIEW_EVT_TASK_START_EXEC_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_TASK_START_EXEC;
#endif
#if !CONFIG_SYSVIEW_EVT_TASK_STOP_EXEC_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_TASK_STOP_EXEC;
#endif
#if !CONFIG_SYSVIEW_EVT_TASK_START_READY_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_TASK_START_READY;
#endif
#if !CONFIG_SYSVIEW_EVT_TASK_STOP_READY_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_TASK_STOP_READY;
#endif
#if !CONFIG_SYSVIEW_EVT_TASK_CREATE_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_TASK_CREATE;
#endif
#if !CONFIG_SYSVIEW_EVT_TASK_TERMINATE_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_TASK_TERMINATE;
#endif
#if !CONFIG_SYSVIEW_EVT_IDLE_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_IDLE;
#endif
#if !CONFIG_SYSVIEW_EVT_ISR_TO_SCHEDULER_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_ISR_TO_SCHEDULER;
#endif
#if !CONFIG_SYSVIEW_EVT_TIMER_ENTER_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_TIMER_ENTER;
#endif
#if !CONFIG_SYSVIEW_EVT_TIMER_EXIT_ENABLE
    disable_evts |= SYSVIEW_EVTMASK_TIMER_EXIT;
#endif
  FUNC0(disable_evts);
}