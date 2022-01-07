
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_2__ {int * is_reg; } ;


 int FALSE ;
 TYPE_1__ bta_sys_cb ;

void bta_sys_deregister(UINT8 id)
{
    bta_sys_cb.is_reg[id] = FALSE;
}
