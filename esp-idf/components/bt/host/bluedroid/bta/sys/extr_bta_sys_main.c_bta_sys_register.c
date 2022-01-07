
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_SYS_REG ;
typedef size_t UINT8 ;
struct TYPE_2__ {int * is_reg; int ** reg; } ;


 int TRUE ;
 TYPE_1__ bta_sys_cb ;

void bta_sys_register(UINT8 id, const tBTA_SYS_REG *p_reg)
{
    bta_sys_cb.reg[id] = (tBTA_SYS_REG *) p_reg;
    bta_sys_cb.is_reg[id] = TRUE;
}
