
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int U64 ;
typedef int U32 ;
struct TYPE_4__ {TYPE_1__* pOSAPI; } ;
struct TYPE_3__ {int (* pfGetTime ) () ;} ;


 int SEGGER_SYSVIEW_GET_TIMESTAMP () ;
 int SEGGER_SYSVIEW_RecordU32 (int ,int ) ;
 int SEGGER_SYSVIEW_RecordU32x2 (int ,int ,int ) ;
 int SYSVIEW_EVTID_SYSTIME_CYCLES ;
 int SYSVIEW_EVTID_SYSTIME_US ;
 TYPE_2__ _SYSVIEW_Globals ;
 int stub1 () ;

void SEGGER_SYSVIEW_RecordSystime(void) {
  U64 Systime;

  if (_SYSVIEW_Globals.pOSAPI && _SYSVIEW_Globals.pOSAPI->pfGetTime) {
    Systime = _SYSVIEW_Globals.pOSAPI->pfGetTime();
    SEGGER_SYSVIEW_RecordU32x2(SYSVIEW_EVTID_SYSTIME_US,
                               (U32)(Systime),
                               (U32)(Systime >> 32));
  } else {
    SEGGER_SYSVIEW_RecordU32(SYSVIEW_EVTID_SYSTIME_CYCLES, SEGGER_SYSVIEW_GET_TIMESTAMP());
  }
}
