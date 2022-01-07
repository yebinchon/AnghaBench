
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int trace_level; } ;


 TYPE_1__ sdp_cb ;

UINT8 SDP_SetTraceLevel (UINT8 new_level)
{
    if (new_level != 0xFF) {
        sdp_cb.trace_level = new_level;
    }

    return (sdp_cb.trace_level);
}
