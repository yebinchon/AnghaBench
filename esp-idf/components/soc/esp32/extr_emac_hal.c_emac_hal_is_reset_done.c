
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* dma_regs; } ;
typedef TYPE_3__ emac_hal_context_t ;
struct TYPE_5__ {scalar_t__ sw_rst; } ;
struct TYPE_6__ {TYPE_1__ dmabusmode; } ;



bool emac_hal_is_reset_done(emac_hal_context_t *hal)
{
    return hal->dma_regs->dmabusmode.sw_rst ? 0 : 1;
}
