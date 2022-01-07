
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_bitlen; scalar_t__ rcv_buffer; int hw; int dma_enabled; } ;
typedef TYPE_1__ spi_hal_context_t ;


 int spi_ll_read_buffer (int ,scalar_t__,int ) ;

void spi_hal_fetch_result(const spi_hal_context_t *hal)
{
    if (hal->rcv_buffer && !hal->dma_enabled) {

        spi_ll_read_buffer(hal->hw, hal->rcv_buffer, hal->rx_bitlen);
    }
}
