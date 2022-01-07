
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t tBTA_SYS_HW_MODULE ;
struct TYPE_2__ {int ** sys_hw_cback; } ;


 TYPE_1__ bta_sys_cb ;

void bta_sys_hw_unregister( tBTA_SYS_HW_MODULE module )
{
    bta_sys_cb.sys_hw_cback[module] = ((void*)0);
}
