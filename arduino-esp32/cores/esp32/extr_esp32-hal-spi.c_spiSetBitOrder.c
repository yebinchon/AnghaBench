
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_7__ {TYPE_1__* dev; } ;
typedef TYPE_3__ spi_t ;
struct TYPE_6__ {int wr_bit_order; int rd_bit_order; } ;
struct TYPE_5__ {TYPE_2__ ctrl; } ;


 scalar_t__ SPI_LSBFIRST ;
 scalar_t__ SPI_MSBFIRST ;
 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;

void spiSetBitOrder(spi_t * spi, uint8_t bitOrder)
{
    if(!spi) {
        return;
    }
    SPI_MUTEX_LOCK();
    if (SPI_MSBFIRST == bitOrder) {
        spi->dev->ctrl.wr_bit_order = 0;
        spi->dev->ctrl.rd_bit_order = 0;
    } else if (SPI_LSBFIRST == bitOrder) {
        spi->dev->ctrl.wr_bit_order = 1;
        spi->dev->ctrl.rd_bit_order = 1;
    }
    SPI_MUTEX_UNLOCK();
}
