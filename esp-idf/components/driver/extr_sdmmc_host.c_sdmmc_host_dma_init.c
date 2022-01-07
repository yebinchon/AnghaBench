
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ni; int ri; int ti; } ;
struct TYPE_6__ {int sw_reset; scalar_t__ val; } ;
struct TYPE_5__ {int dma_enable; } ;
struct TYPE_8__ {TYPE_3__ idinten; TYPE_2__ bmod; TYPE_1__ ctrl; } ;


 TYPE_4__ SDMMC ;

__attribute__((used)) static void sdmmc_host_dma_init(void)
{
    SDMMC.ctrl.dma_enable = 1;
    SDMMC.bmod.val = 0;
    SDMMC.bmod.sw_reset = 1;
    SDMMC.idinten.ni = 1;
    SDMMC.idinten.ri = 1;
    SDMMC.idinten.ti = 1;
}
