
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_2__ {int * is_reg; } ;
typedef int BOOLEAN ;


 TYPE_1__ bta_sys_cb ;

BOOLEAN bta_sys_is_register(UINT8 id)
{
    return bta_sys_cb.is_reg[id];
}
