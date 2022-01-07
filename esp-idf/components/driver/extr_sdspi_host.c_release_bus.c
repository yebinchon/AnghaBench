
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int length; int tx_data; } ;
typedef TYPE_1__ spi_transaction_t ;


 int SPI_TRANS_USE_RXDATA ;
 int SPI_TRANS_USE_TXDATA ;
 int spi_device_transmit (int ,TYPE_1__*) ;
 int spi_handle (int) ;

__attribute__((used)) static void release_bus(int slot)
{
    spi_transaction_t t = {
        .flags = SPI_TRANS_USE_RXDATA | SPI_TRANS_USE_TXDATA,
        .length = 8,
        .tx_data = {0xff}
    };
    spi_device_transmit(spi_handle(slot), &t);

}
