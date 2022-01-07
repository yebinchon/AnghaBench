
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next_desc_ptr; scalar_t__ owned_by_idmac; } ;
typedef TYPE_1__ sdmmc_desc_t ;
struct TYPE_5__ {size_t next_desc; } ;


 size_t SDMMC_DMA_DESC_CNT ;
 TYPE_3__ s_cur_transfer ;
 TYPE_1__* s_dma_desc ;

__attribute__((used)) static size_t get_free_descriptors_count(void)
{
    const size_t next = s_cur_transfer.next_desc;
    size_t count = 0;




    for (size_t i = 0; i < SDMMC_DMA_DESC_CNT; ++i) {
        sdmmc_desc_t* desc = &s_dma_desc[(next + i) % SDMMC_DMA_DESC_CNT];
        if (desc->owned_by_idmac) {
            break;
        }
        ++count;
        if (desc->next_desc_ptr == ((void*)0)) {

            break;
        }
    }
    return count;
}
