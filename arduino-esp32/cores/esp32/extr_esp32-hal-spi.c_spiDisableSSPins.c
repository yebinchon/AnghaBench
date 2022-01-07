
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_2__* dev; } ;
typedef TYPE_3__ spi_t ;
struct TYPE_5__ {int val; } ;
struct TYPE_6__ {TYPE_1__ pin; } ;


 int SPI_CS_MASK_ALL ;
 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;

void spiDisableSSPins(spi_t * spi, uint8_t cs_mask)
{
    if(!spi) {
        return;
    }
    SPI_MUTEX_LOCK();
    spi->dev->pin.val |= (cs_mask & SPI_CS_MASK_ALL);
    SPI_MUTEX_UNLOCK();
}
