
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rcv_bitlen; int bitlen; int hw; scalar_t__ rx_buffer; int use_dma; } ;
typedef TYPE_1__ spi_slave_hal_context_t ;


 int SPI_LL_INT_TYPE_NORMAL ;
 int spi_ll_read_buffer (int ,scalar_t__,int) ;
 int spi_ll_slave_get_rcv_bitlen (int ) ;
 int spi_ll_slave_set_int_type (int ,int ) ;

void spi_slave_hal_store_result(spi_slave_hal_context_t *hal)
{



    hal->rcv_bitlen = spi_ll_slave_get_rcv_bitlen(hal->hw);
    if (hal->rcv_bitlen == hal->bitlen - 1) {
        hal->rcv_bitlen++;
    }
    if (!hal->use_dma && hal->rx_buffer) {

        spi_ll_read_buffer(hal->hw, hal->rx_buffer, hal->bitlen);
    }
    spi_ll_slave_set_int_type(hal->hw, SPI_LL_INT_TYPE_NORMAL);
}
