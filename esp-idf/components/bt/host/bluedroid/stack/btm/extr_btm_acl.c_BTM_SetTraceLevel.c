
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int trace_level; } ;


 int BTM_TRACE_DEBUG (char*) ;
 TYPE_1__ btm_cb ;

UINT8 BTM_SetTraceLevel (UINT8 new_level)
{
    BTM_TRACE_DEBUG ("BTM_SetTraceLevel\n");
    if (new_level != 0xFF) {
        btm_cb.trace_level = new_level;
    }

    return (btm_cb.trace_level);
}
