
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_2__ {int DisabledEvents; } ;


 TYPE_1__ _SYSVIEW_Globals ;

void SEGGER_SYSVIEW_EnableEvents(U32 EnableMask) {
  _SYSVIEW_Globals.DisabledEvents &= ~EnableMask;
}
