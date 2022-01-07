
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_SYS_CONN_CBACK ;
struct TYPE_2__ {int * p_sco_cb; } ;


 TYPE_1__ bta_sys_cb ;

void bta_sys_sco_register(tBTA_SYS_CONN_CBACK *p_cback)
{
    bta_sys_cb.p_sco_cb = p_cback;
}
