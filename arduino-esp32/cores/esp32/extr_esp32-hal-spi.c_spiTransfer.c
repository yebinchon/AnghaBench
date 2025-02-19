
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
typedef int uint32_t ;
struct TYPE_11__ {TYPE_4__* dev; } ;
typedef TYPE_5__ spi_t ;
struct TYPE_9__ {int usr; } ;
struct TYPE_8__ {int usr_miso_dbitlen; } ;
struct TYPE_7__ {int usr_mosi_dbitlen; } ;
struct TYPE_10__ {int * data_buf; TYPE_3__ cmd; TYPE_2__ miso_dlen; TYPE_1__ mosi_dlen; } ;


 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;

void spiTransfer(spi_t * spi, uint32_t *data, uint8_t len)
{
    if(!spi) {
        return;
    }
    int i;
    if(len > 16) {
        len = 16;
    }
    SPI_MUTEX_LOCK();
    spi->dev->mosi_dlen.usr_mosi_dbitlen = (len * 32) - 1;
    spi->dev->miso_dlen.usr_miso_dbitlen = (len * 32) - 1;
    for(i=0; i<len; i++) {
        spi->dev->data_buf[i] = data[i];
    }
    spi->dev->cmd.usr = 1;
    while(spi->dev->cmd.usr);
    for(i=0; i<len; i++) {
        data[i] = spi->dev->data_buf[i];
    }
    SPI_MUTEX_UNLOCK();
}
