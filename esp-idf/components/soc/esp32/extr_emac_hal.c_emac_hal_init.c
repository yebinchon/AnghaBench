
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int ** tx_buf; int ** rx_buf; void* descriptors; int * ext_regs; int * mac_regs; int * dma_regs; } ;
typedef TYPE_1__ emac_hal_context_t ;


 int EMAC_DMA ;
 int EMAC_EXT ;
 int EMAC_MAC ;

void emac_hal_init(emac_hal_context_t *hal, void *descriptors,
                   uint8_t **rx_buf, uint8_t **tx_buf)
{
    hal->dma_regs = &EMAC_DMA;
    hal->mac_regs = &EMAC_MAC;
    hal->ext_regs = &EMAC_EXT;
    hal->descriptors = descriptors;
    hal->rx_buf = rx_buf;
    hal->tx_buf = tx_buf;
}
