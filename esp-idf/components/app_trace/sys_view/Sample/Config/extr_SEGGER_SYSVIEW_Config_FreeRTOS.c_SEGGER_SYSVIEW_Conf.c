
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int SEGGER_SYSVIEW_DisableEvents (int ) ;
 int SEGGER_SYSVIEW_Init (int ,int ,int *,int ) ;
 int SEGGER_SYSVIEW_SetRAMBase (int ) ;
 int SEGGER_SYSVIEW_TS_Init () ;
 int SYSVIEW_CPU_FREQ ;
 int SYSVIEW_EVTMASK_IDLE ;
 int SYSVIEW_EVTMASK_ISR_ENTER ;
 int SYSVIEW_EVTMASK_ISR_EXIT ;
 int SYSVIEW_EVTMASK_ISR_TO_SCHEDULER ;
 int SYSVIEW_EVTMASK_OVERFLOW ;
 int SYSVIEW_EVTMASK_TASK_CREATE ;
 int SYSVIEW_EVTMASK_TASK_START_EXEC ;
 int SYSVIEW_EVTMASK_TASK_START_READY ;
 int SYSVIEW_EVTMASK_TASK_STOP_EXEC ;
 int SYSVIEW_EVTMASK_TASK_STOP_READY ;
 int SYSVIEW_EVTMASK_TASK_TERMINATE ;
 int SYSVIEW_EVTMASK_TIMER_ENTER ;
 int SYSVIEW_EVTMASK_TIMER_EXIT ;
 int SYSVIEW_RAM_BASE ;
 int SYSVIEW_TIMESTAMP_FREQ ;
 int SYSVIEW_X_OS_TraceAPI ;
 int _cbSendSystemDesc ;

void SEGGER_SYSVIEW_Conf(void) {
    U32 disable_evts = 0;

    SEGGER_SYSVIEW_TS_Init();
    SEGGER_SYSVIEW_Init(SYSVIEW_TIMESTAMP_FREQ, SYSVIEW_CPU_FREQ,
                        &SYSVIEW_X_OS_TraceAPI, _cbSendSystemDesc);
    SEGGER_SYSVIEW_SetRAMBase(SYSVIEW_RAM_BASE);


    disable_evts |= SYSVIEW_EVTMASK_OVERFLOW;


    disable_evts |= SYSVIEW_EVTMASK_ISR_ENTER;


    disable_evts |= SYSVIEW_EVTMASK_ISR_EXIT;


    disable_evts |= SYSVIEW_EVTMASK_TASK_START_EXEC;


    disable_evts |= SYSVIEW_EVTMASK_TASK_STOP_EXEC;


    disable_evts |= SYSVIEW_EVTMASK_TASK_START_READY;


    disable_evts |= SYSVIEW_EVTMASK_TASK_STOP_READY;


    disable_evts |= SYSVIEW_EVTMASK_TASK_CREATE;


    disable_evts |= SYSVIEW_EVTMASK_TASK_TERMINATE;


    disable_evts |= SYSVIEW_EVTMASK_IDLE;


    disable_evts |= SYSVIEW_EVTMASK_ISR_TO_SCHEDULER;


    disable_evts |= SYSVIEW_EVTMASK_TIMER_ENTER;


    disable_evts |= SYSVIEW_EVTMASK_TIMER_EXIT;

  SEGGER_SYSVIEW_DisableEvents(disable_evts);
}
