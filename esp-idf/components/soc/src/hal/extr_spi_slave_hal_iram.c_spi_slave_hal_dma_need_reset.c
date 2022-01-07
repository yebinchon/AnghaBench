
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dmadesc_rx; scalar_t__ rx_buffer; scalar_t__ use_dma; } ;
typedef TYPE_2__ spi_slave_hal_context_t ;
struct TYPE_4__ {scalar_t__ eof; scalar_t__ owner; } ;



bool spi_slave_hal_dma_need_reset(const spi_slave_hal_context_t *hal)
{
    bool ret;
    ret = 0;
    if (hal->use_dma && hal->rx_buffer) {
        int i;



        for (i = 0; hal->dmadesc_rx[i].eof == 0 && hal->dmadesc_rx[i].owner == 0; i++) {}
        if (hal->dmadesc_rx[i].owner) {
            ret = 1;
        }
    }
    return ret;
}
