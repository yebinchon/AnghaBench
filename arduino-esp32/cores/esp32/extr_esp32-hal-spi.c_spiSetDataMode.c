
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_3__* dev; } ;
typedef TYPE_4__ spi_t ;
struct TYPE_7__ {int ck_out_edge; } ;
struct TYPE_6__ {int ck_idle_edge; } ;
struct TYPE_8__ {TYPE_2__ user; TYPE_1__ pin; } ;






 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;

void spiSetDataMode(spi_t * spi, uint8_t dataMode)
{
    if(!spi) {
        return;
    }
    SPI_MUTEX_LOCK();
    switch (dataMode) {
    case 130:
        spi->dev->pin.ck_idle_edge = 0;
        spi->dev->user.ck_out_edge = 1;
        break;
    case 129:
        spi->dev->pin.ck_idle_edge = 1;
        spi->dev->user.ck_out_edge = 1;
        break;
    case 128:
        spi->dev->pin.ck_idle_edge = 1;
        spi->dev->user.ck_out_edge = 0;
        break;
    case 131:
    default:
        spi->dev->pin.ck_idle_edge = 0;
        spi->dev->user.ck_out_edge = 0;
        break;
    }
    SPI_MUTEX_UNLOCK();
}
