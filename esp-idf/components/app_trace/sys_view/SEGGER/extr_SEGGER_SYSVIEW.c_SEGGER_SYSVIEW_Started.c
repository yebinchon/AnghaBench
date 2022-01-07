
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int U8 ;
struct TYPE_2__ {int EnableState; } ;


 TYPE_1__ _SYSVIEW_Globals ;

U8 SEGGER_SYSVIEW_Started(void) {
    return _SYSVIEW_Globals.EnableState;
}
