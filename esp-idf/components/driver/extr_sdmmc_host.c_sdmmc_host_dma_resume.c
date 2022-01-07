
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pldmnd; } ;


 TYPE_1__ SDMMC ;

void sdmmc_host_dma_resume(void)
{
    SDMMC.pldmnd = 1;
}
