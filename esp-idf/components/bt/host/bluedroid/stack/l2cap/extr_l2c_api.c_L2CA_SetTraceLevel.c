
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int l2cap_trace_level; } ;


 TYPE_1__ l2cb ;

UINT8 L2CA_SetTraceLevel (UINT8 new_level)
{
    if (new_level != 0xFF) {
        l2cb.l2cap_trace_level = new_level;
    }

    return (l2cb.l2cap_trace_level);
}
