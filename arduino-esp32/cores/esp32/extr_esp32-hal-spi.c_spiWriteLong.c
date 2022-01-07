
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {TYPE_5__* dev; } ;
typedef TYPE_6__ spi_t ;
struct TYPE_9__ {int usr; } ;
struct TYPE_8__ {scalar_t__ usr_miso_dbitlen; } ;
struct TYPE_11__ {int usr_mosi_dbitlen; } ;
struct TYPE_10__ {int wr_bit_order; } ;
struct TYPE_12__ {TYPE_2__ cmd; int * data_buf; TYPE_1__ miso_dlen; TYPE_4__ mosi_dlen; TYPE_3__ ctrl; } ;


 int SPI_MUTEX_LOCK () ;
 int SPI_MUTEX_UNLOCK () ;
 int __spiTranslate32 (int ) ;

void spiWriteLong(spi_t * spi, uint32_t data)
{
    if(!spi) {
        return;
    }
    if(!spi->dev->ctrl.wr_bit_order){
        data = __spiTranslate32(data);
    }
    SPI_MUTEX_LOCK();
    spi->dev->mosi_dlen.usr_mosi_dbitlen = 31;
    spi->dev->miso_dlen.usr_miso_dbitlen = 0;
    spi->dev->data_buf[0] = data;
    spi->dev->cmd.usr = 1;
    while(spi->dev->cmd.usr);
    SPI_MUTEX_UNLOCK();
}
