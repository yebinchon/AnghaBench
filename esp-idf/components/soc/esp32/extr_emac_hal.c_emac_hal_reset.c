
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* dma_regs; } ;
typedef TYPE_3__ emac_hal_context_t ;
struct TYPE_5__ {int sw_rst; } ;
struct TYPE_6__ {TYPE_1__ dmabusmode; } ;



void emac_hal_reset(emac_hal_context_t *hal)
{
    hal->dma_regs->dmabusmode.sw_rst = 1;
}
