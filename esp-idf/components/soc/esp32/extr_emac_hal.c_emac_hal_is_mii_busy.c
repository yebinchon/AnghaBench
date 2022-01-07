
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* mac_regs; } ;
typedef TYPE_3__ emac_hal_context_t ;
struct TYPE_5__ {scalar_t__ miibusy; } ;
struct TYPE_6__ {TYPE_1__ emacgmiiaddr; } ;



bool emac_hal_is_mii_busy(emac_hal_context_t *hal)
{
    return hal->mac_regs->emacgmiiaddr.miibusy ? 1 : 0;
}
