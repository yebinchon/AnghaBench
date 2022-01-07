
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_3__* dev; } ;
typedef TYPE_5__ spi_t ;
struct TYPE_10__ {int usr_miso_dbitlen; } ;
struct TYPE_7__ {int usr; } ;
struct TYPE_8__ {int usr_mosi_dbitlen; } ;
struct TYPE_9__ {int* data_buf; TYPE_1__ cmd; TYPE_4__ miso_dlen; TYPE_2__ mosi_dlen; } ;


 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;

uint8_t spiTransferByte(spi_t * spi, uint8_t data)
{
    if(!spi) {
        return 0;
    }
    SPI_MUTEX_LOCK();
    spi->dev->mosi_dlen.usr_mosi_dbitlen = 7;
    spi->dev->miso_dlen.usr_miso_dbitlen = 7;
    spi->dev->data_buf[0] = data;
    spi->dev->cmd.usr = 1;
    while(spi->dev->cmd.usr);
    data = spi->dev->data_buf[0] & 0xFF;
    SPI_MUTEX_UNLOCK();
    return data;
}
