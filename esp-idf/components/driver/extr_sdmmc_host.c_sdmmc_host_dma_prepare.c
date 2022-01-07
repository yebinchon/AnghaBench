
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sdmmc_desc_t ;
struct TYPE_5__ {int enable; int fb; } ;
struct TYPE_4__ {int dma_enable; int use_internal_dma; } ;
struct TYPE_6__ {size_t bytcnt; size_t blksiz; TYPE_2__ bmod; TYPE_1__ ctrl; int * dbaddr; } ;


 TYPE_3__ SDMMC ;
 int sdmmc_host_dma_resume () ;

void sdmmc_host_dma_prepare(sdmmc_desc_t* desc, size_t block_size, size_t data_size)
{

    SDMMC.bytcnt = data_size;
    SDMMC.blksiz = block_size;
    SDMMC.dbaddr = desc;


    SDMMC.ctrl.dma_enable = 1;
    SDMMC.ctrl.use_internal_dma = 1;
    SDMMC.bmod.enable = 1;
    SDMMC.bmod.fb = 1;
    sdmmc_host_dma_resume();
}
