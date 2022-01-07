
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_used_conn_latency; int current_used_conn_interval; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT32 ;



UINT32 CalConnectParamTimeout(tL2C_LCB *p_lcb)
{
    UINT32 timeout = 6;
    if (p_lcb != ((void*)0)){

        timeout = (40 * ( 1 + p_lcb->current_used_conn_latency) * p_lcb->current_used_conn_interval + 500) / 1000;
        if (timeout < 1){
            timeout = 1;
        }else if (timeout > 120){
            timeout = 120;
        }
    }
    return timeout;
}
